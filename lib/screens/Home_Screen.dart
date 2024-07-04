import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
            height: MediaQuery.of(context).size.height/3.9,
            width: MediaQuery.of(context).size.width,
            decoration:  BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.vertical(bottom:Radius.elliptical(MediaQuery.of(context).size.width, 105.0) )
            ),

          ),
           Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Column(
             children: [
               const Center(
               child: Text('SignIn',
                 style: TextStyle(color: Colors.white,
                     fontWeight: FontWeight.bold,
                     fontSize: 30),
               ),
             ),
               Text('Login into your account!',
                 style: TextStyle(color: Colors.grey.shade500,
                     fontWeight: FontWeight.w500,
                     fontSize: 15)),
               Container(
                 margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),

                 child: Material(
                   elevation: 5,
                   borderRadius:BorderRadius.circular(20),
                   child: Container(
                     height: MediaQuery.of(context).size.height/1.6,
                     width: MediaQuery.of(context).size.width,
                     decoration: BoxDecoration(
                       borderRadius:BorderRadius.circular(20),
                       color: Colors.white,
                     ),
                     child:
                      Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           const Text('Email',style: TextStyle(fontSize: 20,
                           fontWeight: FontWeight.w500,color: Colors.black),
                           ),
                           const SizedBox(height: 5,),
                           Container(
                            padding: const EdgeInsets.only(left: 10),
                             decoration: BoxDecoration(
                               border: Border.all(width: 1.0,color: Colors.black),
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(15),
                             ),
                             child: const TextField(
                               decoration: InputDecoration(
                                 border: InputBorder.none,
                                 prefixIcon: Icon(Icons.email_outlined,
                                   color: Colors.blue,)
                               ),
                             ),
                           ),
                           const SizedBox(height: 25,),
                           const Text('Password',
                             style: TextStyle(fontSize: 20,
                               fontWeight: FontWeight.w500,
                               color: Colors.black),
                           ),
                           const SizedBox(height: 5,),
                           Container(
                             padding: const EdgeInsets.only(left: 10),
                             decoration: BoxDecoration(
                               border: Border.all(width: 1.0,color: Colors.black),
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(15),
                             ),
                             child:  const TextField(
                               decoration: InputDecoration(
                                   border: InputBorder.none,
                                   prefixIcon: Icon(Icons.password_rounded,color: Colors.blue,)
                               ),
                               obscureText: true,
                             ),
                           ),
                        const SizedBox(height: 25,),
                        Container(
                          alignment: Alignment.bottomRight,
                          child: const Text('Forgot password?',style: TextStyle(fontSize: 20,
                              fontWeight: FontWeight.w500,color: Colors.black),),
                        ),
                           const SizedBox(height: 35,),
                           Center(
                             child: Container(
                               width: 130,
                               child: Material(
                                 elevation: 5,
                                   borderRadius: BorderRadius.circular(20),
                                 child: Container(
                                   padding: const EdgeInsets.all(10),
                                   decoration:  BoxDecoration(color: Colors.blue,
                                   borderRadius: BorderRadius.circular(20)),
                                   child:  const Center(
                                     child: Text('SignIn',style: TextStyle(fontSize: 20,
                                         fontWeight: FontWeight.w500,color: Colors.black),),
                                   ),
                                 ),
                               ),
                             ),

                           ),

                         ],
                       ),
                     ),
                   ),

                 ),
               ),
               const SizedBox(height: 50,),
               const Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text("Don't have an account?",style: TextStyle(color:Colors.black,fontSize: 15,),),
                   Text(" Sign Up Now!",style: TextStyle(color:Colors.blue,fontSize: 15,)),
                 ],
               )
             ],
         ),
          )

          ]
        ),
      ),
    );
  }
}
