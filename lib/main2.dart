//Stack -> Challenge #2
import 'stack.dart';

void main(){

var string1 = '(hello world';
var string2 = 'h((e))llo (world)()';

bool checkParantheses(String text){
    var stack = Stack<int>();
    final open = '('.codeUnitAt(0);
    final close = ')'.codeUnitAt(0);

    for (int codeUnit in text.codeUnits){
        if (codeUnit == open){
            stack.push(codeUnit);
        }else if (codeUnit == close) {
            if (stack.isEmpty){
                return false;
            }else{
                stack.pop();
            }
        }
    }
    return stack.isEmpty;
}

print(checkParantheses(string1));
print(checkParantheses(string2));
}

