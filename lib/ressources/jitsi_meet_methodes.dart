import 'package:flutter/material.dart';
import 'package:jitsi_meet_wrapper/jitsi_meet_wrapper.dart';
import 'package:zoomclone/ressources/auth_method.dart';
import 'package:zoomclone/ressources/firestoremethods.dart';

class JitsiMeetMethods {
  final AuthMethod _authMethods = AuthMethod();
  final FirestoreMethods _firestoreMethods = FirestoreMethods();

  void createMeeting({
    required String roomName,
    required bool isAudioMuted,
    required bool isVideoMuted,
    String username = '',
    }) async {
    try {
      // Définition des options de fonctionnalité
      Map<String, Object> featureFlags = {
        "resolution": 360, // Réduction de la résolution vidéo à 360p
        "welcomePageEnabled": false, // Désactiver la page d'accueil Jitsi
      };

      // Définition du nom de l'utilisateur
      String name = username.isEmpty ? _authMethods.user.displayName! : username;

      // Création des options de réunion
      var options = JitsiMeetingOptions(
        roomNameOrUrl: roomName,
        isAudioMuted: isAudioMuted,
        isVideoMuted: isVideoMuted,
        userDisplayName: name,
        userEmail: _authMethods.user.email,
        userAvatarUrl: _authMethods.user.photoURL,
        featureFlags: featureFlags,
      );

      

      // Ajouter à l'historique des réunions
      _firestoreMethods.addToMeetingHistory(roomName);

      // Lancer la réunion avec JitsiMeetWrapper
      await JitsiMeetWrapper.joinMeeting(
        options: options,
      );
    } catch (error) {
      debugPrint("Erreur: $error");
    }
  }
}
