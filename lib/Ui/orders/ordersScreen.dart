import 'package:flutter/material.dart';

class OrdersScreen extends StatefulWidget {
  @override
  _OrdersScreenState createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white ,
      appBar: AppBar(
        title: Text(
          "الطلبات",
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: 40 ,
              child: Card(
                elevation:2 ,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                  children: [
                    Expanded (
                      child: Container(
                        
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5) ,
                          color: index == 0 ? Theme.of(context).primaryColor : Colors.white
                        ) ,
                      
                        child: Center(
                          child: InkWell(

                            child: Text("قيد التنفيذ",style:
                              TextStyle(
                                color:  index == 0 ?   Colors.white : Colors.black
                              ),) ,
                            onTap: (){
                               setState(() {
                                 index = 0;
                               });
                            } ,
                          ),
                        ),
                      ),
                    ),  Expanded(
                      child: Container(
                        decoration: BoxDecoration(  borderRadius: BorderRadius.circular(5) ,
                            color: index == 1 ? Theme.of(context).primaryColor : Colors.white
                        ) ,
                        child: Center(
                          child: InkWell(

                            child: Text("تم القبول",style:
                            TextStyle(
                                color:  index == 1 ?   Colors.white : Colors.black
                            ),) ,
                            onTap: (){  setState(() {
                              index = 1;
                            });} ,
                          ),
                        ),
                      ),
                    ),  Expanded(
                      child: Container(
                        decoration: BoxDecoration(  borderRadius: BorderRadius.circular(5) ,
                            color: index == 2 ? Theme.of(context).primaryColor : Colors.white
                        ) ,
                        child: Center(
                          child: InkWell(

                            child: Text("تم الرفض",style:
                            TextStyle(
                                color:  index == 2 ?   Colors.white : Colors.black
                            ),) ,
                            onTap: (){  setState(() {
                              index = 2;
                            });} ,
                          ),
                        ),
                      ),
                    ),
                  ],
                ) ,
              ),
            )
          ],
        ),
      ) ,
    );
  }
}
