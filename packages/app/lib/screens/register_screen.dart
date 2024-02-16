import 'package:educonnect_app/screens/login_screen.dart';
import 'package:educonnect_app/widgets/ec_auth_form_card.dart';
import 'package:educonnect_app/widgets/ec_auth_scaffold.dart';
import 'package:educonnect_app/widgets/ec_button.dart';
import 'package:educonnect_app/widgets/ec_chip.dart';
import 'package:educonnect_app/widgets/ec_text_form_field.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _fullNameController = TextEditingController();

  @override
  void dispose() {
    _fullNameController.dispose();

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
                            const EcTextFormField(
                              label: 'Email',
                              hintText: 'Enter your email address',
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            const EcTextFormField(
                              label: 'Password',
                              hintText: 'Enter your password',
                              obsecureText: true,
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
                                children: const [
                                  EcChip(
                                    label: 'Other',
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  EcChip(
                                    label: 'Educator',
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  EcChip(
                                    label: 'Fresh Graduate',
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
                          debugPrint(_fullNameController.text);
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
