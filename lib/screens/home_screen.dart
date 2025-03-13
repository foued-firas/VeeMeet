import 'package:flutter/material.dart';
import 'package:zoomclone/utils/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items:const [
          BottomNavigationBarItem(backgroundColor: footerColor,icon: Icon(Icons.comment_bank),label: 'Meet & Chat' ),
          BottomNavigationBarItem(icon: Icon(Icons.lock_clock),label: 'Meetings' ),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline),label: 'Contacts' ),

          BottomNavigationBarItem(icon: Icon(Icons.settings_outlined),label: 'Settings' ),



        ] 
        ),

      
    );
  }
}