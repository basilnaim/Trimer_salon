import 'package:flutter/material.dart';
import 'package:treamer/Ui/home/home_Screen.dart';
import 'package:treamer/utils/Images/images.dart';
import 'package:treamer/utils/widgets/customButton_widget.dart';
import 'package:treamer/utils/widgets/customTextField_Widget.dart';
import 'package:pin_code_fields/pin_code_fields.dart';


class VerificationPhoneScreen extends StatefulWidget {
  @override
  _VerificationPhoneScreenState createState() => _VerificationPhoneScreenState();
}

class _VerificationPhoneScreenState extends State<VerificationPhoneScreen> {
  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(17.0),
        child: Column(
          children: [
            Spacer(flex: 2,),

            Row(
              children: [
                Text(
                "أرسلنا رمزا مكونًا من 4 أرقام إلى"+ "15151515151",
                  style: Theme.of(context).textTheme.headline3,
                ),
              ],
            ),
                    SizedBox(
                      height: 30 ,
                    ),
            Row(
              children: [
                Text(
                "تعديل الرقم",
                  style: Theme.of(context).textTheme.headline3.copyWith(
                    decoration:  TextDecoration.underline,
                  ),
                ),
              ],
            ),
            Spacer(),
            PinCodeTextField(

              keyboardType: TextInputType.number ,
              appContext: context,
              length: 4,
              onChanged: (value) {
                print(value);
              },
              pinTheme: PinTheme(

                shape: PinCodeFieldShape.box,
             borderRadius: BorderRadius.circular(8) ,
                fieldHeight: 65,
                fieldWidth: 55,
                inactiveColor: Theme.of(context).accentColor ,
                activeColor: Colors.blue ,
                selectedColor:Colors.blue ,

              ),
              onCompleted: (value){

              },
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center ,
              children: [
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text("أعد إرسال الرمز خلال"),
                ),

                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text("20",style: Theme.of(context).textTheme.headline1.copyWith(
                    color: Theme.of(context).accentColor
                  ) ,),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text("ث"),
                ),
              ],
            ),
            Spacer(),
            CustomButton(
              title: "تأكيد" ,
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context ){
                  return HomeScreen();
                } ) );
              } ,
            ),
            Spacer(flex: 5,),

          ],
        ),
      ),
    );
  }
}
