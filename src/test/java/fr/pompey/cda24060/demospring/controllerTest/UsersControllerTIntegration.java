package fr.pompey.cda24060.demospring.controllerTest;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.webmvc.test.autoconfigure.AutoConfigureMockMvc;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultMatcher;

import static org.hamcrest.Matchers.is;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@SpringBootTest
@AutoConfigureMockMvc
public class UsersControllerTIntegration {

    @Autowired
    private MockMvc mockMvc;

    /**
     * Methode test getUsers()
     * @throws Exception
     */
    @Test
    public void getUsersTest() throws Exception {
        performGetAllUsersRequest();
    }

    /**
     * Methode de controle du prenom du premier users "Julien"
     * @throws Exception
     */
    private void performGetAllUsersRequest() throws Exception {
        mockMvc.perform(get("/all-users"))
                .andExpect(status().isOk())
                .andExpect((ResultMatcher) jsonPath("$[0].firstname", is("Julien")));
    }
}
