import 'package:flutter/material.dart';
import 'package:test2/screens/checkout/components/body.dart';
import 'package:test2/utils/app_sizes.dart';
import 'package:test2/utils/cons_colors.dart';

class CheckoutScreen extends StatelessWidget {


  const CheckoutScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      backgroundColor: mainBg,
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: mainBg,
      elevation: 0,
      title: Text("Checkout",
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
      actions: <Widget>[],
    );
  }
}
