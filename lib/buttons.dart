import 'package:flutter/material.dart';

class CButton extends StatelessWidget {
  final color;
  final textColor;
  final String buttonText;
  final buttonTapped;

  CButton({this.color, this.textColor, this.buttonText, this.buttonTapped});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTapped,
      child: Padding(
        padding: EdgeInsets.all(4),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Container(
            color: color,
            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(color: textColor, fontSize: 22),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
