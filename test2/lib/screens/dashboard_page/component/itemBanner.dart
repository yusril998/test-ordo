import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test2/utils/app_sizes.dart';
import 'package:test2/utils/cons_colors.dart';

class ItemBanner extends StatelessWidget {
  final String image;
  final BuildContext c;

  const ItemBanner({Key key, this.image,this.c}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal:Sizes.s5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(color: mainBg, blurRadius: 2),
        ],
         image: DecorationImage(
          image: AssetImage(
              image),
          fit: BoxFit.fill,
        ),
      ),
     
    );
  }
}