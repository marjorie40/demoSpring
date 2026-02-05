package fr.pompey.cda24060.demospring;


import jakarta.annotation.PostConstruct;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Component;

@SpringBootApplication
public class DemoSpringApplication {

    public static void main(String[] args) {
        SpringApplication.run(DemoSpringApplication.class, args);
    }

//    @Component
//    public class StartupCheck {
//
//        @PostConstruct
//        public void check() {
//            System.out.println(">>> CONTEXTE WEB ACTIF <<<");
//        }
//    }

}
