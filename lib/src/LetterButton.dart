import 'package:flutter/material.dart';

class LetterButton extends StatelessWidget {
  final String letter;
  final VoidCallback? onPressed;

  LetterButton({required this.letter, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        child: InkWell(
          onTap: onPressed,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: Center(child: Text(letter)),
          ),
        ),
      ),
    );
  }
}
