import 'package:flutter/material.dart';
import 'package:web_app/values/my_colors.dart';

//import '../values/values.dart';

class CustomButton extends StatelessWidget {
  final double height;
  final double width;
  final double? roundCorner;
  final String text;
  final double? fontSize;
  final Color? color;
  final Color? textColor;
  final Color? borderColor;
  void Function() onPressed;

  CustomButton({
    required this.height,
    required this.width,
    required this.text,
    this.fontSize,
    this.borderColor,
    this.textColor,
    this.roundCorner,
    this.color,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var textTheme = theme.textTheme;
    var mediaQuery = MediaQuery.of(context).size;
    return Container(
      height: mediaQuery.height * height,
      width: mediaQuery.width * width,
      decoration: BoxDecoration(
          border: Border.all(color: borderColor ?? MyColors.primaryColor),
          borderRadius: BorderRadius.circular(4),
          color: color ?? MyColors.primaryColor),
      child: MaterialButton(

        shape: RoundedRectangleBorder(
          borderRadius:
          BorderRadius.circular(roundCorner == null ? 32 : roundCorner!),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
              color: textColor ?? MyColors.primaryColor,
              fontSize: fontSize == null ? 14 : fontSize,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
