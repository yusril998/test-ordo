import 'package:flutter/material.dart';
import 'package:test2/respons/Product.dart';
import 'package:test2/utils/app_sizes.dart';
import 'package:test2/utils/cons_colors.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  final Product product;

  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        // left: kDefaultPadding,
        top: Sizes.s12,
        bottom: Sizes.s12,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Stack(
              children: [
                Container(
                  height: 200,
                  padding: EdgeInsets.all(Sizes.s20),
                  decoration: BoxDecoration(
                    color: blue,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(Sizes.s5),
                  decoration: BoxDecoration(
                    color: yellow,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Text(
                    "5.0 | 200+ rating",
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: Colors.white, fontSize: Sizes.s9),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(
                Sizes.s12,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: blue.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.price.toString(),
                        style: Theme.of(context).textTheme.button.copyWith(
                            color: blue,
                            decoration: TextDecoration.lineThrough,
                            fontWeight: FontWeight.w300),
                      ),
                      Text(
                        product.price.toString(),
                        style: Theme.of(context)
                            .textTheme
                            .button
                            .copyWith(color: blue, fontWeight: FontWeight.w700),
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: product
                                    .title, //"$product.title\n".toUpperCase(),
                                style: Theme.of(context).textTheme.button),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(Sizes.s5),
                    decoration: BoxDecoration(
                      color: darkBlue,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(7),
                        topRight: Radius.circular(7),
                        bottomRight: Radius.circular(7),
                        bottomLeft: Radius.circular(7),
                      ),
                    ),
                    child: Text(
                      "DISKON 10%",
                      style: Theme.of(context)
                          .textTheme
                          .button
                          .copyWith(color: Colors.white, fontSize: Sizes.s7),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
