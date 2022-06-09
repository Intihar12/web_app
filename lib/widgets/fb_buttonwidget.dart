import 'package:flutter/material.dart';
import 'package:web_app/values/my_colors.dart';



class FbTwitterButton extends StatelessWidget {
  const FbTwitterButton({Key? key,required this.height,required this.width,required this.image,required this.border}) : super(key: key);
  final double height;
  final double width;
  final String image;
  final Color border;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: MyColors.white,
          border: Border.all(color:border)
      ),
      height: height,
      width: width,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30,12,30,12),
        child: Image.asset(image),
      ),


    );
  }
}
