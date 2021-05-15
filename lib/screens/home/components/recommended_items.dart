import 'package:flutter/material.dart';
import 'package:product_featuring/screens/details/details_screen.dart';

import '../../../constants.dart';

class Recommended_items extends StatelessWidget {
  const Recommended_items({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
            Recommended_card(
              image:"assets/images/image_1.png" ,
              title: "Samantha",
              country: "Russia",
              price: 440,
              press: (){
                Navigator.push(
                    context, MaterialPageRoute(builder:(context)=>DetailsScreen(),
                ));
              },
            ),

          Recommended_card(
            image:"assets/images/image_2.png" ,
            title: "Samantha",
            country: "Russia",
            price: 440,
            press: (){
              Navigator.push(
                  context, MaterialPageRoute(builder:(context)=>DetailsScreen(),
              ));
            },
          ),
          Recommended_card(
            image:"assets/images/image_3.png" ,
            title: "Samantha",
            country: "Russia",
            price: 440,
            press: (){
              Navigator.push(
                  context, MaterialPageRoute(builder:(context)=>DetailsScreen(),
              ));
            },
          ),
        ],
      ),
    );
  }
}

class Recommended_card extends StatelessWidget {
  const Recommended_card({
    Key? key,
    required this.image, required this.title, required this.country, required this.price, required this.press,
  }) : super(key: key);


  final String image, title, country;
  final int price;
  final  Function() press;

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: sDefaultPadding,
        top: sDefaultPadding/2,
        bottom: sDefaultPadding*2.5,
      ),
      width: size.width*0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
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
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: "$country\n".toUpperCase(),
                          style: TextStyle(
                            color: sPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context).textTheme.button!.copyWith(
                        color: sPrimaryColor
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }
}