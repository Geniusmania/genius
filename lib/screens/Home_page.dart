import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Container(
        margin: const EdgeInsets.only(top: 15,),
        child:  Column(
          children: [
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Chat App',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                    color: Colors.purple),
                      child: const Icon(Icons.search_outlined,color: Colors.white,size: 25,))
                ],
              ),
            ),
           // SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/1.14,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                color: Colors.white
              ),

                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                           ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child:Image.asset('assets/download.jpg',height: 70,width: 70,fit: BoxFit.cover,),
                          ),
                        const SizedBox(width: 10,),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 7,),
                            Text('Genius Mania',style: TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),
                            Text('Hello, whuah dey go!',style: TextStyle(color:Colors.black45,fontSize: 18,fontWeight: FontWeight.w500),)
                          ],
                        ),
                        const Text('4:25 PM',style: TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    const SizedBox(height: 23,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child:Image.asset('assets/ass.jpg',height: 70,width: 70,fit: BoxFit.cover,),
                        ),
                        const SizedBox(width: 10,),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 7,),
                            Text('Genius Mania',style: TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),
                            Text('Hello, whuah dey go!',style: TextStyle(color:Colors.black45,fontSize: 18,fontWeight: FontWeight.w500),)
                          ],
                        ),
                        const Text('4:25 PM',style: TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    const SizedBox(height: 23,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child:Image.asset('assets/images.jpg',height: 70,width: 70,fit: BoxFit.cover,),
                        ),
                        const SizedBox(width: 10,),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 7,),
                            Text('Genius Mania',style: TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),
                            Text('Hello, whuah dey go!',style: TextStyle(color:Colors.black45,fontSize: 18,fontWeight: FontWeight.w500),)
                          ],
                        ),
                        const Text('4:25 PM',style: TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                      ],
                    )
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
