import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test2/respons/Product.dart';
import 'package:test2/screens/widgets/button_widget.dart';
import 'package:test2/utils/app_sizes.dart';
import 'package:test2/utils/cons_colors.dart';
import 'review.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // It provide us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Sizes.s20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
            Widget>[
          SizedBox(
            height: Sizes.s20,
          ),
          ReviewCard(product: products[0]),
          SizedBox(
            height: Sizes.s20,
          ),
          ReviewCard(product: products[2]),
          SizedBox(
            height: Sizes.s20,
          ),
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
                    "Catatan Pesanan",
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
              )),
          SizedBox(height: Sizes.s20),
          Text(
            "Detail Pembayaran",
            style: Theme.of(context).textTheme.button.copyWith(
                color: green, fontWeight: FontWeight.w700, fontSize: Sizes.s15),
          ),
          SizedBox(height: Sizes.s10),
          label(context, products[0].title, products[0].price),
          SizedBox(height: Sizes.s10),
          label(context, products[1].title, products[1].price),
          SizedBox(height: Sizes.s10),
          label2(context, "Ongkos Kirim", "Rp. 20.000"),
          Divider(
            thickness: 0.2,
            color: green,
          ),
          label2(context, "Sub Total", "Rp. 400.000"),
          SizedBox(height: Sizes.s10),
          Container(
            padding:
                EdgeInsets.symmetric(horizontal: Sizes.s10, vertical: Sizes.s5),
            decoration: BoxDecoration(
              color: darkBlue,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(7),
                topRight: Radius.circular(7),
                bottomRight: Radius.circular(7),
                bottomLeft: Radius.circular(7),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Waktu Pengantaran",
                  style: Theme.of(context)
                      .textTheme
                      .button
                      .copyWith(color: Colors.white, fontSize: Sizes.s15),
                ),
                SizedBox(width: Sizes.s7),
                Icon(
                  Icons.arrow_forward_ios,
                  size: Sizes.s15,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          SizedBox(height: Sizes.s20),
          Container(
            padding:
                EdgeInsets.symmetric(horizontal: Sizes.s10, vertical: Sizes.s5),
            decoration: BoxDecoration(
              color: darkBlue,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(7),
                topRight: Radius.circular(7),
                bottomRight: Radius.circular(7),
                bottomLeft: Radius.circular(7),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Alamat Pengiriman",
                  style: Theme.of(context)
                      .textTheme
                      .button
                      .copyWith(color: Colors.white, fontSize: Sizes.s15),
                ),
                SizedBox(width: Sizes.s7),
                Icon(
                  Icons.arrow_forward_ios,
                  size: Sizes.s15,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          SizedBox(height: Sizes.s20),
          Container(
            padding:
                EdgeInsets.symmetric(horizontal: Sizes.s10, vertical: Sizes.s5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(7),
                topRight: Radius.circular(7),
                bottomRight: Radius.circular(7),
                bottomLeft: Radius.circular(7),
              ),
            ),
            child: Text(
              "Tolong pastikan semua pesanan anda sudah benar dan tidak kurang ",
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .button
                  .copyWith(color: green, fontSize: Sizes.s15),
            ),
          ),
          SizedBox(height: Sizes.s20),
          ButtonWidget(
            buttonName: "Bayar Sekarang",
            onTap: null,
            maincontext: context,
            isLoading: false,
            color: darkBlue,
          )
        ]),
      ),
    );
  }

  Widget label(BuildContext context, String label, String price) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: Theme.of(context).textTheme.button.copyWith(
                  color: green,
                  fontWeight: FontWeight.w700,
                  fontSize: Sizes.s15),
            ),
            Text(
              "(Qty : 1)",
              style: Theme.of(context)
                  .textTheme
                  .button
                  .copyWith(color: green, fontSize: Sizes.s15),
            ),
          ],
        ),
        SizedBox(width: Sizes.s7),
        Text(
          price,
          style: Theme.of(context)
              .textTheme
              .button
              .copyWith(color: green, fontSize: Sizes.s15),
        ),
      ],
    );
  }

  Widget label2(BuildContext context, String label, String price) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.button.copyWith(
              color: green, fontWeight: FontWeight.w700, fontSize: Sizes.s15),
        ),
        SizedBox(width: Sizes.s7),
        Text(
          price,
          style: Theme.of(context)
              .textTheme
              .button
              .copyWith(color: green, fontSize: Sizes.s15),
        ),
      ],
    );
  }
}
