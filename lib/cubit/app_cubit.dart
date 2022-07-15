import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hh/helpers/component/component.dart';
import 'package:meta/meta.dart';

import 'package:http/http.dart' as http;

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());

  static AppCubit get(context) => BlocProvider.of(context);

  //navigation codes
  int currentIndex = 0;

  void changeIndex({required int index}) {
    currentIndex = index;
    emit(ChangeIndexSuccessState());
  }

  void changeToResult() {
    currentIndex = 1;
    emit(ChangeResultSuccessState());
  }

  String cancerType = "";
  String? model;

  bool homeSelect = true;
  bool featureSelect = false;
  bool colonSelect = false;
  bool breastSelect = false;
  bool liverSelect = false;
  bool lungSelect = false;
  bool leukemiaSelect = false;
  bool contactSelect = false;
  bool exitSelect = false;
  Widget? screen;

  void changeHomeSelect({
    required height,
    required cubit,
  }) {
    homeSelect = true;
    featureSelect = false;
    colonSelect = false;
    breastSelect = false;
    liverSelect = false;
    lungSelect = false;
    leukemiaSelect = false;
    contactSelect = false;
    exitSelect = false;

    emit(ChangeHomeSuccessState());
  }

  void changeFeatureSelect({required height, required cubit}) {
    homeSelect = false;
    featureSelect = true;
    colonSelect = false;
    breastSelect = false;
    liverSelect = false;
    lungSelect = false;
    leukemiaSelect = false;
    contactSelect = false;
    exitSelect = false;
    emit(ChangeFeatureSuccessState());
  }

  void changeColonSelect({required height, required cubit,required width}) {
    homeSelect = false;
    featureSelect = false;
    colonSelect = true;
    breastSelect = false;
    liverSelect = false;
    lungSelect = false;
    leukemiaSelect = false;
    contactSelect = false;
    exitSelect = false;
    result=null;
    cancerType = "Colon Cancer";
    model = 'colon';

    screen = CancerTypeWidget(height: height, cubit: cubit,width: width,);
    emit(ChangeColonSuccessState());
  }

  void changeLiverSelect({required height, required cubit,required width}) {
    homeSelect = false;
    featureSelect = false;
    colonSelect = false;
    breastSelect = false;
    liverSelect = true;
    lungSelect = false;
    leukemiaSelect = false;
    contactSelect = false;
    exitSelect = false;
    result=null;
    cancerType = "Liver Cancer";
    model = 'liver';
    screen = CancerTypeWidget(height: height, cubit: cubit,width: width,);

    emit(ChangeLiverSuccessState());
  }

  void changeLungSelect({required height, required cubit,required width}) {
    homeSelect = false;
    featureSelect = false;
    colonSelect = false;
    breastSelect = false;
    liverSelect = false;
    lungSelect = true;
    leukemiaSelect = false;
    contactSelect = false;
    exitSelect = false;
    result=null;
    cancerType = "Lung Cancer";
    model = 'lung';

    screen = CancerTypeWidget(height: height, cubit: cubit,width: width,);

    emit(ChangeLungSuccessState());
  }

  void changeLeukemiaSelect({required height, required cubit,required width}) {
    homeSelect = false;
    featureSelect = false;
    colonSelect = false;
    breastSelect = false;
    liverSelect = false;
    lungSelect = false;
    leukemiaSelect = true;
    contactSelect = false;
    exitSelect = false;
    result=null;
    cancerType = "Leukemia Cancer";
    model = 'leukemia';

    screen = CancerTypeWidget(height: height, cubit: cubit,width: width,);

    emit(ChangeLeukemiaSuccessState());
  }

  void changeBreastSelect({required height, required cubit,required width}) {
    homeSelect = false;
    featureSelect = false;
    colonSelect = false;
    breastSelect = true;
    liverSelect = false;
    lungSelect = false;
    leukemiaSelect = false;
    contactSelect = false;
    exitSelect = false;
    cancerType = "Breast Cancer";
    model = 'breast';
    result=null;

    screen = CancerTypeWidget(height: height, cubit: cubit,width: width,);

    emit(ChangeBreastSuccessState());
  }


  void changeExitSelect() {
    homeSelect = false;
    featureSelect = false;
    colonSelect = false;
    breastSelect = false;
    liverSelect = false;
    lungSelect = false;
    leukemiaSelect = false;
    contactSelect = false;
    exitSelect = true;
    emit(ChangeExitSuccessState());
  }

//api codes

  File? file;

  String? fileName;

  pickFile() {
    FilePicker.platform.pickFiles(type: FileType.custom, allowedExtensions: ['csv'],).then(
      (value) {
        file = File(value!.files.single.path!);
        fileName = value.files.single.name;
        emit(PickedFileSuccessState());
      },
    );
  }

  var postUri;

  String? result;

  bool load =false;


  void uploadFile() async {
    load=true;
    emit(UploadFileLoadingState());
    if (model == "lung") {
      postUri = Uri.parse("https://cancer-api-2022.herokuapp.com/detectLung/");
    } else if (model == "leukemia") {
      postUri =
          Uri.parse("https://cancer-api-2022.herokuapp.com/detectLeukemia/");
    } else if (model == "breast") {
      postUri =
          Uri.parse("https://cancer-api-2022.herokuapp.com/detectBreast/");
    } else if (model == "colon") {
      postUri = Uri.parse("https://cancer-api-2022.herokuapp.com/detectColon/");
    } else if (model == "liver") {
      postUri = Uri.parse("https://cancer-api-2022.herokuapp.com/detectLiver/");
    }

    if (model == "lung" ||
        model == "colon" ||
        model == "breast" ||
        model == "leukemia" ||
        model == "liver") {
      http.MultipartRequest request = http.MultipartRequest("POST", postUri);

      http.MultipartFile multipartFile =
          await http.MultipartFile.fromPath('file', file!.path);

      request.files.add(multipartFile);

      http.StreamedResponse response = await request.send();

      http.Response.fromStream(response).then((value) {

        if (value.body == '{"prediction":"Normal"}') {
          result = "Normal";
        } else if (value.body == '{"prediction":"Tumoral"}') {
          result = "Tumoral";
        }else if (value.body == '{"prediction":"Please Upload Usable Data File"}') {
          result = "Please upload usable data file";
        }


        load=false;
        changeToResult();

      }).catchError((error) {
        emit(UploadFileErrorState());
      });
    } else {
      result = "The model is wrong value";
    }
  }

  void refresh() {
    file = null;
    fileName = null;
    result = null;
    currentIndex=0;
    emit(RefreshSuccessState());
  }
}
