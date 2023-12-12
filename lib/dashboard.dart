import 'package:dashboard_fauvette_killian/midl_page/midl.dart';
import 'package:dashboard_fauvette_killian/my_shared_pref.dart';
import 'package:dashboard_fauvette_killian/widgets/heart_beat.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:dashboard_fauvette_killian/widgets/circular_progress_dashboard.dart';

import 'constants.dart';

class DashboardTwoPage extends StatelessWidget {
  final TextStyle whiteText = const TextStyle(color: Colors.white);

  const DashboardTwoPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,

        // gradient text
        title: ShaderMask(
          shaderCallback: (bounds) => LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[
              colorBlue,
              colorGreen,
            ],
          ).createShader(bounds),

          child: const Text(
            'Dashboard',
            style: TextStyle(
              fontSize: 20.0,
              fontFamily: 'Ethnocentric',
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),

        centerTitle: true,
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          _buildHeader(username:"Killian"),
          const SizedBox(height: 25.0),
          Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 190,
                      color: munsell,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const ListTile(
                            title: Text(
                              "9,850",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontFamily: 'Ethnocentric',
                              ),
                            ),
                            trailing: Icon(
                              FontAwesomeIcons.personWalking,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Text(
                              'Steps',
                              style: whiteText,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Container(
                      height: 120,
                      color: emerald,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const ListTile(
                            title: Text(
                              "75 bpm",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontFamily: 'Ethnocentric',
                              ),
                            ),
                            trailing: HeartBeat(),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Text(
                              'Avg. Heart Rate',
                              style: whiteText,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10.0),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 120,
                      color: tomato,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const ListTile(
                            title: Text(
                              "2,430",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontFamily: 'Ethnocentric',
                              ),
                            ),

                            trailing: Icon(
                              FontAwesomeIcons.fire,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Text(
                              'Calories Burned',
                              style: whiteText,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Container(
                      height: 190,
                      color: purpureus,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ListTile(
                            title: const Text(
                              "15 kms",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontFamily: 'Ethnocentric',
                              ),
                            ),
                            trailing: Icon(
                              FontAwesomeIcons.road,
                              color: ghostWhite,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Text(
                              'Distance',
                              style: TextStyle(
                                color: ghostWhite,
                              )
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),

          const SizedBox(height: 20.0),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Midl(),
                  ),
                );
              },

              style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                padding: const EdgeInsets.all(0.0),
                elevation: 10,
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
              ),

              child: Ink(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: <Color>[
                        colorBlue,
                        colorGreen,
                      ],
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(80.0)),
                ),

                child: Container(
                  constraints: const BoxConstraints(minWidth: 88.0, minHeight: 36.0), // min sizes for Material buttons
                  alignment: Alignment.center,
                  child: const Text(
                    'Go to Midl Page',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontFamily: 'ArialRounded',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SharedPreferencesExample(),
                  ),
                );
              },

              style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                padding: const EdgeInsets.all(0.0),
                elevation: 10,
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
              ),

              child: Ink(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Colors.red,
                      Colors.orange,
                    ],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(80.0)),
                ),

                child: Container(
                  constraints: const BoxConstraints(minWidth: 88.0, minHeight: 36.0), // min sizes for Material buttons
                  alignment: Alignment.center,
                  child: const Text(
                    'Go to Shared Pref Example Page',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontFamily: 'ArialRounded',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader({String? username}) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 25.0),
          child: Text(
            "Hello ${username ?? 'User'}",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Ethnocentric',
            ),
          ),
        ),

        Row(
          children: <Widget>[
            const CircularProgressDashboard(),

            const SizedBox(width: 20.0),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Overall\nDaily Progress",
                    style: whiteText.copyWith(fontSize: 20.0),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}