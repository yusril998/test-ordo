import 'package:flutter/material.dart';
import 'package:test2/respons/Product.dart';
import 'package:test2/utils/app_sizes.dart';
import 'package:test2/utils/cons_colors.dart';
import 'package:test2/utils/constants.dart';

class TitleHead extends StatelessWidget {
  final Color color;
  final Product product;
  const TitleHead({
    Key key,
    this.color,
    // by default isSelected is false
    this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.title.toString(),
                style: Theme.of(context).textTheme.button.copyWith(
                    color: green,
                    fontSize: FontSize.s15,
                    
                    fontWeight: FontWeight.w600),
              ),
             
              Text(
                product.price.toString(),
                style: Theme.of(context).textTheme.button.copyWith(
                    color: blue,
                    fontSize: FontSize.s15,
                    decoration: TextDecoration.lineThrough,
                    fontWeight: FontWeight.w300),
              ),
              Text(
                product.price.toString(),
                style: Theme.of(context).textTheme.button.copyWith(
                    fontSize: FontSize.s15,
                    color: blue,
                    fontWeight: FontWeight.w700),
              ),
              
            ],
          ),
          Spacer(),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(Sizes.s5),
                    decoration: BoxDecoration(
                      color: yellow,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(7),
                        topRight: Radius.circular(7),
                        bottomRight: Radius.circular(7),
                        bottomLeft: Radius.circular(7),
                      ),
                    ),
                    child: Text(
                      "Barang Bekas",
                      style: Theme.of(context)
                          .textTheme
                          .button
                          .copyWith(color: Colors.white, fontSize: Sizes.s10),
                    ),
                  ),
                  SizedBox(width: Sizes.s12),
                  Container(
                    padding: EdgeInsets.all(Sizes.s5),
                    decoration: BoxDecoration(
                      color: blue,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(7),
                        topRight: Radius.circular(7),
                        bottomRight: Radius.circular(7),
                        bottomLeft: Radius.circular(7),
                      ),
                    ),
                    child: Text(
                      "Stok 100",
                      style: Theme.of(context)
                          .textTheme
                          .button
                          .copyWith(color: Colors.white, fontSize: Sizes.s10),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: Sizes.s15),
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
                      .copyWith(color: Colors.white, fontSize: Sizes.s10),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
