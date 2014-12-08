package com.cagnosolutions.app

import groovy.transform.CompileStatic
import org.springframework.boot.SpringApplication
import org.springframework.boot.autoconfigure.EnableAutoConfiguration
import org.springframework.context.annotation.ComponentScan
import org.springframework.context.annotation.Configuration
import org.springframework.context.annotation.Import
import org.springframework.context.annotation.PropertySource
import org.springframework.data.jpa.repository.config.EnableJpaRepositories
import org.springframework.data.rest.webmvc.config.RepositoryRestMvcConfiguration

@CompileStatic
@Configuration
@ComponentScan
@EnableJpaRepositories
@EnableAutoConfiguration
@PropertySource("application.properties")
@Import(RepositoryRestMvcConfiguration.class)
class Application {
	static void main(String[] args) {
		SpringApplication.run Application.class, args
	}
}
