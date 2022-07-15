import 'dart:developer';
import 'dart:io';

import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hh/cubit/app_cubit.dart';
import 'package:hh/helpers/constant/constant.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var cubit = AppCubit.get(context);
    return BlocConsumer<AppCubit, AppState>(
      builder: (context, state) {
        return Scaffold(
          body: Row(
            children: [
              Container(
                color: HexColor("FFFFFF"),
                width: width * 0.25,
                height: height,
                child: Column(
                  children: [
                    SizedBox(
                      height: height * .022,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: width*0.03,
                        ),
                        Image(
                          image: const AssetImage('assets/images/logo.png'),
                          width: width * .05,
                          height: height * .08,
                        ),
                        Column(
                          children: [
                            Text(
                              'MicroCare',
                              style: TextStyle(
                                fontSize: width * .018,
                                fontWeight: FontWeight.w700,
                                color: HexColor('1F245B'),
                              ),
                            ),
                            Text(
                              'Cancer Detection',
                              style: TextStyle(
                                fontSize: width * .012,
                                fontWeight: FontWeight.w600,
                                color: HexColor("4F548A"),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * .017,
                    ),
                    const Divider(),
                    SizedBox(
                      height: height * .06,
                    ),
                    GestureDetector(
                      onTap: () {
                        cubit.changeColonSelect(cubit: cubit, height: height,width: width);
                      },
                      child: Row(
                        children: [
                          cubit.colonSelect == true ?                             Image(
                            image: const AssetImage(
                                "assets/images/verticalselect.png"),
                            height: height * .06,
                            width: width * .0035,
                          ) : SizedBox(height: height * .06,
                              width: width * 0.0035,),
                          SizedBox(
                            width: height * .04,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(height * .01),
                              color: cubit.colonSelect == true
                                  ? buttonColor
                                  : Colors.white,
                            ),
                            padding: EdgeInsets.all(height * .01),
                            width: width * .19,
                            height: height * .06,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                if (cubit.colonSelect == true)
                                   Image(
                                    height: height*0.025,
                                    image: const AssetImage(
                                      "assets/images/whitecancer.png",
                                    ),
                                  ),
                                if (cubit.colonSelect == false)
                                   Image(
                                     height: height*0.025,
                                    image: const AssetImage(
                                      "assets/images/bluecancer.png",
                                    ),
                                  ),
                                SizedBox(
                                  width: height * .02,
                                ),
                                Text(
                                  ' Colon cancer',
                                  style: TextStyle(
                                      height: height*0.0015,
                                      fontSize: width * .012,

                                      fontWeight: FontWeight.w600,
                                      color: cubit.colonSelect == true
                                          ? Colors.white
                                          : textColor),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * .02,
                    ),
                    GestureDetector(
                      onTap: () {
                        cubit.changeLungSelect(height: height, cubit: cubit,width: width);
                      },
                      child: Row(
                        children: [
                          cubit.lungSelect == true ?                             Image(
                            image: const AssetImage(
                                "assets/images/verticalselect.png"),
                            height: height * .06,
                            width: width * .0035,
                          ) : SizedBox(height: height * .06,
                            width: width * 0.0035,),
                          SizedBox(
                            width: height * .04,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(height * .01),
                              color: cubit.lungSelect == true
                                  ? buttonColor
                                  : Colors.white,
                            ),
                            padding: EdgeInsets.all(height * .01),
                            width: width * .19,
                            height: height * .06,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                if (cubit.lungSelect == true)
                                  Image(
                                    height: height*0.025,
                                    image: const AssetImage(
                                      "assets/images/whitecancer.png",
                                    ),
                                  ),
                                if (cubit.lungSelect == false)
                                  Image(
                                    height: height*0.025,
                                    image: const AssetImage(
                                      "assets/images/bluecancer.png",
                                    ),
                                  ),
                                SizedBox(
                                  width: height * .02,
                                ),
                                Text(
                                  ' Lung cancer',
                                  style: TextStyle(
                                      height: height*0.0015,
                                      fontSize: width * .012,

                                      fontWeight: FontWeight.w600,
                                      color: cubit.lungSelect == true
                                          ? Colors.white
                                          : textColor),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * .02,
                    ),
                    GestureDetector(
                      onTap: () {
                        cubit.changeLiverSelect(height: height, cubit: cubit,width: width);
                      },
                      child: Row(
                        children: [
                          cubit.liverSelect == true ?                             Image(
                            image: const AssetImage(
                                "assets/images/verticalselect.png"),
                            height: height * .06,
                            width: width * .0035,
                          ) : SizedBox(height: height * .06,
                            width: width * 0.0035,),
                          SizedBox(
                            width: height * .04,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(height * .01),
                              color: cubit.liverSelect == true
                                  ? buttonColor
                                  : Colors.white,
                            ),
                            padding: EdgeInsets.all(height * .01),
                            width: width * .19,
                            height: height * .06,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                if (cubit.liverSelect == true)
                                  Image(
                                    height: height*0.025,
                                    image: const AssetImage(
                                      "assets/images/whitecancer.png",
                                    ),
                                  ),
                                if (cubit.liverSelect == false)
                                  Image(
                                    height: height*0.025,
                                    image: const AssetImage(
                                      "assets/images/bluecancer.png",
                                    ),
                                  ),
                                SizedBox(
                                  width: height * .02,
                                ),
                                Text(
                                  ' Liver cancer',
                                  style: TextStyle(
                                      height: height*0.0015,
                                      fontSize: width * .012,

                                      fontWeight: FontWeight.w600,
                                      color: cubit.liverSelect == true
                                          ? Colors.white
                                          : textColor),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * .02,
                    ),
                    GestureDetector(
                      onTap: () {
                        cubit.changeBreastSelect(
                            height: height, cubit: cubit,width: width);
                      },
                      child: Row(
                        children: [
                          cubit.breastSelect == true ?                             Image(
                            image: const AssetImage(
                                "assets/images/verticalselect.png"),
                            height: height * .06,
                            width: width * .0035,
                          ) : SizedBox(height: height * .06,
                            width: width * 0.0035,),
                          SizedBox(
                            width: height * .04,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(height * .01),
                              color: cubit.breastSelect == true
                                  ? buttonColor
                                  : Colors.white,
                            ),
                            padding: EdgeInsets.all(height * .01),
                            width: width * .19,
                            height: height * .06,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                if (cubit.breastSelect == true)
                                  Image(
                                    height: height*0.025,
                                    image: const AssetImage(
                                      "assets/images/whitecancer.png",
                                    ),
                                  ),
                                if (cubit.breastSelect == false)
                                  Image(
                                    height: height*0.025,
                                    image: const AssetImage(
                                      "assets/images/bluecancer.png",
                                    ),
                                  ),
                                SizedBox(
                                  width: height * .02,
                                ),
                                Text(
                                  ' Breast cancer',
                                  style: TextStyle(
                                      height: height*0.0015,
                                      fontSize: width * .012,

                                      fontWeight: FontWeight.w600,
                                      color: cubit.breastSelect == true
                                          ? Colors.white
                                          : textColor),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * .02,
                    ),
                    GestureDetector(
                      onTap: () {
                        cubit.changeLeukemiaSelect(
                            height: height, cubit: cubit,width: width);
                      },
                      child: Row(
                        children: [
                          cubit.leukemiaSelect == true ?                    Image(
                            image: const AssetImage(
                                "assets/images/verticalselect.png"),
                            height: height * .06,
                            width: width * .0035,
                          ) : SizedBox(height: height * .06,
                            width: width * 0.0035,),
                          SizedBox(
                            width: height * .04,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(height * .01),
                              color: cubit.leukemiaSelect == true
                                  ? buttonColor
                                  : Colors.white,
                            ),
                            padding: EdgeInsets.all(height * .01),
                            width: width * .19,
                            height: height * .06,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                if (cubit.leukemiaSelect == true)
                                  Image(
                                    height: height*0.025,
                                    image: const AssetImage(
                                      "assets/images/whitecancer.png",
                                    ),
                                  ),
                                if (cubit.leukemiaSelect == false)
                                  Image(
                                    height: height*0.025,
                                    image: const AssetImage(
                                      "assets/images/bluecancer.png",
                                    ),
                                  ),
                                SizedBox(
                                  width: height * .02,
                                ),
                                Text(
                                  'Leukemia cancer',
                                  style: TextStyle(
                                      height: height*0.0015,
                                      fontSize: width * .012,

                                      fontWeight: FontWeight.w600,
                                      color: cubit.leukemiaSelect == true
                                          ? Colors.white
                                          : textColor),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * .02,
                    ),
                    Container(
                      width: height * .38,
                      color: HexColor("CDD5EB"),
                      height: height * .002,
                    ),
                    SizedBox(
                      height: height * .04,
                    ),
                    GestureDetector(
                      onTap: () {
                        cubit.changeContactSelect();
                      },
                      child: Row(
                        children: [
                          if (cubit.contactSelect == true)
                            Image(
                              image: const AssetImage(
                                  "assets/images/verticalselect.png"),
                              height: height * .06,
                              width: height * .008,
                            ),
                          SizedBox(
                            width: height * .04,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(height * .01),
                              color: cubit.contactSelect == true
                                  ? buttonColor
                                  : Colors.white,
                            ),
                            padding: EdgeInsets.all(height * .02),
                            width: height * .35,
                            height: height * .062,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.wechat_outlined,
                                  size: height * .03,
                                  color: cubit.contactSelect == true
                                      ? Colors.white
                                      : iconColor,
                                ),
                                SizedBox(
                                  width: height * .02,
                                ),
                                Text(
                                  'Contact Us',
                                  style: TextStyle(
                                      fontSize: height * .02,
                                      fontWeight: FontWeight.w400,
                                      color: cubit.contactSelect == true
                                          ? Colors.white
                                          : Colors.black),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * .02,
                    ),
                    GestureDetector(
                      onTap: () {
                        cubit.changeExitSelect();
                        Dialog exitDialog = Dialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0)),
                          //this right here
                          child: Container(
                            height: 100.0,
                            width: 100.0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                const Text("Are you sure to exit ?"),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    TextButton(
                                        onPressed:  ()   {
                                          exit(0);
                                        },
                                        child: const Text("yes")),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text("cancel"))
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => exitDialog,
                        );
                      },
                      child: Row(
                        children: [
                          if (cubit.exitSelect == true)
                            Image(
                              image: const AssetImage(
                                  "assets/images/verticalselect.png"),
                              height: height * .06,
                              width: height * .008,
                            ),
                          SizedBox(
                            width: height * .04,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(height * .01),
                            ),
                            padding: EdgeInsets.all(height * .02),
                            width: height * .35,
                            height: height * .062,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.logout,
                                  size: height * .03,
                                  color: iconColor,
                                ),
                                SizedBox(
                                  width: height * .02,
                                ),
                                Text(
                                  'Exit',
                                  style: TextStyle(
                                      fontSize: height * .02,
                                      fontWeight: FontWeight.w400,
                                      color:Colors.black),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * .06,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: HexColor("F6FAFF"),
                  height: height,
                  child: cubit.screen,
                ),
              )
            ],
          ),
        );
      },
      listener: (context, state) {},
    );
  }
}
