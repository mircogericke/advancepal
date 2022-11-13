import 'package:flutter/cupertino.dart';

extension WidgetListExtensions on List<Widget> {
	List<Widget> withSpaceBetween({double? height, double? width}) {
		return [
			if (isNotEmpty)
				first,
			for(final item in skip(1))
				...[
					SizedBox(height: height, width: width),
					item,
				]
		];
	}
}
