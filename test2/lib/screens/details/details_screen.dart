import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test2/respons/Product.dart';
import 'package:test2/screens/details/components/body.dart';
import 'package:test2/utils/app_sizes.dart';
import 'package:test2/utils/cons_colors.dart';
import 'package:test2/utils/constants.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      backgroundColor: mainBg,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: mainBg,
      elevation: 0,
      title: Text("Produk Detail",
          style: Theme.of(context)
              .textTheme
              .button
              .copyWith(color: blue, fontSize: Sizes.s15)),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_rounded,
          color: blue,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: Image.asset("assets/icons/store.png",height: Sizes.s20,width: Sizes.s20,),
          onPressed: () {},
        ),
        IconButton(
          icon: Image.asset("assets/icons/notif.png",height: Sizes.s20,width: Sizes.s20),
          onPressed: () {},
        ),

        SizedBox(width: kDefaultPaddin / 2)],
    );
  }
}
