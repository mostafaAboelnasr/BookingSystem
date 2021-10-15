
import 'package:flutter/cupertino.dart';

class text_sub_title extends StatelessWidget{
  String txt;
  Color color;
  double size;
  text_sub_title(this.txt,this.color,this.size);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(txt, style: new TextStyle(color: color,
      fontSize: size,
      // height: 1.2,
      fontFamily:'font',

    ),
      textDirection: TextDirection.ltr,
    );
  }

}