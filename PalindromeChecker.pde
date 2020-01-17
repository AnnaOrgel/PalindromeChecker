public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  return onlyLetters(noSpaces(word.toLowerCase())).equals(reverse(word));
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length()-1; i>=0; i--){
      sNew+=str.substring(i, i+1);
    }
    return onlyLetters(noSpaces(sNew.toLowerCase()));
}
public String noSpaces(String sWord){
  String spaceless = "";
  for(int i=0; i<sWord.length(); i++){
    if(!sWord.substring(i, i+1).equals(" ")){
      spaceless+=sWord.substring(i, i+1);
    }
  }return spaceless;
}
public String onlyLetters(String sString){
  String letters = "";
  for(int i=0; i<sString.length(); i++){
    if(Character.isLetter(sString.charAt(i))){
      letters+=sString.charAt(i);
    }
  }return letters;
}
