import 'package:flutter/material.dart';

class CustomBackground extends StatelessWidget {
  final Widget mainChild;
  const CustomBackground({super.key, required this.mainChild});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFF3B267B), Color(0xFF3B267B).withOpacity(0.7)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)
        ),
        child: mainChild,
      ),
    );
  }
}
