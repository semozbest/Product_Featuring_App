import 'package:flutter/material.dart';

import '../../../constants.dart';

class Title_with_custome_underline extends StatelessWidget {
  const Title_with_custome_underline({
    Key? key,required this.txt
  }) : super(key: key);
  final String txt;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: sDefaultPadding/4,top: sDefaultPadding/4),
            child: Text(
              txt,
              style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: sDefaultPadding/4),
              color: sPrimaryColor.withOpacity(0.2),
              height: 7,
            ),
          ),
        ],
      ),

    );
  }
}
