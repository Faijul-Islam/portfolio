import 'package:flutter/material.dart';


class ListViewAnimation extends StatefulWidget {
  const ListViewAnimation({Key? key}) : super(key: key);

  @override
  State<ListViewAnimation> createState() => _ListViewAnimationState();
}

class _ListViewAnimationState extends State<ListViewAnimation> {
  double width=0;
  bool myAnimation=false;
  @override
  void initState() {
   WidgetsBinding.instance.addPostFrameCallback((timeStamp){
     setState(() {
       myAnimation=true;
     });
   });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    return   Scaffold(
      backgroundColor:  const Color.fromARGB(255, 34, 36, 49),
      body: SafeArea(
          child: ListView(
            children:  [
              Center(
                child: Text("ListViewAnimation",
                  style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w800,
                      color: Colors.white
                  ),
                ),
              ),
              SizedBox(height: 20,),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount:user.length ,
                  itemBuilder: (context ,index){
                    final myUser=user[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AnimatedContainer(
                        decoration: BoxDecoration(
                          color:Colors.teal,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        duration: Duration(milliseconds: 400+(index*250)),
                        curve: Curves.easeIn,
                        transform: Matrix4.translationValues(myAnimation?0:width, 0, 0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage(myUser.image),
                              ),
                              SizedBox(width: 20,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(myUser.name,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700
                                  ),

                                  ),
                                  Text(myUser.userName,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400
                                  ),

                                  ),
                                ],
                              )

                            ],
                          ),
                        ),
                      ),
                    );
                  }
              )
            ],
          )
      ),
    );
  }
}

class User{
  final String name;
  final String userName;
  final String image;
  User( {required this.name, required this.userName, required this.image,});
}

List<User> user=[
  User(
      name: "Faijul Islam",
      userName: "Faijul ",
      image: "https://m.media-amazon.com/images/I/81lnPKhwFfL._AC_SL1500_.jpg"
  ),
  User(
      name: "Tania Bristi",
      userName: "Bristi",
      image: "https://media.istockphoto.com/id/1437816897/photo/business-woman-manager-or-human-resources-portrait-for-career-success-company-we-are-hiring.jpg?s=612x612&w=0&k=20&c=tyLvtzutRh22j9GqSGI33Z4HpIwv9vL_MZw_xOE19NQ="
  ),
  User(
      name: "Tanbir 2",
      userName: "Tanbir@",
      image: "https://img.freepik.com/free-photo/side-view-portrait-happy-smiling-man_171337-4839.jpg"
  ),
  User(
      name: "Faijul Islam",
      userName: "Developer",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSp3oYa9BljpcyhfIwVizBrEuo4HjsWq1mNzw&s"
  ),
  User(
      name: "Tanbir#",
      userName: "Tanbir#",
      image: "https://st3.depositphotos.com/15648834/17930/v/450/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg"
  ),
  User(
      name: "Tanbir%",
      userName: "Tanbir%",
      image: "https://m.media-amazon.com/images/I/81lnPKhwFfL._AC_SL1500_.jpg"
  ),
  User(
      name: "Tanbir",
      userName: "Tanbir",
      image: "https://m.media-amazon.com/images/I/81lnPKhwFfL._AC_SL1500_.jpg"
  ),
];