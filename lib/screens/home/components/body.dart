import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:product_featuring/constants.dart';
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
          Recommended_card(size: size),
        ],
      ),
    );
  }
}

class Recommended_card extends StatelessWidget {
  const Recommended_card({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: sDefaultPadding,
        top: sDefaultPadding/2,
        bottom: sDefaultPadding*2.5,
      ),
      width: size.width*0.4,
      child: Column(
        children: [
          Image.asset('assets/images/image_1.png'),
          Container(
            padding: EdgeInsets.all(sDefaultPadding/2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                offset: Offset(0,10),
                blurRadius: 50,
                color: sPrimaryColor.withOpacity(0.23),
              ),
              ]
            ),
            child: Row(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "samantha\n".toUpperCase(),
                        style: Theme.of(context).textTheme.button,
                      ),
                      TextSpan(
                        text: "Russio\n".toUpperCase(),
                        style: TextStyle(
                          color: sPrimaryColor.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Text(
                  '\$400',
                  style: Theme.of(context).textTheme.button!.copyWith(
                    color: sPrimaryColor
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

    );
  }
}



