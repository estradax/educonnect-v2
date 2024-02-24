import 'package:educonnect_app/widgets/ec_heading_text.dart';
import 'package:educonnect_app/widgets/ec_simple_stat_card.dart';
import 'package:flutter/material.dart';

class StatisticScreen extends StatelessWidget {
  const StatisticScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const EcHeadingText(text: 'Live Statistic'),
            const SizedBox(
              height: 6,
            ),
            const EcSimpleStatCard(),
            const SizedBox(
              height: 24,
            ),
            EcStatCard(
              title: 'Teachers Distributions',
              description:
                  'Teacher distribution in Indonesia varies across different educational levels. As of the latest statistics, there are approximately 3.367 million teachers in primary schools (SD), 673,000 in junior high schools (SMP), 336,000 in senior high schools (SMA)',
            ),
            SizedBox(
              height: 20,
            ),
            EcStatCard(
              title: 'Schools Distributions',
              description:
                  'Shchools distribution in Indonesia varies across different educational levels. As of the latest statistics, there are approximately 3.367 million teachers in primary schools (SD), 673,000 in junior high schools (SMP), 336,000 in senior high schools (SMA), and 324,000 in vocational high schools (SMK). Additionally, there are 186,000 teachers in other educational institutions across the country.',
            ),
          ],
        ),
      ),
    );
  }
}

class EcStatCard extends StatelessWidget {
  final String title;
  final String description;

  const EcStatCard({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 12,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.black.withOpacity(0.3),
        ),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            spreadRadius: 2,
            offset: const Offset(2, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text('The dropdown'),
            ],
          ),
          const SizedBox(
            height: 26,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'lib/assets/images/stat.png',
                width: 150,
                height: 150,
              ),
              const Column(
                children: [
                  Text('SD : 1.478.740 Teachers'),
                  Text('SMP : 673.335 Teachers'),
                  Text('SMA : 339.361 Teachers'),
                  Text('SMK : 324.676 Teachers'),
                  Text('Other : 289.328 Teachers'),
                ],
              ),
            ],
          ),
          Text(description),
        ],
      ),
    );
  }
}
