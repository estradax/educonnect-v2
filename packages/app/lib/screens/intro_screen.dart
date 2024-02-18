import 'package:educonnect_app/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 11),
          child: Image.asset('lib/assets/images/educonnect-logo.png'),
        ),
        backgroundColor: Colors.white,
        titleSpacing: 0,
        title: const Text(
          'EduConnect',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      body: IntroSlider(
        key: UniqueKey(),
        listCustomTabs: const [
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
        onDonePress: () => Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          ),
        ),
        isShowSkipBtn: false,
        isShowPrevBtn: true,
        indicatorConfig: IndicatorConfig(
          colorIndicator: Theme.of(context).indicatorColor,
          colorActiveIndicator: Theme.of(context).primaryColor,
        ),
        renderNextBtn: const IntroIndicatorButton(text: 'Next'),
        renderPrevBtn: const IntroIndicatorButton(text: 'Back'),
        renderDoneBtn: const IntroIndicatorButton(text: 'Done'),
      ),
    );
  }
}

class IntroIndicatorButton extends StatelessWidget {
  final String text;

  const IntroIndicatorButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class IntroContent extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  const IntroContent({
    super.key,
    required this.title,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          Image.asset(
            image,
            width: 270,
            height: 240,
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
