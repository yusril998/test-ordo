import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:test2/respons/Product.dart';
import 'package:test2/utils/app_sizes.dart';
import 'package:test2/utils/constants.dart';

class ProductTitleWithImage extends StatefulWidget {
  Product product;
  ProductTitleWithImage({
    Key key,
    @required this.product,
  }) : super(key: key);

  @override
  _ProductTitleWithImageState createState() => _ProductTitleWithImageState();
}

class _ProductTitleWithImageState extends State<ProductTitleWithImage> {
  int _currentIndex = 0;
  List<int> cardList = [1, 2];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: CarouselSlider(
            options: CarouselOptions(
              //autoPlay: true,
              aspectRatio: 16 / 8,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              pauseAutoPlayOnTouch: true,
              enlargeCenterPage: false,
              viewportFraction: 0.8,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            items: cardList.map((a) {
              return item();
            }).toList(),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: map<Widget>(cardList, (index, url) {
            return Container(
              width: _currentIndex == index ? 30 : 10.0,
              height: 10.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: _currentIndex == index
                    ? Colors.blue
                    : Colors.blue.withOpacity(0.3),
              ),
            );
          }),
        ),
      ],
    );
  }

  Widget item() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Image.asset(
        widget.product.image,
        fit: BoxFit.fill,
      ),
    );
  }
}
