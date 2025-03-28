import 'dart:math';
import 'package:flutter/material.dart';
import 'package:zoomclone/ressources/jitsi_meet_methodes.dart';
import 'package:zoomclone/widgets/home_meeting_button.dart';

class MeetingScreen extends StatelessWidget {
  MeetingScreen({super.key});

  final JitsiMeetMethods _jitsiMeetMethods = JitsiMeetMethods();

  createNewMeeting() async {
    var random = Random();
    String roomName = (random.nextInt(10000000) + 10000000).toString();
    _jitsiMeetMethods.createMeeting(roomName: roomName, isAudioMuted: true, isVideoMuted: true);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HomeMeetingButton(
              onPressed: createNewMeeting,
              icon: Icons.videocam,
              text: 'New Meeting',
            ),
            HomeMeetingButton(onPressed: () {}, icon: Icons.add_box_rounded, text: 'Join Meeting'),
            HomeMeetingButton(onPressed: () {}, icon: Icons.calendar_today, text: 'Schedule Meeting'),
            HomeMeetingButton(onPressed: () {}, icon: Icons.arrow_upward_rounded, text: 'Share Screen'),
          ],
        ),
        const Expanded(
          child: Center(
            child: Text(
              'Create/Join Meetings with just a click!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
        ),
      ],
    );
  }
}