import 'package:democash/features/account/widgets/account_button.dart';
import 'package:flutter/material.dart';
import 'package:democash/features/account/services/account_services.dart';

class TopButtons extends StatelessWidget {
  const TopButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            AccountButton(
              text: 'Ваши рефералы',
              onTap: () {},
            ),
            AccountButton(
              text: 'Топ Кешбека',
              onTap: () {},
            ),
          ],
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
