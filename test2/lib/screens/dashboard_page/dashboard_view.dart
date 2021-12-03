import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test2/blocs/Dashboard_bloc/dashboard_bloc.dart';
import 'package:test2/respons/Product.dart';
import 'package:test2/screens/checkout/checkout_screen.dart';
import 'package:test2/screens/dashboard_page/component/itemBanner.dart';
import 'package:test2/screens/dashboard_page/component/search.dart';
import 'package:test2/screens/details/details_screen.dart';
import 'package:test2/screens/widgets/showcase.dart';
import 'package:test2/utils/app_sizes.dart';
import 'package:test2/utils/cons_colors.dart';

import 'component/item_card.dart';

class DashboardView extends StatefulWidget {
  DashboardView({Key key}) : super(key: key);

  @override
  _DashboardViewState createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final DashboardBloc _dashboardBloc = DashboardBloc();
  TextEditingController controller = new TextEditingController();
  int _currentIndex = 0;
  List<String> cardList = [
    'assets/images/banner.png',
    'assets/images/banner.png'
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  void initState() {
    _dashboardBloc.add(DashboardEvent(0));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DashboardBloc>(
      create: (context) => _dashboardBloc,
      child: BlocListener<DashboardBloc, DashboardState>(
          // ignore: missing_return
          listener: (context, state) async {
            if (state is DashboardState) {
            } else {}
            // do stuff here based on BlocA's state
          },
          child: main(context)),
    );
  }

  Widget main(BuildContext c) {
    var size = MediaQuery.of(c).size;
    return Scaffold(
        backgroundColor: mainBg,
        body: SafeArea(
          child: Padding(
            padding:
                EdgeInsets.symmetric(vertical: Sizes.s10, horizontal: Sizes.s5),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: SearchWidget()),
                      InkWell(
                        onTap: () =>
                            showInFlushBar(context, 3, "Page filter action"),
                        child: Image.asset("assets/icons/btnFilter.png",
                            height: Sizes.s45, width: Sizes.s45),
                      ),
                      InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CheckoutScreen(),
                            )),
                        child: Image.asset("assets/icons/btnStore.png",
                            height: Sizes.s45, width: Sizes.s45),
                      ),
                      InkWell(
                        onTap: () =>
                            showInFlushBar(context, 3, "Page notif action"),
                        child: Image.asset("assets/icons/btnNotif.png",
                            height: Sizes.s45, width: Sizes.s45),
                      ),
                    ],
                  ),
                  SizedBox(height: Sizes.s12),
                  CarouselSlider(
                    options: CarouselOptions(
                        autoPlay: true,
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
                        }),
                    items: cardList.map((item) {
                      return ItemBanner(c: context, image: item.toString());
                    }).toList(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: map<Widget>(cardList, (index, url) {
                      return Container(
                        width: _currentIndex == index ? 30 : 10.0,
                        height: 10.0,
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 2.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: _currentIndex == index
                              ? Colors.blue
                              : Colors.blue.withOpacity(0.3),
                        ),
                      );
                    }),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: Sizes.s12),
                    child: GridView.builder(
                        shrinkWrap: true,
                        itemCount: products.length,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 0.1,
                          crossAxisSpacing: Sizes.s12,
                          childAspectRatio: 0.55,
                        ),
                        itemBuilder: (context, index) => ItemCard(
                              product: products[index],
                              press: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailsScreen(
                                      product: products[index],
                                    ),
                                  )),
                            )),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
