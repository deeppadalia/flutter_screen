import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class HomeScreen extends StatelessWidget {
  List catNames=[
    "Catagory",
    "Classes",
    "Free Course",
    "Book Store",
    "Live Coures",
    "LeaderBoard"
  ];
  List<Color> catColors=[
    Colors.amber,
    Colors.green,
    Colors.blue,
    Colors.pinkAccent,
    Colors.redAccent,
    Colors.blueGrey,
  ];
  List<Icon> catIcons=[
    Icon(Icons.category,color: Colors.white,size: 30,),
    Icon(Icons.video_library,color: Colors.white,size: 30,),
    Icon(Icons.assessment,color: Colors.white,size: 30,),
    Icon(Icons.store,color: Colors.white,size: 30,),
    Icon(Icons.play_circle_fill,color: Colors.white,size: 30,),
    Icon(Icons.emoji_events,color: Colors.white,size: 30,),
  ];
List imgList=[
  "Flutter",
  "React Native",
  "Python",
  "C#",
];
List vidList=[
  "10 videos",
  "8 videos",
  "16 videos",
  "20 videos",
];
  List facList=[
    "Mehul Sir",
    "Arjun Sir",
    "Jayesh Sir",
    "Naimish Sir",
  ];
  List emailList=[
    "m@gmail.com",
    "a@gmail.com",
    "j@gmail.com",
    "n@gmail.com",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15,left: 15,right: 15,bottom: 10),
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              )
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.dashboard,
                      size: 30,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.notifications,
                      size: 30,
                      color: Colors.white,
                    ),
                  ],

                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.only(left: 3,bottom: 15),
                child: Text(
                  "Hello Programmer",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1,
                    wordSpacing: 2,
                    color: Colors.white,
                  ),
                ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search here",
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),

                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 25,
                      ),
                    ),

                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20,left: 15,right: 15),
            child: Column(children: [
              GridView.builder(
                    itemCount:catNames.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.1,
                  ),
                itemBuilder: (context,index)
                {
                  return Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: catColors[index],
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: catIcons[index],
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        catNames[index],
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      )
                    ],
                  );
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Courses",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight:FontWeight.w700,
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight:FontWeight.w700,
                      color: Colors.deepPurple,
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              GridView.builder(
                  itemCount:imgList.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio:
                    (MediaQuery.of(context).size.height-50-25)/(4*240),
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 00,
                  ),
                itemBuilder: (context,index)
                {
                  return InkWell(
                    onTap: (){
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10 ,horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white54,
                      ),
                      child: Column(
                        children: [
                          Padding(padding: EdgeInsets.all(5),
                          child: Image.asset("assets/${imgList[index]}.png",
                            height: 170,
                            width: 170,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            imgList[index],
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w800,
                              color: Colors.red.withOpacity(0.9)
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            vidList[index],
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Colors.deepPurple.withOpacity(0.5)
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            facList[index],
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.black87.withOpacity(0.8)
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            emailList[index],
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.pink.withOpacity(0.8)
                            ),
                          ),
                        ],
                      ),
                    ),
                  );

                },
              ),
            ],
           ),
          ),
        ],
      ),
    );
  }
}
