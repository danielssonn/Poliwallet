/// Created by   : Shyne Mari
/// Date Created : 2/4/21
/// Remarks      : Screen for Account Settings

import 'package:flutter/material.dart';
import 'package:poliwallet/ui/shared/widgets/add_listtile.dart';
import 'package:poliwallet/ui/shared/widgets/animated_route.dart';
import 'package:poliwallet/ui/shared/widgets/button_solid.dart';
import 'package:poliwallet/ui/shared/widgets/white_appbar.dart';
import 'package:poliwallet/utils/constants.dart';

import 'copyseed_screen.dart';

class PasswordToContinueScreen extends StatefulWidget {
  static final String id = 'accountSettingsScreen';

  @override
  State<StatefulWidget> createState() {
    return _PasswordToContinueScreenState();
  }
}

class _PasswordToContinueScreenState extends State<PasswordToContinueScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool _isSelected = false;
    return new Scaffold(
      body: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(50.0),
            child: whiteAppBar(
              appbar_title: 'Back',
            ),
          ),
          backgroundColor: Colors.white,
          body: Container(
            padding: const EdgeInsets.all(23.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 50.0,
                ),
                Center(
                  child: Row(
                    children: <Widget>[
                      Image.asset('assets/common/warning-ico.png'),
                      SizedBox(
                        width: 20.0,
                      ),
                      Flexible(
                        child: Text(
                          'The recovery phrase is the master key to your funds. Never share it with anyone else. If you lose your recovery phrase, not even Poliwallet can recover your funds.',
                          maxLines: 5,
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                TextField(
                  obscureText: true,
                  decoration: inputDecoration.copyWith(
                    hintText: 'Enter password',
                    labelText: 'Input your password to continue',
                    suffixIcon: Icon(
                      Icons.visibility_off_outlined,
                      color: iconBackgroundColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 350.0,
                ),
                Expanded(
                    child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: LabeledCheckbox(
                    label: 'I understand',
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    value: _isSelected,
                    onChanged: (bool newValue) {
                      setState(() {
                        _isSelected = newValue;
                      });
                    },
                  ),
                )),
                Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: ButtonSolid(
                      btn_title: 'Next',
                      color: primaryColor,
                      onPress: () {
                        Navigator.of(context)
                            .push(createRoute(CopySeedScreen()));
                      },
                    ),
                  ),
                ),
              ],
            ),
          )),
      resizeToAvoidBottomInset: true,
    );
  }
}

class LabeledCheckbox extends StatelessWidget {
  const LabeledCheckbox({
    Key? key,
    required this.label,
    required this.padding,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  final String label;
  final EdgeInsets padding;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Padding(
        padding: padding,
        child: Row(
          children: <Widget>[
            Checkbox(
              value: value,
              onChanged: (bool? newValue) {
                onChanged(newValue!);
              },
            ),
            Expanded(child: Text(label)),
          ],
        ),
      ),
    );
  }
}
