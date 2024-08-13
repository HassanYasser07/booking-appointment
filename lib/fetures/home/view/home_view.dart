import 'package:booking_appointment/fetures/home/view/widgets/home_top_bar.dart';
import 'package:flutter/material.dart';
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.fromLTRB(20,16,20,16),
          width: double.infinity,
          child: const Column(
            children: [
              HomeTopBar(),
          ],
          ),
        ),
      ),

    ) ;

  }
}
