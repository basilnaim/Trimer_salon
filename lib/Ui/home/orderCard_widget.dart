import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                "الخدمة",
                style: Theme.of(context).textTheme.headline3,
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "حلاقة شعر",
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                "10 ريال",
                style: Theme.of(context).textTheme.headline1,
              ),
            ],
          ),
          Divider(),
          Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                "يوم وساعة الحجز",
                style: Theme.of(context).textTheme.headline3,
              )),
          Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                "يوم الاثنين 10/9, الساعة 10:30 صباحا",
                style: Theme.of(context).textTheme.headline1,
              )),
          SizedBox(
            height: 20 ,
          ),
          Row(children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
 
                  height: 52 ,
                  child: Center(
                    child: Text("قبول",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline4.copyWith(
                        color: Colors.white,
                      ),),
                  ) ,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8) ,
                    gradient: LinearGradient(
                       colors: [

                         Color(0xff6BCC5E),
                         Color(0xff4B9641),
                       ]
                    )
                  ) ,
                ),
              ),
            ),
            Expanded (
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 52 ,
                  child: Center(
                    child: Text("رفض",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline4.copyWith(
                        color: Colors.white,
                      ),),
                  ) ,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8) ,
                      gradient: LinearGradient(
                          colors: [
                            Color(0xffDD7373),
                            Color(0xffFF6767),
                          ]
                      )
                  ) ,
                ),
              ),
            )
          ],)
        ],
      ),
    );
  }
}
