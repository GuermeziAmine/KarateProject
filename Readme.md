
This project is an automated API testing framework using **Karate DSL**, integrated with **GitHub Actions** and **ALM Octane**.

## Project Structure

*   `src/test/java/runners/`: Contains the `TestRunner.java` class to execute tests via JUnit.
*   `src/test/resources/features/`: Contains the `.feature` files  with API test scenarios.
*   `.github/workflows/`: Contains the CI/CD pipelines:
    *   `Tests.yml`: Runs Maven tests on every push.
    *   `OctaneIntegration.yml`: Sends test results to ALM Octane.
*   `pom.xml`: Project configuration and dependencies .

##  How to Run Locally

1.  **Prerequisites**: Ensure you have **JDK 17+** and **Maven** installed.
2.  **Run all tests**:

    mvn clean test

3.  **View Reports**: After execution, open:
    `target/karate-reports/karate-summary.html`

##  CI/CD Integration

*   **GitHub Actions**: Tests are automatically triggered on every `push` to the `main` branch.
*   **ALM Octane**: Test results are automatically injected into the **Quality** module under the **Pipelines** section.
*   **Remote Execution**: Pipelines can be triggered directly from the ALM Octane UI using the "Run" button.


