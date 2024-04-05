import 'package:flexio/screens/signup/otpScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SetPassword extends StatefulWidget{
  @override
  State<SetPassword> createState() => _SetPassword();
}

class _SetPassword extends State<SetPassword>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                        child: Icon(Icons.arrow_back,color: Colors.black,))
                  ],
                ),
                Container(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Set Password",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                      ),)
                  ],
                ),
                Container(
                  height: 80,
                ),
                Column(
                  children: [
                    Text("New Password",style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 18
                    ),)
                  ],
                ),
                Container(height: 5,),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide.none
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.black),
                      hintText: "New password",
                      fillColor: Colors.blue[50],
                      suffixIcon: Icon(Icons.remove_red_eye)
                  ),
                ),
                Container(height: 20,),

                Column(
                  children: [
                    Text("Confirm Password",style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 18
                    ),)
                  ],
                ),
                Container(height: 5,),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide.none
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.black),
                      hintText: "Confirm password",
                      fillColor: Colors.blue[50],
                      suffixIcon: Icon(Icons.remove_red_eye)
                  ),
                ),
                Container(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: OutlinedButton(onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=> OtpScreen()));
                  },
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0))),
                          backgroundColor: MaterialStateProperty.all(Colors.blue)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0,bottom: 10.0),
                        child: Text("Continue",style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500
                        ),),
                      )) ,
                ),
                Container(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account ? ",style: TextStyle(
                        fontSize: 16,color: Colors.grey
                    ),),
                    Text("Sign In",style: TextStyle(
                        fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black
                    ),)
                  ],
                ),
                Container(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Or",style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16
                    ),)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                        elevation: 2,
                        color: Colors.white70,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(360.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: SvgPicture.asset("assests/images/ic_google.svg"),
                        )
                    ),
                    Card(
                        elevation: 2,
                        color: Colors.white70,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(360.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: SvgPicture.asset("assests/images/facebook.svg"),
                        )
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}