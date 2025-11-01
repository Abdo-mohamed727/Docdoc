import 'package:dio/dio.dart';
import 'package:docdoc/core/networking/api_services.dart';
import 'package:docdoc/core/networking/dio_factory.dart';
import 'package:docdoc/features/login/Data/repos/login_repo.dart';
import 'package:docdoc/features/login/Logic/cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
Future<void> setUpGetIt() async {
  Dio dio = DioFactory.getdio();

  getIt.registerLazySingleton<ApiServices>(() => ApiServices(dio));
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
}
