import 'package:flutter/material.dart';
import 'package:zoomclone/ressources/auth_method.dart';
import 'package:zoomclone/widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthMethod _authMethod = AuthMethod();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
       children: [
          const Text('Start or join a meeting',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,

          ),),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:38.0 ),
            child: Image.asset('assets/images/login_photo.png'),
          ),
          CustomButton(text: 'Google Sign In', onPressed:()async{
            bool res = await _authMethod.signInWithGoogle(context);
            if(res){
              Navigator.pushNamed(context,'/home');
            }
          } ,)

        ],
      ),
    );
  }
}