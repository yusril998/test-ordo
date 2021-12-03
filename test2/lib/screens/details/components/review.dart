import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test2/screens/widgets/photo_circle.dart';
import 'package:test2/utils/app_sizes.dart';
import 'package:test2/utils/cons_colors.dart';

class ReviewCard extends StatelessWidget {
 final String name;
 final String url;
 final String desc;
   ReviewCard({
    Key key,
    this.name,
    this.url,
    this.desc
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                      height: Sizes.s45,
                      width: Sizes.s45,
                      child: PhotoChircle(url: url)),
                  SizedBox(width: Sizes.s15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                       name,
                        style: Theme.of(context).textTheme.button.copyWith(
                            color: green,
                            fontSize: FontSize.s15,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "14 min",
                        style: Theme.of(context).textTheme.button.copyWith(
                            color: grey,
                            fontSize: FontSize.s9,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
              Wrap(
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.solidStar,
                    color: red,
                    size: Sizes.s12,
                  ),
                  SizedBox(width: Sizes.s9),
                  Text(
                    "5.0",
                    style: Theme.of(context).textTheme.button.copyWith(
                        color: green,
                        fontSize: FontSize.s12,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height:Sizes.s12),
          Text(
           desc,
            style: TextStyle(height: 1.5, fontSize: Sizes.s12, color: green),
          ),
          SizedBox(height:Sizes.s12),
        ],
      ),
    );
  }
}
