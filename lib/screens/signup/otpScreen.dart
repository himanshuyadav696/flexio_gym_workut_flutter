import 'package:flexio/screens/home/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatefulWidget{
  @override
  State<OtpScreen> createState() => _OtpScreen();
}

class _OtpScreen extends State<OtpScreen>{
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
                    Text("Enter Otp",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                      ),)
                  ],
                ),
                Container(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text("we have sent an otp to your email",style: TextStyle(
                          color: Colors.grey,fontSize: 16
                        ),),
                        Container(height: 5,),
                        Text("abcde123@yopmail.com",style: TextStyle(
                          color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold
                        ),)
                      ],
                    )
                  ],
                ),
                Container(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    otpBoxBuilder(),
                    otpBoxBuilder(),
                    otpBoxBuilder(),
                    otpBoxBuilder()
                  ],
                ),
                Container(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Didn't recieved code ?",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16
                    ),),
                    Text("Resend",style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),),
                  ],
                ),
                Container(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: OutlinedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                  },
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0))),
                          backgroundColor: MaterialStateProperty.all(Colors.blue)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10,bottom: 10),
                        child: Text("Verify",style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500
                                          ),),
                      )),
                ),
                Container(
                  height: 20,
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget otpBoxBuilder(){
    return Container(
      alignment: Alignment.center,
      height: 60,
      width: 60,
      child: Center(
        child: TextField(
          style: TextStyle(
            fontSize: 20,
            color: Colors.blue
          ),
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          maxLength: 1,
          cursorColor: Colors.blue,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide.none
              ),
              filled: true,
              hintStyle: TextStyle(color: Colors.blue),
              hintText: "0",
              counterText: "",
              fillColor: Colors.blue[50],
          ),
        ),
      )
    );
  }

}