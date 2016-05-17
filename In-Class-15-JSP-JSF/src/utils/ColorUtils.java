package utils;
import java.util.Random;


public class ColorUtils
{
    private static Random gen = new Random();
    public static String randomColor()
    {
        return String.format("#%X%X%X%X%X%X", 
                    gen.nextInt(16)
                , gen.nextInt(16)
                , gen.nextInt(16)
                , gen.nextInt(16)
                , gen.nextInt(16)
                , gen.nextInt(16));
    }
}
