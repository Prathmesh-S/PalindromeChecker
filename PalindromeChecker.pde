public void setup()
{
  //String lines[] = loadStrings("palindromes.txt");
  String lines[] = {"test","rotator","rewriter","nurses run","Madam, I'm Adam!","A Man! A Plan! A Canal! Panama!"};
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //word is original
  //word2 is reversed
  String word2 = new String();
  word2 = reverse(word);
  word = word.toLowerCase(); //makes it lower case
  word2 = word2.toLowerCase();
  word = noSpace(word);
  word2 = noSpace(word2);
   if (word.equals(word2)) {
  return(true);
  }
  return false;
}
public String reverse(String str){
    String answer = new String();
  for (int i = str.length();i>0;i--) {
    answer = answer + str.substring(i-1,i);
  }
  return(answer);
}

public String noSpace(String str) {
String answer = new String();
for (int i = 0; i<str.length();i++) {
if (Character.isLetter(str.charAt(i))==true) {
  answer = answer + str.substring(i,i+1);
  }
}

return(answer);
}
