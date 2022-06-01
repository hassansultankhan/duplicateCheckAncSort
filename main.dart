import 'dart:io';

void main() {
  List<int> tickets = [];
  var quitValue = null;
  print("create an integer list and Press Enter twice to Execute for result");
  int temp = 1;
  for (int i = 0; i <= temp; i++) {
    var entry = int.tryParse(stdin.readLineSync()!) ?? quitValue;
    if (entry == quitValue) {
      break;
    }
    else {
      tickets.add(entry);
      print(tickets);
      temp ++;
    }
  }
  print("without duplicate checker: $tickets\n");

  //you can do it in number of ways, the two methods i tried are either using a setter Set to uniquely set list elements.
  //or using the contain attribute for List. e.g. tickets.contains to sort duplicates.
  var duplicate = Set<int>();
  List<int> uniqueTickets = tickets.where((element) =>
      duplicate.add(element)).toList();
  
  print("list without duplication: $uniqueTickets\n");
  print("Sorted list: ${uniqueTickets..sort()}");

}