import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:web_app/controller/controller.dart';
import 'package:web_app/values/dimens.dart';
import 'package:web_app/values/my_colors.dart';
import 'package:web_app/verification/mobileverification.dart';
import 'package:web_app/widgets/custom_button.dart';
//import 'package:web_app/widgets/custom_button.dart';dart';
import 'package:web_app/widgets/custom_textfield.dart';

class MyMobileBody extends StatelessWidget {
  //const MyMobileBody({Key? key}) : super(key: key);
Controller controller=Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    var siz=MediaQuery.of(context).size;
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: Text('M O B I L E'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        //  mainAxisAlignment: MainAxisAlignment.start,
          children: [
Image.asset("assets/man.png",fit: BoxFit.fill,height: siz.height/4,width: siz.width/2,),
        //   SizedBox(height: getHeight(Dimens.size20),),
            SizedBox(height: 12,),
            Text("What will br healpingout\nour values",style: textTheme.bodyText2!.copyWith(fontSize: 18),),
          // SizedBox(height: getHeight(Dimens.size20),),
            Text("Phone number"),
            SizedBox(height: 10,),
            SizedBox(
              width: siz.width,
              child: CustomTextField(text: "intuu",keyboardType: TextInputType.number,
                inputFormatters: FilteringTextInputFormatter.singleLineFormatter ,
                length: 23,),),
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
              CustomButton(height: 0.06,text: "Login",onPressed: (){
                Get.to(Verification());
              },width: 2,
                color: MyColors.grey2,textColor: MyColors.btColor,borderColor: MyColors.grey2,),




          ],
        ),
      ),
    );
  }
}