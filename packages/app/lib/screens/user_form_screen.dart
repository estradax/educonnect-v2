import 'package:educonnect_app/widgets/ec_chip.dart';
import 'package:educonnect_app/widgets/ec_slider.dart';
import 'package:educonnect_app/widgets/ec_text_form_field.dart';
import 'package:flutter/material.dart';

class UserFormScreen extends StatelessWidget {
  const UserFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return EcSlider(
      contents: [
        const EcUserFormSliderContent(
          title: 'Personal Information',
          children: [
            EcTextFormField(
              label: 'Age',
              hintText: 'Enter your age',
            ),
            SizedBox(
              height: 14,
            ),
            EcTextFormField(
              label: 'Contact Number',
              hintText: 'Enter your contact number',
            ),
          ],
        ),
        const EcUserFormSliderContent(
          title: 'Educational Background',
          children: [
            EcTextFormField(
              label: 'University',
              hintText: 'Enter the name of your university',
            ),
            SizedBox(
              height: 14,
            ),
            EcTextFormField(
              label: 'Degree',
              hintText: 'Enter your degree',
            ),
            SizedBox(
              height: 14,
            ),
            EcTextFormField(
              label: 'Year of Graduation',
              hintText: 'Enter the year of graduation',
            ),
          ],
        ),
        EcUserFormSliderContent(
          title: 'Teaching Experience',
          children: [
            const Text(
              'Grade Level',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 58,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  EcChip(label: 'Elementary School'),
                  SizedBox(
                    width: 6,
                  ),
                  EcChip(label: 'Middle School'),
                  SizedBox(
                    width: 6,
                  ),
                  EcChip(label: 'High School'),
                ],
              ),
            ),
            const Text(
              'Subject',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 58,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  EcChip(label: 'Math'),
                  SizedBox(
                    width: 6,
                  ),
                  EcChip(label: 'Science'),
                  SizedBox(
                    width: 6,
                  ),
                  EcChip(label: 'English'),
                  SizedBox(
                    width: 6,
                  ),
                  EcChip(label: 'Social'),
                ],
              ),
            ),
            const EcTextFormField(
              label: 'Years of Experience',
              hintText: 'Enter the number of years of experience',
            ),
          ],
        ),
      ],
    );
  }
}

class EcUserFormSliderContent extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const EcUserFormSliderContent({
    super.key,
    required this.title,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 16,
      ),
      color: Colors.white,
      width: double.infinity,
      height: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 28,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 28,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children,
          ),
        ],
      ),
    );
  }
}
