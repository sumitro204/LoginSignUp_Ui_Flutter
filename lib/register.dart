import 'package:flutter/material.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({super.key});

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/register.png",),fit: BoxFit.cover),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35, top: 30),
              child: Text(
                "Create\nAccount",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 33, fontWeight: FontWeight.w600,
                ),),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size
                    .height*0.28,right: 35,left: 35),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.account_circle_outlined),
                          hintText: 'Name',
                          // fillColor: Colors.grey.shade100,
                          // filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                      ),
                    ),
                    SizedBox(height: 30,),
                    TextField(
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.email),
                          hintText: 'Email',
                          // fillColor: Colors.grey.shade100,
                          // filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                      ),
                    ),
                    SizedBox(height: 30,),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.lock),
                          hintText: 'Password',
                          // fillColor: Colors.grey.shade100,
                          // filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                      ),
                    ),
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Submit', style: TextStyle(fontSize: 27, fontWeight: FontWeight.w700, color: Colors.white,),),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xff4c505b),
                          child: IconButton(onPressed: (){},
                              color: Colors.white,
                              icon: Icon(Icons.arrow_forward)),
                        )
                      ],
                    ),
                    SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(onPressed: (){

                        },
                            child: Text("Already have an Account ?", style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),)),
                        TextButton(onPressed: (){
                          Navigator.pushNamed(context, 'login');
                        },
                            child: Text("Login", style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 18,
                              color: Color(0xff4c505b),
                            ),))
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
