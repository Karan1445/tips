

import 'package:flutter/material.dart';
import 'package:maketrip/screen_3.dart';

import 'package:maketrip/screen_2.dart';


class Home extends StatefulWidget{
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();

}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  Widget build(BuildContext context){
    TabController _tabController=TabController(length: 3, vsync: this,);
    return Scaffold(
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
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(margin: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10,top:15,bottom: 20),
                  child: GestureDetector(
                    onTap: (){
                      _key.currentState!.openDrawer();

                    },
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/8373748.png",
                          width: 35,
                        ),
                        Expanded(child: Container()),
                        const CircleAvatar(
                          radius: 17,
                          backgroundImage: AssetImage("assets/images/user_img.jpg"),
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(margin:EdgeInsets.only(left: 18),child: Text("Go With Me.",style: TextStyle(color:Colors.purple,fontSize: 29,fontWeight: FontWeight.w500),)),
                  ],
                ),
                Container(
                  child: Align(
                    alignment: Alignment.center,
                    child: TabBar(
                      dividerColor: Colors.white,
                      controller: _tabController,
                      isScrollable: true,
                      tabAlignment: TabAlignment.start,
                      labelPadding:  EdgeInsets.only(left:18,right:10),
                      labelColor: Colors.purple.shade800,
                      unselectedLabelColor: Colors.purple,
                      indicator: CircleTabIndicator(color:Colors.purple,radius:4),
                      tabs: [
                        GestureDetector(onTap:(){_key.currentState!.openDrawer();},child: Tab(text: "Discover")),
                        GestureDetector(onTap:(){_key.currentState!.openDrawer();},child: Tab(text: "Promo")),
                        GestureDetector(onTap:(){_key.currentState!.openDrawer();},child: Tab(text: "Insight")),

                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 0,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      Text(" "),
                      Text(" "),
                      Text(" ")
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      first_Scroll(context,"assets/images/screen2_new4.jpg","Rigi Mountains For Everyone,With\nSpecial Blue Sky","Medellin ,Colombia"),
                      first_Scroll(context,"assets/images/screen2_new8.jpg","Holiday For Family in Matterhorn\nmountain","Fifi ,Thailand"),
                      first_Scroll(context,"assets/images/screen2_new6.jpg","Holiday For Family in Matterhorn\nmountain","Kathmandu ,Nepal")
                    ],
                  ),
                ),
                Container(margin: EdgeInsets.only(left:20,right: 25,top:15,bottom: 5),
                  child:     Row(
                    children: [
                      const Text("Make Your Own Journy?",style: TextStyle(color: Colors.purple,fontSize: 18),),
                      Expanded(child: Container()),
                      GestureDetector(onTap:(){_key.currentState!.openDrawer();},child: const Text("View all",style: TextStyle(color: Colors.grey,fontSize:8),)),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child:Container(margin: const EdgeInsets.only(left: 20,right:20,top:10,bottom: 10),
                    child:  Row(
                      children: [
                        GestureDetector(
                          onTap:(){//Scaffold.of(context).openDrawer();
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2(id:0)));

                          },
                          child: Container(margin: EdgeInsets.only(top: 13,bottom: 13,left:0,right: 0),
                            child:  const Column(
                              children: [
                                Icon( IconData(0xe3a8, fontFamily: 'MaterialIcons'),color: Colors.purple,size: 45,),
                                Text("city",style: TextStyle(color: Colors.grey,fontSize: 8),)
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2(id: 1)));},
                          child: Container (margin: EdgeInsets.only(top: 13,bottom: 13,left:13,right: 13),
                            child:  const Column(
                              children: [
                                Icon(const IconData(0xe365, fontFamily: 'MaterialIcons'),color: Colors.purple,size: 45,),
                                Text("Mountains",style: TextStyle(color: Colors.grey,fontSize: 8),)
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap:(){Navigator.push(context,MaterialPageRoute(builder: (context)=>Screen2(id:2)));},
                          child: Container(margin: EdgeInsets.only(top: 13,bottom: 13,left:0,right: 13),
                            child:  Column(
                              children: [
                                Icon(const IconData(0xe0d6, fontFamily: 'MaterialIcons'),color: Colors.purple,size: 45,),
                                Text("Beaches",style: TextStyle(color: Colors.grey,fontSize: 8),)
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>Screen2(id:3)));},
                          child: Container(margin: EdgeInsets.only(top: 13,bottom: 13,left:0,right: 13),
                            child:  Column(
                              children: [
                                Icon(const IconData(0xe414, fontFamily: 'MaterialIcons'),color: Colors.purple,size: 45,),
                                Text("Musum",style: TextStyle(color: Colors.grey,fontSize: 8),),

                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>Screen2(id:4)));},
                          child: Container(margin: EdgeInsets.only(top: 13,bottom: 13,left:0,right: 13),
                            child: Column(
                              children: [
                                Icon(const IconData(0xf7f1, fontFamily: 'MaterialIcons'),color: Colors.purple,size: 45,),
                                Text("Tants",style: TextStyle(color: Colors.grey,fontSize: 8),),

                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>Screen2(id:5)));},
                          child: Container(margin: EdgeInsets.only(top: 13,bottom: 13,left:0,right: 0),
                            child:  Column(
                              children: [
                                Icon(const IconData(0xf056b, fontFamily: 'MaterialIcons'),color: Colors.purple,size: 45,),
                                Text("snow",style: TextStyle(color: Colors.grey,fontSize: 8),),

                              ],
                            ),
                          ),
                        ),



                      ],
                    ),
                  ),
                ),
                Container(margin: EdgeInsets.only(left:20,right: 25,top:5,bottom: 10),
                  child:     Row(
                    children: [
                      const Text("Promo",style: TextStyle(color: Colors.purple,fontSize: 18),),
                      Expanded(child: Container()),
                      GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2(id:1)));},child: const Text("View all",style: TextStyle(color: Colors.grey,fontSize:8),)),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      first_Scroll(context, "assets/images/home_1.jpg", "Make it Even in night with stars   \nMore beutiful", "Mauritania , Nu",wid_div: 2.1,flag: true),
                      first_Scroll(context, "assets/images/home_2.jpg", "Make it Even in sun lights and     \nMore beutiful", "Ladakh , India",wid_div:2.1,flag:true,color_t: Colors.redAccent.shade400,txt: "70"),
                      first_Scroll(context, "assets/images/home_4.jpg", "Make it Even in evening new things \nMore beutiful", "New jursy , Usa",wid_div:2.1,flag:true,txt:"20")
                    ],
                  ),
                ),

              ],
            ),
          ),
        )
    );

  }

  Container icon_Col(int icon_d,String under_text,{double to=13,double bo=13,double st=13,double en=13}) {
    return Container(margin: EdgeInsets.only(top: to,bottom: bo,left:st,right: en),
      child: Column(
        children: [
           Icon(IconData(icon_d, fontFamily: 'MaterialIcons'),color: Colors.purple,size: 45,),
          Text(under_text,style: TextStyle(color: Colors.grey,fontSize: 8),)
        ],
      ),
    );
  }

  Stack first_Scroll(BuildContext context,String img_path,
      String f_text,String loc_text,{double wid_div=1.9,Color color_t=Colors.purple,String txt="40",bool flag=false}) {
    return Stack(
      children: [
        Container(margin: EdgeInsets.all(10),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(23)
          ),

          child: GestureDetector(
            onTap: (){

              Navigator.push(context, MaterialPageRoute(builder: (context)=> Screen3(Path: img_path,t:f_text,loc:loc_text)));
            },
            child: Image.asset(img_path,
                fit: BoxFit.cover,height: 280,width: MediaQuery.of(context).size.width/wid_div),
          ),
        ),
        off_tag(context, wid_div, color_t, txt,flag),
        Container(margin: EdgeInsets.only(top: 220,left: 40),
          child:  Row(
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(f_text,style: TextStyle(color: Colors.white,fontSize: 10),),
                  buildRow(loc_text),
                ],
              ),





            ],
          ),
        ),

      ],
    );
  }

  Row off_tag(BuildContext context, double wid_div, Color color_t, String txt,bool flag) {
    if(flag){
      return Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/wid_div-57,top:20),
            color: color_t,
            child: Text("$txt% OFF",style: TextStyle(color:Colors.white),),
          ),
        ],
      );
    }
    else return Row(children: [],);
  }

  Widget buildRow(String loc_text) {
    return   Row(mainAxisSize: MainAxisSize.min,mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Icon(IconData(0xe3ab, fontFamily: 'MaterialIcons'),
            color: Colors.purple,size: 11),
        Text(
          loc_text,
          style: const TextStyle(
              color: Colors.purple, fontWeight: FontWeight.w500,fontSize: 11),
        ),
      ],
    );
  }
}
class CircleTabIndicator extends Decoration{
  final Color color;
  double radius;

  CircleTabIndicator({required this.color,required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]){
    return _CirclePainter(color:Colors.purple,radius:radius);
  }
}

class _CirclePainter extends BoxPainter{
  final double radius;
  late Color color;

  _CirclePainter({required this.radius,required this.color});

  void paint(Canvas canvas,Offset offset,ImageConfiguration cfg){
    late Paint _paint;
    _paint=Paint()..color=color;
    _paint=_paint ..isAntiAlias=true;

    final Offset circleOffset=offset+Offset(cfg.size!.width/2,cfg.size!.height-radius);canvas.drawCircle(circleOffset, radius, _paint);
  }
}