import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:web_app/values/dimens.dart';
import 'package:web_app/values/my_colors.dart';
import 'package:web_app/values/my_images.dart';
import 'package:web_app/values/size_config.dart';
import 'package:web_app/widgets/custom_button.dart';
import 'package:web_app/widgets/custom_textfield.dart';
import 'package:web_app/widgets/fb_buttonwidget.dart';

import '../controller/controller.dart';

class MyDesktopBody extends StatelessWidget {
 // const MyDesktopBody({Key? key}) : super(key: key);
  final Controller controller=Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    var siz=MediaQuery.of(context).size;
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
   //   backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: Text('D E S K T O P'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(100,60,100,0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           // SizedBox(width: siz.width/12,),
           // SizedBox(height: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 90,),
                SizedBox(width: siz.width/3,),
                Text("What will be helping out\nour values", style: textTheme.bodyText2!.copyWith(fontSize: 30,fontWeight: FontWeight.bold),),

            // SizedBox(height: getHeight(Dimens.size20),),
            SizedBox(height: 12,),
            Text("Phone number",style: textTheme.bodyText2!.copyWith(fontSize: 20),),
                SizedBox(height: 10,),
                SizedBox(
                  width: siz.width/6,
                  child: CustomTextField(text: "intuu",keyboardType: TextInputType.number,inputFormatters: FilteringTextInputFormatter.singleLineFormatter ,
                  length: 23,),
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Obx(()=>
                       Checkbox(

                        activeColor: MyColors.primaryColor,
                        value: controller.value.value,
                        onChanged: (bool? value) {
                          controller.value.value = !controller.value.value;
                        },
                      ),
                    ),

                    Text("I agree to HX,s terms conditions and privacy",style: textTheme.bodyText2,),

                  ],
                ),
SizedBox(height: 12,),
                CustomButton(height: 0.06,text: "Login",onPressed: (){},
                  width: 0.2,color: MyColors.grey2,textColor: MyColors.btColor,borderColor: MyColors.grey2,),


                SizedBox(height: 12,),

                const Center(
                    child: Text(
                      "Or Sign in Using",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: MyColors.btColor),
                    )),
              /*  SizedBox(
                  //  height: Dimens.size30,

                  height: getHeight(Dimens.size20),
                ),*/
                SizedBox(height: 12,),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    FbTwitterButton(
                        width: 40,
                        height: 20,
                        image: "assets/fbPic.png",
                        border: MyColors.fbBaderColor),
                 SizedBox(width: 20,),
                 //  Spacer(),
                    FbTwitterButton(
                      width: 40,
                      height: 20,
                      image: MyImgs.sms,
                      border: MyColors.TWIBaderColor,
                    )


])




              ],
            ),
         SizedBox(width: 20,),
         //   SizedBox(width: siz.width/3,),
            Column(
              children: [
                Image.asset("assets/man.png",fit: BoxFit.fill,height: siz.height/2,width: siz.width/4,),
              ],
            ),
            //   SizedBox(height: getHeight(Dimens.size20),),
            //SizedBox(height: 12,),

          ],
        ),

      )
    );
  }
}