package fr.pompey.cda24060.demospring.controllerTest;



import fr.pompey.cda24060.demospring.service.UsersService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.webmvc.test.autoconfigure.WebMvcTest;
import org.springframework.test.context.bean.override.mockito.MockitoBean;
import org.springframework.test.web.servlet.MockMvc;

import java.util.List;

import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@WebMvcTest
public class UsersControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @MockitoBean
    private UsersService usersService;

    @Test
    public void getUsersTest() throws Exception {

        // définit le comportement du Mock
        when(usersService.getAllUsers()).thenReturn(List.of());

        // test du controleur
        mockMvc.perform(get("/all-users")).andExpect(status().isOk());
    }
}
