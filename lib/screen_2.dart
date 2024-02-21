import 'package:flutter/material.dart';
import 'package:maketrip/screen_3.dart';


import 'home.dart';

class Screen2 extends StatefulWidget {

  const Screen2({super.key,required this.id});
  final int id;
  @override
  State<Screen2> createState() => _Screen2State(id);
}
class _Screen2State extends State<Screen2>{
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final List img_list=[
    Imgs(img:"assets/images/screen2_new4.jpg",t:"Explore new advanture with us \nin dark night",locs:"Navda,usa"),
    Imgs(img: "assets/images/screen2_new8.jpg",t:"Beautiful moutains with cold and \nchill waether",locs:"Fiji,Japan"),
    Imgs(img: "assets/images/pexels-stephan-seeber-1054218.jpg",t:"most pericious cloud with\n always Start",locs:"Munich,france"),
    Imgs(img:"assets/images/nsplsh_59386c436f545267485045~mv2_d_6000_4000_s_4_2.webp",t:"Make your vacation good\n with Sky",locs:"Nauckshot,Mauritania"),
    Imgs(img:"assets/images/screen2_new6.jpg",t:"Most pericous Nautre with \n always cloud",locs:"Wales,Eng")
  ];
  final List city=[
    Imgs(img:"assets/images/city_6.jpg",t:"Explore new advanture with us in dark night",locs:"Navda,usa" ),
    Imgs(img: "assets/images/city_5.jpeg",t:"Beautiful moutains with cold and \nchill waether",locs:"Fiji,Japan"),
    Imgs(img: "assets/images/city_1.jpg",t:"most pericious cloud with\n always Start",locs:"Munich,france"),
    Imgs(img:"assets/images/city_2.jpg",t:"Make your vacation good\n with Sky",locs:"Nauckshot,Mauritania"),
    Imgs(img:"assets/images/city_3.jpg",t:"Most pericous Nautre with \n always cloud",locs:"Wales,Eng"),
  ];
  final List beach=[
    Imgs(img:"assets/images/b_1.jpg",t:"Explore new advanture with us in dark night",locs:"Navda,usa"),
    Imgs(img:"assets/images/b_2.jpg",t:"Beautiful moutains with cold and \nchill waether",locs:"Fiji,Japan"),
    Imgs(img:"assets/images/b_3.jpg",t:"most pericious cloud with\n always Start",locs:"Munich,france"),
    Imgs(img:"assets/images/b_4.jpg",t:"Make your vacation good\n with Sky",locs:"Nauckshot,Mauritania"),
    Imgs(img:"assets/images/b_5.jpg",t:"Most pericous Nautre with \n always cloud",locs:"Wales,Eng"),
  ];
  final List musum=[
    Imgs(img:"assets/images/m_1.jpg",t:"Explore new advanture with us in dark night",locs:"Navda,usa"),
    Imgs(img:"assets/images/m_2.jpg",t:"Beautiful moutains with cold and \nchill waether",locs:"Fiji,Japan"),
    Imgs(img:"assets/images/m_3.jpg",t:"most pericious cloud with\n always Start",locs:"Munich,france"),
    Imgs(img:"assets/images/m_4.jpg",t:"Make your vacation good\n with Sky",locs:"Nauckshot,Mauritania"),
    Imgs(img:"assets/images/m_5.jpg",t:"Most pericous Nautre with \n always cloud",locs:"Wales,Eng"),
  ];
  final List tent=[
    Imgs(img:"assets/images/t_1.jpg",t:"Explore new advanture with us in dark night",locs:"Navda,usa"),
    Imgs(img:"assets/images/t_2.jpg",t:"Beautiful moutains with cold and \nchill waether",locs:"Fiji,Japan"),
    Imgs(img:"assets/images/t_3.jpg",t:"most pericious cloud with\n always Start",locs:"Munich,france"),
    Imgs(img:"assets/images/t_4.jpg",t:"Make your vacation good\n with Sky",locs:"Nauckshot,Mauritania"),
    Imgs(img:"assets/images/t_5.jpg",t:"Most pericous Nautre with \n always cloud",locs:"Wales,Eng"),
  ];
  final List snow=[
    Imgs(img:"assets/images/s_1.jpg",t:"Explore new advanture with us in dark night",locs:"Navda,usa"),
    Imgs(img:"assets/images/s_2.jpg",t:"Beautiful moutains with cold and \nchill waether",locs:"Fiji,Japan"),
    Imgs(img:"assets/images/s_3.jpg",t:"most pericious cloud with\n always Start",locs:"Munich,france"),
    Imgs(img:"assets/images/s_4.jpg",t:"Make your vacation good\n with Sky",locs:"Nauckshot,Mauritania"),
    Imgs(img:"assets/images/s_5.jpg",t:"Most pericous Nautre with \n always cloud",locs:"Wales,Eng"),
  ];

