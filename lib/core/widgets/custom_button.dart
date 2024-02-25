import 'package:flutter/material.dart';
import 'package:nice_buttons/nice_buttons.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final ButtonStyleType buttonStyleType;
  final Function() onTap;

  const CustomButton(
      {super.key,
      required this.title,
      required this.buttonStyleType,
      required this.onTap});

  bool get isButtonStyleTypeAsBlue =>
      buttonStyleType == ButtonStyleType.blue;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(32)),
      child: NiceButtons(
        gradientOrientation: GradientOrientation.Horizontal,
        startColor: isButtonStyleTypeAsBlue
            ? const Color(0xFF64ABFF)
            : const Color(0xFF522C57),
        endColor: isButtonStyleTypeAsBlue
            ? const Color(0xFF64ABFF)
            : const Color(0xFF522C57),
        borderColor: isButtonStyleTypeAsBlue
            ? const Color(0xFF64ABFF)
            : const Color(0xFF522C57),
        borderRadius: 32,
        stretch: false,
        onTap: (finish) {
          onTap.call();
        },
        child: Center(
          child: Text(
            title,
            style: textTheme.headlineMedium?.copyWith(
                color: Colors.white,
                shadows: [
                  const BoxShadow(color: Colors.black38, blurRadius: 8)
                ]),
          ),
        ),
      ),
    );
  }
}
