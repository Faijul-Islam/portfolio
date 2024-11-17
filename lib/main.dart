
import 'package:animation/portfolio.dart';
import 'package:flutter/physics.dart';
import 'dart:math';

import 'package:flutter/material.dart';

import 'list_view_animation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: PortfolioScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
final random=Random();
double boxHeight=100;
double boxWidth=100;
 Color boxcolor= Colors.deepPurple;
 BorderRadius borderRadius=BorderRadius.circular(8);
 void _changeBoxSize(){
   setState(() {
     boxWidth= random.nextInt(400).toDouble();
     boxHeight= random.nextInt(400).toDouble();
   });
 }

 void _changeBoxColor(){
   setState(() {
     boxcolor =Color.fromRGBO(
         random.nextInt(256), random.nextInt(256),
         random.nextInt(256), 1);
   });
 }

void _changeRadius(){
  setState(() {
    borderRadius =BorderRadius.circular(random.nextInt(80).toDouble());
  });
}
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body:Center(
        child: AnimatedContainer(
            duration: const Duration(seconds: 3),
          curve: Curves.fastOutSlowIn,
          width: boxWidth,
          height: boxHeight,
          decoration: BoxDecoration(
            color: boxcolor,
            borderRadius: borderRadius,
          ),
        ),
      ),
      bottomNavigationBar: Row(
        children: [
          IconButton(
              onPressed: _changeBoxColor,
              icon: const Icon(Icons.palette)
          ),
          IconButton(
              onPressed: _changeRadius,
              icon: const Icon(Icons.interests)
          ),
          IconButton(
              onPressed: _changeBoxSize,
              icon: const Icon(Icons.aspect_ratio)
          ),

          IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>const ListViewAnimation()));
              },
              icon: const Icon(Icons.arrow_forward_outlined)
          ),
          IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=> PortfolioScreen()));
              },
              icon: const Icon(Icons.arrow_forward_outlined)
          ),
          IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=> PortfolioScreen()));
              },
              icon: const Icon(Icons.arrow_forward_outlined)
          ),
          //PortfolioScreen
        ],
      ),
    );
  }
}



class SpringAnimationExample extends StatefulWidget {
  @override
  _SpringAnimationExampleState createState() => _SpringAnimationExampleState();
}

class _SpringAnimationExampleState extends State<SpringAnimationExample> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController.unbounded(vsync: this);
    _animation = _controller.drive(
      Tween<double>(begin: 0, end: 300), // Define the range of motion
    );

    // Run the spring simulation
    _startSpringAnimation();
  }

  void _startSpringAnimation() {
    final simulation = SpringSimulation(
      SpringDescription(
        mass: 1,
        stiffness: 100, // Higher value = less elasticity
        damping: 10,    // Higher value = quicker stop
      ),
      0, 300, 0,  // Start position, end position, initial velocity
    );

    _controller.animateWith(simulation);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Spring Animation")),
      body: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Positioned(
            top: _animation.value,
            left: 150,
            child: Container(width: 50, height: 50, color: Colors.blue),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}



class DraggableExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Draggable Physics")),
      body: Center(
        child: Draggable(
          child: Container(width: 100, height: 100, color: Colors.blue),
          feedback: Container(width: 100, height: 100, color: Colors.blue.withOpacity(0.7)),
          childWhenDragging: Container(width: 100, height: 100, color: Colors.grey),
          onDragEnd: (details) {
            print("Drag ended with offset: ${details.offset}");
          },
        ),
      ),
    );
  }
}


class FrictionAnimationExample extends StatefulWidget {
  @override
  _FrictionAnimationExampleState createState() => _FrictionAnimationExampleState();
}

class _FrictionAnimationExampleState extends State<FrictionAnimationExample> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController.unbounded(vsync: this);
    _animation = _controller.drive(
      Tween<double>(begin: 0, end: 300),
    );

    _startFrictionAnimation();
  }

  void _startFrictionAnimation() {
    final simulation = FrictionSimulation(0.1, 0, 500); // Friction coefficient, start velocity
    _controller.animateWith(simulation);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Friction Animation")),
      body: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Positioned(
            left: _animation.value,
            top: 150,
            child: Container(width: 50, height: 50, color: Colors.red),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}


class PhysicalModelExample extends StatefulWidget {
  @override
  _PhysicalModelExampleState createState() => _PhysicalModelExampleState();
}

class _PhysicalModelExampleState extends State<PhysicalModelExample> {
  double _elevation = 2.0;

  void _toggleElevation() {
    setState(() {
      _elevation = _elevation == 2.0 ? 20.0 : 2.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drop Effect Animation")),
      body: Center(
        child: GestureDetector(
          onTap: _toggleElevation,
          child: AnimatedPhysicalModel(
            duration: Duration(milliseconds: 500),
            shape: BoxShape.rectangle,
            color: Colors.blue,
            shadowColor: Colors.black,
            elevation: _elevation,
            child: Container(width: 100, height: 100),
          ),
        ),
      ),
    );
  }
}



