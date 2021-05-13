import 'package:flutter/material.dart';

import '../../../constants.dart';

class Featured_item extends StatelessWidget {
  const Featured_item({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child:Row(
          children: [
            Featured_card(size: size, image: "assets/images/bottom_img_1.png",press: (){}),
            Featured_card(size: size, image: "assets/images/bottom_img_2.png",press: (){}),
          ],
        ));
  }
}

class Featured_card extends StatelessWidget {
  const Featured_card({
    Key? key,
    required this.size, required this.image, required this.press,
  }) : super(key: key);

  final Size size;
  final String image;
  final void Function () press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
          left: sDefaultPadding/2,
          top: sDefaultPadding/2,
          bottom:sDefaultPadding/2,
        ),
        height: 185,
        width: size.width*0.8,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(image),
            )
        ),
      ),
    );
  }
}





