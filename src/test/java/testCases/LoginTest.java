package testCases;
import org.testng.annotations.Test;
import org.testng.AssertJUnit;
import utils.Utils;
import pages.RSHome;
import pages.RSLogin;
import org.testng.annotations.BeforeTest;
import java.io.IOException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.testng.ITestResult;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.AfterTest;

public class LoginTest {
	public DesiredCapabilities capabilities = DesiredCapabilities.phantomjs();
	public WebDriver driver;
	public String sutUrlUbuntu;
	public String sutUrlRHEL;
	public String sutUrlSUSE;
	public String username;
	public String password;
	public RSLogin objLogin;
	public RSHome objHome;
	public Utils driverUtils;
 
	public void loginTest(){
		//Create Login Page object
		objLogin = new RSLogin(driver);
			
		//Verify Log In page title
		String loginPageTitle = objLogin.getLoginTitle();
		AssertJUnit.assertEquals("RStudio Sign In", loginPageTitle);
		  
		//Log in
		objLogin.loginToRSP(username, password);
		
		//Create Home Page object
		objHome = new RSHome(driver);
		
		//Verify username appears on main page of the IDE
		String homePageUsername = objHome.getHomePageUserName();
		AssertJUnit.assertEquals(username, homePageUsername);
		
		//Verify Title on main IDE page
		String homePageTitle = objHome.getHomeTitle();
		AssertJUnit.assertEquals("RStudio", homePageTitle);
	}
	
	@Test
	public void loginTestSUSE() {
		try {
			//Go to SUT URL
			driver.get(sutUrlSUSE);
			//Run Test
			loginTest();
			
		} catch (Exception e) {
			AssertJUnit.fail();
		}
	}
	@Test
	public void loginTestRHEL() {
		try {
			//Go to SUT URL
			driver.get(sutUrlRHEL);
			//Run Test
			loginTest();
			
		} catch (Exception e) {
			AssertJUnit.fail();
		}
	}
	@Test
	public void loginTestUbuntu() {
		try {
			//Go to SUT URL
			driver.get(sutUrlUbuntu);
			//Run Test
			loginTest();
			
		} catch (Exception e) {
			AssertJUnit.fail();
		}
	}
	
	@BeforeTest
	public void beforeTest() throws IOException {
		//Get selected driver
		driverUtils = new Utils();
		driver = driverUtils.getPhantomJSDriver();
		sutUrlUbuntu = driverUtils.getProperty("sutUrlUbuntu");
		sutUrlRHEL = driverUtils.getProperty("sutUrlRHEL");
		sutUrlSUSE = driverUtils.getProperty("sutUrlSUSE");
		username = driverUtils.getProperty("username01");
		password = driverUtils.getProperty("password01");
	}
	
	@AfterMethod
	public void takeScreenShotOnFailure(ITestResult testResult) throws IOException {
		if (testResult.getStatus() == ITestResult.FAILURE) {
			System.out.println(testResult.getStatus());
			driverUtils.takeScreenshot();
	   }        
	}
	
	@AfterTest
	public void afterTest() {
		driver.quit();
	}

}