  _Screen2State(this.id);
  final int id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        surfaceTintColor:Colors.transparent,
        automaticallyImplyLeading: false,
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const Home()));
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
          Column(
            children: [
              Container(
                  margin: const EdgeInsets.fromLTRB(25, 20, 25, 0),
                  alignment: Alignment.center,
                  child: const Text(
                    "Pick Destination With Me.",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.deepPurple,
                        fontSize: 24),
                  )),
              Expanded(
                  child: ListView.builder(
                    itemCount: img_list.length,
                    itemBuilder:(context,index){
                      List data=[];
                      switch(id??1){
                        case 0:
                          data=city;
                          break;
                        case 1:
                          data=img_list;
                          break;
                        case 2:
                          data=beach;
                          break;
                        case 3:
                          data=musum;
                          break;
                        case 4:
                          data=tent;
                          break;
                        case 5:
                          data=snow;
                          break;
                      }

                      final path=data[index];
                      return Container(child: Listimga(data[index].img, context,path.img as String,data[index].t,data[index].locs));
                    },
                  )
              ),

            ],
          ),
          bottomButton(context),
        ],
      ),
      key:_key,
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

  Container bottomButton(context) {
    return Container(alignment: Alignment.center,margin: const EdgeInsets.only(bottom: 30),
      child: Column(mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=>const Screen3(Path:"assets/images/screen2_new4.jpg",t:"Enjoy The Lake Sunset View\nIn The Boat",loc:"Lugano ,Switzerland")));
            },
            onLongPress: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>const Home()));
            },
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
    );
  }

  GestureDetector Listimga(String img,BuildContext context, String img_ps,String tit,String locs) {
    return GestureDetector(onTap: (){

      Navigator.push(context,MaterialPageRoute(builder: (context)=>Screen3(Path:img_ps,t:tit,loc:locs)));
    },
      child: Container(margin: const EdgeInsets.fromLTRB(25, 25, 23, 10),
        child: Stack(
          children: [
            Container(
                clipBehavior: Clip.antiAlias,
                decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(19) // Adjust the radius as needed
                ),
                child: Image.asset(img,
                  fit: BoxFit.cover,height: 130,width: MediaQuery.of(context).size.width,)),



            Container(margin: const EdgeInsets.fromLTRB(18, 72, 10,0),alignment: Alignment.center,

              child:  Column(

                children: [

                  Row(
                    children: [
                      Text(tit,
                        style:TextStyle(color: Colors.white70,fontSize: 12),),
                    ],
                  ),
                   Row(
                    children: [
                     const Icon(IconData(0xe3ab, fontFamily: 'MaterialIcons'),
                          color: Colors.redAccent,size: 11),
                      Text(
                       locs,
                        style: TextStyle(
                            color: Colors.redAccent, fontWeight: FontWeight.w500,fontSize: 11),
                      ),
                    ],
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }

}
class Imgs{
  String img;
  String t;
  String locs;
  Imgs({required this.img,required this.t,required this.locs});
}