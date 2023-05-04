main() {
  int day = 8;

  switch (day) {
    case 1:
      print('Saturday');
      break;
    case 2:
      print('Sunday');
      break;
    case 3:
      print('Monday');
      break;
    case 4:
      print('Tuesday');
      break;
    case 5:
      print('Wednesday');
      break;
    case 6:
      print('Thursday');
      break;
    case 7:
    case 8:
      print('Friday');
      break;
    default:
      print('Wrong day!');
  }
}