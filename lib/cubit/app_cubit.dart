import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hh/helpers/component/component.dart';
import 'package:hh/helpers/shared/dio.dart';
import 'package:meta/meta.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:convert' as convert;

import 'package:http/http.dart' as http;
part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());

  static AppCubit get(context) => BlocProvider.of(context);

  //navigation codes

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
    screen = HomeWidget(
      height: height,
      cubit: cubit,
    );
    emit(ChangeHomeSuccessState());
  }

  void changeColonSelect({required height, required cubit}) {
    homeSelect = false;
    featureSelect = false;
    colonSelect = true;
    breastSelect = false;
    liverSelect = false;
    lungSelect = false;
    leukemiaSelect = false;
    contactSelect = false;
    exitSelect = false;
    cancerType = "Colon Cancer";
    model = 'colon';
    screen = CancerTypeWidget(height: height, cubit: cubit);
    emit(ChangeColonSuccessState());
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
    screen = FeatureSelectionWidgets(height: height, cubit: cubit);
    emit(ChangeFeatureSuccessState());
  }

  void changeLiverSelect({required height, required cubit}) {
    homeSelect = false;
    featureSelect = false;
    colonSelect = false;
    breastSelect = false;
    liverSelect = true;
    lungSelect = false;
    leukemiaSelect = false;
    contactSelect = false;
    exitSelect = false;
    cancerType = "Liver Cancer";
    model = 'liver';
    screen = CancerTypeWidget(height: height, cubit: cubit);

    emit(ChangeLiverSuccessState());
  }

  void changeLungSelect({required height, required cubit}) {
    homeSelect = false;
    featureSelect = false;
    colonSelect = false;
    breastSelect = false;
    liverSelect = false;
    lungSelect = true;
    leukemiaSelect = false;
    contactSelect = false;
    exitSelect = false;
    cancerType = "Lung Cancer";
    model = 'lung';

    screen = CancerTypeWidget(height: height, cubit: cubit);

    emit(ChangeLungSuccessState());
  }

  void changeLeukemiaSelect({required height, required cubit}) {
    homeSelect = false;
    featureSelect = false;
    colonSelect = false;
    breastSelect = false;
    liverSelect = false;
    lungSelect = false;
    leukemiaSelect = true;
    contactSelect = false;
    exitSelect = false;
    cancerType = "Leukemia Cancer";
    model = 'leukemia';

    screen = CancerTypeWidget(height: height, cubit: cubit);

    emit(ChangeLeukemiaSuccessState());
  }

  void changeBreastSelect({required height, required cubit}) {
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

    screen = CancerTypeWidget(height: height, cubit: cubit);

    emit(ChangeBreastSuccessState());
  }

  void changeContactSelect() {
    homeSelect = false;
    featureSelect = false;
    colonSelect = false;
    breastSelect = false;
    liverSelect = false;
    lungSelect = false;
    leukemiaSelect = false;
    contactSelect = true;
    exitSelect = false;
    cancerType = "Contact US";

    emit(ChangeContactSuccessState());
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

//sqflite codes
  Database? database;
  List historyList = [];

  void createDB() async {
    await openDatabase('history.db', version: 1, onCreate: (database, version) {
      database
          .execute(
              'create table history (id integer primary key , fName text , type text , date text , time text , result text )')
          .then((value) {
        emit(OnCreateSuccessState());
      }).catchError((error) {
        print(error.toString());
        emit(OnCreateSuccessState());
      });
    }, onOpen: (database) {})
        .then((value) {
      database = value;
      getDataFromDataBase();
      emit(OnOpenSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(OnOpenErrorState());
    });
  }

  void getDataFromDataBase() {
    historyList = [];
    emit(GetLoadingState());
    database!.rawQuery('SELECT * FROM history').then((value) {
      // print(value[0]['type'].toString()+"555555555555555555555555555555555555555");
      value.forEach((element) {
        historyList.add(element);
      });
      emit(GetSuccessState());
    }).catchError((error) {
      print(error);
      emit(GetErrorState());
    });
  }

  void insertToDataBase({
    required String fName,
    required String type,
    required String date,
    required String time,
    required String result,
  }) async {
    emit(InsertLoadingState());
    await database!.transaction((txn) {
      return txn
          .rawInsert(
              'INSERT INTO history(fName,type, date, time, result) VALUES( "$fName" , "$type" , "$date" , "$time" , "$result" )')
          .then((value) {
        getDataFromDataBase();
      }).catchError((error) {
        print('err' + error);
        emit(InsertErrorState());
      });
    });
  }

  void updateData({
    required String result,
    required int id,
  }) {
    database!.rawUpdate('UPDATE history SET result = ? WHERE id = ?',
        [result, id]).then((value) {
      getDataFromDataBase();
      emit(UpdateSuccessState());
    }).catchError((error) {
      emit(UpdateErrorState());
    });
  }

  void deleteData({
    required int id,
  }) {
    database!.rawDelete('DELETE FROM history WHERE id = ?', [id]).then((value) {
      getDataFromDataBase();
    }).catchError((error) {
      emit(DeleteErrorState());
    });
  }

  void deleteAllData() {
    database!.delete("history").then((value) {
      getDataFromDataBase();
    }).catchError((error) {
      emit(DeleteErrorState());
    });
  }

//api codes

  File? file;
  String? fileName;

  pickFile() {
    FilePicker.platform.pickFiles().then(
      (value) {
        file = File(value!.files.single.path!);
        fileName = value.files.single.name;
        emit(PickedFileSuccessState());
      },
    );
  }

  void uploadFile()async {
    emit(UploadFileSuccessState());
    var postUri = Uri.parse("https://cancer-api-2022.herokuapp.com/uploadcsv/");

    http.MultipartRequest request =  http.MultipartRequest("POST", postUri);

    http.MultipartFile multipartFile = await http.MultipartFile.fromPath(
        'file', file!.path);

    request.files.add(multipartFile);

    http.StreamedResponse response = await request.send();

    var result = await http.Response.fromStream(response);
    emit(UploadFileSuccessState());
    print(result.body);
}
