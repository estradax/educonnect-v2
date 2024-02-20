import 'package:educonnect_app/screens/login_screen.dart';
import 'package:educonnect_app/widgets/ec_slider.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return EcSlider(
      onDonePress: () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        ),
      ),
      contents: const [
        IntroContent(
          title: 'EduConnect',
          description:
              'EduConnect focuses on real-time insights into the educational landscape by providing comprehensive information on the number of educators in each school.',
          image: 'lib/assets/images/educonnect-logo-intro.png',
        ),
        IntroContent(
          title: 'Real Time Dashboard',
          description:
              'EduConnect\'s real-time dashboard offers users quick access to education-related data. Users can see data on the number of teachers, schools and others in real time',
          image: 'lib/assets/images/realtime-dashboard-intro.png',
        ),
        IntroContent(
          title: 'School Information',
          description:
              'Offers insights into various educational institutions, including tables outlining schools in need of teachers or lacking facilities. It also maps schools across Indonesia facing shortages of educators. ',
          image: 'lib/assets/images/school-information-intro.png',
        ),
        IntroContent(
          title: 'Job Opportunities',
          description:
              'EduConnect focuses on real-time insights into the educational landscape by providing comprehensive information on the number of educators in each school.',
          image: 'lib/assets/images/job-opportunities-intro.png',
        ),
        IntroContent(
          title: 'Some Fact',
          description:
              'The largest number of teachers in Indonesia is in West Java with 474,000, while the fewest are in the Papua Mountains with only 6,903."',
          image: 'lib/assets/images/some-fact-intro.png',
        ),
      ],
    );
  }
}
