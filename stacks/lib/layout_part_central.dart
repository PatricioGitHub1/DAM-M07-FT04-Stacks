import 'package:cupertino_base/widget_popover.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app_data.dart';

class LayoutPartCentral extends StatefulWidget {
      const LayoutPartCentral({super.key});

      @override
      LayoutPartCentralState createState() => LayoutPartCentralState();
}

class LayoutPartCentralState extends State<LayoutPartCentral> {
      // Key para el PopOver
      final GlobalKey buttonKey = GlobalKey();
      // Variable del color
      Color textColor = Colors.black;

      @override
      Widget build(BuildContext context) {
            AppData appData = Provider.of<AppData>(context);

            return CupertinoPageScaffold(
                  navigationBar: CupertinoNavigationBar(
                  leading: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                              CupertinoButton(
                                    padding: const EdgeInsets.all(0.0),
                                    onPressed: appData.toggleSidebarLeft,
                                    child: Icon(
                                          CupertinoIcons.sidebar_left,
                                          color: appData.isSidebarLeftVisible
                                                ? CupertinoColors.activeBlue
                                                : CupertinoColors.black,
                                          size: 24.0,
                                          semanticLabel: 'Text to announce in accessibility modes',
                                    )),
                                    const SizedBox(width: 16),
                        ],
                    ),
                    // Botton para el PopOver
                    middle: CupertinoButton(
                      key: buttonKey,
                      padding: const EdgeInsets.all(0.0),
                      onPressed: () {
                        WidgetPopover.showPopover(
                            context: context,
                            key: buttonKey,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      print("Opció 1 premuda");
                                      setState(() {
                                        textColor = Colors.black;
                                      });
                                      WidgetPopover.hidePopover();
                                    },
                                    child: Text('Negre'),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      print("Opció 2 premuda");
                                      setState(() {
                                        textColor = Colors.red;
                                      });
                                      WidgetPopover.hidePopover();
                                    },
                                    child: Text('Vermell'),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      print("Opció 3 premuda");
                                      setState(() {
                                        textColor = Colors.green;
                                      });
                                      WidgetPopover.hidePopover();
                                    },
                                    child: Text('Verd'),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      print("Opció 4 premuda");
                                      setState(() {
                                        textColor = Colors.blue;
                                      });
                                      WidgetPopover.hidePopover();
                                    },
                                    child: Text('Blau'),
                                  ),
                                ],
                              ),
                            ));
                      },
                      child: const Icon(
                        CupertinoIcons.settings,
                        color: CupertinoColors.black,
                        size: 24.0,
                        semanticLabel: 'Text to announce in accessibility modes',
                      ),
                    ),
                    
                    // Boton para right side
                    trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                              CupertinoButton(
                                    padding: const EdgeInsets.all(0.0),
                                    onPressed: appData.toggleSidebarRight,
                                    child: Icon(
                                          CupertinoIcons.sidebar_left,
                                          color: appData.isSidebarRightVisible
                                                ? CupertinoColors.activeBlue
                                                : CupertinoColors.black,
                                          size: 24.0,
                                          semanticLabel: 'Text to announce in accessibility modes',
                                    )),
                                    const SizedBox(width: 16),
                        ],
                    ),
        ),
        child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Central", style: TextStyle(
                        color: textColor
                      ))
                    ],
              ),
        ));

      }
}
