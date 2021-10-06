import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_bc02/views/login_ui.dart';
import 'package:flutter_app_bc02/views/sign_up_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeUI extends StatelessWidget {
  const HomeUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //code Full screen
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
      ),
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 70.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 60.0,
                ),
                child: Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.apple,
                      size: 50.0,
                      color: Color(0xff333333),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 70.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 60.0,
                ),
                child: Row(
                  children: [
                    Text(
                      'Start',
                      style: TextStyle(
                          fontFamily: 'kanit',
                          fontWeight: FontWeight.bold,
                          fontSize: 40.0,
                          color: Color(0xff333333)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 60.0,
                ),
                child: Row(
                  children: [
                    Text(
                      'your',
                      style: TextStyle(
                          fontFamily: 'kanit',
                          fontWeight: FontWeight.bold,
                          fontSize: 40.0,
                          color: Color(0xff333333)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 60.0,
                ),
                child: Row(
                  children: [
                    Text(
                      'Adventure',
                      style: TextStyle(
                          fontFamily: 'kanit',
                          fontWeight: FontWeight.bold,
                          fontSize: 40.0,
                          color: Color(0xff333333)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 320.0,),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context){
                        return LoginUI();
                      },
                    ),
                  );
                },
                child: Text(
                  'Login',
                ),
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                      MediaQuery.of(context).size.width - 120,
                      50.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(70.0),
                    ),
                    primary: Color(0xFFF46F30)),
              ),
              SizedBox(height: 20.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'You don\'t have an account?',
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context){
                        return SignUpUI();
                      },
                    ),
                  );
                    },
                    child: Text(
                      'Sign Up here.',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
