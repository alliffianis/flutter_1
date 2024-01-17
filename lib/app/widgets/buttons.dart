import 'package:belajar_1/app/widgets/texts.dart';
import 'package:flutter/material.dart';

class Buttons {
  static Widget buttonPrimary({
    Function()? onPressed,
    String? text,
    Color textColor = Colors.white,
    Color backgroundColor = Colors.blue,
    ButtonSize buttonSize = ButtonSize.medium,
  }) {
    return IntrinsicWidth(
      child: ElevatedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(
            _mapButtonSize(buttonSize) == "medium"
                ? const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  )
                : const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
          ),
          overlayColor: MaterialStateProperty.all<Color>(
            const Color(0xff004FB2),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(
              onPressed == null ? Colors.grey : backgroundColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          children: [
            Icon(
              Icons.add,
              color: textColor,
              size: 18,
            ),
            const SizedBox(
              width: 4,
            ),
            Texts.textM(
              text ?? "",
              fontWeights: FontWeights.medium,
              fontFamilies: FontFamilies.poppins,
              color: textColor,
            ),
          ],
        ),
      ),
    );
  }

  static Widget buttonSecondary({
    Function()? onPressed,
    String? text,
    Color textColor = Colors.blue,
    Color backgroundColor = Colors.blue,
    ButtonSize buttonSize = ButtonSize.medium,
  }) {
    return IntrinsicWidth(
      child: ElevatedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(
            _mapButtonSize(buttonSize) == "medium"
                ? const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  )
                : const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
          ),
          overlayColor: MaterialStateProperty.all<Color>(
            const Color(0xffDBF1FF),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
              side: BorderSide(
                color: onPressed == null ? Colors.grey : Colors.blue,
                width: 1,
              ),
            ),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          children: [
            Icon(
              Icons.add,
              color: onPressed == null ? Colors.grey : textColor,
              size: 18,
            ),
            const SizedBox(
              width: 4,
            ),
            Texts.textM(
              text ?? "",
              fontWeights: FontWeights.medium,
              fontFamilies: FontFamilies.poppins,
              color: onPressed == null ? Colors.grey : textColor,
            ),
          ],
        ),
      ),
    );
  }

  static String _mapButtonSize(ButtonSize buttonSize) {
    switch (buttonSize) {
      case ButtonSize.medium:
        return "medium";
      case ButtonSize.small:
        return "small";
    }
  }
}

enum ButtonSize {
  medium,
  small,
}
