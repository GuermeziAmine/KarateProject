package runners;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;

class AppTest {

    @Test
    void testParallel() {
        // On utilise Runner.path au lieu de Karate.run
        Results results = Runner.path("classpath:features")
                .tags("~@ignore") // On conserve ton filtre de tags
                .parallel(5); // Exécute 5 tests en même temps (accélère ton pipeline !)

        // C'est cette ligne qui fait échouer le test SI ET SEULEMENT SI 
        // Karate a fini de tout exécuter et de générer karate-summary.html
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }

}