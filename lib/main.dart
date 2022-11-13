import 'package:advancepal/model/local_state.dart';
import 'package:flutter/material.dart';
import 'package:advancepal/app.dart';

void main() async {
	await LocalState.instance.restore();
	runApp(const App());
}
