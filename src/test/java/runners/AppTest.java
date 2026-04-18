package runners;

import com.intuit.karate.junit5.Karate;

class AppTest {

    @Karate.Test
    Karate runTests() {
        return Karate.run("classpath:features").tags("~@ignore"); 
    }
  
    @Karate.Test
    Karate testTradeIn() {
        
        return Karate.run("classpath:features/omni-DealerLocator.feature");
    }
 
}