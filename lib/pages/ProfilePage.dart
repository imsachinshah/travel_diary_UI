import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart ';
import 'package:travel_diary/constraint/constraints.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: 'assets/images/dp.jpg',
                child: Container(
                  height: 125.0,
                  width: 125.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(62.5),
                      image: DecorationImage(
                          image: AssetImage('assets/images/dp.jpg'),
                          fit: BoxFit.fill)),
                ),
              ),
              SizedBox(height: 25,),
              Text(
                'Nikita Shah',
                style: kAppHeading.copyWith(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4,),
              Text(
                'Sagar Madhya Pradesh',
                style: knormal,
              ),
              Padding(
                padding: EdgeInsets.all(30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '12K',
                          style: knormal.copyWith(fontWeight: FontWeight.bold, color: Colors.black)
                        ),
                        SizedBox(height: 5,),
                        Text(
                          'FOLLOWERS',
                          style: knormal,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            '10',
                            style: knormal.copyWith(fontWeight: FontWeight.bold, color: Colors.black)
                        ),
                        SizedBox(height: 5,),
                        Text(
                          'TRIPS',
                          style: knormal,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            '20',
                            style: knormal.copyWith(fontWeight: FontWeight.bold, color: Colors.black)
                        ),
                        SizedBox(height: 5,),
                        Text(
                          'BUCKET LIST',
                          style: knormal,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(icon: Icon(Icons.table_chart), onPressed: () {},),
                    IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              _buildImages(),
              _buildInfoDetails(),
              _buildImages(),
              _buildInfoDetails(),
            ],
          )
        ],
      )
    );
  }

  Widget _buildImages() {
    return Padding(
      padding: EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
      child: Container(
        height: 225,

        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            image: DecorationImage(
                image: AssetImage('assets/images/alone.jpg'),
                fit: BoxFit.cover)),
      ),
    );
  }

  Widget _buildInfoDetails() {
    return Padding(
      padding: EdgeInsets.only(left: 20.0,right: 15.0, top: 15.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  'Himanchal Pradesh - 10 Days',
                  style: kAppHeading.copyWith(
                      fontWeight: FontWeight.bold, fontSize: 15)
              ),
              SizedBox(height: 7,),
              Row(
                children: [
                  Text(
                    'Nikita Shah',
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
                    '2 Videos',
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
