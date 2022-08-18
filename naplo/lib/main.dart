import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Filc Napló',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomePage(title: 'Filc Napló'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final currentLesson = "Matematika";
  final currentLessonDate = '15:00-15:45';
  final nextLesson = "Fizika";
  final nextLessonDate = "16:00-16:45";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Jelenlegi tanóra:',
                style: Theme.of(context).textTheme.headline6),
            Text('$currentLesson',
                style: Theme.of(context).textTheme.headline4),
            Text('($currentLessonDate)',
                style: Theme.of(context).textTheme.headline6),
            Text('Következő tanóra:',
                style: Theme.of(context).textTheme.headline6),
            Text('$nextLesson', style: Theme.of(context).textTheme.headline4),
            Text('($nextLessonDate)',
                style: Theme.of(context).textTheme.headline6),
          ],
        ),
      ),
    );
  }
}
