import 'dart:convert';

import 'package:advancepal/model/api_repository.dart';
import 'package:advancepal_api/api.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _endpointKey = "endpoint";
const _meKey = "me";

class LocalState {
	LocalState._();
	static final LocalState instance = LocalState._();

	String? _endpoint;
	Pal? _me;

	final _changes = BehaviorSubject<void>();

	Stream<void> get changes {
		return _changes.publishReplay();
	}

	bool get hasEndpoint {
		return _endpoint != null;
	}

	bool get hasMe {
		return _me != null;
	}

	String get endpoint {
		final v = _endpoint;
		if (v != null) {
		  return v;
		}
		throw Error();
	}

	Pal get me {
		final v = _me;
		if (v != null) {
			return v;
		}
		throw Error();
	}

	Future<void> restore() async {
		const json = JsonCodec();
		final prefs = await SharedPreferences.getInstance();

		if (prefs.containsKey(_endpointKey)) {
			_endpoint = prefs.getString(_endpointKey);
		}

		if (prefs.containsKey(_meKey)) {
			final maybeMe = prefs.getString(_meKey);
			if (maybeMe != null) {
				_me = Pal.fromJson(json.decode(maybeMe));
			}
		}
		
		_changes.add(null);
	}

	Future<bool> initialize({required String endpoint, required String name}) async {
		const json = JsonCodec();
		final prefs = await SharedPreferences.getInstance();

		var uri = Uri.tryParse(endpoint);
		
		if (uri == null) {
		  return false;
		}

		if (!uri.isScheme('http') && !uri.isScheme('https')) {
			uri = Uri.tryParse('https://$endpoint'); 
		}

		if (uri == null) {
		  return false;
		}
		
		// if the scheme is missing the parsing is messed up, fix it
		// if (!uri.hasAuthority && uri.path.isNotEmpty) {
		// 	// hostname:port is interpreted as scheme:path
		// 	if (uri.hasScheme && int.tryParse(uri.path) != null) {
		// 		uri = Uri(host: uri.scheme, port: int.tryParse(uri.path));
		// 	} else {
		// 		// hostname is interpreted as path
		//   	uri = Uri(host: uri.path);
		// 	}
		// }

		if (!uri.hasScheme) {
		  uri = uri.replace(scheme: 'https');
		}

		if (uri.path.endsWith('/')) {
			uri = uri.replace(path: uri.path.substring(0, uri.path.length - 1));
		}

		endpoint = uri.toString();

		_endpoint = endpoint;
		prefs.setString(_endpointKey, endpoint);


		final api = ApiRepository.instance.pal;

		Pal? pal;
		try {
			pal = await api.getByName(name: name);
		} catch (e) {
			return false;
		}

		if (pal != null) {
			_me = pal;
			prefs.setString(_meKey, json.encode(pal.toJson()));
			_changes.add(null);
			return true;
		}

		_changes.add(null);
		return false;
	}
}