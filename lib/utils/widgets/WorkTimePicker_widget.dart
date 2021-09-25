import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class WorkTiemPicker extends StatefulWidget {
  @override
  _WorkTiemPickerState createState() => _WorkTiemPickerState();
}

class _WorkTiemPickerState extends State<WorkTiemPicker> {
  int month = DateTime.now().month;
  int year = DateTime.now().year;

  Set active = {};

  void _handleTap(index) {
    setState(() {
      active.contains(index) ? active.remove(index) : active.add(index);
    });
  }
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Theme.of(context).accentColor,
                  )),
              Spacer(),
              Text(year.toString()),
              Text(" ,"),
              Text(month.toString()),
              Spacer(),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward_ios,
                      color: Theme.of(context).accentColor))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround ,
            children: List.generate(7, (index) => InkWell (
              onTap: (){
                _handleTap(index);
              } ,
              child: Column(
                children: [
                  Text(days[index],style: Theme.of(context).textTheme.headline1.copyWith(
                    fontSize: _width*0.035,
                    color: active.contains(index) ? Theme.of(context).primaryColor : Colors.grey
                  ) ,),
                ],
              ),
            ) )
          ),

         Column(
           children: [
             Row(mainAxisAlignment: MainAxisAlignment.spaceAround ,
               children:  List.generate(7, (index) =>
                   Column(
                     children: List.generate(1, (index) => Text("من") ) ,
                   )
               )

               ,
             ),
             Row(mainAxisAlignment: MainAxisAlignment.spaceAround ,
               children:  List.generate(7, (index) =>
                   Column(
                     children: List.generate(1, (index) => Container(
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(3) ,
                           color:  Theme.of(context).primaryColor
                       ) ,
                       width: 40 ,
                       height: 20,
                       child: Center(
                         child: Text("10 ص",style: TextStyle(
                             fontSize: 12,
                             color: Colors.white
                         ) ,),
                       ) ,
                     ) ) ,
                   )
               )

               ,
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround ,
               children:  List.generate(7, (index) =>
                   Column(
                     children: List.generate(1, (index) => Text("الي") ) ,
                   )
               )

               ,
             ),
             Row(mainAxisAlignment: MainAxisAlignment.spaceAround ,
               children:  List.generate(7, (index) =>
                   Column(
                     children: List.generate(1, (index) => Container(
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(3) ,
                           color:  Theme.of(context).primaryColor
                       ) ,
                       width: 40 ,
                       height: 20,
                       child: Center(
                         child: Text("10 م",style: TextStyle(
                             fontSize: 12,
                             color: Colors.white
                         ) ,),
                       ) ,
                     )) ,
                   )
               )

               ,
             ),
           ],
         ),
          SizedBox(height: 20 ,)
        ],
      ),
      decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).accentColor),
          borderRadius: BorderRadius.circular(8)),
    );
  }
  List days = [tr('saturday'),tr('sunday'),tr('monday'),tr('tuesday'),tr('wednesday'),tr('thursday'),tr('friday'),];
  List i = [0,1,2,3,4,5,6];
}
