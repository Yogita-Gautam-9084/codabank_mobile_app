import 'package:flutter/material.dart';
import 'package:mobile_banking_app/constants/colors.dart';
import 'package:mobile_banking_app/constants/icons.dart';
import 'package:mobile_banking_app/constants/string_constants.dart';

class VeiwProfileScreen extends StatefulWidget {
  const VeiwProfileScreen({Key? key}) : super(key: key);

  @override
  State<VeiwProfileScreen> createState() => _VeiwProfileScreenState();
}

class _VeiwProfileScreenState extends State<VeiwProfileScreen> {
  int _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentindex,
            onTap: (index) => setState(() => _currentindex = index),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                label: StringConstants.home,
                icon: Icon(IconsConstants.home),
              ),
              BottomNavigationBarItem(
                label: StringConstants.history,
                icon: Icon(IconsConstants.history),
              ),
              BottomNavigationBarItem(
                label: StringConstants.card,
                icon: Icon(IconsConstants.cards),
              ),
              BottomNavigationBarItem(
                label: StringConstants.profile,
                icon: Icon(IconsConstants.profile),
              ),
            ],
            selectedItemColor: ColorsConstants.grey,
            unselectedItemColor: ColorsConstants.lightBlack,
            iconSize: 30,
            elevation: 5),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      StringConstants.profile,
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                    Icon(
                      IconsConstants.setting,
                      size: 30,
                      color: ColorsConstants.grey,
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 10),
                  child: Card(
                    elevation: 2,
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/alphabet.png',
                          height: 90,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                                  style: TextStyle(color: ColorsConstants.grey),
                                ),
                                SizedBox(width: 20),
                                Text(
                                  StringConstants.number,
                                  style: TextStyle(fontWeight: FontWeight.bold),
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
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 110, vertical: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: ColorsConstants.orange)),
                  child: const Text(
                    StringConstants.viewDetails,
                    style: TextStyle(color: ColorsConstants.orange),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  StringConstants.general,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Card(
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 9),
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: ColorsConstants.lightBlack,
                          ),
                          child: const Icon(IconsConstants.contact),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          StringConstants.bankContacts,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        const Icon(
                          IconsConstants.arrow,
                          color: ColorsConstants.grey,
                          size: 15,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  StringConstants.helpCenter,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    _buildItemList(title: StringConstants.aboutBank, icon: ''),
                    _buildItemList(title: StringConstants.aboutBank, icon: ''),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildItemList({
    required String title,
    required String icon,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
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
              child: const Icon(IconsConstants.contact),
            ),
            const SizedBox(
              width: 15,
            ),
            const Text(
              StringConstants.bankContacts,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            const Icon(
              IconsConstants.arrow,
              color: ColorsConstants.grey,
              size: 15,
            ),
          ],
        ),
      ),
    );
  }
}
