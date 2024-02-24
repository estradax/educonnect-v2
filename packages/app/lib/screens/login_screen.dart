import 'package:educonnect_app/data/user.dart';
import 'package:educonnect_app/screens/register_screen.dart';
import 'package:educonnect_app/screens/user_form_screen.dart';
import 'package:educonnect_app/services/login_service.dart';
import 'package:educonnect_app/widgets/ec_auth_form_card.dart';
import 'package:educonnect_app/widgets/ec_auth_scaffold.dart';
import 'package:educonnect_app/widgets/ec_button.dart';
import 'package:educonnect_app/widgets/ec_text_form_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return EcAuthScaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome to EduConnect',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                'Sign in to your account',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              EcAuthFormCard(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    const Text(
                      'Login',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    Image.asset(
                      'lib/assets/images/login-vector.png',
                      width: 218,
                      height: 190,
                    ),
                    const SizedBox(
                      height: 48,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: EcButton(
                        onTap: () async {
                          final GoogleSignInAccount? googleUser =
                              await GoogleSignIn().signIn();
                          final GoogleSignInAuthentication? googleAuth =
                              await googleUser?.authentication;
                          final credential = GoogleAuthProvider.credential(
                            accessToken: googleAuth?.accessToken,
                            idToken: googleAuth?.idToken,
                          );

                          final userCredential = await FirebaseAuth.instance
                              .signInWithCredential(credential);

                          await LoginService().loginWithGoogle(userCredential);

                          if (!context.mounted) return;

                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const UserFormScreen(
                                role: UserRole.educator,
                              ),
                            ),
                          );
                        },
                        text: 'Login With Google',
                        icon: const AssetImage('lib/assets/images/google-icon.png'),
                        textStyle: const TextStyle(fontSize: 16),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Divider(
                        height: 2,
                        color: Color(0xFFD2D2D2),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Form(
                      key: _formKey,
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            EcTextFormField(
                              label: 'Email',
                              hintText: 'Enter your email address',
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            EcTextFormField(
                              label: 'Password',
                              hintText: 'Enter your password',
                              obsecureText: true,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 34,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: EcButton(
                        text: 'Login',
                        textStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        backgroundColor: Theme.of(context).primaryColor,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Don\'t have any account? '),
                        GestureDetector(
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const RegisterScreen(),
                            ),
                          ),
                          child: Text(
                            'Register now',
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
