import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test2/utils/app_sizes.dart';
import 'package:test2/utils/cons_colors.dart';

class SearchWidget extends StatefulWidget {
  SearchWidget({Key key}) : super(key: key);

  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  TextEditingController controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(Sizes.s6),
      decoration: BoxDecoration(
        color: mainGreyBg,
        borderRadius: BorderRadius.circular(Sizes.s8),
      ),
      margin: EdgeInsets.fromLTRB(Sizes.s10, Sizes.s5, Sizes.s10, Sizes.s10),
      child: Row(
        children: [
          SizedBox(
            width: Sizes.s5,
          ),
          new Icon(
            Icons.search,
            size: Sizes.s17,
            color: mainGrey,
          ),
          SizedBox(
            width: Sizes.s5,
          ),
          Flexible(
            child: new TextFormField(
              controller: controller,
              decoration: new InputDecoration(
                hintText: "Cari dengan mengetik Barang",
                 hintStyle: TextStyle(fontSize: Sizes.s12, color: mainGrey),
                isDense: true,
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                    horizontal: Sizes.s0, vertical: Sizes.s0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
