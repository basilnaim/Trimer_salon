import 'package:flutter/material.dart';
import 'package:treamer/Ui/orders/ordersScreen.dart';
import 'package:treamer/Ui/profile/profile_Screen.dart';
import 'package:treamer/utils/Images/images.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Spacer(),
            Align(
                alignment: AlignmentDirectional.topStart,
                child: Text(
                  "القائمه",
                  style: Theme.of(context).textTheme.headline5,
                )),
            Spacer(),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context ){
                  return ProfileScreen();
                } ) );
              },
              title: Text("الملف الشخصي"),
              leading: Icon(
                Icons.person,
                color: Color(0xff4236DD),
              ),
              trailing: Image.asset(forroward_icon),
            ),
            Divider(),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context ){
                  return OrdersScreen();
                } ) );
              },
              title: Text("الطلبات"),
              leading: Icon(
                Icons.border_all,
                color: Color(0xff4236DD),
              ),
              trailing: Image.asset(forroward_icon),
            ),
            Divider(),
            ListTile(
              title: Text("الدعم والمساعدة"),
              leading: Icon(
                Icons.settings,
                color: Color(0xff4236DD),
              ),
              trailing: Image.asset(forroward_icon),
            ),
            Divider(),
            ListTile(
              title: Text("تواصل معنا"),
              leading: Icon(
                Icons.mail,
                color: Color(0xff4236DD),
              ),
              trailing: Image.asset(forroward_icon),
            ),
            Divider(),
            Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                "شروط الاستخدام",
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            Spacer(
              flex: 5,
            ),
          ],
        ),
      ),
    );


  }
}
