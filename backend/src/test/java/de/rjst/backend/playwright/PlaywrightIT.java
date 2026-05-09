package de.rjst.backend.playwright;

import static com.microsoft.playwright.assertions.PlaywrightAssertions.assertThat;

import com.microsoft.playwright.Page;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.web.server.LocalServerPort;

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
public abstract class PlaywrightIT {

    @LocalServerPort
    private int port;

    @Test
    void test(Page page) {
        page.navigate("http://localhost:" + port);
        assertThat(page).hasTitle("React + Spring Boot");
    }
}
