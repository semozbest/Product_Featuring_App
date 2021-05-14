import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:product_featuring/components/my_bottom_navbar.dart';
import 'package:product_featuring/constants.dart';
import 'package:product_featuring/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: Botttom_navbar(),
    );
  }
    AppBar buildAppBar(){
      return AppBar(
      elevation: 0,
      leading: IconButton(icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: (){},
      ),
    );
  }
}
