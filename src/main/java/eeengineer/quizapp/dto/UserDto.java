package eeengineer.quizapp.dto;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotEmpty;

public class UserDto
{
    private Long userid;
    @NotEmpty
    private String username;
    @NotEmpty(message = "Password should not be empty")
    private String password;

    public Long getId() {
		return userid;
	}
	public void setId(Long id) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
