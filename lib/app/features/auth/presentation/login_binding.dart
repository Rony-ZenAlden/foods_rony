import 'package:foods_rony/app/features/auth/presentation/login_controller.dart';
import 'package:get/get.dart';

import '../data/datasources/auth_remote_datasource.dart';
import '../data/repositories/auth_repository_impl.dart';
import '../domain/use_cases/login_use_case.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    final authRepository = AuthRepositoryImpl(
      remoteDatasource: AuthRemoteDatasourceImpl(),
    );

    final loginUseCase = LoginUseCase(
      repository: authRepository,
    );

    Get.lazyPut(() =>
        LoginController(
          loginUseCase: loginUseCase,
        ),
    );
  }
}