import 'package:dartz/dartz.dart';
import 'package:fruits_hub/Core/Widgets/custom_button.dart';
import 'package:fruits_hub/Core/errors/exceptions.dart';
import 'package:fruits_hub/Core/errors/failures.dart';
import 'package:fruits_hub/Core/service/firebase_auth_service.dart';
import 'package:fruits_hub/Feature/auth/data/model/user_model.dart';
import 'package:fruits_hub/Feature/auth/domain/entities/user_entity.dart';
import 'package:fruits_hub/Feature/auth/domain/repo/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthRepoImpl({required this.firebaseAuthService});

  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String name) async {
    try {
      var user = await firebaseAuthService.createUserWithEmailAndPassword(
          email: email, password: password);
      return right(
        UserModel.fromFirebaseUser(user),
      );
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      return left(
        ServerFailure('An error occurred , Please try again later.'),
      );
    }
  }
}
