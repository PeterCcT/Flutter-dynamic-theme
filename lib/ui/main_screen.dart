import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_tdd/controllers/theme_controller.dart';
import 'package:provider/provider.dart';
import '../controllers/main_screen_controller.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final controller = MainScreenController();
  ThemeController themeController;
  @override
  Widget build(BuildContext context) {
    themeController = Provider.of<ThemeController>(context);
    return Scaffold(
      body: body,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        actions: [
          IconButton(
            icon: Icon(
              Icons.wb_sunny,
              color: themeController.isDarkTheme ? Colors.white : Colors.black,
            ),
            onPressed: themeController.changeThemeLigth,
          ),
        ],
      ),
    );
  }

  Widget get body => Center(
        heightFactor: 5.2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Switch me',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(height: 16),
            Stack(
              alignment: Alignment.centerLeft,
              children: [
                Observer(
                  builder: (_) {
                    return Container(
                      height: 100,
                      width: 250,
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: !themeController.isDarkTheme
                              ? [
                                  BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 1,
                                    blurRadius: 2,
                                  ),
                                ]
                              : null),
                    );
                  },
                ),
                onOffSwitcherButton,
              ],
            ),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                pickSwitcherBackgroundColor,
                pickSwitcherButtonColor,
              ],
            )
          ],
        ),
      );

  RaisedButton get pickSwitcherBackgroundColor => RaisedButton(
        onPressed: () => alertDialogPickColor(true),
        child: Text(
          'Pick a swithcer background color',
          style: Theme.of(context).textTheme.button,
        ),
      );

  RaisedButton get pickSwitcherButtonColor => RaisedButton(
        onPressed: () => alertDialogPickColor(false),
        child: Text(
          'Pick a swithcer button color',
          style: Theme.of(context).textTheme.button,
        ),
      );

  Observer get onOffSwitcherButton => Observer(
        builder: (context) => AnimatedPositioned(
          duration: Duration(milliseconds: 600),
          curve: Curves.easeInOutSine,
          left: controller.isSwitched ? 156 : 0,
          right: controller.isSwitched ? 0 : 156,
          child: GestureDetector(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.circular(100),
                boxShadow: themeController.primaryColor == Colors.white
                    ? [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 1,
                          blurRadius: 2,
                        )
                      ]
                    : null,
              ),
            ),
            onTap: controller.turnSwitch,
          ),
        ),
      );

  Future<Widget> alertDialogPickColor(bool isBackground) => showDialog(
        context: context,
        child: AlertDialog(
          title: Text(
            'Select some color for the switcher ${isBackground ? 'background' : 'button'}',
            style: Theme.of(context).textTheme.headline6,
          ),
          content: Table(
            children: [
              tableRowWithPickColor(
                isBackground: isBackground,
                colorsList: <Color>[
                  Colors.red,
                  Colors.green,
                  Colors.blue,
                ],
              ),
              tableRowSpace,
              tableRowWithPickColor(
                isBackground: isBackground,
                colorsList: <Color>[
                  Colors.deepPurple,
                  Colors.white,
                  Colors.amber,
                ],
              )
            ],
          ),
          actions: [
            FlatButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Cancel'),
            )
          ],
        ),
      );

  TableRow tableRowWithPickColor({
    @required bool isBackground,

    ///Max of 3 Colors
    @required List<Color> colorsList,
  }) =>
      colorsList.length == 3
          ? TableRow(
              children: [
                for (Color color in colorsList)
                  pickColorContainer(isBackground, color),
              ],
            )
          : throw new Exception('colorsList should have an max of 3 Colors');

  GestureDetector pickColorContainer(bool isBackground, Color color) =>
      GestureDetector(
        child: Container(
          margin: EdgeInsets.only(right: 10),
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: color,
            boxShadow: [
              BoxShadow(
                color: color == Colors.white ? Colors.grey : color,
                spreadRadius: 1,
              ),
            ],
            shape: isBackground ? BoxShape.rectangle : BoxShape.circle,
            borderRadius: isBackground
                ? BorderRadius.all(
                    Radius.circular(100),
                  )
                : null,
          ),
        ),
        onTap: () {
          themeController.changeThemeColor(isBackground, color);
          Navigator.of(context).pop();
        },
      );

  TableRow get tableRowSpace => TableRow(
        children: [
          for (int i = 0; i < 3; i++) SizedBox(height: 10),
        ],
      );
}
