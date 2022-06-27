import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

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
  HomeWidget({Key? key, required this.height}) : super(key: key);
  var height;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: height * .03,
        ),
        Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
        Column(
          children: [
            Row(
              children: [
                Text(
                  "    History",
                  style: TextStyle(
                      fontSize: height * .025,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.only(right: height * .04),
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
                            Icons.delete,
                            size: height * .03,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: height * .014,
                          ),
                          Text(
                            "Delete All ",
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
                )
              ],
            ),
            Container(
              height: height * .7,
              margin: EdgeInsets.all(height * .03),
              padding: EdgeInsets.all(height * .03),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(height * .03),
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: height * .03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          child: Text(
                            "Data File name ",
                            style: TextStyle(
                                fontSize: height * .02,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                overflow: TextOverflow.ellipsis),
                          ),
                          width: height * .2,
                        ),
                        SizedBox(
                          child: Text(
                            "Cancer Type ",
                            style: TextStyle(
                                fontSize: height * .02,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                overflow: TextOverflow.ellipsis),
                          ),
                          width: height * .2,
                        ),
                        SizedBox(
                          child: Text(
                            "Date ",
                            style: TextStyle(
                                fontSize: height * .02,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                overflow: TextOverflow.ellipsis),
                          ),
                          width: height * .2,
                        ),
                        SizedBox(
                          child: Text(
                            "Time",
                            style: TextStyle(
                                fontSize: height * .02,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                overflow: TextOverflow.ellipsis),
                          ),
                          width: height * .2,
                        ),
                        SizedBox(
                          child: Text(
                            "Result",
                            style: TextStyle(
                                fontSize: height * .02,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                overflow: TextOverflow.ellipsis),
                          ),
                          width: height * .2,
                        ),
                        SizedBox(
                          child: Icon(
                            Icons.delete,
                            color: Colors.white,
                            size: height * .035,
                          ),
                          width: height * .2,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * .05,
                    ),
                    MyDivider(width: height * 1.2, height: height * .001),
                    ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              child: Text(
                                "tsample",
                                style: TextStyle(
                                    fontSize: height * .02,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    overflow: TextOverflow.ellipsis),
                              ),
                              width: height * .2,
                            ),
                            SizedBox(
                              child: Text(
                                "Colon ",
                                style: TextStyle(
                                    fontSize: height * .02,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    overflow: TextOverflow.ellipsis),
                              ),
                              width: height * .2,
                            ),
                            SizedBox(
                              child: Text(
                                "25/9/2022 ",
                                style: TextStyle(
                                    fontSize: height * .02,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    overflow: TextOverflow.ellipsis),
                              ),
                              width: height * .2,
                            ),
                            SizedBox(
                              child: Text(
                                "5:33",
                                style: TextStyle(
                                    fontSize: height * .02,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    overflow: TextOverflow.ellipsis),
                              ),
                              width: height * .2,
                            ),
                            SizedBox(
                              child: Text(
                                "normal",
                                style: TextStyle(
                                    fontSize: height * .02,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    overflow: TextOverflow.ellipsis),
                              ),
                              width: height * .2,
                            ),
                            SizedBox(
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.delete,
                                    color: HexColor("545FDD"),
                                    size: height * .035,
                                  )),
                              width: height * .2,
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (context, index) {
                        return MyDivider(
                          width: height,
                          height: height * .001,
                        );
                      },
                      itemCount: 8,
                    )
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}

class CancerTypeWidget extends StatelessWidget {
  CancerTypeWidget({Key? key, required this.height, required this.cubit})
      : super(key: key);
  var height, cubit;

  @override
  Widget build(BuildContext context) {
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
                          child: Text("Choice File ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: height * .018,
                                  fontWeight: FontWeight.normal))),
                    ),
                    onTap: () {},
                  ),
                  SizedBox(
                    width: height * .006,
                  ),
                  Container(
                    color: HexColor("E2E9F5"),
                    width: height * .1,
                    height: height * .05,
                    child: Center(
                        child: Text("  No File",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: height * .013,
                                fontWeight: FontWeight.normal,
                                overflow: TextOverflow.ellipsis))),
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
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(height * .015),
                      color: HexColor("CDD5EB"),
                    ),
                    width: height * .6,
                    height: height * .2,
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

class FeatureSelectionWidgets extends StatelessWidget {
  FeatureSelectionWidgets({Key? key, required this.height, required this.cubit})
      : super(key: key);
  var height, cubit;

  @override
  Widget build(BuildContext context) {
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
                          child: Text("Choice File ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: height * .018,
                                  fontWeight: FontWeight.normal))),
                    ),
                    onTap: () {},
                  ),
                  SizedBox(
                    width: height * .006,
                  ),
                  Container(
                    color: HexColor("E2E9F5"),
                    width: height * .1,
                    height: height * .05,
                    child: Center(
                        child: Text("  No File",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: height * .013,
                                fontWeight: FontWeight.normal,
                                overflow: TextOverflow.ellipsis))),
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
  }
}
