import 'package:booking_appointment/core/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorBlueContainer extends StatelessWidget {
  const DoctorBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     height:  195.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(

            height: 165.h,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 16.h),
            decoration:  BoxDecoration(
              borderRadius:BorderRadius.circular(24),
              image: const DecorationImage(
                image: AssetImage('assets/images/home_blue_pattern.png',),fit: BoxFit.cover
              )
            ),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text('Book and\nschedule \nwith nearest doctor',style: Styles.font18WhiteMedium,textAlign: TextAlign.start,),
           SizedBox(height: 16.h,),
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(48.0),
                  ),
                ),
                child: Text(
                  'Find Nearby',
                  style: Styles.font12BlueRegular,
                ),
              ),
            ),
        ],
      ),
      ),
          Positioned(
            right: 30.w,
              left: 190,
              bottom: 8.h,
              child: Image.asset('assets/images/omar.png',height: 185.h,))
      ]
      ),
    );


  }

}

