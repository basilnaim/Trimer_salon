import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  final String title;
  final String initialValue ;
  CustomTextField({this.title,this.initialValue});
  @override
  Widget build(BuildContext context) {
    return  Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(5) ,
      shadowColor: Theme.of(context).accentColor ,
      child: TextFormField(

        initialValue: initialValue ,
        autofocus: false,
        decoration: InputDecoration(

            hintText: title,
            fillColor: Colors.white,
            filled: true,
            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(5.0),
                borderSide: BorderSide(color: Colors.white, width: 3.0))
        ),
      ),
    );
  }
}
