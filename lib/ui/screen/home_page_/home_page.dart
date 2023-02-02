import 'package:flutter/material.dart';
import 'package:project2/ui/screen/home_page_/reuse_widget.dart';
import 'package:project2/resources/recources.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

  class home_page extends StatelessWidget {
    const home_page({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                top_noch_bar(),//in this container we have search bar ,Navigation bar ,and QR scannner
                SizedBox(
                  height: 1.h,
                ),
                Stack(
                  children: [
                    Image.asset(
                      height: 150.h,
                      width: 370.w,
                      fit: BoxFit.cover,
                      ImageAssets.company_image,
                    ),
                    Row(
                      children: [
                        Container(
                          //It show the loaction of the shop
                          margin: EdgeInsets.only(left: 12, top: 10).r,
                          height: 25.h,
                          child: Image.asset(
                            //image of location icon
                            IconAssets.location_icon,
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          "Johan - TW12 44GH - Londan",
                          style: TextStyle(
                              fontSize: 15.sp, fontWeight: FontWeightManager.medium),
                        ),
                        SizedBox(
                          width: 50.w,
                        ),
                        Container(
                          //show thhe filtering the list
                          child: Icon(
                            Icons.filter_list,
                            color: ColorManager.green,
                            size: 26,
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      //we can share the location of the shop
                        left: 5,
                        top:135.r,
                        child: CircleAvatar(
                          radius: 15.w,
                          backgroundColor: ColorManager.black.withOpacity(0.5),
                          child: Icon(Icons.share,
                              size: 20, color: ColorManager.white),
                        )),
                    Positioned(
                        top: 130.h,
                        left: 150.r,
                        child: Row(
                          children: [
                            option(
                              //option is the reuse widget or we can use as reausable
                              text: "Closed",
                              container_color: Colors.white.withOpacity(0.8),
                              icon_color: ColorManager.red_accent,
                              text_color: ColorManager.red_accent,
                              icon: Icons.add_business,
                            ),
                            SizedBox(
                              width: 5.w,
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
                              padding: const EdgeInsets.only(top: 3.0, left: 0).r,
                              child: Icon(
                                Icons.heart_broken,
                                size: 25.r,
                                color: ColorManager.green,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 2, left: 5).r,
                              child: Text(
                                "TESCO",
                                style: getStyle(
                                  19.sp,
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
                              18.sp,
                              FontWeightManager.bold,
                              ColorManager.green),
                        )
                      ],
                    ),
                    _shop_detail(),//shop details shop the detail of the shop like rating ,near or far,and etc
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),
                vendor_view(),//vendor view give the features to get the to the user like Offers,Branches,and all
                SizedBox(
                  height: 3.h,
                ),
                Container(
                  height: 19.h,
                  width: 410.0.w,
                  child: const Align(
                    alignment: Alignment(-1.0, -1.0),
                    child: drop_down_button()//its is drop down menu button show the category the user want to get,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Expanded(
                  child: ListView(
                    children: [
                      product_detail_view(),
                      //prooduct _detail_view gives the information of the product to the user
                      SizedBox(
                        height: 10.h,
                      ),
                      product_detail_view(),
                      SizedBox(
                        height: 10.h,
                      ),
                      product_detail_view(),
                      SizedBox(
                        height: 10.h,
                      ),
                      product_detail_view(),
                      SizedBox(
                        height: 10.h,
                      ),
                      product_detail_view(),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: bottom_navigation_bar(),//its boottom navigation bar gives the naigation to the different messgaees
        floatingActionButton: buildFloatingActionButton(),//floating action button gives option to chat
      );
    }
  }


Column _shop_detail() {
    return Column(
      children: [
        Column(
          children: [
            //shop_detail widget is reuse widget we can use this when we need
            shop_detail(
                icon: Icons.location_on,
                label: "12 Km",
                left_margin: EdgeInsets.only(left: 10).w),
            shop_detail(
                icon: Icons.fire_truck_sharp,
                label: "60 Minus",
                left_margin: EdgeInsets.only(left: 35).w),
            shop_detail(
                icon: Icons.star,
                label: "4.5",
                left_margin: EdgeInsets.only(left: 0).w),
          ],
        )
      ],
    );
  }

  FloatingActionButton buildFloatingActionButton() {
    // chat optin widget
    return FloatingActionButton(
      backgroundColor: ColorManager.green,
      onPressed: () {},
      child: Image.asset(IconAssets.chat_icon),
    );
  }

  Container top_noch_bar() {
    //top part of the UI
    return Container(

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              margin: EdgeInsets.only(top: 5.r), child: Icon(Icons.arrow_back,size: 25,)),
          SizedBox(
            width: 15.w,
          ),
          Container(
            width: 280.0.w,
            height: 30.0.h,
            decoration: BoxDecoration(
                border: Border.all(color: ColorManager.grey),
                borderRadius: BorderRadius.circular(5).w),
            child: TextField(
              cursorColor: ColorManager.green,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: ColorManager.green,
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(10).w,
                hintText: "Search TESCO",
                // border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Container(
              margin: EdgeInsets.only(top: 5).r,
              child: Icon(Icons.document_scanner_outlined,size: 25,))
        ],
      ),
    );
  }
  Container vendor_view() {
    return Container(
      margin: EdgeInsets.only(top: 5).r,
      height: 20.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          button(label: "Browse"),
          SizedBox(
            width: 10.w,
          ),
          button(label: "Offers"),
          SizedBox(
            width: 10.w,
          ),
          button(label: "Branches"),
          SizedBox(
            width: 10.w,
          ),
          button(label: "Vendor Profile"),
          SizedBox(
            width: 10.w,
          ),
          button(label: "Looyalty card"),
          SizedBox(
            width: 10.w,
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

  Card product_detail_view() {
    return Card(
      margin: EdgeInsets.only(right: 4).r,
      child: Row(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    child: Image.asset(
                      ImageAssets.product_image,
                      height: 150.h,
                      width: 120.w,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: ColorManager.light_green,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(9.w),
                          bottomRight: Radius.circular(20.w)),
                    ),
                    padding: EdgeInsets.all(5).w,
                    child: Text(
                      "10% Discount",
                      style: getTextStyle(
                       FontWeightManager.bold,
                           ColorManager.white),
                    ),
                  ),
                  Positioned(
                    top: 145.r,
                    left: 60,
                    child: Container(
                      padding: EdgeInsets.all(2.w),
                      decoration: BoxDecoration(
                          color: ColorManager.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(6.w)),
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
            width: 5.w,
          ),
          Container(
              margin: EdgeInsets.only(top: 10,left: 0).r,
              width: 50.w,
              height: 150.h,
              child: Align(
                alignment: FractionalOffset(0.1, 0.1),
                child: Column(
                  children: [
                    Text("6 * KG"),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "& 6.90",
                      style: getStyle(
                          15.sp, FontWeightManager.super_bold, ColorManager.green),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    CircleAvatar(
                      radius: 12.r,
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
          style: getStyle(20.sp, FontWeightManager.bold, ColorManager.red_accent),
        ),
        SizedBox(
          height: 3.h,
        ),
        Text(
          "Samsung TV",
          style: getTextWeight(  FontWeightManager.medium),
        ),
        SizedBox(
          height: 3.h,
        ),
        Text(
          "Screen size",
          style: getTextWeight( FontWeightManager.medium),
        ),
        SizedBox(
          height: 7.h,
        ),
        Text(
          "(500 g - *5)",
          style: getTextStyle(FontWeightManager.bold, ColorManager.grey),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          "Lorem ipsum dolor .........",
          style:
              getTextStyle(FontWeightManager.medium, ColorManager.red_accent),
        )
      ],
    );
  }

