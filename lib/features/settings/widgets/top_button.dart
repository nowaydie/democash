import 'package:democash/features/account/widgets/account_button.dart';
import 'package:flutter/material.dart';
import 'package:democash/features/settings/services/settings_services.dart';

class TopButtons extends StatelessWidget {
  const TopButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            AccountButton(
              text: 'Выйти',
              onTap: () => AccountServices().logOut(context),
            ),
            AccountButton(
              text: 'Настройки',
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}
