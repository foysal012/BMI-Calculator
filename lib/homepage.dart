import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color backclr = Color(0xff0F1331);

  bool ismale = true;
  int weight = 74;
  int age = 19;
  int height = 183;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        backgroundColor: Color(0xff12153A),
        centerTitle: true,
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(
            letterSpacing: 1,
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(12),
                color: backclr,
                child: Row(children: [
                  Expanded(
                    flex: 5,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          ismale = true;
                        });
                      },
                      child: Card(
                        shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                        color: ismale == true
                            ? Colors.teal.withOpacity(0.5)
                            : Color(0xff282C4F),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              color: Colors.white,
                              size: 70,
                            ),
                            Text(
                              "MALE",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                                fontWeight: FontWeight.w300,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    flex: 5,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          ismale = false;
                        });
                      },
                      child: Card(
                        shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                        color: ismale == false
                            ? Colors.teal.withOpacity(0.5)
                            : Color(0xff282C4F),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              color: Colors.white,
                              size: 70,
                            ),
                            Text(
                              "FEMALE",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                                fontWeight: FontWeight.w300,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ]),
              ),
            ),
            Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.all(14),
                  color: backclr,
                    child: Card(
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                          color: Color(0xff141A3C),
                          child: Row(
                            children: [
                              Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                    Text(
                              "HEIGHT",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                             
                             Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                              "$height",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2,
                              ),
                            ),
                            Text("cm",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                              ],
                             ),

                             SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 15.0,
                                ),
                                overlayShape: RoundSliderOverlayShape(
                                  overlayRadius: 30.0,
                                ),
                                thumbColor: Colors.pink,
                                overlayColor: Colors.grey,
                                activeTickMarkColor: Colors.white,
                                inactiveTickMarkColor: Colors.red,
                              ), 
                              child: Slider(
                                min: 50,
                                max: 210,
                                value: height.toDouble(),
                                onChanged: (double value){
                                  setState(() {
                                    height = value.toInt();
                                  });
                                },
                              ),
                              )

                              ],
                            ),
                          ),
                            ],
                          )
                    ),

                  
                ),
                ),
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(12),
                color: backclr,
                child: Row(children: [
                  Expanded(
                    flex: 5,
                    child: Card(
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      color: Color(0xff13193B),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "WEIGHT",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            "$weight",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FloatingActionButton(
                                backgroundColor: Color(0xff212747),
                                onPressed: () {
                                  setState(() {
                                    if (weight > 0) {
                                      weight--;
                                    }
                                  });
                                },
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.grey,
                                ),
                              ),
                              FloatingActionButton(
                                backgroundColor: Color(0xff212747),
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child: Icon(
                                  Icons.add,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    flex: 5,
                    child: Card(
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      color: Color(0xff13193B),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "AGE",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            "$age",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FloatingActionButton(
                                backgroundColor: Color(0xff212747),
                                onPressed: () {
                                  setState(() {
                                    if (age > 10) {
                                      age--;
                                    }
                                  });
                                },
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.grey,
                                ),
                              ),
                              FloatingActionButton(
                                backgroundColor: Color(0xff212747),
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: Icon(
                                  Icons.add,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ]),
              ),
            ),
            Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {

                    var heightSquare = height * height / 10000;
                    var result = weight / heightSquare;
                    print("Your BMI is ${result}");

                    showDialog(context: context, builder: (context){
                      return AlertDialog(
                        title: Text("BMI RESULT"),
                        content: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("Your BMI is: ${result.toStringAsFixed(5)}"),
                            Text("${result < 18.5 ? "You are Under_weight, Please eat more & more"
                            : 18.5 <= result && result <= 24.5 ? "You are Perfect" 
                            : "You are Over_weight, Please no eat more & more" }")
                          ],
                        ),
                      );
                    });
                  },
                  child: Container(
                    //margin: EdgeInsets.only(top: 5),
                    color: Colors.pink,
                    child: Center(
                        child: Text(
                      "CALCULATE YOUR BMI",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          wordSpacing: 2,
                          letterSpacing: 1,
                          fontSize: 18),
                    )),
                  ),
                )
                ),
          ],
        ),
      ),
    );
  }
}
