import 'package:diet_pdf_creator/app/repositories/login/login_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginRepositoryImpl implements LoginRepository {
  @override
  Future<UserCredential> login() async {
    final googleOptionUser = await GoogleSignIn().signIn();
    final googleAuthData = await googleOptionUser?.authentication;

    if (googleAuthData != null) {
      final authCredential = GoogleAuthProvider.credential(
        accessToken: googleAuthData.accessToken,
        idToken: googleAuthData.idToken,
      );

      return FirebaseAuth.instance.signInWithCredential(authCredential);
    }

    throw Exception('Erro ao realizar login com google');
  }
  
  @override
  Future<void> logout() async {
    await GoogleSignIn().signOut();
  }
}
