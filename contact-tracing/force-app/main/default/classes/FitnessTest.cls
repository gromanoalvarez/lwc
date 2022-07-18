@isTest
public class FitnessTest {
	@isTest
    public static void calculateBMITest(){
        final Decimal WEIGHT =  80;
        final Decimal HEIGHT =  2;
		final Decimal RESULT_EXPECTED = 20;
        Decimal resultReal;
        
        resultReal =  Fitness.calculateBMI(WEIGHT, HEIGHT);
               // Decimal result = weight/(height*height);
		System.assertEquals(RESULT_EXPECTED, resultReal);
    }
    
        	@isTest
    public static void calculateBMINegativeTest(){
        final Decimal WEIGHT =  10;
        final Decimal HEIGHT =  2;
		final Decimal RESULT_EXPECTED = 2;
        Decimal resultReal;
        
        resultReal =  Fitness.calculateBMI(WEIGHT, HEIGHT);
        System.debug(resultReal);
	System.assertNotEquals(RESULT_EXPECTED, resultReal);
    }
    
    @isTest
    public static void calculatePaceTest(){
        final Decimal DISTANCE =  10000;
        final Decimal MINUTES =  120;
		final Decimal RESULT_EXPECTED = 5000;
        Decimal resultReal;
        
        resultReal =  Fitness.calculatePace(DISTANCE, MINUTES);
		System.assertEquals(RESULT_EXPECTED, resultReal);        
    }
    
        @isTest
    public static void calculatePaceNegativeTest(){
        final Decimal DISTANCE =  10000;
        final Decimal MINUTES =  120;
		final Decimal RESULT_EXPECTED = 5000;
        Decimal resultReal;
        
        resultReal =  Fitness.calculatePace(DISTANCE, MINUTES);
		System.assertNotEquals(RESULT_EXPECTED, resultReal);        
    }
}