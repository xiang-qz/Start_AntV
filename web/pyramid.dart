import 'dart:html';
import 'dart:js';

void main(List<String> args) {
  DivElement dartStatus = querySelector('#dart-status') as DivElement;
  dartStatus.text = 'Dart is running!';

  var myData = JsObject.jsify([
    {'x': '60', 'y': '60' 'name' '1945\n victory'},
    {'x': '60', 'y': '60' 'name' '1945\n victory'},
    {'x': '60', 'y': '60' 'name' '1945\n victory'},
    {'x': '60', 'y': '60' 'name' '1945\n victory'},
  ]);

  var chart = context['chart'];
  chart.callMethod('source', [myData]);
  chart.callMethod('render', []);
}
