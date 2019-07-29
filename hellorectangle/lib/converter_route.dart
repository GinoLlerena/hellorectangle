import 'package:flutter/material.dart';
import 'unit.dart';


class ConverterRoute extends StatefulWidget {
  final String name;
  final Color color;
  final List<Unit> units;

  const ConverterRoute({
    @required this.name,
    @required this.color,
    @required this.units,
  }) : assert(name != null),
        assert(color != null),
        assert(units != null);

  @override
  createState() => _ConverterRouteState();
}

class _ConverterRouteState extends State<ConverterRoute> {

  Widget getContainer(BuildContext context, Unit unit) {
   return Container(
     color: Colors.greenAccent,
     height: 400.0,
     width: 300.0,
     child: Padding(
       padding: const EdgeInsets.all(8.0),
       child: Column(
         children: <Widget>[
           Text(
             unit.name,
             style: Theme.of(context).textTheme.headline,
           ),
           Text(
             'Conversion: ${unit.conversion}',
             style: Theme.of(context).textTheme.subhead,
           ),
         ],
       ),
     ),
   );
 }

  
  @override
  Widget build(BuildContext context) {

    final unitWidgets = widget.units.map((Unit unit) {
      return getContainer(context, unit);
    }).toList();

    return ListView(
      children: unitWidgets,
    );

  }
}
