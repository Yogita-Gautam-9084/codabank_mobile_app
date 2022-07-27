import 'package:flutter/material.dart';
import 'package:mobile_banking_app/constants/colors.dart';
import 'package:mobile_banking_app/constants/icons.dart';
import 'package:mobile_banking_app/constants/string_constants.dart';
import 'package:mobile_banking_app/module/logout/logout_screen.dart';

class InformationScreen extends StatefulWidget {
  const InformationScreen({Key? key}) : super(key: key);

  @override
  State<InformationScreen> createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  final List items = [
    {
      'title': StringConstants.country,
      'subtitle': StringConstants.indonesia,
    },
    {
      'title': StringConstants.email,
      'subtitle': StringConstants.emailID,
    },
    {
      'title': StringConstants.phoneNumber,
      'subtitle': StringConstants.pnNumber,
    },
    {
      'title': StringConstants.documentID,
      'subtitle': StringConstants.docID,
    },
  ];
  final List items2 = [
    {
      'title': StringConstants.mainDevice,
      'subtitle': StringConstants.phoneId,
    },
    {
      'title': StringConstants.appVersion,
      'subtitle': StringConstants.appversn,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  StringConstants.profile,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                ),
                Icon(
                  IconsConstants.setting,
                  size: 30,
                  color: ColorsConstants.grey,
                )
              ],
            ),
            const Spacer(),
            ElevatedButton(
              child: const Text("Show Information"),
              onPressed: () {
                showModalBottomSheet<void>(
                  isScrollControlled: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: 700,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  StringConstants.profile,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const LogoutScreen()));
                                  },
                                  child: const Icon(
                                    IconsConstants.setting,
                                    size: 30,
                                    color: ColorsConstants.grey,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Card(
                              elevation: 2,
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/alphabet.png',
                                    height: 90,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        StringConstants.ariaName,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Row(
                                        children: const [
                                          Text(
                                            StringConstants.accountNumber,
                                            style: TextStyle(
                                                color: ColorsConstants.grey),
                                          ),
                                          SizedBox(
                                            width: 40,
                                          ),
                                          Text(
                                            StringConstants.number,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Icon(
                                            IconsConstants.copy,
                                            size: 20,
                                            color: ColorsConstants.red,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const Text(
                              StringConstants.persnlInfo,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            ListView.builder(
                              shrinkWrap: true,
                              itemCount: items.length,
                              itemBuilder: (BuildContext context, int index) {
                                return _buildItemListCardVeiw(
                                  title: items[index]['title'],
                                  subtitle: items[index]['subtitle'],
                                );
                              },
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              StringConstants.deviceInformation,
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            Expanded(
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: items2.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return _buildItemListCardVeiw2(
                                    title: items2[index]['title'],
                                    subtitle: items2[index]['subtitle'],
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  _buildItemListCardVeiw({
    required String title,
    required String subtitle,
  }) {
    return Column(
      children: [
        Card(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(color: ColorsConstants.lightBlack),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  _buildItemListCardVeiw2({
    required String title,
    required String subtitle,
  }) {
    return Column(
      children: [
        Card(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(color: ColorsConstants.lightBlack),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
