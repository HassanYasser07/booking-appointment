import 'package:booking_appointment/core/theme/colors.dart';
import 'package:booking_appointment/core/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text('Hi,Hassan',style: Styles.font18DDarkBlueBold,),
            Text('hkjdh jsdh gydgc',style:Styles.font12DGrayRegular ,),


          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 24,
          backgroundColor:ColorsMaster.moreLightGray ,
          child: SvgPicture.asset('assets/images/notifications.svg'),
        )
      ],
    );
  }
}
