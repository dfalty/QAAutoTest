package utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Properties;
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
import org.openqa.selenium.remote.RemoteWebDriver;

import io.github.bonigarcia.wdm.FirefoxDriverManager;
import net.anthavio.phanbedder.Phanbedder;

public class Utils {
	public WebDriver driver;
	public int windowWidth = 1024;
	public int windowHeight = 768;
	public int timeoutWait = 40;
	public String screenshotPath = "./Screenshots/";
	public DesiredCapabilities capabilities;
	
	
	public WebDriver getFirefoxDriver(){
		//Thank webdrivermanager for not having to use geckodriver path!
		//https://github.com/bonigarcia/webdrivermanager
		FirefoxDriverManager.getInstance().setup();
		driver = new FirefoxDriver();
		driver.manage().window().setSize(new Dimension(windowWidth,windowHeight));
		driver.manage().timeouts().implicitlyWait(timeoutWait, TimeUnit.SECONDS);
		return driver;
	}
	
	public WebDriver getPhantomJSDriver(){
		File phantomjs = Phanbedder.unpack();
		capabilities = DesiredCapabilities.phantomjs();
		capabilities.setCapability(PhantomJSDriverService.PHANTOMJS_EXECUTABLE_PATH_PROPERTY, phantomjs.getAbsolutePath());
		driver = new PhantomJSDriver(capabilities);
		driver.manage().window().setSize(new Dimension(windowWidth,windowHeight));
		driver.manage().timeouts().implicitlyWait(timeoutWait, TimeUnit.SECONDS);
		return driver;
	}
	
	public WebDriver getGridDriver(String gridURL) throws MalformedURLException{
		capabilities = DesiredCapabilities.firefox();
		capabilities.setBrowserName("firefox");
		driver = new RemoteWebDriver(new URL(gridURL), capabilities);
		return driver;
	}
	
	public void takeScreenshot() throws IOException{
		String timeStamp = new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss").format(new java.util.Date());
		screenshotPath += timeStamp + ".jpg";
		File srcFile=((TakesScreenshot)driver).getScreenshotAs(OutputType.FILE);
		FileUtils.copyFile(srcFile, new File(screenshotPath),true);
	}
	
	public String getProperty(String property) throws IOException{
		String propertiesHome = System.getenv("QA_AUTO_TEST_PROPERTIES_HOME");
		InputStream input = new FileInputStream(propertiesHome);
		Properties prop = new Properties();
		prop.load(input);
		String returnProperty = prop.getProperty(property);
		return returnProperty;
	}
}
