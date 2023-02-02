import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project2/resources/recources.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//by using this package we can use the widget or create the widget when ever we want to implement is applications
class button extends StatefulWidget {

  // By using this we can crate the button in Application
  final String label;
  const button({Key? key, required this.label}) : super(key: key);

  @override
  State<button> createState() => _buttonState();
}

class _buttonState extends State<button> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(ColorManager.white),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
            side: BorderSide(width: 1.5, color: ColorManager.green),
          ),
        ),
      ),
      child: Text(
        widget.label,
        style: TextStyle(color: ColorManager.green, fontWeight: FontWeight.w500),
      ),
    );
  }
}

class drop_down_button extends StatefulWidget {

  //by using this we can create the drop down button
  const drop_down_button({Key? key}) : super(key: key);

  @override
  State<drop_down_button> createState() => _drop_down_buttonState();
}

class _drop_down_buttonState extends State<drop_down_button> {
  String initial = "Drink";

  var items = [
    'Drink',
    'ok',
    'Meat',
    'Food',
    'Lunch',
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      isDense: true,
      underline: Container(),
      style: TextStyle(color: ColorManager.green,fontSize: 20),
      value: initial,
      icon: const Icon(Icons.keyboard_arrow_down,color: ColorManager.green,size: 25,),
      items: items.map((String items) {
        return DropdownMenuItem(
          value: items,
          child: Text(items),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          initial = newValue!;
        });
      },
    );
  }
}


class option extends StatelessWidget {
  final String? text;
  final Color? container_color;
  final Color? icon_color;
  final Color? text_color;
  final IconData? icon;


  option({this.text, this.container_color,this.icon_color,this.text_color, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: container_color,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8)),
      ),
      padding: EdgeInsets.fromLTRB(15, 5, 15, 4),
      child: Row(
        children: [
          Icon(
            icon,
            color: icon_color,
            size: 18,
          ),
          Text(
            "$text",
            style: TextStyle(
                color: text_color, fontWeight: FontWeight.w600, fontSize: 12),
          )
        ],
      ),
    );
  }
}

class shop_detail extends StatelessWidget {

  //its use to give the deatil of the shop or uesd to give the info of the shop
  final EdgeInsetsGeometry? left_margin;
  final IconData? icon;
  final String? label;
  shop_detail({this.left_margin,this.icon,this.label});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: left_margin,
      child: Row(
        children: [
          Icon(
            icon,
            size: 20.r,
            color: Colors.green,
          ),
          Text(
            "$label",
            style: TextStyle(
                fontSize: 15.sp, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
