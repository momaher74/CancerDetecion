import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hh/helpers/component/component.dart';
import 'package:meta/meta.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());

  static AppCubit get(context) => BlocProvider.of(context);
  String cancerType = "";
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

  void changeHomeSelect() {
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
    screen = CancerTypeWidget(height: height, cubit: cubit);
    emit(ChangeColonSuccessState());
  }

  void changeFeatureSelect() {
    homeSelect = false;
    featureSelect = true;
    colonSelect = false;
    breastSelect = false;
    liverSelect = false;
    lungSelect = false;
    leukemiaSelect = false;
    contactSelect = false;
    exitSelect = false;
    cancerType = "Feature Selection";

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
}
