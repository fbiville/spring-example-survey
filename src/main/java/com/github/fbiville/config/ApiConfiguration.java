package com.github.fbiville.config;


import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.data.rest.webmvc.config.RepositoryRestMvcConfiguration;

@Configuration
@Import({
    RepositoryRestMvcConfiguration.class,
    CoreConfiguration.class
})
public class ApiConfiguration {

}
