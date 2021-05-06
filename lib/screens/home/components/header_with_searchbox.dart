import 'package:flutter/material.dart';
import 'package:product_featuring/constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({required this.size});
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Stack(
        children: [
          Container(
            padding: EdgeInsets.only(
              left: sDefaultPadding,
              right: sDefaultPadding,
              bottom: sDefaultPadding+36,
            ),
            height: size.height*0.2-27,
            decoration: BoxDecoration(
              color:sPrimaryColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(36.0),
                  bottomRight: Radius.circular(36.0)
              ),
            ),
            child: Row(
              children: [
                Text(
                  "Hi UiShoppy!",
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                      color:Colors.white, fontWeight: FontWeight.bold
                  ),
                ),
                Spacer(),
                Image.asset("assets/images/logo.png"),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: sDefaultPadding),
              padding: EdgeInsets.symmetric(horizontal: sDefaultPadding),
              height: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0,10),
                    blurRadius: 50,
                    color: sPrimaryColor,
                  )
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(color: sPrimaryColor.withOpacity(0.5)),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  suffixIcon: Icon(Icons.search),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
