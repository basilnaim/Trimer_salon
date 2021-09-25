import 'package:flutter/material.dart';
import 'package:treamer/Ui/Auth/register/enterData_Screen.dart';
import 'package:treamer/utils/Images/images.dart';
import 'package:treamer/utils/widgets/customButton_widget.dart';

class LandingScreen extends StatefulWidget {
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;
    return Scaffold(backgroundColor: Colors.white,
      body: Column(
        children: [
          Spacer(),
          Center(child: ClipOval (

              child: CircleAvatar (
                  radius: 80 ,backgroundColor: Colors.white,
                  child: Image.asset(logo)))),
          Text(
            "مرحبا بك في تطبيق تريمر",
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(
            height:_height*0.04 ,
          ),
          Text(
            "تحديد نوع الحساب",
            style: Theme.of(context).textTheme.headline4,
          ),
               SizedBox(
                 height:_height*0.02 ,
               ),
          Row(
            children: [
              Spacer(),
              InkWell(
                onTap: () {
                  setState(() {
                    index = 0;
                  });
                },
                child: SizedBox(
                    height: 120,
                    width: _width * 0.28,
                    child: Card(
                      shadowColor: index == 0 ? Color(0xff50F8EF) : Colors.grey ,
                      elevation: index == 0 ? 10 : 0,
                      shape: Border.all(
                      color:  index == 0 ? Color(0xff50F8EF) : Colors.grey,
                    ) ,
                      child: Column(
                        children: [
                          Spacer(),
                          Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Theme.of(context).primaryColor)),
                              child: Image.asset(male)), Spacer(flex: 2,),
                          Text(
                            "صالون رجالي",
                            style: Theme.of(context).textTheme.headline1,
                          ),
                          Spacer(),
                        ],
                      ),
                    )

                    ),
              ),
              Spacer(),
              InkWell(
                onTap: () {
                  setState(() {
                    index = 1;
                  });
                },
                child: SizedBox(
                  height: 120,
                  width: _width * 0.28,
                  child: Card(
                    shadowColor: index == 1 ? Color(0xff50F8EF) : Colors.grey ,
                    elevation: index == 1 ? 10 : 0,
                    shape: Border.all(
                      color:   index == 1 ? Color(0xff50F8EF) : Colors.grey ,
                    ) ,
                    child: Column(
                      children: [
                        Spacer(),
                        Container(
                            height: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Theme.of(context).primaryColor)),
                            child: Image.asset(female)), Spacer(flex: 2,),
                        Text(
                          "صالون نسائي",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                        Spacer(),
                      ],
                    ),
                  )
                ),
              ),
              Spacer(),
            ],
          ),
          Spacer(),

          CustomButton(
            title: "التالي" ,
            onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (BuildContext context ){
                           return EnterDataScreen();
                         } ) );
            } ,
          ),
          Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
