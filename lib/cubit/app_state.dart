part of 'app_cubit.dart';

@immutable
abstract class AppState {}

class AppInitial extends AppState {}

class ChangeIndexSuccessState extends AppState {}
class ChangeResultSuccessState extends AppState {}
class ChangeHomeSuccessState extends AppState {}

class ChangeFeatureSuccessState extends AppState {}

class ChangeColonSuccessState extends AppState {}

class ChangeLiverSuccessState extends AppState {}

class ChangeLeukemiaSuccessState extends AppState {}

class ChangeBreastSuccessState extends AppState {}

class ChangeLungSuccessState extends AppState {}

class ChangeContactSuccessState extends AppState {}

class ChangeExitSuccessState extends AppState {}

class RefreshSuccessState extends AppState {}

class OnCreateSuccessState extends AppState {}

class UploadFileLoadingState extends AppState {}

class UploadFileSuccessState extends AppState {}

class UploadFileErrorState extends AppState {}

class PickedFileSuccessState extends AppState {}
