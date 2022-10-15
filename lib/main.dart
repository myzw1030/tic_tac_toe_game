import 'package:flutter/material.dart';
import 'package:tic_tac_toe_game/ui/theme/color.dart';
import 'package:tic_tac_toe_game/utils/game_logic.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: GameScreen(),
    );
  }
}

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  String lastValue = 'x';

  Game game = Game();

  @override
  void initState() {
    super.initState();
    game.board = Game.initGameBoard();
    print(game.board);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColor.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'It\'s ${lastValue}turn'.toUpperCase(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 58.0,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(),
        ],
      ),
    );
  }
}
