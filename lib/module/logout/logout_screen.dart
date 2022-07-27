import 'package:flutter/material.dart';
import 'package:mobile_banking_app/constants/colors.dart';
import 'package:mobile_banking_app/constants/icons.dart';
import 'package:mobile_banking_app/constants/string_constants.dart';

class LogoutScreen extends StatefulWidget {
  const LogoutScreen({Key? key}) : super(key: key);

  @override
  State<LogoutScreen> createState() => _LogoutScreenState();
}

class _LogoutScreenState extends State<LogoutScreen> {
  List items = [
    {
      'title': StringConstants.changePIN,
      'icon1': IconsConstants.cards,
    },
    {'title': StringConstants.changePassword, 'icon1': IconsConstants.cards},
    {'title': StringConstants.bioLogin, 'icon1': IconsConstants.bioLogin},
    {'title': StringConstants.location, 'icon1': IconsConstants.location},
    {
      'title': StringConstants.notification,
      'icon1': IconsConstants.notification
    },
    {'title': StringConstants.language, 'icon1': IconsConstants.language},
    {'title': StringConstants.appVersion, 'icon1': IconsConstants.appVerson},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: const [
                  Icon(IconsConstants.arrowBack),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    StringConstants.setting,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return _buildItemList(
                        title: items[index]['title'],
                        icon1: items[index]['icon1']);
                  },
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal:150, vertical:20),
                decoration: BoxDecoration(
                  color:const Color(0xFFFFE4DB),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: ColorsConstants.red),

                ),
                child: const Text(StringConstants.logout,style: TextStyle(color: ColorsConstants.red),),
              )
            ],
          ),
        ),
      ),
    );
  }

  _buildItemList({required title, required icon1}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Card(
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 9),
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: ColorsConstants.lightBlack,

              ),
              child: Icon(icon1),
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            const Icon(IconsConstants.arrow),
          ],
        ),
      ),
    );
  }
}
