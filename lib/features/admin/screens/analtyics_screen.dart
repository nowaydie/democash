import 'package:democash/common/widgets/loader.dart';
// import 'package:democash/features/admin/models/sales.dart';
// import 'package:democash/features/admin/services/admin_services.dart';
// import 'package:democash/features/admin/widgets/category_products_chart.dart';
// import 'package:charts_flutter/flutter.dart' as charts;
import 'package:democash/features/account/widgets/top_buttons.dart';
import 'package:flutter/material.dart';
import 'package:democash/constants/global_variebles.dart';

class AnaliticsScreen extends StatelessWidget {
  const AnaliticsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: GlobalVariebles.appBarGradient,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  'assets/images/amazon_in.png',
                  width: 120,
                  height: 45,
                  color: Colors.black,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Icon(Icons.notifications_outlined),
                    ),
                    Icon(
                      Icons.search,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: const [
          TopButtons(),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
