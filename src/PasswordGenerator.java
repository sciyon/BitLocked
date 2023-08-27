import java.util.Random;

public class PasswordGenerator {
    private static String capitalLetters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    private static String smallLetters = "abcdefghijklmnopqrstuvwxyz";
    private static String specialChars = "!@#$";
    private static String numbers = "1234567890";

    private static String[] allCharsArr = {capitalLetters, smallLetters, specialChars, numbers};
    private static String allChars = capitalLetters + smallLetters + specialChars + numbers;
    private static Random random = new Random();

    public String generatePassword(int length){
        char[] generatedPasswordArr = new char[length];

        for(int i = 0; i < allCharsArr.length; i++){
            generatedPasswordArr[i] = allCharsArr[i].charAt(random.nextInt(allCharsArr[i].length()));
        }

        for(int j = allCharsArr.length; j < length; j++){
            generatedPasswordArr[j] = allChars.charAt(random.nextInt(allChars.length()));
        }

        return toString(generatedPasswordArr);
    }

    private static String toString(char[] arr){
        String parsed = "";

        for(int i = 0; i < arr.length; i++){
            parsed = parsed + arr[i];
        }

        return parsed;
    }
}
