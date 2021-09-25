import 'package:flutter/material.dart';
import 'package:treamer/utils/Images/images.dart';

import 'drawer.dart';
import 'orderCard_widget.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer:   CustomDrawer(),
      backgroundColor:Colors.white ,
      appBar: AppBar(
        leading:  InkWell (
            onTap: (){
              _scaffoldKey.currentState.openDrawer();
            } ,
            child: Image.asset(menu)),
        actions: [
                   IconButton(onPressed: (){} , icon: Icon(Icons.notifications,color: Colors.black ,) )

        ],
        title: Text("طلب جديد",style: Theme.of(context).textTheme.headline4 ,) ,
        elevation:0 ,
        centerTitle: true ,
        backgroundColor: Colors.white ,
      ) ,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView.separated(
          separatorBuilder: (BuildContext context , index){
           return Divider(
             thickness: 1.5,
           );
          } ,
            itemCount: 2 ,

            itemBuilder: (BuildContext context ,index ){
           return Padding(
             padding: const EdgeInsets.symmetric(vertical: 10),
             child: OrderCard(),
           );
        } ),
      ) ,
    );
  }
}
