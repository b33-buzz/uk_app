import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uk_app/widget/stats_widget.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool dailyRemindersEnabled =
      true; // Add a boolean variable for daily reminders
  bool newResourceNotificationsEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30, top: 100),
        child: SingleChildScrollView(
            child: Column(
          children: [
            Column(
              children: [
                Row(children: [
                  Image.asset('assets/images/Ellipse 1.png'),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'varksed',
                                style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 5),
                              Text('Premium Enabled',
                                  style:
                                      GoogleFonts.inter(color: Colors.white)),
                            ],
                          ),
                        ),
                      ]),
                  Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Edit',
                            style: GoogleFonts.inter(
                                color: const Color(0xFFFFC839)),
                          )
                        ]),
                  ),
                ]),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(top: 70, bottom: 40),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Align(
                  child: Row(
                    children: [
                      Text(
                        'Your Stats',
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 170),
                      Row(
                        children: [
                          Text(
                            '3',
                            style: GoogleFonts.inter(
                                color: const Color(0xFFFFA439),
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 10),
                          Image.asset('assets/images/Vector.png'),
                        ],
                      )
                    ],
                  ),
                )
              ]),
            ),
            const StatsWidget(text: '3', text2: 'CURRENT STREAK'),
            const StatsWidget(text: '7', text2: 'BEST STREAK'),
            const StatsWidget(text: '135', text2: 'QUESTION ATTEMPTED'),
            const StatsWidget(text: '114', text2: 'QUESTION SOLVED'),
            Align(
              alignment: Alignment.centerLeft,
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    'Notifications',
                    style: GoogleFonts.inter(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ]),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Text(
                      'Recieve daily reminders to consistently\npractice and review concepts.',
                      style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w300),
                    ),
                    const SizedBox(width: 50),
                    Transform.scale(
                      scale: 1.3,
                      child: Switch(
                        value: dailyRemindersEnabled,
                        onChanged: (value) {
                          // Update the state when the switch is toggled
                          setState(() {
                            dailyRemindersEnabled = value;
                          });
                        },
                        activeColor: const Color(0xFF14D39A),
                        activeTrackColor: const Color(0xFF14D39A),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Text(
                      'Recieve notifications for whenever there\nmay be a new resource to help you on your\ncoding journey.',
                      style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w300),
                    ),
                    const SizedBox(width: 25),
                    Transform.scale(
                      scale: 1.3,
                      child: Switch(
                        value: newResourceNotificationsEnabled,
                        onChanged: (value) {
                          setState(() {
                            newResourceNotificationsEnabled = value;
                          });
                        },
                        activeColor: const Color(0xFF14D39A),
                        activeTrackColor: const Color(0xFF14D39A),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
