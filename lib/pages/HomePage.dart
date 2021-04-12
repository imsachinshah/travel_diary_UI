import 'package:flutter/material.dart';
import 'package:travel_diary/constraint/constraints.dart';
import 'package:travel_diary/pages/ProfilePage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: tabController,
          indicatorColor: Colors.white,
          tabs: [
            Tab(icon: Icon(Icons.home, color: Colors.black,)),
            Tab(icon: Icon(Icons.search, color: Colors.grey,)),
            Tab(icon: Icon(Icons.graphic_eq, color: Colors.grey)),
            Tab(icon: Icon(Icons.add_circle_outline, color: Colors.grey,)),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 15.0, left: 15.0, right: 15.0, bottom: 15.0),
              child: Row(
                children: [
                  Text(
                    'travelogram',
                    style: kAppHeading,
                  ),
                  SizedBox(
                    width: 115.0,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.notifications,
                      color: Colors.grey.shade500,
                      size: 30.0,
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  InkWell(
                    child: Hero(
                      tag: 'assets/images/dp.jpg',
                      child: Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            image: DecorationImage(
                                image: AssetImage('assets/images/dp.jpg'),
                                fit: BoxFit.fill)),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));

                    },
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
              child: Container(
                height: 90,
                padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                  color: Colors.grey.shade200,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        padding: EdgeInsets.only(bottom: 15.0),
                        icon: Icon(
                          Icons.assistant_navigation,
                          color: Colors.blue,
                          size: 50.0,
                        ),
                        onPressed: () {}),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'MANALI TRIP 2021',
                          style: kSubHeading,
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Add an Update',
                          style: kAppHeading.copyWith(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey,
                        ),
                        onPressed: () {})
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 10.0, left: 25.0, right: 25.0, bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'FROM THE COMMUNITY',
                    style: kSubHeading.copyWith(fontSize: 15.0),
                  ),
                  Text(
                    'View All',
                    style: ktext,
                  )
                ],
              ),
            ),
            _buildImageGrid(),
            _imgGalleyDetails(),
            _buildImageGrid(),
            _imgGalleyDetails()
          ],
        ),
      ),
    );
  }

  Widget _buildImageGrid() {
    return Padding(
        padding: EdgeInsets.fromLTRB(25.0, 15.0, 15.0, 15.0),
        child: Container(
          height: 225,
          child: Row(
            children: [
              Container(
                height: 225,
                width: MediaQuery.of(context).size.width / 2 + 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      bottomLeft: Radius.circular(15.0),
                    ),
                    image: DecorationImage(
                        image: AssetImage('assets/images/alone.jpg'),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                width: 2,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 111.5,
                    width: MediaQuery.of(context).size.width / 2 - 72,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15.0),
                        ),
                        image: DecorationImage(
                            image: AssetImage('assets/images/friends.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 111.5,
                        width: MediaQuery.of(context).size.width / 2 - 72,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(15.0),
                            ),
                            image: DecorationImage(
                                image: AssetImage('assets/images/balloon.jpg'),
                                fit: BoxFit.cover)),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }

  Widget _imgGalleyDetails() {
    return Padding(
      padding: EdgeInsets.only(left: 25.0,right: 25.0, top: 15.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Kullu Manali Summer 2021',
                  style: kAppHeading.copyWith(
                      fontWeight: FontWeight.bold, fontSize: 15)
              ),
              SizedBox(height: 7,),
              Row(
                children: [
                  Text(
                    'Nikita Shah added 4 photos',
                    style: ktext.copyWith(fontSize: 12.0, color: Colors.grey.shade500, fontWeight: FontWeight.w200),
                  ),
                  SizedBox(width: 4.0,),
                  Icon(
                    Icons.timer,
                    size: 4,
                      color: Colors.black,
                  ),
                  SizedBox(width: 4.0,),
                  Text(
                    '2h ago',
                    style: ktext.copyWith(fontSize: 12.0, color: Colors.grey.shade500, fontWeight: FontWeight.w200),
                  ),

                ],
              ),

                ],
              ),
          SizedBox(width: 50,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 8,),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 20,
                  width: 20,
                  child: Image.asset('assets/images/navarrow.png'),
                ),
              ),
              SizedBox(width: 8,),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 21,
                  width: 21,
                  child: Image.asset('assets/images/chatbubble.png'),
                ),
              ),
              SizedBox(width: 7,),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 25,
                  width: 25,
                  child: Image.asset('assets/images/fav.png'),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
