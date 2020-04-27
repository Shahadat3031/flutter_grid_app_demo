import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pigment/pigment.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //Color backgroundColor = Pigment.fromString("#f8f8f8");
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'GridView Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> widgetList = ["সকল অর্ডার", "অর্ডার সংখ্যা", "রিওয়ার্ড",
    "অ্যাকাউন্ট ব্যালেন্স", "সাহায্য", "সেটিংস"];
  List<String> widgetImageList = [
    'assets/images/add.svg',
    'assets/images/add_circle_outline.svg',
    'assets/images/alarm_clock.svg',
    'assets/images/alert_icon.svg',
    'assets/images/all_order.svg',
    'assets/images/call.svg'];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:Container(
        color: Pigment.fromString("#f8f8f8"),
        margin: EdgeInsets.only(top: 16.0),
        padding: EdgeInsets.only(left: 24.0, right: 24.0, bottom: 20.0),
        child: GridView.count(crossAxisCount: 2,
           childAspectRatio: (3/2),
           crossAxisSpacing: 16,
           mainAxisSpacing: 16,
           children: List.generate(6, (index){
            return Container(
              //margin: EdgeInsets.only(top: 16.0),
              child: InkResponse(
                child: Card(
                  color: Pigment.fromString("#f5f7f9"),
                  elevation: 6.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)
                  ),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 12.0),
                            height: 40.0,
                            width: 40.0,
                            child: SvgPicture.asset(widgetImageList[index])),
                        Container(
                          //Text Icon margin
                            margin: EdgeInsets.only(top: 10.0),
                            child: Text(widgetList[index],
                            style: TextStyle(
                                color:  const Color(0xe60d0d0e),
                                fontWeight: FontWeight.w400,
                                fontFamily: "NotoSansBengali",
                                fontStyle:  FontStyle.normal,
                                fontSize: 14.0
                            ),
                            textAlign: TextAlign.center,)
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: (){
                  print(index);
                },
              ),
            );
          })
        ),
      )
    );
  }
}
