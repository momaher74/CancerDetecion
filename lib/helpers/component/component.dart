import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hh/cubit/app_cubit.dart';

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

class HomeWidget extends StatelessWidget {
  HomeWidget({
    Key? key,
    required this.height,
    required this.cubit,
  }) : super(key: key);
  var height;
  AppCubit cubit;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height * .03,
                  ),
                  Text(
                    "    Welcome Back",
                    style: TextStyle(
                        fontSize: height * .03,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: height * .01,
                  ),
                  Text(
                    "      here you can see the history of previous test ",
                    style: TextStyle(
                        fontSize: height * .02,
                        color: Colors.black,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: height * .022,
                  ),
                  MyDivider(width: height * 1.5, height: height * .001)
                ],
              ),
            ),
            SizedBox(
              height: height * .03,
            ),
            // Column(
            //   children: [
            //     Row(
            //       children: [
            //         Text(
            //           "    History",
            //           style: TextStyle(
            //               fontSize: height * .025,
            //               color: Colors.black,
            //               fontWeight: FontWeight.w600),
            //         ),
            //         const Spacer(),
            //         GestureDetector(
            //           onTap: () {
            //             // cubit.insertToDataBase(
            //             //   fName: "s1",
            //             //   type: "colon",
            //             //   date: "27/6/2022",
            //             //   time: "7:12",
            //             //   result: "normal",
            //             // );
            //             cubit.deleteAllData();
            //           },
            //           child: Container(
            //             margin: EdgeInsets.only(right: height * .04),
            //             width: height * .28,
            //             height: height * .06,
            //             padding: EdgeInsets.all(height * .01),
            //             decoration: BoxDecoration(
            //               color: HexColor("545FDD"),
            //               borderRadius: BorderRadius.circular(height * .01),
            //             ),
            //             child: Center(
            //               child: Row(
            //                 mainAxisAlignment: MainAxisAlignment.center,
            //                 children: [
            //                   Icon(
            //                     Icons.delete,
            //                     size: height * .03,
            //                     color: Colors.white,
            //                   ),
            //                   SizedBox(
            //                     width: height * .014,
            //                   ),
            //                   Text(
            //                     "Delete All ",
            //                     style: TextStyle(
            //                       fontSize: height * .02,
            //                       color: Colors.white,
            //                       fontWeight: FontWeight.w500,
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //             ),
            //           ),
            //         ),
            //       ],
            //     ),
            //     Container(
            //       height: height * .7,
            //       margin: EdgeInsets.all(height * .03),
            //       padding: EdgeInsets.all(height * .03),
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(height * .03),
            //         color: Colors.white,
            //       ),
            //       child: SingleChildScrollView(
            //         child: Column(
            //           children: [
            //             SizedBox(
            //               height: height * .03,
            //             ),
            //             Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceAround,
            //               children: [
            //                 SizedBox(
            //                   child: Text(
            //                     "File name ",
            //                     style: TextStyle(
            //                       fontSize: height * .02,
            //                       color: Colors.black,
            //                       fontWeight: FontWeight.w400,
            //                       overflow: TextOverflow.ellipsis,
            //                     ),
            //                   ),
            //                   width: height * .2,
            //                 ),
            //                 SizedBox(
            //                   child: Text(
            //                     "Cancer Type ",
            //                     style: TextStyle(
            //                       fontSize: height * .02,
            //                       color: Colors.black,
            //                       fontWeight: FontWeight.w400,
            //                       overflow: TextOverflow.ellipsis,
            //                     ),
            //                   ),
            //                   width: height * .2,
            //                 ),
            //                 SizedBox(
            //                   child: Text(
            //                     "Date ",
            //                     style: TextStyle(
            //                       fontSize: height * .02,
            //                       color: Colors.black,
            //                       fontWeight: FontWeight.w400,
            //                       overflow: TextOverflow.ellipsis,
            //                     ),
            //                   ),
            //                   width: height * .2,
            //                 ),
            //                 SizedBox(
            //                   child: Text(
            //                     "Time",
            //                     style: TextStyle(
            //                       fontSize: height * .02,
            //                       color: Colors.black,
            //                       fontWeight: FontWeight.w400,
            //                       overflow: TextOverflow.ellipsis,
            //                     ),
            //                   ),
            //                   width: height * .2,
            //                 ),
            //                 SizedBox(
            //                   child: Text(
            //                     "Result",
            //                     style: TextStyle(
            //                         fontSize: height * .02,
            //                         color: Colors.black,
            //                         fontWeight: FontWeight.w400,
            //                         overflow: TextOverflow.ellipsis),
            //                   ),
            //                   width: height * .2,
            //                 ),
            //                 SizedBox(
            //                   child: Icon(
            //                     Icons.delete,
            //                     color: Colors.white,
            //                     size: height * .035,
            //                   ),
            //                   width: height * .2,
            //                 ),
            //               ],
            //             ),
            //             SizedBox(
            //               height: height * .01,
            //             ),
            //             MyDivider(width: height * 1.2, height: height * .001),
            //             BlocConsumer<AppCubit, AppState>(
            //               builder: (context, state) {
            //                 return ListView.separated(
            //                   physics: const NeverScrollableScrollPhysics(),
            //                   shrinkWrap: true,
            //                   itemBuilder: (context, index) {
            //                     return cubit.historyList.isNotEmpty
            //                         ? Row(
            //                             mainAxisAlignment:
            //                                 MainAxisAlignment.spaceAround,
            //                             children: [
            //                               SizedBox(
            //                                 child: Text(
            //                                   "${cubit.historyList[index]['fName']}",
            //                                   style: TextStyle(
            //                                       fontSize: height * .02,
            //                                       color: Colors.black,
            //                                       fontWeight: FontWeight.normal,
            //                                       overflow:
            //                                           TextOverflow.ellipsis),
            //                                 ),
            //                                 width: height * .2,
            //                               ),
            //                               SizedBox(
            //                                 child: Text(
            //                                   "${cubit.historyList[index]['type']}",
            //                                   style: TextStyle(
            //                                       fontSize: height * .02,
            //                                       color: Colors.black,
            //                                       fontWeight: FontWeight.normal,
            //                                       overflow:
            //                                           TextOverflow.ellipsis),
            //                                 ),
            //                                 width: height * .2,
            //                               ),
            //                               SizedBox(
            //                                 child: Text(
            //                                   "${cubit.historyList[index]['date']}",
            //                                   style: TextStyle(
            //                                       fontSize: height * .02,
            //                                       color: Colors.black,
            //                                       fontWeight: FontWeight.normal,
            //                                       overflow:
            //                                           TextOverflow.ellipsis),
            //                                 ),
            //                                 width: height * .2,
            //                               ),
            //                               SizedBox(
            //                                 child: Text(
            //                                   "${cubit.historyList[index]['time']}",
            //                                   style: TextStyle(
            //                                       fontSize: height * .02,
            //                                       color: Colors.black,
            //                                       fontWeight: FontWeight.normal,
            //                                       overflow:
            //                                           TextOverflow.ellipsis),
            //                                 ),
            //                                 width: height * .2,
            //                               ),
            //                               SizedBox(
            //                                 child: Text(
            //                                   "${cubit.historyList[index]['result']}",
            //                                   style: TextStyle(
            //                                       fontSize: height * .02,
            //                                       color: Colors.black,
            //                                       fontWeight: FontWeight.normal,
            //                                       overflow:
            //                                           TextOverflow.ellipsis),
            //                                 ),
            //                                 width: height * .2,
            //                               ),
            //                               SizedBox(
            //                                 child: IconButton(
            //                                     onPressed: () {
            //                                       cubit.deleteData(
            //                                         id: cubit.historyList[index]
            //                                             ['id'],
            //                                       );
            //                                     },
            //                                     icon: Icon(
            //                                       Icons.delete,
            //                                       color: HexColor("545FDD"),
            //                                       size: height * .035,
            //                                     )),
            //                                 width: height * .2,
            //                               ),
            //                             ],
            //                           )
            //                         : const Center(
            //                             child: Text("there is no history yet"));
            //                   },
            //                   separatorBuilder: (context, index) {
            //                     return MyDivider(
            //                       width: height,
            //                       height: height * .001,
            //                     );
            //                   },
            //                   itemCount: cubit.historyList.isNotEmpty
            //                       ? cubit.historyList.length
            //                       : 1,
            //                 );
            //               },
            //               listener: (context, state) {},
            //             ),
            //           ],
            //         ),
            //       ),
            //     )
            //   ],
            // )
          ],
        );
      },
    );
  }
}

