
import 'package:flutter/cupertino.dart';
class text_title extends StatelessWidget{
  String txt;
  Color color;
  double fontSize;
  text_title(this.txt,this.color,this.fontSize);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(txt, style: new TextStyle(color: color,

        fontSize: fontSize,
        // height: 1.2,
        fontFamily:'font',
        fontWeight: FontWeight.bold
    ),maxLines: 1,);
  }

}