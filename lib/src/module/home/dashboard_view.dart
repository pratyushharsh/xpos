import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Card(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: SizedBox(
              height: 250,
              width: 500,
            ),
          ),
          const Card(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: SizedBox(
              height: 250,
              width: 500,
            ),
          ),
          const Card(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: SizedBox(
              height: 250,
              width: 500,
            ),
          ),
          Card(
            margin:
            const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: SizedBox(
              height: 250,
              width: 500,
              child: Image.network(
                'https://picsum.photos/250?image=9',
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
