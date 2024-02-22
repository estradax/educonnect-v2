import 'package:flutter/material.dart';

class EcSimpleStatCard extends StatelessWidget {
  const EcSimpleStatCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
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
          Image.asset(
            'lib/assets/images/stat.png',
            width: 136,
            height: 136,
          ),
          const SizedBox(
            width: 14,
          ),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Number of teachers in Indonesia',
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  '3,367,793',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'Indonesia has a large number of teachers at all levels of education, from early childhood education to tertiary education.',
                  style: TextStyle(
                    fontSize: 8,
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
