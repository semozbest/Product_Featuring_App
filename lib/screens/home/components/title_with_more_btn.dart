import 'package:flutter/material.dart';
import 'package:product_featuring/screens/home/components/title_with_custome_underline.dart';

import '../../../constants.dart';
class Title_with_more_btn extends StatelessWidget {
  const Title_with_more_btn({required this.txt,required this.press
  });

  final String txt;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: sDefaultPadding),
      child: Row(
        children: [
          Title_with_custome_underline(txt:txt),
          Spacer(),
          TextButton(
              style: ButtonStyle(
                backgroundColor:MaterialStateProperty.all<Color>(
                    Color(
                      sPrimaryColor.value,
                    )
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                ),
              ),
              onPressed: (){},
              child: Text("More",
                style:TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}