import 'package:educonnect_app/data/register_form.dart';
import 'package:educonnect_app/data/user.dart';
import 'package:educonnect_app/helpers.dart';
import 'package:educonnect_app/screens/login_screen.dart';
import 'package:educonnect_app/widgets/ec_auth_form_card.dart';
import 'package:educonnect_app/widgets/ec_auth_scaffold.dart';
import 'package:educonnect_app/widgets/ec_button.dart';
import 'package:educonnect_app/widgets/ec_chip.dart';
import 'package:educonnect_app/widgets/ec_text_form_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _fullNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  var _role = UserRole.other;

  void _handleFirebaseUserRegister(UserCredential userCredential) {}

  @override
  void dispose() {
    _fullNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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
                'Join us in revolutionizing Indonesia\'s education',
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
                      'Register',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    Image.asset(
                      'lib/assets/images/register-vector.png',
                      width: 218,
                      height: 190,
                    ),
                    const SizedBox(
                      height: 42,
                    ),
                    Form(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            EcTextFormField(
                              label: 'Full Name',
                              hintText: 'Enter your full name',
                              controller: _fullNameController,
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            EcTextFormField(
                              label: 'Email',
                              hintText: 'Enter your email address',
                              controller: _emailController,
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            EcTextFormField(
                              label: 'Password',
                              hintText: 'Enter your password',
                              obsecureText: true,
                              controller: _passwordController,
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            const Text(
                              'Role',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              height: 58,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _role = UserRole.other;
                                      });
                                    },
                                    child: EcChip(
                                      label: 'Other',
                                      isActive: _role == UserRole.other,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _role = UserRole.educator;
                                      });
                                    },
                                    child: EcChip(
                                      label: 'Educator',
                                      isActive: _role == UserRole.educator,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _role = UserRole.freshGraduate;
                                      });
                                    },
                                    child: EcChip(
                                      label: 'Fresh Graduate',
                                      isActive: _role == UserRole.freshGraduate,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 54,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: EcButton(
                        onTap: () {
                          final registerForm = RegisterForm(
                            fullName: _fullNameController.text,
                            email: _emailController.text,
                            password: _passwordController.text,
                            role: _role,
                          );

                          if (!registerForm.isValid()) {
                            errorDialog(context, 'Invalid input form');
                          }

                          FirebaseAuth.instance
                              .createUserWithEmailAndPassword(
                                email: registerForm.email,
                                password: registerForm.password,
                              )
                              .then(
                                _handleFirebaseUserRegister,
                              )
                              .catchError(
                            (e) {
                              if (e is FirebaseAuthException) {
                                errorDialog(context, 'Auth error: ${e.code}');
                              }
                            },
                          );
                        },
                        text: 'Register',
                        backgroundColor: Theme.of(context).primaryColor,
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Already have an account? '),
                        GestureDetector(
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                          ),
                          child: Text(
                            'Login now',
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 26,
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


