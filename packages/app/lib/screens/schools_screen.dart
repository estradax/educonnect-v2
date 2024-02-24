import 'package:educonnect_app/widgets/ec_text_form_field.dart';
import 'package:flutter/material.dart';

class SchoolsScreen extends StatelessWidget {
  const SchoolsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              style: TextStyle(
                fontSize: 12,
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(8),
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
                prefixIcon: Icon(Icons.search),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            EcSchoolCard(
              name: 'SMPN 44 Bandung',
              address: 'Jl.Cihaur Geulis No 14, Tongkeng, Bandung, Jawa Barat',
            ),
            SizedBox(
              height: 10,
            ),
            EcSchoolCard(
              name: 'SMA Al-Irsyad Satya',
              address: 'Jl.Lengkong Kecil No 14, Lengkong, Jakarta, Jawa Barat',
            ),
          ],
        ),
      ),
    );
  }
}

class EcSchoolCard extends StatelessWidget {
  final String name;
  final String address;

  const EcSchoolCard({
    super.key,
    required this.name,
    required this.address,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.all(12),
      child: Row(
        children: [
          Image(
            image: AssetImage('lib/assets/images/sch-icon.png'),
            width: 38,
            height: 38,
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(fontSize: 10),
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
        ],
      ),
    );
  }
}
