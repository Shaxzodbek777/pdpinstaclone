import 'package:flutter/material.dart';
import 'package:pdpinstaclone/Pages/HomePage.dart';
import 'package:pdpinstaclone/Pages/SignUpPage.dart';
class SignInPage extends StatefulWidget {
  const SignInPage({super.key});
static final String id = "SignInPage";
  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {

  var isLoading= false;
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  _doSignIn(){
    String email = emailController.text.toString().trim();
    String password = passwordController.text.toString().trim();
    if(email.isEmpty || password.isEmpty) return;

    Navigator.pushReplacementNamed(context, HomePage.id);
  }

  _classSingUpPage(){
    Navigator.pushReplacementNamed(context, SignUpPage.id);
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
                    //Emal
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
                    //button
                    GestureDetector(
                      onTap: (){
                        _doSignIn();
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
                            child:  Text("Sign In", style: TextStyle(color: Colors.white, fontSize: 17),),
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
                    Text("Do not have a accaunt? ", style: TextStyle(color: Colors.white, fontSize: 16),),
                   GestureDetector(
                     onTap: (){
                       _classSingUpPage();
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
