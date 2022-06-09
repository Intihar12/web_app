import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:web_app/responsive/responsive_layout.dart';
import 'package:web_app/values/dimens.dart';
import 'package:web_app/values/my_colors.dart';
import 'package:web_app/values/size_config.dart';
import 'package:web_app/widgets/custom_textfield.dart';
/*import 'package:xh_app1/ui/auth/login/login.dart';
import 'package:xh_app1/ui/home/home.dart';
import 'package:xh_app1/ui/values/dimens.dart';
import 'package:xh_app1/ui/values/my_colors.dart';
import 'package:xh_app1/ui/values/my_imgs.dart';
import 'package:xh_app1/ui/values/size_config.dart';
import 'package:xh_app1/ui/widgets/custom_button.dart';
import 'package:xh_app1/ui/widgets/custom_textfield.dart';*/

class desktopverification extends StatelessWidget {
 // const Verification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body:
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                //  height: getHeight(Dimens.size35)
              ),
              IconButton(

                  onPressed: (){

                    //  Get.to(Login());
                  }, icon: Icon(Icons.arrow_back_ios,size: 30,)),

              SizedBox(
                //  height: getHeight(Dimens.size35)
              ),
              Image.asset(
                "assets/otpImage.png",
                fit: BoxFit.fill,
                //  height: getHeight(Dimens.size180),
                //width: getWidth(Dimens.size180),
              ),
              SizedBox(
                //  height: Dimens.size30,

                //  height: getHeight(Dimens.size40),
              ),
              Text("Enter the OTP code we send",  style: textTheme.bodyText2!.copyWith(fontWeight: FontWeight.w700),),
              SizedBox(
                //  height: Dimens.size30,

                // height: getHeight(Dimens.size40),
              ),
              RichText(
                text: new TextSpan(
                  children: [
                    new TextSpan(
                        text: 'Pleas check your SMS and enter the unique code',
                        style: textTheme.bodyText2!.copyWith(color: MyColors.black121)),
                    new TextSpan(text: ' we sent to', style: textTheme.bodyText2!.copyWith(color: MyColors.black121)),
                    new TextSpan(
                        text: ' +0340000000000',
                        style: textTheme.bodyText2!
                            .copyWith(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              SizedBox(
                //  height: Dimens.size30,

                //  height: getHeight(Dimens.size40),
              ),
              Text(
                "OTP code",
                style: textTheme.bodyText2,
              ),
              SizedBox(
                //  height: Dimens.size30,

                // height: getHeight(Dimens.size20),
              ),
              CustomTextField(
                text: "6 code digit",
                keyboardType: TextInputType.number,
                inputFormatters: FilteringTextInputFormatter.singleLineFormatter,
                length: 12,

              ),
              SizedBox(
                //  height: Dimens.size30,

                //  height: getHeight(Dimens.size30),
              ),
              Row(
                children: [
                  Text("Not receiving SMS? ",
                      style: textTheme.bodyText2!.copyWith(
                          fontWeight: FontWeight.w400,
                          color: MyColors.black121,
                          fontSize: 14)),
                  GestureDetector(
                      onTap: (){
                        // Get.to(Home());
                      },
                      child: Text("Resend",style: textTheme.bodyText2!.copyWith(color: MyColors.primaryColor),))
                ],
              )
            ],
          ),
        ),
      ),

    );
  }
}
