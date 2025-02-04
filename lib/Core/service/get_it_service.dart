import 'package:fruits_hub/Core/service/firebase_auth_service.dart';
import 'package:fruits_hub/Feature/auth/data/repos/user_repo_impl.dart';
import 'package:fruits_hub/Feature/auth/domain/repo/auth_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  getIt.registerSingleton<AuthRepo>(
    AuthRepoImpl(
      firebaseAuthService: getIt<FirebaseAuthService>(),
    ),
  );
}
