import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:random_string/random_string.dart';
import 'package:snapchat/services/database.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

 class _SignUpState extends State<SignUp> {

   String email='',name='',password='',confirmPassword='';
   TextEditingController mailController = TextEditingController();
   TextEditingController nameController = TextEditingController();
   TextEditingController passwordController = TextEditingController();
   TextEditingController confirmPasswordController =TextEditingController();

   final _formkey=GlobalKey<FormState>();

    registration()async{
         if(password!=null && password==confirmPassword){
           try{ UserCredential userCredential= await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password:password);

             String Id = randomAlphaNumeric(10);

             Map<String, dynamic>userInfoMap={
             "name": nameController.text,
             "E-mail": mailController.text,
             "username": nameController.text.replaceAll("@gmail.com", ""),
             "Photo": "data:image/png;base64,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",
             "Id":Id,
           };

             await DatabaseMethods().addUserInfoDetails(userInfoMap, Id);

               ScaffoldMessenger.of(context).showSnackBar(  SnackBar(content: Text('Registered successfully')));
         }on FirebaseAuthException catch(e){
             if(e.code=='weak-password'){
               ScaffoldMessenger.of(context).showSnackBar( SnackBar(content: Text('The password is too weak')));
             }else if(e.code=='email-already-in-use'){
               ScaffoldMessenger.of(context).showSnackBar( SnackBar(content: Text('Account already exist')));
           }
       }}
    }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height/3.5,
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
                      child: Text('SignUp',
                        style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Text('Create new account',
                        style: TextStyle(color: Colors.grey.shade500,
                            fontWeight: FontWeight.w500,
                            fontSize: 15)),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      child: Material(
                        elevation: 5,
                        borderRadius:BorderRadius.circular(20),
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                          height: MediaQuery.of(context).size.height/1.4,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child:
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 18),
                            child: Form(
                              key: _formkey,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Name',style: TextStyle(fontSize: 20,
                                      fontWeight: FontWeight.w500,color: Colors.black),),
                                  const SizedBox(height: 5,),
                                  Container(
                                    padding: const EdgeInsets.only(left: 10),
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 1.0,color: Colors.black),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child:  TextFormField(
                                      controller: nameController,
                                      validator: (value){
                                        if(value==null || value.isEmpty){
                                          return 'Please enter your name';}
                                      },
                                      decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          prefixIcon: Icon(Icons.person,
                                            color: Colors.blue,)
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10,),
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
                                    child:  TextFormField(
                                      controller: mailController,
                                      validator: (value){
                                        if(value==null || value.isEmpty){
                                          return 'Please enter your Email';}
                                      },
                                      decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          prefixIcon: Icon(Icons.email_outlined,
                                            color: Colors.blue,)
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10,),
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
                                    child:   TextFormField(
                                      controller: passwordController,
                                      validator: (value){
                                        if(value==null || value.isEmpty){
                                          return 'Please enter password';}
                                      },
                                      decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          prefixIcon: Icon(Icons.password_rounded,color: Colors.blue,)
                                      ),
                                      obscureText: true,
                                    ),
                                  ),
                                  const SizedBox(height: 10,),
                                  const Text('Confirm Password',
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
                                    child:   TextFormField(
                                      controller: confirmPasswordController,
                                      validator: (value){
                                        if(value==null || value.isEmpty){
                                          return 'Please confirm your password';}
                                      },
                                      decoration:const InputDecoration(
                                          border: InputBorder.none,
                                          prefixIcon: Icon(Icons.password_rounded,color: Colors.blue,)
                                      ),
                                      obscureText: true,
                                    ),
                                  ),
                                  const SizedBox(height: 30,),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Don't have an account?",style: TextStyle(color:Colors.black,fontSize: 15,),),
                                      Text( " Sign Up Now!",style: TextStyle(color:Colors.blue,fontSize: 15,)),
                                    ],
                                  ),
                                  //const SizedBox(height: 25,),
                                ],
                              ),
                            ),
                          ),
                        ),

                      ),
                    ),

                    const SizedBox(height: 14,),
                    GestureDetector(
                      onTap: (){
                        if(_formkey.currentState!.validate()){
                        setState(() {
                          name=nameController.text;
                          email=mailController.text;
                          password=passwordController.text;
                          confirmPassword=confirmPasswordController.text;
                        });
                      }
                        registration();
                        },
                      
                      child: Center(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          width: MediaQuery.of(context).size.width,
                          child: Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration:  BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(10)),
                              child:  const Center(
                                child: Text('SIGN UP',style: TextStyle(fontSize: 20,
                                    fontWeight: FontWeight.w500,color: Colors.white),),
                              ),
                            ),
                          ),
                        ),

                      ),
                    ),
                  ],
                ),
              )

            ]
        ),
      ),
    );
  }
}

