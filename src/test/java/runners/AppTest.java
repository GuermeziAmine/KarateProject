package runners;

import com.intuit.karate.junit5.Karate;

class AppTest {

    @Karate.Test
    Karate runTests() {
        // Ajout du 's' à features pour correspondre à votre dossier
        return Karate.run("classpath:features"); 
    }
}
