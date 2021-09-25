import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Function onTap;
  CustomButton({this.title,this.onTap});

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    return InkWell (
      onTap:  onTap ,
      child: Container(
        child: Center(
            child: Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline4.copyWith(
                color: Colors.white,
              ),
        )),
        height: 52,
        width: _width * 0.9,
        decoration: BoxDecoration(
            gradient: LinearGradient(stops: [
              0.3,
              0.5
            ], colors: [
              Theme.of(context).accentColor,
              Theme.of(context).primaryColor,
            ]),
            borderRadius: BorderRadius.circular(5)),
      ),
    );
  }
}
