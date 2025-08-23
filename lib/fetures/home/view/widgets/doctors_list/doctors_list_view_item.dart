import 'package:booking_appointment/core/theme/style.dart';
import 'package:booking_appointment/fetures/home/data/models/specializations_response_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/theme/colors.dart';

class DoctorsListViewItem extends StatelessWidget {
  final Doctors? doctorsModel;

  const DoctorsListViewItem({super.key, required this.doctorsModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5,bottom: 16),
      child: Row(
        children: [
          CachedNetworkImage(
            imageUrl:
                "https://static.wikia.nocookie.net/five-world-war/images/6/64/Hisoka.jpg/revision/latest?cb=20190313114050",
            progressIndicatorBuilder: (context, url, downloadProgress) {
              return Shimmer.fromColors(
                baseColor: ColorsMaster.lightGray,
                highlightColor: Colors.white,
                child: Container(
                  width: 110.w,
                  height: 120.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.white,
                  ),
                ),
              );
            },
            imageBuilder: (context, imageProvider) => Container(
              width: 110.w,
              height: 120.h,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12.0),
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          //  Image.asset('assets/images/onboarding_doctor.png',width: 100.h,height: 120.h,),
          SizedBox(
            width: 10.h,
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  doctorsModel?.name ?? 'Name',
                  style: Styles.font18DDarkBlueBold,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  '${doctorsModel?.degree} | ${doctorsModel?.degree}',
                  textAlign: TextAlign.start,
                ),
                Text(doctorsModel?.email ?? ''),
                const SizedBox(
                  height: 15,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
