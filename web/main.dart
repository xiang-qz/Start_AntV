import 'dart:html';
import 'dart:js';

void main(List<String> args) {
  DivElement dartStatus = querySelector('#dart-status') as DivElement;
  dartStatus.text = 'Dart is running!';

  var myData = JsObject.jsify([
    {'type': '玫瑰', 'value': 35},
    {'type': '百合', 'value': 25},
    {'type': '郁金香', 'value': 15},
    {'type': '满天星', 'value': 20},
    {'type': '其他', 'value': 5},
  ]);

  var shape = context['shape'];
  shape.callMethod('source', [myData]);
  shape.callMethod('render', []);
}
