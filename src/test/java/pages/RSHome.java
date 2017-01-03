package pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

public class RSHome {
	WebDriver driver;

	By homePageUserName = By.cssSelector("div.gwt-Label.gwt-Label-Toolbar");
	
	public RSHome(WebDriver driver){
		this.driver = driver;
	}
	
	//Get the title of the Home Page
	public String getHomeTitle(){
			return driver.getTitle();
	}
	
	//Get the user name from the main page
	public String getHomePageUserName(){
		return driver.findElement(homePageUserName).getText();
	}
	
}
