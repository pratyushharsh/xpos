import 'package:flutter/material.dart';
import 'package:receipt_generator/src/widgets/appbar_leading.dart';

class CustomerDetailScreen extends StatelessWidget {
  final String userId;
  const CustomerDetailScreen({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            fit: StackFit.expand,
            children: [
              Positioned(
                top: 20,
                left: 16,
                child: AppBarLeading(
                  heading: "User# $userId",
                  icon: Icons.arrow_back,
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
