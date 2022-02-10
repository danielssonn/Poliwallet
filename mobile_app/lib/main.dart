/// Created by   : Shyne Mari
/// Date Created : 2/1/21
/// Remarks      : Main file for Poliwallet

import 'package:flutter/material.dart';
import 'package:poliwallet/ui/pages/home_screen.dart';
import 'package:poliwallet/ui/pages/connectwallet_screen.dart';

import 'ui/pages/addnewitem_screen.dart';
import 'ui/pages/addtrade_screen.dart';
import 'ui/pages/coins_screen.dart';
import 'ui/pages/collections/collectiondetails_screen.dart';
import 'ui/pages/onboarding/create_wallet/createwalletconfirm_screen.dart';
import 'ui/pages/onboarding/create_wallet/createwalletns_screen.dart';
import 'ui/pages/onboarding/create_wallet/createwalletsp_screen.dart';
import 'ui/pages/onboarding/import_wallet/importwalletns_screen.dart';
import 'ui/pages/onboarding/import_wallet/importwalletsp_screen.dart';
import 'ui/pages/send/transfernft_screen.dart';

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
      home: HomeScreen(), //ConnectWalletScreen(),
      debugShowCheckedModeBanner: false,
      initialRoute:
          ConnectWalletScreen.id, //ConnectWalletScreen.id, //HomeScreen.id, //
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        ConnectWalletScreen.id: (context) => ConnectWalletScreen(),
        ImportWalletSPScreen.id: (context) => ImportWalletSPScreen(),
        ImportWalletNSScreen.id: (context) => ImportWalletNSScreen(),
        CreateWalletSPScreen.id: (context) => CreateWalletSPScreen(),
        CreateWalletConfirmScreen.id: (context) => CreateWalletConfirmScreen(),
        CreateWalletNSScreen.id: (context) => CreateWalletNSScreen(),
        AddNewItemScreen.id: (context) => AddNewItemScreen(),
        AddNewTradeScreen.id: (context) => AddNewTradeScreen(),
        CoinsScreen.id: (context) => CoinsScreen(),
        CollectionItemScreen.id: (context) => CollectionItemScreen(),
      },
    );
  }
}
