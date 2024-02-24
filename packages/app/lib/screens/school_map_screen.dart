import 'package:draggable_bottom_sheet/draggable_bottom_sheet.dart';
import 'package:educonnect_app/widgets/ec_button.dart';
import 'package:flutter/material.dart';

class SchoolMapScreen extends StatelessWidget {
  final List<IconData> icons = const [
    Icons.message,
    Icons.call,
    Icons.mail,
    Icons.notifications,
    Icons.settings,
  ];

  const SchoolMapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DraggableBottomSheet(
        minExtent: 200,
        useSafeArea: false,
        curve: Curves.easeIn,
        previewWidget: _previewWidget(),
        expandedWidget: _expandedWidget(),
        backgroundWidget: _backgroundWidget(),
        maxExtent: MediaQuery.of(context).size.height * 0.8,
        onDragging: (pos) {},
      ),
    );
  }

  Widget _backgroundWidget() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('School Mapping'),
      ),
      body: Image.asset('lib/assets/images/map.png'),
    );
  }

  Widget _previewWidget() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: 40,
              height: 6,
              decoration: BoxDecoration(
                color: const Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'SMKN 2 Bandung',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 8),
          Text(
            'Jl. Ciliwung 2 RT 03 RW 06, Sukaluyu, Cibeunying Kaler, Bandung',
            style: TextStyle(
              fontSize: 12,
              color: Colors.black.withOpacity(0.7),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const Row(
            children: [
              Expanded(
                child: EcButton(
                  text: 'School Info',
                  backgroundColor: Color(0xFF539DF3),
                  textStyle: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: 7,
              ),
              Expanded(
                child: EcButton(text: 'Save'),
              ),
              SizedBox(
                width: 120,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _expandedWidget() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.pink,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: <Widget>[
          const Icon(Icons.keyboard_arrow_down, size: 30, color: Colors.white),
          const SizedBox(height: 8),
          const Text(
            'Hey...I\'m expanding!!!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: GridView.builder(
              itemCount: icons.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(icons[index], color: Colors.pink, size: 40),
              ),
            ),
          )
        ],
      ),
    );
  }
}
