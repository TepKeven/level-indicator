# Level Indicator

Level Indicator for flutter offer a flexible progressbar with changes to color

## Installation 

1. Add the latest version of package to your pubspec.yaml and run (dart pub get):
    yaml
dependencies:
    level_indicator: ^0.0.1

2. Import the package and use it in your flutter application.
    dart
import 'package:level_indicator/level_indicator.dart';

## Example
There are a number of properties you can modify include:

- width
- height
- top
- right
- bottom
- left
- borderRadius
- direction
- reverse
- itemCount
- acitveItem
- activeColor
- inactiveColor

<hr>

<table>
<tr>
<td>

class LevelsIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Level Indicator"),
        titleTextStyle: TextStyle(fontSize: 20),
        centerTitle: true,
      ),
      body: LevelIndicator(
        width: 100,
        height: 100,
        acitveItem: 1,
        activeColor: Colors.amber,
        left: 30,
        direction: Axis.horizontal,
        inactiveColor: Colors.blue,
        itemCount: 3,
        reverse: true,
        borderRadius: 0,
      ),
    );
  }
}

