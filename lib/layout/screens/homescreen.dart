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
    var cubit = AppCubit.get(context);
    return BlocConsumer<AppCubit, AppState>(
      builder: (context, state) {
        return Scaffold(
          body: Row(
            children: [
              Container(
                color: HexColor("FFFFFF"),
                width: height * .45,
                height: height,
                child: SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * .022,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: const AssetImage('assets/images/logo.png'),
                            width: height * .08,
                            height: height * .08,
                          ),
                          Column(
                            children: [
                              Text(
                                'MicroCare',
                                style: TextStyle(
                                  fontSize: height * .03,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Cancer Detection',
                                style: TextStyle(
                                  fontSize: height * .02,
                                  fontWeight: FontWeight.w400,
                                  color: HexColor("4F548A"),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * .01,
                      ),
                      const Divider(),
                      SizedBox(
                        height: height * .01,
                      ),
                      GestureDetector(
                        onTap: () {
                          cubit.changeColonSelect(cubit: cubit, height: height);
                        },
                        child: Row(
                          children: [
                            if (cubit.colonSelect == true)
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
                                color: cubit.colonSelect == true
                                    ? HexColor("545FDD")
                                    : Colors.white,
                              ),
                              padding: EdgeInsets.all(height * .02),
                              width: height * .35,
                              height: height * .064,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  if (cubit.colonSelect == true)
                                    const Image(
                                      image: AssetImage(
                                        "assets/images/whitecancer.png",
                                      ),
                                    ),
                                  if (cubit.colonSelect == false)
                                    const Image(
                                      image: AssetImage(
                                        "assets/images/bluecancer.png",
                                      ),
                                    ),
                                  SizedBox(
                                    width: height * .02,
                                  ),
                                  Text(
                                    ' Colon cancer',
                                    style: TextStyle(
                                        fontSize: height * .02,
                                        fontWeight: FontWeight.w400,
                                        color: cubit.colonSelect == true
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
                          cubit.changeLungSelect(height: height, cubit: cubit);
                        },
                        child: Row(
                          children: [
                            if (cubit.lungSelect == true)
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
                                color: cubit.lungSelect == true
                                    ? HexColor("545FDD")
                                    : Colors.white,
                              ),
                              padding: EdgeInsets.all(height * .02),
                              width: height * .35,
                              height: height * .068,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  if (cubit.lungSelect == true)
                                    const Image(
                                      image: AssetImage(
                                        "assets/images/whitecancer.png",
                                      ),
                                    ),
                                  if (cubit.lungSelect == false)
                                    const Image(
                                      image: AssetImage(
                                        "assets/images/bluecancer.png",
                                      ),
                                    ),
                                  SizedBox(
                                    width: height * .02,
                                  ),
                                  Text(
                                    ' Lung cancer',
                                    style: TextStyle(
                                        fontSize: height * .02,
                                        fontWeight: FontWeight.w400,
                                        color: cubit.lungSelect == true
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
                          cubit.changeLiverSelect(height: height, cubit: cubit);
                        },
                        child: Row(
                          children: [
                            if (cubit.liverSelect == true)
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
                                color: cubit.liverSelect == true
                                    ? HexColor("545FDD")
                                    : Colors.white,
                              ),
                              padding: EdgeInsets.all(height * .02),
                              width: height * .35,
                              height: height * .064,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  if (cubit.liverSelect == true)
                                    const Image(
                                      image: AssetImage(
                                        "assets/images/whitecancer.png",
                                      ),
                                    ),
                                  if (cubit.liverSelect == false)
                                    const Image(
                                      image: AssetImage(
                                        "assets/images/bluecancer.png",
                                      ),
                                    ),
                                  SizedBox(
                                    width: height * .02,
                                  ),
                                  Text(
                                    ' Liver cancer',
                                    style: TextStyle(
                                      fontSize: height * .02,
                                      fontWeight: FontWeight.w400,
                                      color: cubit.liverSelect == true
                                          ? Colors.white
                                          : Colors.black,
                                    ),
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
                              height: height, cubit: cubit);
                        },
                        child: Row(
                          children: [
                            if (cubit.breastSelect == true)
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
                                color: cubit.breastSelect == true
                                    ? HexColor("545FDD")
                                    : Colors.white,
                              ),
                              padding: EdgeInsets.all(height * .02),
                              width: height * .35,
                              height: height * .064,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  if (cubit.breastSelect == true)
                                    const Image(
                                      image: AssetImage(
                                        "assets/images/whitecancer.png",
                                      ),
                                    ),
                                  if (cubit.breastSelect == false)
                                    const Image(
                                      image: AssetImage(
                                        "assets/images/bluecancer.png",
                                      ),
                                    ),
                                  SizedBox(
                                    width: height * .02,
                                  ),
                                  Text(
                                    ' Breast cancer',
                                    style: TextStyle(
                                        fontSize: height * .02,
                                        fontWeight: FontWeight.w400,
                                        color: cubit.breastSelect == true
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
                          cubit.changeLeukemiaSelect(
                              height: height, cubit: cubit);
                        },
                        child: Row(
                          children: [
                            if (cubit.leukemiaSelect == true)
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
                                color: cubit.leukemiaSelect == true
                                    ? HexColor("545FDD")
                                    : Colors.white,
                              ),
                              padding: EdgeInsets.all(height * .02),
                              width: height * .35,
                              height: height * .064,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  if (cubit.leukemiaSelect == true)
                                    const Image(
                                      image: AssetImage(
                                        "assets/images/whitecancer.png",
                                      ),
                                    ),
                                  if (cubit.leukemiaSelect == false)
                                    const Image(
                                      image: AssetImage(
                                        "assets/images/bluecancer.png",
                                      ),
                                    ),
                                  SizedBox(
                                    width: height * .02,
                                  ),
                                  Text(
                                    ' Leukemia cancer',
                                    style: TextStyle(
                                        fontSize: height * .02,
                                        fontWeight: FontWeight.w400,
                                        color: cubit.leukemiaSelect == true
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
                                    ? HexColor("545FDD")
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
                                          onPressed: () {
                                            SystemNavigator.pop();
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
                                color: cubit.exitSelect == true
                                    ? HexColor("545FDD")
                                    : Colors.white,
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
                                    color: cubit.exitSelect == true
                                        ? Colors.white
                                        : iconColor,
                                  ),
                                  SizedBox(
                                    width: height * .02,
                                  ),
                                  Text(
                                    'Exit',
                                    style: TextStyle(
                                        fontSize: height * .02,
                                        fontWeight: FontWeight.w400,
                                        color: cubit.exitSelect == true
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
                        height: height * .06,
                      ),
                    ],
                  ),
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
