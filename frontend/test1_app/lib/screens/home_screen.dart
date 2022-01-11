import 'package:doctor_consultation_app/components/category_card.dart';
import 'package:doctor_consultation_app/components/doctor_card.dart';
import 'package:doctor_consultation_app/components/request_listener.dart';
import 'package:doctor_consultation_app/components/search_bar.dart';
import 'package:doctor_consultation_app/constant.dart';
import 'package:doctor_consultation_app/databaseClasses/doktor.dart';
import 'package:doctor_consultation_app/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image.asset('assets/icons/menu.png'),
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ProfileScreen()));
                        },
                        icon: Icon(Icons.person)),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Find Your Desired\nDoctor',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    color: kTitleTextColor,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: SearchBar(),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Categories',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kTitleTextColor,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //AnabilimList(),
              buildCategoryList(
                  "Genel\ncerrahi", "Dış\nHekimliği", "Göz\nKliniği"),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Uzmanlık ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kTitleTextColor,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //UzmanlikList(),
              buildCategoryList(
                  "Beyin\ncerrahi", "Dış\nCerrahi", "Göz\nCerrahi"),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Top Doctors',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kTitleTextColor,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              buildDoctorList(), //DoctorList(),
            ],
          ),
        ),
      ),
    );
  }

  buildCategoryList(String _one, String _two, String _three) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 30,
          ),
          CategoryCard(
            'Dr. Stella Kane',
            '${_one}',
            'Heart Surgeon\nFlower Hospitals',
            'assets/icons/heart_surgeon.png',
            'assets/images/doctor1.png',
            kBlueColor,
          ),
          SizedBox(
            width: 10,
          ),
          CategoryCard(
            'Dr. Joseph Cart',
            '${_two}',
            'Dental Surgeon\nFlower Hospitals',
            'assets/icons/dental_surgeon.png',
            'assets/images/doctor2.png',
            kYellowColor,
          ),
          SizedBox(
            width: 10,
          ),
          CategoryCard(
            'Dr. Stephanie',
            '${_three}',
            'Eye Specialist \nFlower Hospitals',
            'assets/icons/eye_specialist.png',
            'assets/images/doctor3.png',
            kOrangeColor,
          ),
          SizedBox(
            width: 30,
          ),
        ],
      ),
    );
  }

  buildDoctorList() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        children: <Widget>[
          DoctorCard(
            'Dr. Stella Kane',
            'Heart Surgeon\nFlower Hospitals',
            'assets/images/doctor1.png',
            kBlueColor,
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'Dr. Joseph Cart',
            'Dental Surgeon\nFlower Hospitals',
            'assets/images/doctor2.png',
            kYellowColor,
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'Dr. Stephanie',
            'Eye Specialist \nFlower Hospitals',
            'assets/images/doctor3.png',
            kOrangeColor,
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

/*class AnabilimList extends StatefulWidget {
  @override
  _AnabilimListState createState() => _AnabilimListState();
}

class _AnabilimListState extends State<AnabilimList> {
  httpListener listener = httpListener();

  @override
  void initState() {
    listener.setupAnabilimlerListener();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Container(
          child: AnimatedBuilder(
              animation: Listenable.merge([listener]),
              builder: (context, snapshot) {
                return Container(
                    width: double.infinity,
                    height: 200,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        itemCount: listener.a.anabilimler == null
                            ? 0
                            : listener.a.anabilimler.length,
                        itemBuilder: (BuildContext context, int index) {
                          return listener.a.anabilimler[index].name != null
                              ? CategoryCard(
                                  listener.a.anabilimler[index].name,
                                  "assets/icons/eye_specialist.png",
                                  kYellowColor)
                              : Divider();
                        }));
              })),
    );
  }
}*/

class DoctorList extends StatefulWidget {
  @override
  _DoctorListState createState() => _DoctorListState();
}

class _DoctorListState extends State<DoctorList> {
  httpListener listener = httpListener();

  @override
  void initState() {
    listener.setupDoktorlarListener();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Container(
          child: AnimatedBuilder(
              animation: Listenable.merge([listener]),
              builder: (context, snapshot) {
                return Container(
                    width: double.infinity,
                    child: ListView.builder(
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        itemCount: listener.d.doktorlar == null
                            ? 0
                            : listener.d.doktorlar.length,
                        itemBuilder: (BuildContext context, int index) {
                          return listener.d.doktorlar[index].name != null
                              ? DoctorCard(
                                  listener.d.doktorlar[index].name,
                                  listener.d.doktorlar[index].department,
                                  "assets/images/doctor3.png",
                                  kBlueColor)
                              : Divider();
                        }));
              })),
    );
  }
}

/*class UzmanlikList extends StatefulWidget {
  @override
  _UzmanlikListState createState() => _UzmanlikListState();
}

class _UzmanlikListState extends State<UzmanlikList> {
  httpListener listener = httpListener();

  @override
  void initState() {
    listener.setupUzmanliklarListener();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Container(
          child: AnimatedBuilder(
              animation: Listenable.merge([listener]),
              builder: (context, snapshot) {
                return Container(
                    width: double.infinity,
                    height: 200,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        itemCount: listener.u.uzmanliklar == null
                            ? 0
                            : listener.u.uzmanliklar.length,
                        itemBuilder: (BuildContext context, int index) {
                          return listener.u.uzmanliklar[index].name != null
                              ? CategoryCard(
                                  listener.u.uzmanliklar[index].name,
                                  "assets/icons/dental_surgeon.png",
                                  kOrangeColor)
                              : Divider();
                        }));
              })),
    );
  }
} */