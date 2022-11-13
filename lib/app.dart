import 'package:advancepal/model/local_state.dart';
import 'package:advancepal/ui/home.dart';
import 'package:advancepal/ui/login.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
	const App({super.key});

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: 'Advance Pal',
			theme: ThemeData(
				useMaterial3: true,
				brightness: Brightness.light,
				primarySwatch: Colors.orange,
			),
			darkTheme: ThemeData(
				useMaterial3: true,
				brightness: Brightness.dark,
				primarySwatch: Colors.orange,
			),
			themeMode: ThemeMode.system,
			home: StreamBuilder<void>(
				initialData:  null,
				stream: LocalState.instance.changes,
				builder: (context, snapshot) {
				  if (LocalState.instance.hasEndpoint && LocalState.instance.hasMe) {
						return const HomePage(title: 'AdvancePal');
					}
					return const LoginPage();
				},
			),
		);
	}
}
