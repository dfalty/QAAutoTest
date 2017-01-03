package pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

public class RSLogin {
	WebDriver driver;
	
	By username = By.id("username");
	By password = By.id("password");
	By signInButton = By.cssSelector("button.fancy");
	
	public RSLogin(WebDriver driver){
		this.driver = driver;
	}
	
	//Set user name in text box
	public void setUserName(String strUserName){
		driver.findElement(username).sendKeys(strUserName);
	}
	
	//Set password in password text box
	public void setPassword(String strPassword){
		driver.findElement(password).sendKeys(strPassword);
	}
	
	//Click on Sign In button
	public void clickSignIn(){
		driver.findElement(signInButton).click();
	}
	
	//Get the title of the Login Page
	public String getLoginTitle(){
		return driver.getTitle();
	}
	
	//Log into application
	public void loginToRSP(String strUserName,String strPassword){
		//Fill username
		this.setUserName(strUserName);
		//Fill password
		this.setPassword(strPassword);
		//Click Sign In button
		this.clickSignIn();
	}
}
