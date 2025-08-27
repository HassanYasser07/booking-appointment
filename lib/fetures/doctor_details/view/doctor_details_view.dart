import 'package:booking_appointment/fetures/doctor_details/view/widgets/custom_doctor_details_bloc_builder.dart';
import 'package:flutter/material.dart';


class DoctorDetailsView extends StatelessWidget {
  final int doctorId;
  const DoctorDetailsView({super.key, required this.doctorId});
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CustomDoctorDetailsBlocBuilder()
          ],
        )
      ),
    );
  }
}
