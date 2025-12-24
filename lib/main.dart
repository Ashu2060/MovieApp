import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MovieApp());

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
         body:SafeArea(child:Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Stack(
                 alignment: Alignment.center,
                 children: [
                   Stack(
                     alignment: Alignment.bottomCenter,
                     children: [
                       Image.asset("images/1.png"),
                       Container(
                         height: 100,
                         width:double.infinity,
                         decoration: BoxDecoration(
                           gradient: LinearGradient(
                             begin:Alignment.topCenter,
                             end:Alignment.bottomCenter,
                             colors:[Color(0x00f5f5f5),Color(0xfff5f5f5)]
                           )
                         ),
                       )
                     ],
                   ),
                   Icon(size:55,Icons.play_circle_outlined,color: Colors.white,)
                 ],
               ),
               Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                 ClipRRect(
                     borderRadius: BorderRadius.circular(12),
                     child: Image.asset("images/2.png",height:220,width:150,fit: BoxFit.cover,)),
                 SizedBox(width: 10,),
                 Expanded(
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [Text(
                       "2023/history/Rmance",
                     style: TextStyle(color: Colors.lightBlueAccent,
                         fontSize: 16),
                   ),
                     SizedBox(height: 5,),
                     Text(
                       "RRR",
                       style: TextStyle(color: Colors.black,
                           fontSize: 27,fontWeight: FontWeight.bold),
                     ),
                       SizedBox(height: 5,),
                       Text(
                         "RRR (Rise, Roar, Revolt) tells a fictional story of two legendary Indian revolutionaries, Alluri Sitarama Raju (Ram Charan) and Komaram Bheem (Jr. NTR), during the 1920s British Raj, who, despite their opposing roles as cop and rebel, ",
                         style: TextStyle(color: Colors.black,
                             fontSize:14,fontWeight: FontWeight.normal),
                       )

                   ],
                   ),
                 )
               ],
               ),
               Divider(
                 thickness: 2,
               ),
               Row(children: [
                 Text("Cast: ",style: TextStyle(color:Colors.grey,fontSize: 18),),
                 Text("Ram Charan,  N.T. Rama Rao Jr,",style: TextStyle(color:Colors.black,fontSize: 18),),

               ],),
               Row(children: [
                 Text("Director:",style: TextStyle(color:Colors.grey,fontSize: 18),),
                 Text("S.S. Rajamouli",style: TextStyle(color:Colors.black,fontSize: 18),),

               ],),
               Row(children: [
                 Text("collection: ",style: TextStyle(color:Colors.grey,fontSize: 18),),
                 Text("₹1100-1118 Crore",style: TextStyle(color:Colors.black,fontSize: 18),),

               ],),
               Row(children: [
                 Text("Awards: ",style: TextStyle(color:Colors.grey,fontSize: 18),),
                 Text("Oscar win was for song'NaatuNaatu'",style: TextStyle(color:Colors.black,fontSize: 18),),

               ],),
               Row(children: [
                 Text("Langauge: ",style: TextStyle(color:Colors.grey,fontSize: 18),),
                 Text("10 languages",style: TextStyle(color:Colors.black,fontSize: 18),),

               ],),
               Row(children: [
                 Text("Country: ",style: TextStyle(color:Colors.grey,fontSize: 18),),
                 Text("India",style: TextStyle(color:Colors.black,fontSize: 18),),

               ],),
               Divider(
                 thickness: 2,
               ),

               Text("more movie poster ",style: TextStyle(color:Colors.grey,fontSize: 18),),

               Divider(
                 thickness: 2,
               ),



               Expanded(
                 child: ListView.builder(
                   scrollDirection: Axis.horizontal,

                   itemCount: 4,
                   itemBuilder: (context,index){
                     return Padding(
                       padding: const EdgeInsets.only(right: 8.0),
                       child: ClipRRect(
                         borderRadius: BorderRadius.circular(12),
                         child: Image.asset("images/${index+2}.png",height:220,width:150,fit: BoxFit.cover,),
                       ),
                     );
                   },),
               )

             ],
           ),
         )),

      ),
    );
  }
}
