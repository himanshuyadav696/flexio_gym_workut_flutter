import 'package:flexio/screens/activity/Activity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<HomeScreen> createState() => _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = <Widget>[
    HomeScreen2(),
    Activity(),
    HomeScreen2(),
    HomeScreen2(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24),
          topLeft: Radius.circular(24),
        ),
        child: BottomNavigationBar(
          elevation: 10,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_activity),
              label: 'Activity',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: 'Calender',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          unselectedLabelStyle: const TextStyle(color: Colors.black),
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

class HomeScreen2 extends StatefulWidget{
  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2>{
  int defaultChoiceIndex=0;
  List<String> _choicesList = ['All', 'Warm up', 'Yoga','Biceps','Chest','Shoulder'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset("assests/images/Flexio.svg"),
                    VerticalDivider(width: 1.0),
                    InkWell(
                        onTap: (){
                          Navigator.of(context).pop();
                        },
                        child: Icon(Icons.notifications))
                  ],
                ),
                Container(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white70, width: 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Start Strong and \nSet Your Fitness\nGoals',style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                            color: Colors.white
                          ),),

                          OutlinedButton(onPressed: (){

                          },
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
                                  backgroundColor: MaterialStateProperty.all(Colors.white)
                          ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8.0,bottom: 8.0),
                                child: Text("Star Exercise",style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20
                                ),),
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
                Container(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Progress",style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),),
                    VerticalDivider(width: 1.0),
                    Text("See all",style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.w400
                    ),),
                  ],
                ),
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  child: ListViewBuilder()
                ),
                Container(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Categories",style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),),
                    VerticalDivider(width: 1.0),
                    Text("See all",style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.w400
                    ),),
                  ],
                ),
                Container(
                  height: 60,
                  child: ListView.builder(
                    itemCount: _choicesList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                              child: ChoiceChip(
                                backgroundColor: Colors.blue[50],
                                  label: Text(_choicesList[index]),
                                selected: defaultChoiceIndex==index,
                                selectedColor: Colors.blue,
                                elevation: 3,
                                showCheckmark: false,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                                onSelected: (value){
                                    setState(() {
                                      defaultChoiceIndex=value?index:defaultChoiceIndex;
                                    });
                                },
                              )),
                        );
                  }),
                ),
                Container(
                  height: 20,
                ),
                Expanded(
                    child:ListView.builder(
                      itemCount: 10,
                        itemBuilder: (BuildContext context, int index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(20.0) //                 <--- border radius here
                        ),
                        color: Colors.blue[50]
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Container(
                                child: Image.asset("assests/images/workout.png"),
                              width: 70,
                              height: 70,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Column(
                                children: [
                                  Text("Full Body Warm up",style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18
                                  ),),
                                  Text("20 Excercise .20 Min",style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500
                                  ),)
                                ],
                              ),
                            ),
                            SvgPicture.asset("assests/images/arrow_right.svg")
                          ],
                        ),
                      ),
                    ),
                  );
                }))

              ],
            ),
          ),
        ),
      ),
    );
  }
}


class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: Colors.blue[50],
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SvgPicture.asset("assests/images/ic_more.svg")
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Center(
                                    child: SizedBox(
                                      height: 50,
                                      width: 50,
                                      child:CircularProgressIndicator(
                                        value: 20,
                                        valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                                        strokeWidth: 5,
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Text("2/3",style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold
                                    ),),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 10,
                            ),
                            Text("Chest Workout",style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500
                            ),),
                            Text("15 Min Remaining",style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w400
                            ),)
                          ],
                        )
                      ],
                    )

                  ],
                ),
              ),
            );
          }),
    );
  }
}