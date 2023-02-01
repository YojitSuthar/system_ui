import 'package:flutter/material.dart';
import 'package:project2/ui/screen/home_page_/reuse_widget.dart';
import 'package:project2/resources/recources.dart';

class home_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            top_noch_bar(),
            SizedBox(
              height: 1,
            ),
            Stack(
              children: [
                Image.asset(
                  height: 200,
                  width: 500,
                  fit: BoxFit.cover,
                  ImageAssets.company_image,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 12, top: 10),
                      height: 30,
                      child: Image.asset(
                          IconAssets.location_icon,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Johan - TW12 44GH - Londan",
                      style: TextStyle(
                          fontSize: 17, fontWeight: FontWeightManager.medium),
                    ),
                    SizedBox(
                      width: 112,
                    ),
                    Container(
                      child: Icon(
                        Icons.filter_list,
                        color: ColorManager.green,
                        size: 25,
                      ),
                    ),
                  ],
                ),
                Positioned(
                    left: 5,
                    top: 160,
                    height: 35,
                    child: CircleAvatar(
                      backgroundColor: ColorManager.black.withOpacity(0.5),
                      child: Icon(Icons.share,
                          size: 20, color: ColorManager.white),
                    )),
                Positioned(
                    top: 173,
                    left: 229,
                    child: Row(
                      children: [
                        option(
                          text: "Closed",
                          container_color: Colors.white.withOpacity(0.8),
                          icon_color: ColorManager.red_accent,
                          text_color: ColorManager.red_accent,
                          icon: Icons.add_business,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        option(
                          text: "Available",
                          container_color:
                              ColorManager.dark_green.withOpacity(0.7),
                          icon_color: ColorManager.green,
                          text_color: ColorManager.green,
                          icon: Icons.circle_outlined,
                        ),
                      ],
                    ))
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 0),
                          child: Icon(
                            Icons.heart_broken,
                            size: 30,
                            color: ColorManager.green,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 9, left: 5),
                          child: Text(
                            "TESCO",
                            style: getStyle(
                                 20,
                              FontWeightManager.bold,
                                ColorManager.red_accent,
                                ),
                          ),
                        )
                      ],
                    ),
                    Text(
                      "PIZZA AND KEBAB HALAL",
                      style: getStyle(
                            20,
                           FontWeightManager.bold,
                            ColorManager.green),
                    )
                  ],
                ),
                _shop_detail(),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            vendor_view(),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 20.0,
              width: 410.0,
              child: const Align(
                alignment: Alignment(-1.0, -1.0),
                child: drop_down_button(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 377,
              child: ListView(
                children: [
                  product_detail_view(),
                  SizedBox(
                    height: 10,
                  ),
                  product_detail_view(),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: bottom_navigation_bar(),
        floatingActionButton: buildFloatingActionButton(),
      ),
    );
  }

  Column _shop_detail() {
    return Column(
      children: [
        Column(
          children: [
            shop_detail(
                icon: Icons.location_on,
                label: "12 Km",
                left_margin: EdgeInsets.only(left: 40)),
            shop_detail(
                icon: Icons.fire_truck_sharp,
                label: "60 Minus",
                left_margin: EdgeInsets.only(left: 70)),
            shop_detail(
                icon: Icons.star,
                label: "4.5",
                left_margin: EdgeInsets.only(left: 25)),
          ],
        )
      ],
    );
  }

  FloatingActionButton buildFloatingActionButton() {
    return FloatingActionButton(
      backgroundColor: ColorManager.green,
      onPressed: () {},
      child: Image.asset(IconAssets.chat_icon),
    );
  }

  Container top_noch_bar() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              margin: EdgeInsets.only(top: 10), child: Icon(Icons.arrow_back)),
          SizedBox(
            width: 15,
          ),
          Container(
            width: 340.0,
            height: 40.0,
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
                border: Border.all(color: ColorManager.grey),
                borderRadius: BorderRadius.circular(5)),
            child: TextField(
              cursorColor: ColorManager.green,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: ColorManager.green,
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(12),
                hintText: "Search TESCO",
                // border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
              margin: EdgeInsets.only(top: 10),
              child: Icon(Icons.document_scanner_outlined))
        ],
      ),
    );
  }

  Container vendor_view() {
    return Container(
      margin: EdgeInsets.only(top: 5),
      height: 25,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          button(label: "Browse"),
          SizedBox(
            width: 10,
          ),
          button(label: "Offers"),
          SizedBox(
            width: 10,
          ),
          button(label: "Branches"),
          SizedBox(
            width: 10,
          ),
          button(label: "Vendor Profile"),
          SizedBox(
            width: 10,
          ),
          button(label: "Looyalty card"),
          SizedBox(
            width: 10,
          ),
          button(label: "Vendor Account"),
        ],
      ),
    );
  }

  Container bottom_navigation_bar() {
    return Container(
      height: 67,
      decoration: BoxDecoration(
        color: ColorManager.white,
        border: Border.all(color: ColorManager.black),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              IconButton(
                  enableFeedback: false,
                  onPressed: () {},
                  icon: Icon(
                    Icons.home,
                    color: ColorManager.green,
                    size: 35,
                  )),
              Text(
                "HOME",
                style: getTextStyle(
                      FontWeightManager.medium,
                      ColorManager.green),
              )
            ],
          ),
          Column(
            children: [
              IconButton(
                  enableFeedback: false,
                  onPressed: () {},
                  icon: Icon(
                    Icons.group,
                    color: ColorManager.green,
                    size: 30,
                  )),
              Text(
                "VENDORS",
                style: getTextStyle(
                     FontWeightManager.medium,
                     ColorManager.green),
              )
            ],
          ),
          Column(
            children: [
              IconButton(
                  enableFeedback: false,
                  onPressed: () {},
                  icon: Icon(
                    Icons.list,
                    color: ColorManager.green,
                    size: 30,
                  )),
              Text(
                "LIST",
                style: getTextStyle(
                     FontWeightManager.medium,
                     ColorManager.green),
              )
            ],
          ),
          Column(
            children: [
              IconButton(
                  enableFeedback: false,
                  onPressed: () {},
                  icon: Icon(
                    Icons.grid_on_rounded,
                    color: ColorManager.green,
                    size: 30,
                  )),
              Text(
                "CATEGORIES",
                style: getTextStyle(
                     FontWeightManager.medium,
                     ColorManager.green),
              )
            ],
          ),
          Column(
            children: [
              IconButton(
                  enableFeedback: false,
                  onPressed: () {},
                  icon: Icon(
                    Icons.add,
                    color: ColorManager.green,
                    size: 35,
                  )),
              Text(
                "MORE",
                style: getTextStyle(
                     FontWeightManager.medium,
                     ColorManager.green),
              )
            ],
          ),
        ],
      ),
    );
  }

  Container product_detail_view() {
    return Container(
      height: 190,
      width: 400,
      decoration: BoxDecoration(
          color: ColorManager.white,
          boxShadow: ([
            BoxShadow(
                color: ColorManager.black.withOpacity(0.5),
                spreadRadius: 0.1,
                blurRadius: 10,
                offset: Offset(3, 5))
          ]),
          border: Border.all(color: ColorManager.black),
          borderRadius: BorderRadius.circular(9)),
      child: Row(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    child: Image.asset(
                      ImageAssets.product_image,
                      height: 180,
                      width: 145,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: ColorManager.light_green,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(9),
                          bottomRight: Radius.circular(20)),
                    ),
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "10% Discount",
                      style: getTextStyle(
                       FontWeightManager.bold,
                           ColorManager.white),
                    ),
                  ),
                  Positioned(
                    top: 148,
                    left: 90,
                    child: Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          color: ColorManager.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(6)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: ColorManager.green,
                          ),
                          Text(
                            "4.5",
                            style:
                            getTextWeight(  FontWeightManager.bold),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          buildColumn(),
          SizedBox(
            width: 50,
          ),
          Container(
              margin: EdgeInsets.only(top: 60),
              width: 60,
              height: 109,
              child: Align(
                alignment: FractionalOffset(0.2, 0.6),
                child: Column(
                  children: [
                    Text("6 * KG"),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "& 6.90",
                      style: getStyle(
                          15, FontWeightManager.super_bold, ColorManager.green),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    CircleAvatar(
                      radius: 12,
                      backgroundColor: ColorManager.green,
                      child: Icon(
                        Icons.add,
                        size: 25,
                        color: ColorManager.white,
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }

  Column buildColumn() {
    return Column(
      children: [
        Text(
          "TESCO",
          style: getStyle(23, FontWeightManager.bold, ColorManager.red_accent),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "Samsung TV",
          style: getTextWeight(  FontWeightManager.medium),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "Screen size",
          style: getTextWeight( FontWeightManager.medium),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "(500 g - *5)",
          style: getTextStyle(FontWeightManager.bold, ColorManager.grey),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "Lorem ipsum dolor .........",
          style:
              getTextStyle(FontWeightManager.medium, ColorManager.red_accent),
        )
      ],
    );
  }
}
