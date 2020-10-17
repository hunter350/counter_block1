import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'CounterText.dart';
import 'SecondScreen.dart';
import 'block.dart';
import 'main.dart';

class ThreeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(title: Text('ThreeScreen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CounterText(),
            RaisedButton(
              child: const Text(
                'FirstScreen',
                style: TextStyle(fontSize: 30),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CounterPage()),
                );
              },
              color: Colors.lightBlueAccent,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
              elevation: 8.0,
            ),
            RaisedButton(
              child: const Text(
                'SecondScreen',
                style: TextStyle(fontSize: 30),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondScreen()),
                );
              },
              color: Colors.lightBlueAccent,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
              elevation: 8.0,
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0),
            child: FloatingActionButton(
              heroTag: null,
              child: Icon(Icons.add),
              onPressed: () {
                counterBloc.add(CounterEvent.increment);
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0),
            child: FloatingActionButton(
              heroTag: null,
              child: Icon(Icons.remove),
              onPressed: () {
                counterBloc.add(CounterEvent.decrement);
              },
            ),
          ),
        ],
      ),
    );
  }
}
