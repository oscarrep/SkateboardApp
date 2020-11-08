import 'package:skateboard_app/board.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(SkateboardApp());
}

class SkateboardApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: customPurple,
      ),
      home: BoardPage(board),
    );
  }
}

class BoardPage extends StatelessWidget {
  final Board board;
  BoardPage(this.board);

  @override
  Widget build(BuildContext context) {
    final divider = Divider(
      color: Color.fromARGB(255, 0, 0, 0),
      thickness: 0,
      height: 0,
    );

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(flex: 6, child: _Header(board: board)),
          divider,
          Expanded(flex: 2, child: _Middle(board: board)),
          divider,
          Expanded(flex: 2, child: _Bottom(board)),
        ],
      ),
    );
  }
}

// --------------------------------------------------------------- HEADER -------------------------------

class _Header extends StatelessWidget {
  const _Header({
    Key key,
    @required this.board,
  }) : super(key: key);

  final Board board;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 2,
            child: Image.asset(
              board.boardPNG,
            ),
          ),
          Expanded(
          child: Center (
              child: Text(
                board.itemName,
                style: TextStyle(
                fontSize: 20,
            ),
          ),
          ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                board.description,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// --------------------------------------------------------------- MIDDLE -------------------------------

class _Middle extends StatelessWidget {
  const _Middle({
    Key key,
    @required this.board,
  }) : super(key: key);

  final Board board;

  Widget _text(String text) {
    final TextStyle infoStyle = TextStyle(
      fontSize: 12,
      color: Colors.grey,
    );
    return Text(text, style: infoStyle);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
          child: Padding (
            padding: EdgeInsets.fromLTRB(0,5,200,0),
              child: Text(
                board.sold,
                style: TextStyle(
                fontSize: 15,
                color: Colors.red,
            ),
          ),
          ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                board.description,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// --------------------------------------------------------------- BOTTOM -------------------------------

class _Bottom extends StatelessWidget {
  final Board board;
  _Bottom(this.board);

  _BottomRow(String label, String content) => TableRow(
        children: [
          Text(label),
          SizedBox(width: 16),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(content),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Table(
              columnWidths: {
                0: IntrinsicColumnWidth(),
                1: IntrinsicColumnWidth(),
              },
              
            ),
          ),
        ],
      ),
    );
  }
}




MaterialColor customPurple = MaterialColor(
    _customPurplePrimaryValue,
    //0xFF9F69c7, color);
    <int,Color>{
      50: Color(0xFFfaf7fc),
      100: Color(0xFFf5f0f9),
      200: Color(0xFFece1f4),
      300: Color(0xFFe2d2ee),
      400: Color(0xFFd9c3e9),
      500: Color(0xFFcfb4e3),
      600: Color(0xFFc5a5dd),
      700: Color(0xFFbc96d8),
      800: Color(0xFFb287d2),
      900: Color(0xFFa878cc),
    },
  );
int _customPurplePrimaryValue = 0xFF9F69C7;