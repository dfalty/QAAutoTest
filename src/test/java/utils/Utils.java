package utils;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.concurrent.TimeUnit;
import org.apache.commons.io.FileUtils;
import org.openqa.selenium.Dimension;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.phantomjs.PhantomJSDriver;
import org.openqa.selenium.phantomjs.PhantomJSDriverService;
import org.openqa.selenium.remote.DesiredCapabilities;

public class Utils {
	public WebDriver driver;
	public int windowWidth = 1024;
	public int windowHeight = 768;
	public int timeoutWait = 40;
	public String geckoDriverPath = "";
	public String phantomJSPath = "";
	public String screenshotPath = "";
	public DesiredCapabilities capabilities = DesiredCapabilities.phantomjs();
	
	public WebDriver getFirefoxDriver(){
		System.setProperty("webdriver.gecko.driver", geckoDriverPath);
		driver = new FirefoxDriver();
		driver.manage().window().setSize(new Dimension(windowWidth,windowHeight));
		driver.manage().timeouts().implicitlyWait(timeoutWait, TimeUnit.SECONDS);
		return driver;
	}
	
	public WebDriver getPhantomJSDriver(){
		capabilities.setCapability(PhantomJSDriverService.PHANTOMJS_EXECUTABLE_PATH_PROPERTY, phantomJSPath);
		driver = new PhantomJSDriver(capabilities);
		driver.manage().window().setSize(new Dimension(windowWidth,windowHeight));
		driver.manage().timeouts().implicitlyWait(timeoutWait, TimeUnit.SECONDS);
		return driver;
	}
	
	public void takeScreenshot() throws IOException{
		String timeStamp = new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss").format(new java.util.Date());
		screenshotPath += timeStamp + ".jpg";
		File srcFile=((TakesScreenshot)driver).getScreenshotAs(OutputType.FILE);
		FileUtils.copyFile(srcFile, new File(screenshotPath),true);
	}
}
