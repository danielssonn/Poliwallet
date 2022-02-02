/// Created by   : Shyne Mari
/// Date Created : 2/1/21
/// Remarks      : Main file for Poliwallet

import 'package:flutter/material.dart';
import 'package:poliwallet/ui/pages/createwalletconfirm_screen.dart';
import 'package:poliwallet/ui/pages/createwalletsp_screen.dart';
import 'package:poliwallet/ui/pages/home_screen.dart';
import 'package:poliwallet/ui/pages/connectwallet_screen.dart';

import 'ui/pages/createwalletns_screen.dart';
import 'ui/pages/importwalletns_screen.dart';
import 'ui/pages/importwalletsp_screen.dart';

void main() => runApp(PoliWalletApp());

class PoliWalletApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme(
          primary: const Color(0xFF5A85B7),
          primaryVariant: const Color(0xFF5A85B7),
          secondary: const Color(0xFFFFDA42),
          secondaryVariant: const Color(0xFFFDA42),
          surface: const Color(0xFFF7F9FF),
          background: const Color(0xFFF6F9FF),
          error: const Color(0xFFB50042),
          onPrimary: const Color(0xFFFFFFFF),
          onSecondary: const Color(0xFF5A85B7),
          onSurface: const Color(0xFFF6F9FF),
          onBackground: const Color(0xFFF6F9FF),
          onError: const Color(0xFFB50042),
          brightness: Brightness.light,
        ),
        // Define the default font family.
        fontFamily: 'Karla',
      ),
      home: ConnectWalletScreen(),
      debugShowCheckedModeBanner: false,
      initialRoute: ConnectWalletScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        ConnectWalletScreen.id: (context) => ConnectWalletScreen(),
        ImportWalletSPScreen.id: (context) => ImportWalletSPScreen(),
        ImportWalletNSScreen.id: (context) => ImportWalletNSScreen(),
        CreateWalletSPScreen.id: (context) => CreateWalletSPScreen(),
        CreateWalletConfirmScreen.id: (context) => CreateWalletConfirmScreen(),
        CreateWalletNSScreen.id: (context) => CreateWalletNSScreen(),
      },
    );
  }
}
