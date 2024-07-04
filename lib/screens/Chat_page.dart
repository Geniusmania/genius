import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 40,right: 20,left: 20),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back_ios,color: Colors.white,size: 25,),
                SizedBox(width: 90,),
                Text('Genius Mania',style: TextStyle(color:Colors.white,fontSize: 25,fontWeight: FontWeight.bold),)
              ],
            ),
          ),
         const SizedBox(height: 12,),
         Container(
           padding: const EdgeInsets.only(left: 10,right: 10,bottom: 20),
           width: MediaQuery.of(context).size.width,
           height: MediaQuery.of(context).size.height/1.15,
           decoration: const BoxDecoration(
             borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30)),
             color: Color(0xffD7D3BA),
           ),
           child: Column(
             children: [
               Padding(
                 padding: const EdgeInsets.only(top: 30),
                 child: Container(
                   padding: const EdgeInsets.symmetric(vertical: 13,horizontal: 13),
                   margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/3),
                   decoration: const BoxDecoration(color: Color(0xF4CCE3E3),
                   borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),bottomLeft: Radius.circular(20))
                   ),
                   child: const Text('mania chl, whah dey go', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                 ),
               ),
               const SizedBox(height: 15,),
               Container(
                 padding: const EdgeInsets.symmetric(vertical: 13,horizontal: 13),
                 margin: EdgeInsets.only(right: MediaQuery.of(context).size.width/3),
                 decoration: const BoxDecoration(color: Color(0xF4EFEAEA),
                     borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),bottomRight: Radius.circular(20))
                 ),
                 child: const Text('mania chl, whah dey go', style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),
               ),
                const Spacer(),
               Material(
                 elevation: 5.0,
                 borderRadius: BorderRadius.circular(15),
                 child: Container(
                   padding: const EdgeInsets.only(left: 20,right: 20),
                   //margin: const EdgeInsets.only(bottom: 20),
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(15),
                     color: Colors.white,),
                  child:  Row(
                    children: [
                      const Expanded(
                        child: TextField(decoration: InputDecoration(
                         border: InputBorder.none,
                         hintText: 'Type a message',
                          hintStyle: TextStyle(color: Colors.black45,fontWeight: FontWeight.w400,fontSize: 18)
                         ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration:  BoxDecoration(color: const Color(0xffc6c6d7),borderRadius: BorderRadius.circular(50)),
                          child: const Icon(Icons.send_sharp,color:Colors.deepPurple,size: 30,))
                    ],
                  ),
                 ),
               )
             ],
           ),
         ),
        ],
      ),
    );
  }
}
