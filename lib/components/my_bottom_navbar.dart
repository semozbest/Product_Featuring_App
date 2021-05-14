import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';


class Botttom_navbar extends StatelessWidget {
  const Botttom_navbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0,-10),
            blurRadius: 35,
            color: sPrimaryColor.withOpacity(0.38),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: (){},
            icon:SvgPicture.asset("assets/icons/flower.svg"),
          ),
          IconButton(
            onPressed: (){},
            icon:SvgPicture.asset("assets/icons/heart-icon.svg"),
          ),
          IconButton(
            onPressed: (){},
            icon:SvgPicture.asset("assets/icons/user-icon.svg"),
          ),
        ],
      ),
    );
  }
}
