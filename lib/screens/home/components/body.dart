import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:product_featuring/constants.dart';
import 'package:product_featuring/screens/home/components/recommended_items.dart';
import 'package:product_featuring/screens/home/components/title_with_more_btn.dart';

import 'header_with_searchbox.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          Title_with_more_btn(press: (){},txt:"Recommended"),
          Recommended_items(),
        ],
      ),
    );
  }
}





