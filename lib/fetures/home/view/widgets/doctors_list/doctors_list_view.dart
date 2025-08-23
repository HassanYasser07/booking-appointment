import 'package:booking_appointment/fetures/home/data/models/specializations_response_model.dart';
import 'package:flutter/cupertino.dart';

import 'doctors_list_view_item.dart';


class DoctorsListView extends StatelessWidget {
 final List<Doctors?>? doctorsList;
  const DoctorsListView({super.key,  this.doctorsList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(itemBuilder: (context,index){
        return DoctorsListViewItem(doctorsModel: doctorsList?[index],
          
        );
      },
      itemCount: doctorsList?.length,
      ),
    );
  }
}
