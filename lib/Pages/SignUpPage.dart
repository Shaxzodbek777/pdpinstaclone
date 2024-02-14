import 'package:flutter/material.dart';
import 'package:pdpinstaclone/Pages/HomePage.dart';
import 'package:pdpinstaclone/Pages/Sign_inPage.dart';

import '../Service/utels_service.dart';
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});
static final String id = "SignUpPage";
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  var isLoading= false;
  var fullnameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var cpasswordController = TextEditingController();

  _doSignUp(){

    String fullname = fullnameController.text.toString().trim();
    String email = emailController.text.toString().trim();
    String password = passwordController.text.toString().trim();
    String cpassword = cpasswordController.text.toString().trim();
    if(email.isEmpty || password.isEmpty || fullname.isEmpty || cpassword.isEmpty) return;
    if(cpassword != password){
      Utils.fireToast("Parollar bir birga mos emas");
      return;
    }
    Navigator.pushReplacementNamed(context, HomePage.id);

  }

  _classSingInPage(){
    Navigator.pushReplacementNamed(context, SignInPage.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(193, 53, 132, 1),
                  Color.fromRGBO(131, 58, 180, 1)
                ]
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Instagram", style: TextStyle(color: Colors.white, fontSize: 45, fontFamily: "Billabong"),),
                      //FullName
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        height: 50,
                        padding: EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(7)
                        ),
                        child: TextField(
                          controller: fullnameController,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              hintText: "Full Name",
                              border: InputBorder.none,
                              hintStyle: TextStyle(fontSize: 17, color: Colors.white54)
                          ),
                        ),
                      ),
                      //emal
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        height: 50,
                        padding: EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(7)
                        ),
                        child: TextField(
                          controller: emailController,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              hintText: "Email",
                              border: InputBorder.none,
                              hintStyle: TextStyle(fontSize: 17, color: Colors.white54)
                          ),
                        ),
                      ),
                      //password
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        height: 50,
                        padding: EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(7)
                        ),
                        child: TextField(
                          controller: passwordController,
                          obscureText: true,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              hintText: "Passwprd",
                              border: InputBorder.none,
                              hintStyle: TextStyle(fontSize: 17, color: Colors.white54)
                          ),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 10),
                        height: 50,
                        padding: EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(7)
                        ),
                        child: TextField(
                          controller: cpasswordController,
                          obscureText: true,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              hintText: "Confirm Passwprd",
                              border: InputBorder.none,
                              hintStyle: TextStyle(fontSize: 17, color: Colors.white54)
                          ),
                        ),
                      ),
                      //button
                      GestureDetector(
                        onTap: (){
                          _doSignUp();
                        },
                        child: Container(
                            margin: EdgeInsets.only(top: 10),
                            height: 50,
                            padding: EdgeInsets.only(left: 10, right: 10),
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(7)
                            ),
                            child:Center(
                              child:  Text("Sign Up", style: TextStyle(color: Colors.white, fontSize: 17),),
                            )
                        ),
                      )
                    ],
                  )
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Do you have a accaunt? ", style: TextStyle(color: Colors.white, fontSize: 16),),
                    GestureDetector(
                      onTap: (){
                        _classSingInPage();
                      },
                      child:  Text("Sign Up?", style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
            ],
          ),
        )
    );
  }
}
