import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hh/cubit/app_cubit.dart';
import 'package:hh/layout/screens/homescreen.dart';

import '../../helpers/constant/constant.dart';

class SelectScreen extends StatelessWidget {
  const SelectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery
        .of(context)
        .size
        .height;
    var width = MediaQuery
        .of(context)
        .size
        .width;
    var cubit = AppCubit.get(context);
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: Row(
            children: [
              Container(
                color: HexColor('F6FAFF'),
                width: height * .6,
                height: double.infinity,
                child: Center(
                  child: Image(
                    image: const AssetImage("assets/images/left.png"),
                    height: height * .3,
                    width: height * .28,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: HexColor("FFFFFF"),
                  height: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: height * .05,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                            image: const AssetImage("assets/images/left.png"),
                            height: height * .15,
                            width: height * .25,
                          ),
                          Text(
                            "MicroCare",
                            style: TextStyle(
                              fontSize: width * .023,
                              fontWeight: FontWeight.w700,
                              color: HexColor('1F245B'),
                            ),
                          ),
                          Text(
                            "Cancer Detection",
                            style: TextStyle(
                                fontSize: width * .013,
                                fontWeight: FontWeight.w600,
                                color: HexColor("4F548A")),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * .09,
                      ),
                      SizedBox(
                        width: width*0.48,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "please choose the cancer detection type ",
                              style: TextStyle(
                                fontSize: height * .025,
                                fontWeight: FontWeight.w600,
                                color: HexColor('1F245B'),
                              ),
                            ),
                            SizedBox(
                              height: height * .04,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (context) => const HomeScreen(),
                                  ),
                                );
                                cubit.changeColonSelect(
                                  height: height,
                                  cubit: cubit,
                                  width: width,
                                );
                              },
                              child: Container(
                                height: height * .065,
                                decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(height * .02),
                                  color: buttonColor,
                                ),
                                child: Center(
                                  child: Text(
                                    "Colon Cancer",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: height * .022,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * .04,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (context) => const HomeScreen(),
                                  ),
                                );
                                cubit.changeLungSelect(
                                  height: height,
                                  cubit: cubit,
                                  width: width,
                                );
                              },
                              child: Container(
                                height: height * .065,
                                decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(height * .02),
                                  color: buttonColor,
                                ),
                                child: Center(
                                  child: Text(
                                    "Lung Cancer",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: height * .022,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * .04,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (context) => const HomeScreen(),
                                  ),
                                );
                                cubit.changeLiverSelect(
                                  height: height,
                                  cubit: cubit,
                                  width: width,
                                );
                              },
                              child: Container(
                                height: height * .065,
                                decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(height * .02),
                                  color: buttonColor,
                                ),
                                child: Center(
                                  child: Text(
                                    "Liver Cancer",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: height * .022,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * .04,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (context) => const HomeScreen(),
                                  ),
                                );
                                cubit.changeBreastSelect(
                                  height: height,
                                  cubit: cubit,
                                  width: width,
                                );
                              },
                              child: Container(
                                height: height * .065,
                                decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(height * .02),
                                  color: buttonColor,
                                ),
                                child: Center(
                                  child: Text(
                                    "Breast Cancer",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: height * .022,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * .04,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (context) => const HomeScreen(),
                                  ),
                                );
                                cubit.changeLeukemiaSelect(
                                  height: height,
                                  cubit: cubit,
                                  width: width,
                                );
                              },
                              child: Container(
                                height: height * .065,
                                decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(height * .02),
                                  color: buttonColor,
                                ),
                                child: Center(
                                  child: Text(
                                    "Leukemia Cancer",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: height * .022,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * .04,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
