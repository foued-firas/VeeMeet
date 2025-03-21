import 'package:flutter/material.dart';
import 'package:zoomclone/utils/colors.dart';
import 'package:zoomclone/widgets/home_meeting_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  onPageChanged(int page){
    setState(() {
      _page =page;
    });


  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        
        backgroundColor: backgroundColor,
        elevation: 0,
        title: const Text("Meet & Chat"),
        centerTitle: true,

      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HomeMeetingButton(onPressed: () {  }, icon: Icons.videocam, text: 'New Meeting',),
              HomeMeetingButton(onPressed: () {  }, icon: Icons.add_box_rounded, text: 'Join Meeting',),
              HomeMeetingButton(onPressed: () {  }, icon: Icons.calendar_today, text: 'Schedule Meeting',),
              HomeMeetingButton(onPressed: () {  }, icon: Icons.arrow_upward_rounded, text: 'Share Screen',),


            ],

          ),
          const Expanded(child: Center(
            child: Text('Create/Join Meetings with just a click!',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
            ),
          ))
        ],
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: footerColor,
        selectedItemColor: Colors.white,
        unselectedItemColor:Colors.grey ,
        onTap: onPageChanged,
        unselectedFontSize: 14,
        currentIndex: _page,
        //type: BottomNavigationBarType.fixed,
        items:const [
          BottomNavigationBarItem(icon: Icon(Icons.comment_bank),label: 'Meet & Chat' ),
          BottomNavigationBarItem(icon: Icon(Icons.lock_clock),label: 'Meetings' ),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline),label: 'Contacts' ),
          BottomNavigationBarItem(icon: Icon(Icons.settings_outlined),label: 'Settings' ),



        ] 
        ),

      
    );
  }
}