import 'package:flutter/material.dart';
import 'package:treamer/utils/widgets/customButton_widget.dart';
import 'package:treamer/utils/widgets/customTextField_Widget.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "الملف الشخصي",
          style: Theme.of(context).textTheme.headline4,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_forward,
                color: Colors.black,
              ))
        ],
      ),
      body: SingleChildScrollView (
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child:
          Column(
            children: [
              Align (
          alignment: AlignmentDirectional.topStart,
                  child: Text("معلومات الحساب",  style: Theme.of(context).textTheme.headline4,)),
              SizedBox(
                height: 15 ,
              ),
              Align (
                alignment: AlignmentDirectional.topStart,
                child: Text("الاسم",style: Theme.of(context).textTheme.headline2.copyWith(
                  color: Color(0xff707070)
                ) ,),
              ),
              SizedBox(
                height: 10 ,
              ),
              CustomTextField(
                title: "" ,
                initialValue: "فهد فيصل الحضرمي" ,

              ),
              SizedBox(
                height: 7 ,
              ),
              Align (
                alignment: AlignmentDirectional.topStart,
                child: Text("اسم الصالون",style: Theme.of(context).textTheme.headline2.copyWith(
                  color: Color(0xff707070)
                ) ,),
              ),
              SizedBox(
                height: 10 ,
              ),
              CustomTextField(
                title: "" ,
                initialValue: "صالون فهد" ,

              ),SizedBox(
                height: 7 ,
              ),

              Align (
                alignment: AlignmentDirectional.topStart,
                child: Text("رقم الجوال",style: Theme.of(context).textTheme.headline2.copyWith(
                  color: Color(0xff707070)
                ) ,),
              ),
              SizedBox(
                height: 10 ,
              ),
              CustomTextField(
                title: "" ,
                initialValue: "152155555" ,

              ),SizedBox(
                height: 7 ,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 18 ),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                       Icon(Icons.location_on,color: Theme.of(context).primaryColor ,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Text('طريق الملك فهد، الوشام  12741، المملكة العربية السعودية',style: Theme.of(context).textTheme.headline1 ,),
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

              Align (
                alignment: AlignmentDirectional.topStart,
                child: Text("نوع الحساب",style: Theme.of(context).textTheme.headline2.copyWith(
                  color: Color(0xff707070)
                ) ,),
              ),SizedBox(
                height: 10 ,
              ),
              CustomTextField(
                title: "" ,
                initialValue: "صالون رجالي" ,

              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.1 ,
              ),
              CustomButton(
                title: "تحديث" ,
                onTap: (){} ,
              )
            ],
          ),
        ),
      ),
    );
  }
}
