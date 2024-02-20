import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';

class EcSlider extends StatelessWidget {
  final List<Widget> contents;
  final void Function()? onDonePress;

  const EcSlider({
    super.key,
    required this.contents,
    this.onDonePress,
  });

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
        listCustomTabs: contents,
        onDonePress: onDonePress,
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
