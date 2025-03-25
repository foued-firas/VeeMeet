import 'package:flutter/material.dart';
import 'package:jitsi_meet_wrapper/jitsi_meet_wrapper.dart';
import 'package:zoomclone/ressources/auth_method.dart';
import 'package:zoomclone/ressources/firestoremethods.dart';

class JitsiMeetMethods {
  final AuthMethod _authMethods = AuthMethod();
  final FirestoreMethods _firestoreMethods = FirestoreMethods();

  // Define the default server URL
  static const String defaultServerUrl = 'https://meet.jit.si'; // Default Jitsi Meet server

  void createMeeting({
    required String roomName,
    required bool isAudioMuted,
    required bool isVideoMuted,
    String username = '',
  }) async {
    try {
      // Define feature flags
      Map<String, Object> featureFlags = {
        "resolution": 360, // Reduce video resolution to 360p
        "welcomePageEnabled": false, // Disable Jitsi's welcome page
      };

      // Set user name
      String name = username.isEmpty ? _authMethods.user.displayName! : username;

      // Create meeting options
      var options = JitsiMeetingOptions(
  roomNameOrUrl: roomName,
  isAudioMuted: isAudioMuted,
  isVideoMuted: isVideoMuted,
  userDisplayName: name,
  userEmail: _authMethods.user.email,
  userAvatarUrl: _authMethods.user.photoURL,
  featureFlags: featureFlags,
  serverUrl: 'https://localhost:8443',  // Your local Jitsi Meet URL
);

      // Add the meeting to history
      _firestoreMethods.addToMeetingHistory(roomName);

      // Start the meeting using JitsiMeetWrapper
      await JitsiMeetWrapper.joinMeeting(
        options: options,
      );
    } catch (error) {
      debugPrint("Error: $error");
    }
  }
}
