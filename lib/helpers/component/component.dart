import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hh/cubit/app_cubit.dart';
import 'package:hh/helpers/constant/constant.dart';

class MyDivider extends StatelessWidget {
  MyDivider({Key? key, required this.width, required this.height})
      : super(key: key);
  double? width;

  double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      color: HexColor("CDD5EB"),
      height: height,
    );
  }
}

// class HomeWidget extends StatelessWidget {
//   HomeWidget({
//     Key? key,
//     required this.height,
//     required this.cubit,
//   }) : super(key: key);
//   var height;
//   AppCubit cubit;
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<AppCubit, AppState>(
//       listener: (context, state) {},
//       builder: (context, state) {
//         return Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               color: Colors.white,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(
//                     height: height * .03,
//                   ),
//                   Text(
//                     "    Welcome Back",
//                     style: TextStyle(
//                         fontSize: height * .03,
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(
//                     height: height * .01,
//                   ),
//                   Text(
//                     "      here you can see the history of previous test ",
//                     style: TextStyle(
//                         fontSize: height * .02,
//                         color: Colors.black,
//                         fontWeight: FontWeight.normal),
//                   ),
//                   SizedBox(
//                     height: height * .022,
//                   ),
//                   MyDivider(width: height * 1.5, height: height * .001)
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: height * .03,
//             ),
//             // Column(
//             //   children: [
//             //     Row(
//             //       children: [
//             //         Text(
//             //           "    History",
//             //           style: TextStyle(
//             //               fontSize: height * .025,
//             //               color: Colors.black,
//             //               fontWeight: FontWeight.w600),
//             //         ),
//             //         const Spacer(),
//             //         GestureDetector(
//             //           onTap: () {
//             //             // cubit.insertToDataBase(
//             //             //   fName: "s1",
//             //             //   type: "colon",
//             //             //   date: "27/6/2022",
//             //             //   time: "7:12",
//             //             //   result: "normal",
//             //             // );
//             //             cubit.deleteAllData();
//             //           },
//             //           child: Container(
//             //             margin: EdgeInsets.only(right: height * .04),
//             //             width: height * .28,
//             //             height: height * .06,
//             //             padding: EdgeInsets.all(height * .01),
//             //             decoration: BoxDecoration(
//             //               color: HexColor("545FDD"),
//             //               borderRadius: BorderRadius.circular(height * .01),
//             //             ),
//             //             child: Center(
//             //               child: Row(
//             //                 mainAxisAlignment: MainAxisAlignment.center,
//             //                 children: [
//             //                   Icon(
//             //                     Icons.delete,
//             //                     size: height * .03,
//             //                     color: Colors.white,
//             //                   ),
//             //                   SizedBox(
//             //                     width: height * .014,
//             //                   ),
//             //                   Text(
//             //                     "Delete All ",
//             //                     style: TextStyle(
//             //                       fontSize: height * .02,
//             //                       color: Colors.white,
//             //                       fontWeight: FontWeight.w500,
//             //                     ),
//             //                   ),
//             //                 ],
//             //               ),
//             //             ),
//             //           ),
//             //         ),
//             //       ],
//             //     ),
//             //     Container(
//             //       height: height * .7,
//             //       margin: EdgeInsets.all(height * .03),
//             //       padding: EdgeInsets.all(height * .03),
//             //       decoration: BoxDecoration(
//             //         borderRadius: BorderRadius.circular(height * .03),
//             //         color: Colors.white,
//             //       ),
//             //       child: SingleChildScrollView(
//             //         child: Column(
//             //           children: [
//             //             SizedBox(
//             //               height: height * .03,
//             //             ),
//             //             Row(
//             //               mainAxisAlignment: MainAxisAlignment.spaceAround,
//             //               children: [
//             //                 SizedBox(
//             //                   child: Text(
//             //                     "File name ",
//             //                     style: TextStyle(
//             //                       fontSize: height * .02,
//             //                       color: Colors.black,
//             //                       fontWeight: FontWeight.w400,
//             //                       overflow: TextOverflow.ellipsis,
//             //                     ),
//             //                   ),
//             //                   width: height * .2,
//             //                 ),
//             //                 SizedBox(
//             //                   child: Text(
//             //                     "Cancer Type ",
//             //                     style: TextStyle(
//             //                       fontSize: height * .02,
//             //                       color: Colors.black,
//             //                       fontWeight: FontWeight.w400,
//             //                       overflow: TextOverflow.ellipsis,
//             //                     ),
//             //                   ),
//             //                   width: height * .2,
//             //                 ),
//             //                 SizedBox(
//             //                   child: Text(
//             //                     "Date ",
//             //                     style: TextStyle(
//             //                       fontSize: height * .02,
//             //                       color: Colors.black,
//             //                       fontWeight: FontWeight.w400,
//             //                       overflow: TextOverflow.ellipsis,
//             //                     ),
//             //                   ),
//             //                   width: height * .2,
//             //                 ),
//             //                 SizedBox(
//             //                   child: Text(
//             //                     "Time",
//             //                     style: TextStyle(
//             //                       fontSize: height * .02,
//             //                       color: Colors.black,
//             //                       fontWeight: FontWeight.w400,
//             //                       overflow: TextOverflow.ellipsis,
//             //                     ),
//             //                   ),
//             //                   width: height * .2,
//             //                 ),
//             //                 SizedBox(
//             //                   child: Text(
//             //                     "Result",
//             //                     style: TextStyle(
//             //                         fontSize: height * .02,
//             //                         color: Colors.black,
//             //                         fontWeight: FontWeight.w400,
//             //                         overflow: TextOverflow.ellipsis),
//             //                   ),
//             //                   width: height * .2,
//             //                 ),
//             //                 SizedBox(
//             //                   child: Icon(
//             //                     Icons.delete,
//             //                     color: Colors.white,
//             //                     size: height * .035,
//             //                   ),
//             //                   width: height * .2,
//             //                 ),
//             //               ],
//             //             ),
//             //             SizedBox(
//             //               height: height * .01,
//             //             ),
//             //             MyDivider(width: height * 1.2, height: height * .001),
//             //             BlocConsumer<AppCubit, AppState>(
//             //               builder: (context, state) {
//             //                 return ListView.separated(
//             //                   physics: const NeverScrollableScrollPhysics(),
//             //                   shrinkWrap: true,
//             //                   itemBuilder: (context, index) {
//             //                     return cubit.historyList.isNotEmpty
//             //                         ? Row(
//             //                             mainAxisAlignment:
//             //                                 MainAxisAlignment.spaceAround,
//             //                             children: [
//             //                               SizedBox(
//             //                                 child: Text(
//             //                                   "${cubit.historyList[index]['fName']}",
//             //                                   style: TextStyle(
//             //                                       fontSize: height * .02,
//             //                                       color: Colors.black,
//             //                                       fontWeight: FontWeight.normal,
//             //                                       overflow:
//             //                                           TextOverflow.ellipsis),
//             //                                 ),
//             //                                 width: height * .2,
//             //                               ),
//             //                               SizedBox(
//             //                                 child: Text(
//             //                                   "${cubit.historyList[index]['type']}",
//             //                                   style: TextStyle(
//             //                                       fontSize: height * .02,
//             //                                       color: Colors.black,
//             //                                       fontWeight: FontWeight.normal,
//             //                                       overflow:
//             //                                           TextOverflow.ellipsis),
//             //                                 ),
//             //                                 width: height * .2,
//             //                               ),
//             //                               SizedBox(
//             //                                 child: Text(
//             //                                   "${cubit.historyList[index]['date']}",
//             //                                   style: TextStyle(
//             //                                       fontSize: height * .02,
//             //                                       color: Colors.black,
//             //                                       fontWeight: FontWeight.normal,
//             //                                       overflow:
//             //                                           TextOverflow.ellipsis),
//             //                                 ),
//             //                                 width: height * .2,
//             //                               ),
//             //                               SizedBox(
//             //                                 child: Text(
//             //                                   "${cubit.historyList[index]['time']}",
//             //                                   style: TextStyle(
//             //                                       fontSize: height * .02,
//             //                                       color: Colors.black,
//             //                                       fontWeight: FontWeight.normal,
//             //                                       overflow:
//             //                                           TextOverflow.ellipsis),
//             //                                 ),
//             //                                 width: height * .2,
//             //                               ),
//             //                               SizedBox(
//             //                                 child: Text(
//             //                                   "${cubit.historyList[index]['result']}",
//             //                                   style: TextStyle(
//             //                                       fontSize: height * .02,
//             //                                       color: Colors.black,
//             //                                       fontWeight: FontWeight.normal,
//             //                                       overflow:
//             //                                           TextOverflow.ellipsis),
//             //                                 ),
//             //                                 width: height * .2,
//             //                               ),
//             //                               SizedBox(
//             //                                 child: IconButton(
//             //                                     onPressed: () {
//             //                                       cubit.deleteData(
//             //                                         id: cubit.historyList[index]
//             //                                             ['id'],
//             //                                       );
//             //                                     },
//             //                                     icon: Icon(
//             //                                       Icons.delete,
//             //                                       color: HexColor("545FDD"),
//             //                                       size: height * .035,
//             //                                     )),
//             //                                 width: height * .2,
//             //                               ),
//             //                             ],
//             //                           )
//             //                         : const Center(
//             //                             child: Text("there is no history yet"));
//             //                   },
//             //                   separatorBuilder: (context, index) {
//             //                     return MyDivider(
//             //                       width: height,
//             //                       height: height * .001,
//             //                     );
//             //                   },
//             //                   itemCount: cubit.historyList.isNotEmpty
//             //                       ? cubit.historyList.length
//             //                       : 1,
//             //                 );
//             //               },
//             //               listener: (context, state) {},
//             //             ),
//             //           ],
//             //         ),
//             //       ),
//             //     )
//             //   ],
//             // )
//           ],
//         );
//       },
//     );
//   }
// }

class CancerTypeWidget extends StatelessWidget {
  CancerTypeWidget(
      {Key? key, required this.height,required this.width, required AppCubit this.cubit})
      : super(key: key);
  var height;
  var width;
  AppCubit cubit;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      builder: (context, state) {
        return Column(
          children: [
            Container(
              width: double.infinity,
              height: height * .13,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "   " + cubit.cancerType,
                    style: TextStyle(
                      color: textColor,
                      fontSize: width *0.018,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: height * .0435,
                  ),
                  Divider(
                    height: height*0.001,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * .04,
            ),
            Row(
              children: [
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    cubit.refresh();
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: height * .025),
                    width: height * .28,
                    height: height * .06,
                    padding: EdgeInsets.all(height * .01),
                    decoration: BoxDecoration(
                        color: buttonColor,
                        borderRadius: BorderRadius.circular(height * .01)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.refresh,
                            size: height * .03,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: height * .014,
                          ),
                          Text(
                            "Refresh ",
                            style: TextStyle(
                              fontSize: height * .02,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: height * .04,
                ),
              ],
            ),
            SizedBox(
              height: height * .04,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(height * .02),
                color: Colors.white,
              ),
              width: height * 1.2,
              height: height * .65,
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        SizedBox(
                          width: height * .4,
                          child: GestureDetector(
                            onTap: () {
                              cubit.changeIndex(index: 0);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.circular(width*0.1),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: height * .02,
                                  ),
                                  Text(
                                    "Data File",
                                    style: TextStyle(
                                        height: height*0.002,
                                        fontSize: width*0.015,
                                        fontWeight: FontWeight.w600,
                                        color: cubit.currentIndex == 0
                                            ? HexColor("394EFF")
                                            : textColor),
                                  ),
                                  SizedBox(
                                    height: height * .02,
                                  ),
                                  if (cubit.currentIndex == 0)
                                    Image(
                                      image: const AssetImage(
                                          "assets/images/horizonalline.png"),
                                      width: width * .5,
                                      height: height * .01,
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: height * .4,
                          child: GestureDetector(
                            onTap: () {
                              cubit.changeIndex(index: 1);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.circular(width*0.1),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: height * .02,
                                  ),
                                  Text(
                                    "Result",
                                    style: TextStyle(
                                        height: height*0.002,
                                        fontSize: width*0.015,
                                        fontWeight: FontWeight.w600,
                                        color: cubit.currentIndex == 1
                                            ? HexColor("394EFF")
                                            : textColor),
                                  ),
                                  SizedBox(
                                    height: height * .02,
                                  ),
                                  if (cubit.currentIndex == 1)
                                    Image(
                                      image: const AssetImage(
                                          "assets/images/horizonalline.png"),
                                      width: width * .5,
                                      height: height * .01,                                    ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                    ),
                    width: double.infinity,
                    height: height * .09,
                    color: HexColor("CDD5EB"),
                  ),
                  SizedBox(
                    height: height * .03,
                  ),
                  if (cubit.currentIndex == 0)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Please Upload your Data File",
                          style: TextStyle(
                              color: textColor,
                              fontSize: height * .03),
                        ),
                        SizedBox(
                          height: height * .02,
                        ),
                        Image(
                          image: const AssetImage("assets/images/fileIcon.png"),
                          height: height * .15,
                          width: width * .06,
                        ),
                         SizedBox(
                           width: height*.4,
                           child: Center(
                             child: Text(
                               cubit.fileName??'',
                              style: TextStyle(
                                color: HexColor("1F245B"),
                                fontSize: height * .03,
                                overflow: TextOverflow.ellipsis
                              ),
                        ),
                           ),
                         ),
                        SizedBox(
                          height: height * .02,
                        ),
                        SizedBox(
                          width: width * .2,
                          height: height*0.06,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(width: width*0.001, color: HexColor('394EFF')),
                            ),
                            onPressed: () {
                              cubit.pickFile();
                            },
                            child: Text(
                              "Choose File",
                              style: TextStyle(
                                  fontSize: height * .02,
                                  color: HexColor("394EFF")),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * .035,
                        ),
                        if (cubit.load==false)
                          GestureDetector(
                            onTap: () {
                              if (cubit.file != null) {
                                cubit.uploadFile();
                              }
                            },
                            child: Container(
                              width: height * .45,
                              height: height * .07,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(height * .01),
                                color: HexColor("394EFF"),
                              ),
                              child: const Center(
                                child: Text(
                                  "Get Results",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        if (cubit.load==true)
                          SizedBox(
                            width: height * .05,
                            height: height * .05,
                            child: CircularProgressIndicator(
                              color: HexColor("394EFF"),
                              strokeWidth: height * .006,
                            ),
                          ),
                      ],
                    ),
                  if (cubit.currentIndex == 1)
                    Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: height * .16,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(height * .015),
                              color: HexColor("E8EDEF"),
                            ),
                            padding: EdgeInsets.all(width*0.01),
                            width: width * .25,
                            height: height * .2,
                            child: Center(
                              child: Text(
                                cubit.result??'',
                                style: TextStyle(
                                  color: textColor,
                                  fontWeight:cubit.result == "Please upload usable data file" ? FontWeight.w500: FontWeight.w600,
                                  fontSize: cubit.result == "Please upload usable data file" ? width*0.017:width*0.025,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ],
        );
      },
      listener: (context, state) {},
    );
  }
}

// class FeatureSelectionWidgets extends StatelessWidget {
//   FeatureSelectionWidgets({Key? key, required this.height, required this.cubit})
//       : super(key: key);
//   var height;
//   AppCubit? cubit;
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<AppCubit, AppState>(
//       builder: (context, state) {
//         return Column(
//           children: [
//             Container(
//               width: double.infinity,
//               height: height * .128,
//               color: Colors.white,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(
//                     height: height * .05,
//                   ),
//                   Text(
//                     "    Feature Selection",
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontSize: height * .025,
//                         fontWeight: FontWeight.w400),
//                   )
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: height * .04,
//             ),
//             Row(
//               children: [
//                 const Spacer(),
//                 GestureDetector(
//                   onTap: () {
//                     cubit!.refresh();
//                   },
//                   child: Container(
//                     margin: EdgeInsets.only(right: height * .025),
//                     width: height * .28,
//                     height: height * .06,
//                     padding: EdgeInsets.all(height * .01),
//                     decoration: BoxDecoration(
//                         color: HexColor("545FDD"),
//                         borderRadius: BorderRadius.circular(height * .01)),
//                     child: Center(
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Icon(
//                             Icons.refresh,
//                             size: height * .03,
//                             color: Colors.white,
//                           ),
//                           SizedBox(
//                             width: height * .014,
//                           ),
//                           Text(
//                             "Refresh ",
//                             style: TextStyle(
//                               fontSize: height * .02,
//                               color: Colors.white,
//                               fontWeight: FontWeight.w500,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   width: height * .04,
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: height * .04,
//             ),
//             Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(height * .02),
//                 color: Colors.white,
//               ),
//               width: height * 1.2,
//               height: height * .65,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   SizedBox(
//                     height: height * .04,
//                   ),
//                   Text(
//                     "Please Upload your CSV Data File",
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontSize: height * .025,
//                         fontWeight: FontWeight.normal),
//                   ),
//                   SizedBox(
//                     height: height * .04,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       GestureDetector(
//                         child: Container(
//                           color: HexColor("CBCCCE"),
//                           width: height * .2,
//                           height: height * .05,
//                           child: Center(
//                             child: Text(
//                               "Choice File ",
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: height * .018,
//                                 fontWeight: FontWeight.normal,
//                               ),
//                             ),
//                           ),
//                         ),
//                         onTap: () {
//                           cubit!.pickFile();
//                         },
//                       ),
//                       SizedBox(
//                         width: height * .006,
//                       ),
//                       Container(
//                         color: HexColor("E2E9F5"),
//                         width: height * .1,
//                         height: height * .05,
//                         child: Center(
//                           child: Text(
//                             cubit!.fileName ?? "  No File",
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: height * .013,
//                               fontWeight: FontWeight.normal,
//                               overflow: TextOverflow.ellipsis,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: height * .08,
//                   ),
//                   GestureDetector(
//                     onTap: () {},
//                     child: Container(
//                       margin: EdgeInsets.only(right: height * .025),
//                       width: height * .4,
//                       height: height * .065,
//                       padding: EdgeInsets.all(height * .01),
//                       decoration: BoxDecoration(
//                           color: HexColor("545FDD"),
//                           borderRadius: BorderRadius.circular(height * .01)),
//                       child: Center(
//                         child: Text(
//                           "Feature Selection",
//                           style: TextStyle(
//                             fontSize: height * .02,
//                             color: Colors.white,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: height * .05,
//                   ),
//                   GestureDetector(
//                     onTap: () {},
//                     child: Container(
//                       margin: EdgeInsets.only(right: height * .025),
//                       width: height * .4,
//                       height: height * .065,
//                       padding: EdgeInsets.all(height * .01),
//                       decoration: BoxDecoration(
//                           color: HexColor("2A3079"),
//                           borderRadius: BorderRadius.circular(height * .01)),
//                       child: Row(
//                         children: [
//                           SizedBox(
//                             width: height * .1,
//                           ),
//                           Icon(
//                             Icons.file_copy_sharp,
//                             size: height * .03,
//                             color: Colors.white,
//                           ),
//                           SizedBox(
//                             width: height * .02,
//                           ),
//                           Text(
//                             "Copy File",
//                             style: TextStyle(
//                               fontSize: height * .02,
//                               color: Colors.white,
//                               fontWeight: FontWeight.w500,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         );
//       },
//       listener: (context, state) {},
//     );
//   }
// }
