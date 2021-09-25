import 'package:flutter/material.dart';
import 'package:treamer/utils/Images/images.dart';
import 'package:treamer/utils/widgets/customButton_widget.dart';
import 'package:treamer/utils/widgets/customTextField_Widget.dart';

import 'enterServices_Screen.dart';
class EnterDataScreen extends StatefulWidget {
  @override
  _EnterDataScreenState createState() => _EnterDataScreenState();
}

class _EnterDataScreenState extends State<EnterDataScreen> {
  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false
      ,
      backgroundColor: Colors.white ,
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
              "بيانات التسجيل",
              style: Theme.of(context).textTheme.headline4,
            ),
             Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18 ),
              child: CustomTextField(title: "الاسم كاملا" ,),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18 ),
              child: CustomTextField(title: "اسم الصالون" ,),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18 ),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [

                      Image.asset(uploadImage),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text('السجل التجاري',style: Theme.of(context).textTheme.headline3 ,),
                      ),

                    ],
                  ),
                ) ,
                height: 50 ,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8)
                ) ,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18 ),
              child: CustomTextField(title: "العنوان" ,),
            ),

             Spacer(),
            CustomButton(
              onTap: (){
                Navigator.push(context , MaterialPageRoute(builder: (BuildContext context){
                  return EnterServicesScreen();
                } ) );
              } ,
              title: "التالي" ,
            ),
             Spacer(flex: 2,),
          ],
        ),
      ) ,
    );
  }
}
