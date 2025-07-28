package de.rjst.backend.playwright;

import com.microsoft.playwright.junit.Options;
import com.microsoft.playwright.junit.OptionsFactory;

public class BrowserConfig {

    private static final boolean HEADLESS = true;

    public static class Chromium implements OptionsFactory {
        @Override
        public Options getOptions() {
            return new Options()
                    .setHeadless(HEADLESS)
                    .setBrowserName("chromium");
        }
    }

    public static class Firefox implements OptionsFactory {
        @Override
        public Options getOptions() {
            return new Options()
                    .setHeadless(HEADLESS)
                    .setBrowserName("firefox");
        }
    }

    public static class Webkit implements OptionsFactory {
        @Override
        public Options getOptions() {
            return new Options()
                    .setHeadless(HEADLESS)
                    .setBrowserName("webkit");
        }
    }

}
