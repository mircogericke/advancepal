import 'package:advancepal_api/api.dart';

import 'local_state.dart';

class ApiRepository {
	const ApiRepository._();
	static ApiRepository instance = const ApiRepository._();

	ApiClient get _client {
		return ApiClient(basePath: LocalState.instance.endpoint);
	}

	PalApi get pal {
		return PalApi(_client);
	}

	TransactionApi get transaction {
		return TransactionApi(_client);
	}
}
