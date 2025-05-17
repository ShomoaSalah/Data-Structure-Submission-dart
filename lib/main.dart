//Stack -> Challenge #1

import 'stack.dart';


void main(){

//Solution #1
final myStack = Stack<String>();
myStack.push('AA');
myStack.push('BB');
myStack.push('CC');

print(myStack); // print list befor reverse

while (myStack.isNotEmpty) {
    print(myStack.pop()); // print in reverse
} 


//Solution #2 
List<String> myList = ['A','B','C','D'];

void printInReverse<E>(List<E> list){
    var stack = Stack<E>();

    for (E value in list){
        stack.push(value);
    }

    while (stack.isNotEmpty){
        print(stack.pop());
    }
}
printInReverse(myList);

}

    

