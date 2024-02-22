import 'package:educonnect_app/widgets/ec_button.dart';
import 'package:educonnect_app/widgets/ec_heading_text.dart';
import 'package:educonnect_app/widgets/ec_simple_stat_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EcHeadingText(text: 'Live Statistic'),
            SizedBox(
              height: 6,
            ),
            EcSimpleStatCard(),
            SizedBox(
              height: 16,
            ),
            EcHeadingText(text: 'School Map'),
            SizedBox(
              height: 14,
            ),
            EcRowCard(
              image: AssetImage('lib/assets/images/map.png'),
              title: 'Mapping schools',
              description:
                  'Mapping School throughout Indonesia is a project initiated by EduConnect aimed at creating a map providing information about school locations across Indonesia. The map serves to offer clear insights into the distribution of schools from primary to tertiary education levels in various regions of Indonesia.',
            ),
            SizedBox(
              height: 16,
            ),
            EcHeadingText(text: 'Jobs for teachers'),
            SizedBox(
              height: 14,
            ),
            EcRowCard(
              image: AssetImage('lib/assets/images/job.png'),
              title: 'Jobs Opportunities',
              description:
                  'Job opportunities provided by EduConnect offer individuals a diverse array of openings across various sectors and industries throughout Indonesia. These opportunities encompass full-time, part-time, freelance, and remote positions, catering to individuals with different preferences and circumstances.',
            ),
          ],
        ),
      ),
    );
  }
}



class EcRowCard extends StatelessWidget {
  final String title;
  final String description;
  final ImageProvider image;

  const EcRowCard({
    super.key,
    required this.title,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
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
      child: Row(
        children: [
          Image(
            image: image,
            width: 120,
          ),
          const SizedBox(
            width: 14,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 8,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 90),
                  child: EcButton(
                    text: 'See More',
                    backgroundColor: Theme.of(context).primaryColor,
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 7,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


