import 'package:flutter/cupertino.dart';

import 'doctors_list_view_item.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(itemBuilder: (context,index){
        return DoctorsListViewItem();
      },
      itemCount: 8,
      ),
    );
  }
}
