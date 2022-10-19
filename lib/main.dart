import 'package:democash/common/widgets/bottom_bar.dart';
import 'package:democash/constants/global_variebles.dart';
import 'package:democash/features/auth/screens/auth_screen.dart';
import 'package:democash/features/auth/services/auth_service.dart';

import 'package:democash/providers/user_provider.dart';
import 'package:democash/route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:democash/features/admin/screens/admin_screen.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => UserProvider(),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AuthService authService = AuthService();
  @override
  void initState() {
    super.initState();
    authService.getUserData(context);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DemoCash',
      theme: ThemeData(
          scaffoldBackgroundColor: GlobalVariebles.backgroundColor,
          colorScheme:
              const ColorScheme.light(primary: GlobalVariebles.secondaryColor),
          appBarTheme: const AppBarTheme(
              elevation: 0, iconTheme: IconThemeData(color: Colors.black))),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: Provider.of<UserProvider>(context).user.token.isNotEmpty
          ? Provider.of<UserProvider>(context).user.type == 'user'
              ? const BottomBar()
              : const AdminScreen()
          : const AuthScreen(),
    );
  }
}
