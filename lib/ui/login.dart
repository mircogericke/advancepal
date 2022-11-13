import 'package:advancepal/model/local_state.dart';
import 'package:advancepal/util/widget_extensions.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
	const LoginPage({super.key, required this.onLogin});

	final void Function() onLogin;

	@override
	State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
	bool working = false;

	final endpointController = TextEditingController(text: LocalState.instance.hasEndpoint ? LocalState.instance.endpoint : null);
	final nameController = TextEditingController();

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: Center(
				child: Container(
					constraints: const BoxConstraints(maxWidth: 500),
					padding: const EdgeInsets.all(25),
					child: Column(
						mainAxisAlignment: MainAxisAlignment.center,
						children: <Widget>[
							Text('Welcome to AdvancePal', style: Theme.of(context).textTheme.titleLarge),
							TextField(
								decoration: const InputDecoration(
									labelText: 'Server',
									icon: Icon(Icons.lan),
									filled: true,
								),
								controller: endpointController,
							),
							TextField(
								decoration: const InputDecoration(
									labelText: 'Name',
									icon: Icon(Icons.person),
									filled: true,
								),
								controller: nameController,
							),
							ElevatedButton.icon(
								label: const Text('Connect to Server'),
								onPressed: working ? null : _login,
								icon: const Icon(Icons.login),
								style: ElevatedButton.styleFrom(
									foregroundColor: Theme.of(context).colorScheme.onPrimary,
									backgroundColor: Theme.of(context).colorScheme.primary,
								),
							),
						].withSpaceBetween(height: 20),
					),
				),
			),
		);
	}

	Future<void> _login() async {
		setState(() {
		  working = true;
		});
		final result = await LocalState.instance.initialize(endpoint: endpointController.text, name: nameController.text);

		if (result) {
			widget.onLogin();
		}

		setState(() {
		  working = false;
		});
	}
}
