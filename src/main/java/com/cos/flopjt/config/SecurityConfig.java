package com.cos.flopjt.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.cos.flopjt.config.oauth.OAuth2DetailsService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@EnableWebSecurity
@Configuration
public class SecurityConfig extends WebSecurityConfigurerAdapter{

	private final OAuth2DetailsService oAuth2DetailsService;
	
	@Bean
	public BCryptPasswordEncoder encode() {
		return new BCryptPasswordEncoder();
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception{
		http.csrf().disable();
		http.authorizeRequests()
			.antMatchers("/user/**").access("hasRole('ROLE_USER') or hasRole('ROLE_ADMIN')")	// USER, ADMIN 모두 접근 가능	* ROLE 검증시에 ROLE_ 이라는 이름으로 넣어주어야만 인식가능 (강제성) 
			.antMatchers("/admin/**").access("hasRole('ROLE_ADMIN')")	// ADMIN 만 접근 가능											  그래서 UserDetails 에서 return 해줄 때 앞에 ROLE_ 을 넣어주면 된다 !!
			.anyRequest().permitAll()
			.and()
			.formLogin()	// x-www-form-urlencoded 타입으로 던져주어야한다. json으로 던지면 못 받는다!!
			.loginPage("/loginForm")
			.loginProcessingUrl("/login")
			.defaultSuccessUrl("/mainForm")
			.and()
			.oauth2Login()
			.userInfoEndpoint()
			.userService(oAuth2DetailsService);
	}
}
