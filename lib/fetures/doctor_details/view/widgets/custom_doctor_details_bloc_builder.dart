import 'package:booking_appointment/fetures/doctor_details/view/widgets/custom_app_bar_details.dart';
import 'package:booking_appointment/fetures/doctor_details/view/widgets/doctor_address.dart';
import 'package:booking_appointment/fetures/doctor_details/view/widgets/doctor_price.dart';
import 'package:booking_appointment/fetures/doctor_details/view/widgets/working_time_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../logic/doctor_details_cubit.dart';
import 'contact_info.dart';
import 'doctor_details_card.dart';

class CustomDoctorDetailsBlocBuilder extends StatelessWidget {
  const CustomDoctorDetailsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DoctorDetailsCubit, DoctorDetailsState>(
      builder: (context, state) {
        if (state is DoctorDetailsLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is DoctorDetailsLoaded) {
          final doctor = state.doctor;
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBarDetails(
                  doctorName: doctor.data!.name!,
                ),
                DoctorCard(
                    doctorName: doctor.data!.name!,
                    specialization: doctor.data!.specialization!.name ?? '',
                    city: doctor.data!.city!.name ?? ''),
                SizedBox(height: 20.h,),
                WorkingTimeText(
                  startTime: doctor.data!.startTime!,
                  endTime: doctor.data!.endTime!,
                ),
                SizedBox(height: 20.h,),
                ContactInfo(
                  email:doctor.data!.email! ,
                  phone:doctor.data!.phone! ,
                ),
                DoctorAddress(address: doctor.data!.address!,),
                DoctorPrice(price: doctor.data!.appointPrice!,),

                //i want to make a space between the text and the button
             //  Spacer(),
              ],
            ),
          );
        } else if (state is DoctorDetailsError) {
          return Center(child: Text(state.message));
        }
        return const SizedBox();
      },
    );
  }
}
