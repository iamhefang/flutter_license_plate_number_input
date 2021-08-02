import 'package:flutter/material.dart';
import 'package:license_plate_number_input/src/LetterButton.dart';
import 'package:license_plate_number_input/src/PlateStyle.dart';
import 'package:license_plate_number_input/src/types.dart';

class PlateKeyboard extends StatefulWidget {
  final PlateStyle style;
  final ValueCallback<String>? onComplete;
  final TwoValueCallback<String, String>? onChange;
  final String letters;

  const PlateKeyboard({
    this.style = const PlateStyle(),
    this.onComplete,
    this.onChange,
    required this.letters,
  }) : assert(letters.length > 0, "要显示的字符不能为空");

  @override
  State<StatefulWidget> createState() => _KeyboardState();
}

class _KeyboardState extends State<PlateKeyboard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: SafeArea(
        child: Column(
          children: [
            GridView.count(
              crossAxisCount: 10,
              crossAxisSpacing: 4,
              mainAxisSpacing: 4,
              shrinkWrap: true,
              childAspectRatio: 4 / 3,
              physics: NeverScrollableScrollPhysics(),
              children: widget.letters.characters
                  .map((e) => LetterButton(letter: e))
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}
