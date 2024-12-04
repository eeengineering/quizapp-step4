package eeengineer.quizapp.dto;

import jakarta.validation.constraints.NotEmpty;

public class UserDto
{
    private Long userid;
    @NotEmpty
    private String username;
    @NotEmpty(message = "パスワードの入力は必須です。")
    private String password;

    public Long getId() {
		return userid;
	}
	public void setId(Long userid) {
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
