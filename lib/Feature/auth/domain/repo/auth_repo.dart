import 'package:dartz/dartz.dart';
import 'package:fruits_hub/Core/errors/failures.dart';
import 'package:fruits_hub/Feature/auth/domain/entities/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String name);

  Future<Either<Failure, UserEntity>> signinWithEmailAndPassword(
      String email, String password);

  Future<Either<Failure, UserEntity>> signinWithGoogle();
  Future<Either<Failure, UserEntity>> signinWithFacebook();
  Future addUserData({required UserEntity user});
  Future<UserEntity> getUserData({required String uid});
}
