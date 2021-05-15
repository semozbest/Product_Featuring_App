import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:product_featuring/constants.dart';
import 'package:product_featuring/screens/details/components/title_and_price.dart';

import 'image_and_icons.dart';

class Body extends StatelessWidget {
  const Body();

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(size: size),
          TitleAndPrice(title: "Angelica",price: 400,country: "Russia",),
          SizedBox(height: sDefaultPadding,),
          Row(
            children: [
              SizedBox(
                width: size.width/2,
                height: 84,
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Color(
                        sPrimaryColor.value,
                      )

                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                        )
                      )
                    ),
                  ),
                  onPressed: (){},
                  child: Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: size.width/2,
                height: 84,
                child: Expanded(child: TextButton(
                  onPressed: (){},
                  child: Text("Description"),
                ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
