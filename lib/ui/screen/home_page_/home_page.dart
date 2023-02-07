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
          child: Column(
            children: [
              top_noch_bar(),//in this container we have search bar ,Navigation bar ,and QR scannner
              SizedBox(
                height: 1.h,
              ),
              Container(
                height: 170.h,
                width: 400.w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("asset/images/Tesco.jpeg"),
                        fit: BoxFit.cover)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Container(
                                //It show the loaction of the shop
                                margin: EdgeInsets.only(left: 12, top: 5).r,
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
                                    fontSize: 15.sp,
                                    fontWeight: FontWeightManager.medium),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10).r,
                          //show thhe filtering the list
                          child: Icon(
                            Icons.filter_list,
                            color: ColorManager.green,
                            size: 26.w,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 5,bottom: 5).r,
                            child: CircleAvatar(
                              radius: 12.w,
                              backgroundColor: ColorManager.black.withOpacity(0.5),
                              child:
                              Icon(Icons.share, size: 20.h, color: ColorManager.white),
                            )),

                        Row(
                          children: [
                            Container(
                              child: option(
                                text: "Closed",
                                container_color: Colors.white.withOpacity(0.8),
                                icon_color: ColorManager.red_accent,
                                text_color: ColorManager.red_accent,
                                icon: Icons.add_business,
                              ),
                            ),
                            SizedBox(width: 8.w,),
                            Container(
                              child: option(
                                text: "Available",
                                container_color:
                                ColorManager.dark_green.withOpacity(0.7),
                                icon_color: ColorManager.green,
                                text_color: ColorManager.green,
                                icon: Icons.circle_outlined,
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 5).r,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.heart_broken,
                              size: 23.w,
                              color: ColorManager.green,
                            ),
                            SizedBox(width: 10.w,),
                            Text(
                              "TESCO",
                              style: getStyle(
                                23.sp,
                                FontWeightManager.bold,
                                ColorManager.red_accent,
                              ),
                            ),
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
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        shop_detail(
                          icon: Icons.location_on,
                          label: "12 Km",
                        ),
                        shop_detail(
                          icon: Icons.fire_truck_sharp,
                          label: "60 Minus",
                        ),
                        shop_detail(
                          icon: Icons.star,
                          label: "4.5",
                        )

                      ],
                    ),
                  ),

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
        bottomNavigationBar: bottom_navigation_bar(),//its boottom navigation bar gives the naigation to the different messgaees
        floatingActionButton: buildTextButton(),//floating action button gives option to chat
      );
    }

    TextButton buildTextButton() {
      return TextButton(
        onPressed: (){},
        child: CircleAvatar(
          radius: 25.r,
          backgroundColor: ColorManager.light_green_2,

          child: Image.asset(IconAssets.chat_icon,fit: BoxFit.cover,height: 50.h,),
        ),
      );
    }
  }



  Container top_noch_bar() {
    //top part of the UI
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              margin: EdgeInsets.only(top: 5.r,right: 10.r), child: Icon(Icons.arrow_back,size: 25.w,)),
          Container(
            width: 280.0.w,
            height: 35.0.h,
            decoration: BoxDecoration(
                border: Border.all(color: ColorManager.grey),
                borderRadius: BorderRadius.circular(5.w)),
            child: TextField(
              cursorColor: ColorManager.green,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  size: 22.h,
                  color: ColorManager.green,
                ),
                border: InputBorder.none,
                // contentPadding: EdgeInsets.all(0),
                hintText: "Search TESCO",
                // border: OutlineInputBorder(),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 5.r,left: 0.r),
              child: Icon(Icons.document_scanner_outlined,size: 25.w,))
        ],
      ),
    );
  }

  Container vendor_view() {
    return Container(
      margin: EdgeInsets.only(top: 5).r,
      height: 18.h,
      width: 370.w,
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
      height: 60.h,
      decoration: BoxDecoration(
        color: ColorManager.white,
        border: Border.all(color: ColorManager.black),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: Column(
              children: [
                TextButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.home,
                      color: ColorManager.green,
                      size: 30.r,
                    )),
                Text(
                  "HOME",
                  style: newgetTextStyle(12.sp,
                      FontWeightManager.medium,
                      ColorManager.green),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                TextButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.group,
                      color: ColorManager.green,
                      size: 30.r,
                    )),
                Text(
                  "VENDORS",
                  style: newgetTextStyle(12.sp,
                      FontWeightManager.medium,
                      ColorManager.green),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                TextButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.list,
                      color: ColorManager.green,
                      size: 30.r,
                    )),
                Text(
                  "LIST",
                  style: newgetTextStyle(12.sp,
                      FontWeightManager.medium,
                      ColorManager.green),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                TextButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.grid_on_rounded,
                      color: ColorManager.green,
                      size: 30.r,
                    )),
                Text(
                  "CATEGORIES",
                  style: newgetTextStyle(12.sp,
                      FontWeightManager.medium,
                      ColorManager.green),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                TextButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.add,
                      color: ColorManager.green,
                      size: 30.r,
                    )),
                Text(
                  "MORE",
                  style: newgetTextStyle(12.sp,
                      FontWeightManager.medium,
                      ColorManager.green),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container product_detail_view() {
    return Container(
      height: 140.h,
      child: Card(
        child: Row(
          children: [
            Container(
              height: 170.h,
              width: 120.w,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(ImageAssets.product_2_image),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(Radius.circular(4).w)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: ColorManager.light_green,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(2.w),
                          bottomRight: Radius.circular(15.w)),
                    ),
                    padding: EdgeInsets.all(3).w,
                    child: Text(
                      "10% Discount",
                      style: newgetTextStyle(10.sp,FontWeight.bold, ColorManager.white),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 45.w,
                        decoration: BoxDecoration(
                            color: ColorManager.white.withOpacity(0.5),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10).w)),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: ColorManager.green,
                              size: 15.w,
                            ),
                            Text(
                              "4.5",
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.sp),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 5.w,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "TESCO",
                      style: getStyle(20.sp, FontWeightManager.bold,
                          ColorManager.red_accent),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      "Samsung TV",
                      style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      "Screen size",
                      style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15.sp),
                    ),
                    SizedBox(
                      height: 7.h,
                    ),
                    Text(
                      "(500 g - *5)",
                      style: newgetTextStyle(10.sp,
                          FontWeightManager.bold, ColorManager.grey),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "Lorem ipsum dolor .........",
                      style: newgetTextStyle(13.sp,
                          FontWeightManager.medium, ColorManager.red_accent),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text("6 * KG",style: TextStyle(fontSize: 15.sp),),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "& 6.90",
                      style: getStyle(15.sp, FontWeightManager.super_bold,
                          ColorManager.green),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    CircleAvatar(
                      radius: 12.r,
                      backgroundColor: ColorManager.green,
                      child: Icon(
                        Icons.add,
                        size: 20.h,
                        color: ColorManager.white,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
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

