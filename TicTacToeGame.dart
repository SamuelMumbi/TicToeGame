import 'dart:io';

void main(List<String> args) {
  String player = "X";
  var gamedashboard = [
    ["", "", ""],
    ["", "", ""],
    ["", "", ""]
  ];
  displaydashboard(gamedashboard);
  play(gamedashboard, player);
}

void play(List gamedashboard, String player) {
  print("Player $player select the row(0-2):");
  var row = int.parse(stdin.readLineSync()!);
  print("Player $player select col(0-2):");
  var col = int.parse(stdin.readLineSync()!);
  gamedashboard[row][col] = player;
  checkwinner(gamedashboard, player);
}

void checkwinner(List gamedashboard, String player) {
  displaydashboard(gamedashboard);
  if (gamedashboard[0][0] == gamedashboard[0][1] &&
      gamedashboard[0][1] == gamedashboard[0][2] &&
      gamedashboard[0][0].toString().isNotEmpty) {
    displaywinner(player);
  } else if (gamedashboard[1][0] == gamedashboard[1][1] &&
      gamedashboard[1][1] == gamedashboard[1][2] &&
      gamedashboard[1][0].toString().isNotEmpty) {
    displaywinner(player);
  } else if (gamedashboard[2][0] == gamedashboard[2][1] &&
      gamedashboard[2][1] == gamedashboard[2][2] &&
      gamedashboard[2][0].toString().isNotEmpty) {
    displaywinner(player);
  } else if (gamedashboard[0][0] == gamedashboard[1][0] &&
      gamedashboard[1][0] == gamedashboard[2][0] &&
      gamedashboard[0][0].toString().isNotEmpty) {
    displaywinner(player);
  } else if (gamedashboard[0][1] == gamedashboard[1][1] &&
      gamedashboard[1][1] == gamedashboard[2][1] &&
      gamedashboard[0][1].toString().isNotEmpty) {
    displaywinner(player);
  } else if (gamedashboard[0][2] == gamedashboard[1][2] &&
      gamedashboard[1][2] == gamedashboard[2][2] &&
      gamedashboard[0][2].toString().isNotEmpty) {
    displaywinner(player);
  } else if (gamedashboard[0][2] == gamedashboard[1][1] &&
      gamedashboard[1][1] == gamedashboard[2][0] &&
      gamedashboard[0][2].toString().isNotEmpty) {
    displaywinner(player);
  } else if (gamedashboard[0][0] == gamedashboard[1][1] &&
      gamedashboard[1][1] == gamedashboard[2][2] &&
      gamedashboard[0][0].toString().isNotEmpty) {
    displaywinner(player);
  } else {
    if (player == "X") {
      player = "O";
    } else {
      player = "X";
    }
    play(gamedashboard, player);
  }
}

void displaydashboard(List gamedashboard) {
  print(
      ' ${gamedashboard[0][0]}  |  ${gamedashboard[0][1]} | ${gamedashboard[0][2]} ');
  print('---+---+---');
  print(
      ' ${gamedashboard[1][0]}  |  ${gamedashboard[1][1]} | ${gamedashboard[1][2]} ');
  print('---+---+---');
  print(
      ' ${gamedashboard[2][0]}  |  ${gamedashboard[2][1]} | ${gamedashboard[2][2]} ');
}

// display winner
void displaywinner(String player) {
  print("Player $player is the winner");
}
