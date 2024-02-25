import 'package:educonnect_app/data/school_result.dart';
import 'package:educonnect_app/screens/school_map_screen.dart';
import 'package:educonnect_app/services/school_service.dart';
import 'package:flutter/material.dart';

class SchoolsScreen extends StatefulWidget {
  const SchoolsScreen({super.key});

  @override
  State<SchoolsScreen> createState() => _SchoolsScreenState();
}

class _SchoolsScreenState extends State<SchoolsScreen> {
  SchoolResult? schoolResult;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      final result = await SchoolService().fetchAll();

      setState(() {
        schoolResult = result;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const SchoolMapScreen(),
            ),
          );
        },
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: Colors.black.withOpacity(0.3),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Image.asset(
          'lib/assets/images/fab.png',
          width: 32,
          height: 32,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                style: const TextStyle(
                  fontSize: 12,
                ),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(22),
                    borderSide: BorderSide(
                      color: Colors.black.withOpacity(0.3),
                      width: 0.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(22),
                    borderSide: BorderSide(
                      color: Colors.black.withOpacity(0.3),
                      width: 0.5,
                    ),
                  ),
                  labelText: 'Search School',
                  labelStyle: TextStyle(
                    fontSize: 12,
                    color: Colors.black.withOpacity(0.5),
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  prefixIcon: const Icon(Icons.search),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  EcSchoolIndicator(
                    name: 'Need Teachers',
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  EcSchoolIndicator(
                    name: 'Need Facilities',
                    color: Colors.yellow,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  EcSchoolIndicator(
                    name: 'Fullfilled',
                    color: Colors.green,
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Column(
                children: schoolResult == null
                    ? []
                    : schoolResult!.data
                        .map(
                          (e) => Padding(
                            padding: const EdgeInsets.only(bottom: 4),
                            child: EcSchoolCard(
                              name: e.attributes.name,
                              address: e.attributes.address,
                              level: e.attributes.level,
                            ),
                          ),
                        )
                        .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EcSchoolIndicator extends StatelessWidget {
  final String name;
  final Color color;

  const EcSchoolIndicator({
    super.key,
    required this.name,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          name,
          style: const TextStyle(fontSize: 8),
        ),
      ],
    );
  }
}

class EcSchoolCard extends StatelessWidget {
  final String name;
  final String address;
  final SchoolLevel level;

  const EcSchoolCard({
    super.key,
    required this.name,
    required this.address,
    required this.level,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          const Image(
            image: AssetImage('lib/assets/images/sch-icon.png'),
            width: 38,
            height: 38,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(fontSize: 10),
                ),
                Text(
                  address,
                  style: TextStyle(
                    fontSize: 8,
                    color: Colors.black.withOpacity(0.6),
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
