import 'package:flutter/material.dart';
import 'package:maketrip/home.dart';
import 'package:maketrip/screen_2.dart';
class Screen3 extends StatefulWidget {
  final String Path;
  final String t;
  final String loc;
  const Screen3({super.key,required this.Path, required this.t,required this.loc});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      extendBodyBehindAppBar: true,

      appBar: AppBar(
        automaticallyImplyLeading: false,
        excludeHeaderSemantics: false,
        backgroundColor: Colors.transparent,
        actions: const [],
        title: Container(
          margin: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            children: [
              GestureDetector(
                onTap: (){
                  _key.currentState!.openDrawer();
                },
                child: Image.asset(
                  "assets/images/8373748.png",
                  width: 35,
                ),
              ),
              Expanded(child: Container()),
              GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>const Home()));
                },
                child: const CircleAvatar(
                  radius: 17,
                  backgroundImage: AssetImage("assets/images/user_img.jpg"),
                ),
              )
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            widget.Path ,
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(23, 111, 23, 0),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(margin:EdgeInsets.only(right: 50),
                      child: Text(widget.t,maxLines: 2,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          )),
                    ),
                    Row(

                      children: [

                        const Icon(IconData(0xe3ab, fontFamily: 'MaterialIcons'),
                            color: Colors.redAccent),
                        Text(
                          widget.loc,
                          style: TextStyle(
                              color: Colors.redAccent, fontWeight: FontWeight.w500),
                        ),

                      ],
                    ),
                  ],
                ),

              ],
            ),
          ),
          Container(alignment: Alignment.center,margin: const EdgeInsets.only(bottom: 60),
            child: Column(mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                ElevatedButton(
                  onPressed: () {Navigator.pop(context);},
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(CircleBorder()),
                      backgroundColor: MaterialStateProperty.all(Colors.transparent),
                      elevation: MaterialStateProperty.all(0)),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white,
                    child: Icon(const IconData(0xe3ab, fontFamily: 'MaterialIcons'),
                        color: Colors.purpleAccent.shade200),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      key: _key,
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(curve: Easing.legacyDecelerate,decoration:BoxDecoration(color: Colors.purple.shade100),
                child:Container(margin: EdgeInsets.only(top:100),
                  child: Text("Hello,Traveler",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,
                    fontSize: 30,
                  ),),
                ) ),
            Container(margin: EdgeInsets.only(top:10,bottom: 10,left: 15),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2(id: 0)));
                },
                child: Row(
                  children: [
                    Container(
                        child:const Icon(IconData(0xe3a8, fontFamily: 'MaterialIcons'),color: Colors.purple,size: 40,)
                    ),
                    Container(margin: EdgeInsets.only(left:15),
                        child: const Text("City",style: TextStyle(color: Colors.purple,fontSize: 20,fontWeight: FontWeight.w500,),)),
                  ],
                ),
              ),
            ),
            Container(margin: EdgeInsets.only(top:10,bottom: 10,left: 15),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2(id: 1)));
                },
                child: Row(
                  children: [
                    Container(
                        child:const Icon(IconData(0xe365, fontFamily: 'MaterialIcons'),color: Colors.purple,size: 40,)
                    ),
                    Container(margin: EdgeInsets.only(left:15),
                        child: const Text("Mountains",style: TextStyle(color: Colors.purple,fontSize: 20,fontWeight: FontWeight.w500,),)),
                  ],
                ),
              ),
            ),
            Container(margin: EdgeInsets.only(top:10,bottom: 10,left: 15),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2(id: 2)));
                },
                child: Row(
                  children: [
                    Container(
                        child:const Icon(IconData(0xe0d6, fontFamily: 'MaterialIcons'),color: Colors.purple,size: 40,)
                    ),
                    Container(margin: EdgeInsets.only(left:15),
                        child: const Text("Beaches",style: TextStyle(color: Colors.purple,fontSize: 20,fontWeight: FontWeight.w500,),)),
                  ],
                ),
              ),
            ),
            Container(margin: EdgeInsets.only(top:10,bottom: 10,left: 15),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2(id: 3)));
                },
                child: Row(
                  children: [
                    Container(
                        child:const Icon(IconData(0xe414, fontFamily: 'MaterialIcons'),color: Colors.purple,size: 40,)
                    ),
                    Container(margin: EdgeInsets.only(left:15),
                        child: const Text("Musumes",style: TextStyle(color: Colors.purple,fontSize: 20,fontWeight: FontWeight.w500,),)),
                  ],
                ),
              ),
            ),
            Container(margin: EdgeInsets.only(top:10,bottom: 10,left: 15),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2(id: 4)));
                },
                child: Row(
                  children: [
                    Container(
                        child:const Icon(IconData(0xf7f1, fontFamily: 'MaterialIcons'),color: Colors.purple,size: 40,)
                    ),
                    Container(margin: EdgeInsets.only(left:15),
                        child: const Text("Tents",style: TextStyle(color: Colors.purple,fontSize: 20,fontWeight: FontWeight.w500,),)),
                  ],
                ),
              ),
            ),
            Container(margin: EdgeInsets.only(top:10,bottom: 10,left: 15),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2(id: 5)));
                },
                child: Row(
                  children: [
                    Container(
                        child:const Icon(IconData(0xf056b, fontFamily: 'MaterialIcons'),color: Colors.purple,size: 40,)
                    ),
                    Container(margin: EdgeInsets.only(left:15),
                        child: const Text("Snow",style: TextStyle(color: Colors.purple,fontSize: 20,fontWeight: FontWeight.w500,),)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

