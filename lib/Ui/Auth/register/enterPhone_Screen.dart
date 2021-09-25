import 'package:flutter/material.dart';
import 'package:treamer/Ui/Auth/register/vereficationPhone_Screen.dart';
import 'package:treamer/utils/Images/images.dart';
import 'package:treamer/utils/widgets/customButton_widget.dart';
import 'package:treamer/utils/widgets/customTextField_Widget.dart';

class EnterPhoneNumberScreen extends StatefulWidget {
  @override
  _EnterPhoneNumberScreenState createState() => _EnterPhoneNumberScreenState();
}

class _EnterPhoneNumberScreenState extends State<EnterPhoneNumberScreen> {
  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(17.0),
        child: Column(
          children: [
            Spacer(),
            Center(
                child: ClipOval(
                    child: CircleAvatar(
                        radius: 80,
                        backgroundColor: Colors.white,
                        child: Image.asset(logo)))),

            Text(
              "أدخل رقم الهاتف للتسجيل",
              style: Theme.of(context).textTheme.headline4,
            ),
            Spacer(),
            Material(
              elevation: 2,
              borderRadius: BorderRadius.circular(5),
              shadowColor: Theme.of(context).accentColor,
              child: TextFormField(

                obscureText: true,
                autofocus: false,
                decoration: InputDecoration(
                  icon:    SizedBox(
                    width: _width* 0.1,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(saudi_arabia),
                        ),
                        Text("+966"),
                      ],
                    ),
                  ),
                    hintText: "6×××××××××××",
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide:
                            BorderSide(color: Colors.white, width: 3.0))),
              ),
            ),
            Spacer(),
            CustomButton(
              title: "تأكيد" ,
              onTap: (){
                Navigator.push(context , MaterialPageRoute(builder: (BuildContext context){
                  return VerificationPhoneScreen();
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
