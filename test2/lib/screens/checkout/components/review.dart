import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test2/respons/Product.dart';
import 'package:test2/screens/widgets/photo_circle.dart';
import 'package:test2/screens/widgets/showcase.dart';
import 'package:test2/utils/app_sizes.dart';
import 'package:test2/utils/cons_colors.dart';

class ReviewCard extends StatelessWidget {
  final Product product;
  ReviewCard({
    Key key,
    this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.25,
      child: content(context),
      
      secondaryActions: <Widget>[
        InkWell(
          onTap: (){
            showInFlushBar(context, 1, "Action hapus");
          },
                  child: Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.only(left:Sizes.s20, top: Sizes.s20),
            child: Image.asset("assets/icons/trash.png",height: Sizes.s60,width: Sizes.s60,)),
        ),
         
      ],
    );
  }

  Widget content(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(Sizes.s15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 50,
                color: green.withOpacity(0.23),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                          height: Sizes.s60,
                          width: Sizes.s60,
                          child: PhotoChircle(url: product.image)),
                      SizedBox(width: Sizes.s15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.title,
                            style: Theme.of(context).textTheme.button.copyWith(
                                color: green,
                                fontSize: FontSize.s15,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            product.price.toString(),
                            style: Theme.of(context).textTheme.button.copyWith(
                                color: blue,
                                fontSize: FontSize.s13,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
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
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.plus,
                              size: Sizes.s10,
                              color: Colors.white,
                            ),
                            SizedBox(width: Sizes.s7),
                            Text(
                              "1",
                              style: Theme.of(context)
                                  .textTheme
                                  .button
                                  .copyWith(
                                      color: Colors.white, fontSize: Sizes.s10),
                            ),
                            SizedBox(width: Sizes.s7),
                            Icon(
                              FontAwesomeIcons.minus,
                              size: Sizes.s10,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: Sizes.s7),
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
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.pen,
                              size: Sizes.s10,
                              color: Colors.white,
                            ),
                            SizedBox(width: Sizes.s7),
                            Text(
                              "Catatan",
                              style: Theme.of(context)
                                  .textTheme
                                  .button
                                  .copyWith(
                                      color: Colors.white, fontSize: Sizes.s10),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: Sizes.s12),
            ],
          ),
        ),
        SizedBox(height: Sizes.s10),
        Container(
            padding: EdgeInsets.all(Sizes.s15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: green.withOpacity(0.23),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Catatan Item",
                  style: Theme.of(context).textTheme.button.copyWith(
                      color: green,
                      fontSize: FontSize.s12,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: Sizes.s10),
                TextField(
                  maxLines: 2,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(Sizes.s10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintStyle: Theme.of(context)
                          .textTheme
                          .display1
                          .copyWith(fontSize: FontSize.s13, color: grey),
                      hintText: "Ketik disini..",
                      fillColor: Colors.white70),
                ),
              ],
            ))
      ],
    );
  }
}
