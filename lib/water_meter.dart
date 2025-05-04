import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class WaterMeter extends StatefulWidget {
  const WaterMeter({super.key});

  @override
  State<WaterMeter> createState() => _WaterMeterState();
}

class _WaterMeterState extends State<WaterMeter> {
  final Color lightPrimaryColor = Color(0xFF02416E);

  // final Color lightPrimaryColor = Color(0xFF0F557D);
  // final Color lightPrimaryColor = Color(0xFF056263);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        height: 100.h,
        width: 100.w,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/blue_water.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(height: MediaQuery.of(context).viewPadding.top),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.menu,
                          color: lightPrimaryColor,
                          size: 20.sp,
                        ),
                        SizedBox(width: 5.w),
                        Text(
                          "Neely Henry Lake",
                          style: TextStyle(
                            color: lightPrimaryColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 16.5.sp,
                          ),
                        ),
                        SizedBox(width: 2.5.w),
                        Icon(
                          Icons.arrow_drop_down_sharp,
                          color: lightPrimaryColor,
                          size: 17.sp,
                        ),
                      ],
                    ),
                    Icon(
                      Icons.info,
                      color: lightPrimaryColor,
                      size: 20.sp,
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
              child: Column(
                children: [
                  SizedBox(height: 5.h),
                  // First
                  bigDivider("500"),
                  smallDivider(red: true),
                  smallDivider(),
                  smallDivider(),
                  smallDivider(),
                  // Second
                  bigDivider("475"),
                  smallDivider(),
                  smallDivider(),
                  smallDivider(),
                  smallDivider(),
                  // third
                  bigDivider("450", connect: true),
                  smallDivider(),
                  smallDivider(),
                  smallDivider(highlight: true),
                  smallDivider(),
                  // Fourth
                  bigDivider("425"),
                  smallDivider(),
                  smallDivider(),
                  smallDivider(),
                  smallDivider(),
                  // Fifth
                  bigDivider("400"),
                  smallDivider(connect: true),
                  smallDivider(),
                  smallDivider(),
                  smallDivider(),
                  // Sixth
                  bigDivider("350"),
                  smallDivider(),
                  smallDivider(),
                  smallDivider(),
                  smallDivider(),
                  bigDivider("325"),
                  SizedBox(height: 0.5.h),
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.device_thermostat_sharp,
                      color: lightPrimaryColor,
                      size: 22.sp,
                    ),
                    Container(
                      padding: EdgeInsets.all(2.5.w),
                      decoration: BoxDecoration(
                        color: Color(0xFF55B9D3),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.speaker_phone,
                        color: lightPrimaryColor,
                        size: 22.sp,
                      ),
                    ),
                    Icon(
                      Icons.add_circle_sharp,
                      color: lightPrimaryColor,
                      size: 22.sp,
                    ),
                  ],
                ),
                SizedBox(height: 5.h),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget bigDivider(String value, {connect = false}) {
    return Column(
      children: [
        connect
            ? SizedBox.shrink(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: 10,
                      left: -10.w,
                      child: Row(
                        children: [
                          Text(
                            "437",
                            style: TextStyle(
                              color: lightPrimaryColor,
                              fontSize: 25.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            " ft",
                            style: TextStyle(
                              color: lightPrimaryColor,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            " 50",
                            style: TextStyle(
                              color: lightPrimaryColor,
                              fontSize: 25.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            " in",
                            style: TextStyle(
                              color: lightPrimaryColor,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            : SizedBox(),
        Row(
          children: [
            Container(
              width: 17.5.w,
              color: lightPrimaryColor,
              height: .5.w,
            ),
            SizedBox(width: 5.w),
            Text(
              value,
              style: TextStyle(
                color: lightPrimaryColor,
                fontSize: 15.sp,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        SizedBox(height: 0.5.h),
      ],
    );
  }

  Widget smallDivider({red = false, connect = false, highlight = false}) {
    return Column(
      children: [
        connect
            ? SizedBox.shrink(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: -40,
                      left: -10.w,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 27.5.w,
                                padding: EdgeInsets.all(2.5.w),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(2.5.w),
                                  ),
                                  border: Border.all(
                                    color: lightPrimaryColor,
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.sunny,
                                      color: lightPrimaryColor,
                                      size: 20.sp,
                                    ),
                                    SizedBox(width: 2.5.w),
                                    Text(
                                      "63°F",
                                      style: TextStyle(
                                        color: lightPrimaryColor,
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 27.5.w,
                                padding: EdgeInsets.all(2.5.w),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(2.5.w),
                                  ),
                                  border: Border(
                                    top: BorderSide(color: lightPrimaryColor),
                                    right: BorderSide(color: lightPrimaryColor),
                                    bottom:
                                        BorderSide(color: lightPrimaryColor),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.water_drop_sharp,
                                      color: lightPrimaryColor,
                                      size: 20.sp,
                                    ),
                                    SizedBox(width: 2.5.w),
                                    Text(
                                      "50%",
                                      style: TextStyle(
                                        color: lightPrimaryColor,
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: 55.w,
                            padding: EdgeInsets.symmetric(
                                vertical: 2.5.w, horizontal: 2.5.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(2.5.w),
                                bottomRight: Radius.circular(2.5.w),
                              ),
                              border: Border(
                                bottom: BorderSide(color: lightPrimaryColor),
                                left: BorderSide(color: lightPrimaryColor),
                                right: BorderSide(color: lightPrimaryColor),
                              ),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.wind_power,
                                  color: lightPrimaryColor,
                                  size: 20.sp,
                                ),
                                SizedBox(width: 2.5.w),
                                Text(
                                  "Active Gen 2",
                                  style: TextStyle(
                                    color: lightPrimaryColor,
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 2.5.w),
                                Icon(
                                  Icons.arrow_right,
                                  color: lightPrimaryColor,
                                  size: 20.sp,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            : SizedBox(),
        Divider(
          endIndent: 85.w,
          color: red ? Colors.red : lightPrimaryColor,
          thickness: highlight ? 3 : 2,
        ),
        SizedBox(height: 0.5.h),
      ],
    );
  }
}
