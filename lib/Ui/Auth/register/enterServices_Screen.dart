import 'package:flutter/material.dart';
import 'package:treamer/utils/Images/images.dart';
import 'package:treamer/utils/widgets/WorkTimePicker_widget.dart';
import 'package:treamer/utils/widgets/customButton_widget.dart';

import 'enterPhone_Screen.dart';

class EnterServicesScreen extends StatefulWidget {
  @override
  _EnterServicesScreenState createState() => _EnterServicesScreenState();
}

class _EnterServicesScreenState extends State<EnterServicesScreen> {
//  bool _active = false;
//
//  void _handleTap(index) {
//    setState(() {
//      _active = !_active;
//    });
//  }
  var selected;
  Set active = {};
  bool value =false;
  void _handleTap(index) {
    setState(() {
      active.contains(index) ? active.remove(index) : active.add(index);
    });
  }

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Column(
            children: [
              Center(
                  child: ClipOval(
                      child: CircleAvatar(
                          radius: 80,
                          backgroundColor: Colors.white,
                          child: Image.asset(logo)))),
              Text(
                "أضف خدماتك وأوقات العمل",
                style: Theme.of(context).textTheme.headline4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "الخدمات",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Image.asset(editIcon)
                ],
              ),
              SizedBox(
                height: 170,
                child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, index) {
                      return Column(
                        children: [
                          InkWell(
                            onTap: () {
                              _handleTap(index);
                              print(active);
                            },
                            child: SizedBox(
                                height: 120,
                                width: _width * 0.28,
                                child: Card(
                                  shadowColor: active.contains(index)
                                      ? Color(0xff50F8EF)
                                      : Colors.grey,
                                  elevation: active.contains(index) ? 10 : 0,
                                  shape: Border.all(
                                    color: active.contains(index)
                                        ? Color(0xff50F8EF)
                                        : Colors.grey[200],
                                  ),
                                  child: Column(
                                    children: [
                                      Spacer(),
                                      Container(
                                          height: 70,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                  color: Theme.of(context)
                                                      .accentColor)),
                                          child: Image.asset(
                                            index == 0
                                                ? trimer
                                                : index == 1
                                                ? shortHair
                                                : index == 2
                                                ? beard
                                                : face,
                                          )),
                                      Spacer(
                                        flex: 2,
                                      ),
                                      Text(
                                        index == 0
                                            ? "حلاقة شعر"
                                            : index == 1
                                            ? "غسيل رأس"
                                            : index == 2
                                            ? "حلاقة اللحية"
                                            : "سنفره الوجه",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline1,
                                      ),
                                      Spacer(),
                                    ],
                                  ),
                                )),
                          ),
                          active.contains(index)
                              ? Row(
                            children: [
                              SizedBox(

                                width: _width * 0.08,
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                              Text("ريال")
                            ],
                          )
                              : SizedBox(
                            width: 1,
                            height: 1,
                          ),
                        ],
                      );
                    }),
              ),
              Row(
                children: [
                  Text(
                    "أيام وموعد دوام العمل",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ],
              ),
              SizedBox(height: 10 ,),
              WorkTiemPicker(),
              SizedBox(height: 20 ,),
              Row(
                children: [
                  Text(
                    "عدد كراسي الحلاقة",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  Spacer(),
                  Container(
                    height: 25,
                    width: _width * 0.12,
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: DropdownButton(underline: SizedBox(),
                          iconDisabledColor: Colors.white,
                          iconEnabledColor:  Colors.white,
                          value: selected,
                          hint: Text("1",style:  TextStyle(
                              color: Colors.white
                          )  ,) ,

                          onChanged: (val) {
                            setState(() {
                              selected = val;
                            });
                          },
                          items: List.generate(
                              20,
                                  (index) => DropdownMenuItem(
                                  value: index+1 ,
                                  child: Text((index+1).toString(),style: TextStyle(
                                      fontSize: 14,

                                      color:Colors.black
                                  ) ,)))),
                    ),
                  ),
                  Spacer(
                    flex: 8,
                  ),
                ],
              ),
              SizedBox(height: 15 ,),
              Divider(color : Theme.of(context).primaryColor ,),

              Row(children: [
                Checkbox(value: value , onChanged: (val){
                  setState(() {
                    value =val;
                  });
                } ),
                Text("الموافقة على شروط الخدمة",style:  Theme.of(context).textTheme.headline1,)
              ],),
              SizedBox(height: 20 ,),
              CustomButton(
                title: "حفظ البيانات" ,
                onTap: (){
                  Navigator.push(context , MaterialPageRoute(builder: (BuildContext context){
                    return EnterPhoneNumberScreen();
                  } ) );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
