import 'dart:io';
void drawHangman(int l) {
  if(l == 6) {
   print("|----------");
   print("|");
   print("|");
   print("|");
   print("|");
   print("|");
   print("|");
  }
  else if(l == 5) {
   print("|----------");
   print("|    O");
   print("|");
   print("|");
   print("|");
   print("|");
   print("|");
  }
  else if(l == 4) {
   print("|----------");
   print("|    O");
   print("|    |");
   print("|");
   print("|");
   print("|");
   print("|");
  }
  else if(l == 3) {
   print("|----------");
   print("|    O");
   print("|   -|");
   print("|");
   print("|");
   print("|");
   print("|");
  }
  else if(l == 2) {
   print("|----------");
   print("|    O");
   print("|   -|-");
   print("|");
   print("|");
   print("|");
   print("|");
  }
  else if(l == 1) {
   print("|----------");
   print("|    O");
   print("|   -|-");
   print("|   /");
   print("|");
   print("|");
   print("|");
  }
  else{
   print("|----------");
   print("|    |");
   print("|    O");
   print("|   -|-");
   print("|   /|\\");
   print("|");
   print("|");
   print("|");
  }
 }

void main() {
  String secretword = 'mcy123';
  String lettergussed = "";
  int failurecount =6;

  while ( failurecount > 0){
    print('Enter your guess letter :');
    String? guess = stdin.readLineSync()!.toLowerCase();
    if( secretword.contains(guess) ){
      print('Correct! There is one or more $guess in the secret word.');
    } else{
      failurecount -= 1 ;
      print('InCorrect. there is no $guess in the secret word.  $failurecount turns left.');
      
    }
    lettergussed = lettergussed + guess;
    int wronglettercount =0;
    for( int i = 0  ; i < secretword.length ; i++){
      if( lettergussed.contains(secretword[i]) ){
        print(secretword[i]);
      }else{
        print('_');
          wronglettercount += 1;
      }
    } 
    if (wronglettercount == 0){
      print('Congratulations! The secret word was $secretword. You won!');
      break;
    }
  drawHangman(failurecount);
    }
      if (failurecount == 0){
      print('Sorry, you didn\'t win it this time. Try again.');
    }
    }

    