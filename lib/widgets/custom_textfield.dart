import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:web_app/values/my_colors.dart';

//import '../values/values.dart';

class CustomTextField extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? bordercolor;
  final Color? background;
  final String text;
  final int length;
  final TextInputType keyboardType;
  final TextInputFormatter inputFormatters;
  bool? Readonly = false;
  final Icon? icon;
  final suffixIcon;
  final prefixIcon;
  final InputBorder? border;
  final String? errorText;
  final FocusNode? focusNode;
  final String? suffixtext;
  final Color? hintColor;
  final Color? textColor;
  final Color? cursorColor;
  final int? maxlines;
  final Color? color;
  final bool? isObscure;
  final Color? fillcolor;
  TextEditingController? controller;
  FormFieldValidator<String>? validator;
  ValueChanged<String>? onChanged;

  CustomTextField({
    Key? key,
    this.fillcolor,
    this.height,
    this.width,
    this.prefixIcon,
    this.suffixIcon,
    this.bordercolor,
    this.background,
    this.controller,
    this.border,
    this.maxlines,
    required this.text,
    this.validator,
    this.onChanged,
    this.errorText,
    this.Readonly,
    this.focusNode,
    this.hintColor,
    this.icon,
    this.color,
    this.suffixtext,
    required this.length,
    required this.keyboardType,
    required this.inputFormatters,
    this.isObscure,
    this.textColor,
    this.cursorColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var textTheme = theme.textTheme;
    var mediaQuery = MediaQuery.of(context).size;

    return Container(
      height: height,
      width: width,
      child: TextFormField(

        obscuringCharacter: '*',
        maxLength: length,
        cursorHeight: 25,
        maxLines: maxlines ?? 1,
        focusNode: focusNode,
        // validator: (value) {
        //   if (value == "" || value!.isEmpty) {
        //     return 'Please enter some text';
        //   }
        //   return null;
        // },
        style: textTheme.bodyText1!
            .copyWith(fontSize: 16, color: textColor ?? MyColors.black,backgroundColor: background ),
        controller: controller,
        keyboardType: keyboardType,
        onChanged: onChanged,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        cursorColor: cursorColor ?? MyColors.black,
        inputFormatters: <TextInputFormatter>[inputFormatters],
        textInputAction: TextInputAction.next,
        readOnly: Readonly == true ? true : false,
        obscureText: isObscure ?? false,
        decoration: InputDecoration(
          filled: true,

          fillColor: fillcolor ?? Colors.white,
          // border: UnderlineInputBorder(
          //   borderSide: BorderSide(color: color ?? MyColors.grey, width: 2),
          // ),
          border: InputBorder.none,
          // UnderlineInputBorder(
          //   borderSide: BorderSide(color: color ?? MyColors.purple, width: 2),
          // ),
          errorText: errorText,
          counterText: "",
          enabledBorder: border ??
              OutlineInputBorder(
                //  borderSide: BorderSide.none,
                borderSide: BorderSide(
                    color: bordercolor ?? MyColors.black79, width: 0.5),
              ),
          focusedBorder: OutlineInputBorder(
            //  borderSide: BorderSide.none,
            borderSide: BorderSide(color: color ?? MyColors.grey, width: 0.3),
          ),
          // errorBorder: OutlineInputBorder(
          //  // borderSide: BorderSide(color: MyColors.red500, width: 2),
          //
          //   borderSide: BorderSide.none,
          // ),
          // enabledBorder: border ??
          //     UnderlineInputBorder(
          //       borderSide: BorderSide(
          //           color: bordercolor ?? MyColors.black, width: 1.5),
          //     ),
          // focusedBorder: UnderlineInputBorder(
          //   borderSide: BorderSide(color: color ?? MyColors.purple, width: 2),
          // ),
          // errorBorder: UnderlineInputBorder(
          //   borderSide: BorderSide(color: MyColors.red500, width: 2),
          // ),
          hintText: text,
          suffixIcon: suffixIcon,
          hintStyle: TextStyle(
              color: hintColor ?? MyColors.hintText,
              fontWeight: FontWeight.normal,
              fontSize: 12),
          contentPadding: const EdgeInsets.only(left: 15, bottom: 8, top: 5),
          prefixIcon: prefixIcon,
          errorStyle: TextStyle(fontSize: 0),
          suffixText: suffixtext,
          focusColor: MyColors.green50,
        ),
      ),
    );
  }
}