class CancerTypeWidget extends StatelessWidget {
  CancerTypeWidget(
      {Key? key, required this.height, required AppCubit this.cubit})
      : super(key: key);
  var height;
  AppCubit cubit;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      builder: (context, state) {
        return Column(
          children: [
            Container(
              width: double.infinity,
              height: height * .128,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height * .05,
                  ),
                  Text(
                    "   " + cubit.cancerType,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: height * .025,
                      fontWeight: FontWeight.w400,
                    ),
                  )
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
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.only(right: height * .025),
                    width: height * .28,
                    height: height * .06,
                    padding: EdgeInsets.all(height * .01),
                    decoration: BoxDecoration(
                        color: HexColor("545FDD"),
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: height * .04,
                  ),
                  Text(
                    "Please Upload your CSV Data File",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: height * .025,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: height * .04,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: Container(
                          color: HexColor("CBCCCE"),
                          width: height * .2,
                          height: height * .05,
                          child: Center(
                            child: Text(
                              "Choice File ",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: height * .018,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          cubit.pickFile();
                        },
                      ),
                      SizedBox(
                        width: height * .006,
                      ),
                      Container(
                        color: HexColor("E2E9F5"),
                        width: height * .1,
                        height: height * .05,
                        child: Center(
                          child: Text(
                            cubit.fileName ?? "  No File",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: height * .013,
                              fontWeight: FontWeight.normal,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * .08,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (cubit.file != null && cubit.model != null) {
                        cubit.uploadFile();
                      }
                      // cubit.insertToDataBase(
                      //   fName: "s1",
                      //   type: "colon",
                      //   date: "27/6/2022",
                      //   time: "7:12",
                      //   result: "normal",
                      // );
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: height * .025),
                      width: height * .4,
                      height: height * .065,
                      padding: EdgeInsets.all(height * .01),
                      decoration: BoxDecoration(
                          color: HexColor("545FDD"),
                          borderRadius: BorderRadius.circular(height * .01)),
                      child: Center(
                        child: Text(
                          "Get Result",
                          style: TextStyle(
                            fontSize: height * .02,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * .05,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        child: Text(
                          "     Result",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: height * .03,
                              fontWeight: FontWeight.w400),
                        ),
                        alignment: Alignment(-.5, 0),
                      ),
                      SizedBox(
                        height: height * .01,
                      ),
                      if (state is! UploadFileLoadingState)
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(height * .015),
                            color: HexColor("CDD5EB"),
                          ),
                          width: height * .6,
                          height: height * .2,
                          child: Center(
                            child: cubit.result == null
                                ? Text("")
                                : Text(cubit.result!),
                          ),
                        ),
                      if (state is UploadFileLoadingState)
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(height * .015),
                            color: HexColor("CDD5EB"),
                          ),
                          width: height * .6,
                          height: height * .2,
                          child: Center(
                            child: SizedBox(
                              width: height*.045,
                              height: height*.045,
                              child: CircularProgressIndicator(
                                strokeWidth: height*.006,
                                color: HexColor("545FDD"),
                              ),
                            ),
                          ),
                        ),
                    ],
                  )
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

class FeatureSelectionWidgets extends StatelessWidget {
  FeatureSelectionWidgets({Key? key, required this.height, required this.cubit})
      : super(key: key);
  var height;
  AppCubit? cubit;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      builder: (context, state) {
        return Column(
          children: [
            Container(
              width: double.infinity,
              height: height * .128,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height * .05,
                  ),
                  Text(
                    "    Feature Selection",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: height * .025,
                        fontWeight: FontWeight.w400),
                  )
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
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.only(right: height * .025),
                    width: height * .28,
                    height: height * .06,
                    padding: EdgeInsets.all(height * .01),
                    decoration: BoxDecoration(
                        color: HexColor("545FDD"),
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: height * .04,
                  ),
                  Text(
                    "Please Upload your CSV Data File",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: height * .025,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: height * .04,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: Container(
                          color: HexColor("CBCCCE"),
                          width: height * .2,
                          height: height * .05,
                          child: Center(
                            child: Text(
                              "Choice File ",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: height * .018,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          cubit!.pickFile();
                        },
                      ),
                      SizedBox(
                        width: height * .006,
                      ),
                      Container(
                        color: HexColor("E2E9F5"),
                        width: height * .1,
                        height: height * .05,
                        child: Center(
                          child: Text(
                            cubit!.fileName ?? "  No File",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: height * .013,
                              fontWeight: FontWeight.normal,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * .08,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(right: height * .025),
                      width: height * .4,
                      height: height * .065,
                      padding: EdgeInsets.all(height * .01),
                      decoration: BoxDecoration(
                          color: HexColor("545FDD"),
                          borderRadius: BorderRadius.circular(height * .01)),
                      child: Center(
                        child: Text(
                          "Feature Selection",
                          style: TextStyle(
                            fontSize: height * .02,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * .05,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(right: height * .025),
                      width: height * .4,
                      height: height * .065,
                      padding: EdgeInsets.all(height * .01),
                      decoration: BoxDecoration(
                          color: HexColor("2A3079"),
                          borderRadius: BorderRadius.circular(height * .01)),
                      child: Row(
                        children: [
                          SizedBox(
                            width: height * .1,
                          ),
                          Icon(
                            Icons.file_copy_sharp,
                            size: height * .03,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: height * .02,
                          ),
                          Text(
                            "Copy File",
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
