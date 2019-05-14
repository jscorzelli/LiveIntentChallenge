# LiveIntentChallenge
Automation challenge for LiveIntent

# The Test
The task at hand was to create an automated test, which verifies a piece of funtionality on the LiveIntent company website.
Here are the steps the automated test executes:
1) Navigate to the LiveIntent company website (https://liveintent.com/).
2) Verify the existence of a button that says 'Get Started'. As long as this button is present on the website, this step      passes.
3) Click on the 'Get Started' button. The expecation is that the user will be navigated to a different portion of the company website.
4) Verify the URL after clicking on the 'Get Started' button. The expectation is the URL will be https://liveintent.com/free-evaluation/.
5) Verify the existance of a button that says 'Contact Us'. As long as this button is present on the website, this step passes.

# Prerequisites for executing this test
1) You must have Python 2 or Python 3 installed on your system.
2) Download and install the Robot Framework. Here is where you can find information on installing the Robot Framework:
  https://github.com/robotframework/robotframework/blob/master/INSTALL.rst
3) You must download the SeleniumLibrary web testing library for the Robot Framework. Directions to do that are here:
https://github.com/robotframework/SeleniumLibrary#installation
4) You must download the Chrome webdriver and update your PATH directory with the local location of the webdriver.
Instructions on how to download the driver can be found here: https://github.com/robotframework/SeleniumLibrary/#browser-drivers.
Instructions on how to update your PATH directory can be found here (for mac users): https://www.kenst.com/2015/03/including-the-chromedriver-location-in-macos-system-path/

# How to execute this test
1) Clone or download this git respository to your local system. Once this step is done, you will have a directory that    contains the following three files:
  ``` README.md ```
  ``` liveintent-challenge.robot ```
  ``` resource.robot ```
2) In a terminal window, navigate to the location where you cloned the git respository.
3) In order to run the test, execute the following command:
  ```robot liveintent-challenge.robot```
4) When the test is complete, you will see an output like this in your terminal window:
  ``` ==============================================================================
      Liveintent-Challenge                                                          
      ==============================================================================
      LiveIntent Challenge                                                  | PASS |
      ------------------------------------------------------------------------------
      Liveintent-Challenge                                                  | PASS |
      1 critical test, 1 passed, 0 failed
      1 test total, 1 passed, 0 failed
      ==============================================================================
```
# Explanation of the file named liveintent-challenge.robot
This is the file that gets executed when you run the automated test. The test case that is being run is outlined in the 'Test Cases' section. The title of the test case is 'LiveIntent Challenge'. Below that, the steps of the test are indented. The title of each of the steps are very descriptive. The actual implemementation of the steps happes in a file called 'resource.robot', which is referenced in the 'Settings' section.

# Explanation of the file named resource.robot
This is the file that contains all of the libraries, variables and keywords that are used in this automated test. The 'Library' section references the 'SeleniumLibrary', which is used to gain access to the appropriate keywords needed to run this test. The 'Variables' section contains all of the constants that are needed for the test. These include the URLs, web browser of choice, and names for the web elements that the test uses. Finally, the 'Keywords' section is where each step of the test is defined. The first line of each keyword is the title, and then the indented definition is made up by commands that are provided by the Selenium libary. Each step that is defined is called in the liveintent-challenge.robot file.

# Extra files
After you run the test, you will notice that a few extra files have been generated. These files are called: 
``` log.html ```,
``` output.html ```, and 
``` report.html ```.
These files provide in depth information about the results of the last run of the test. Every time the test is run, these files get overwritten with the most up-to-date information.

# Obstacles
One major obstacle I hit while completing this task was implementing the step where the test clicks on the 'GET STARTED' button. I implemented it in a way where I used the 'Click' functionality that is made available from the Selenium library. This method worked on my personal laptop, but did not work when I ran the test on a different computer. On the second computer, the cookie consent message that appears on the website was blocking the 'GET STARTED' button from coming into focus. As a result, the Selenium library was having trouble locating it in order to click on it. After doing further research, and running a few smoke tests, I came to my current solution:
``` Click on 'Get Started' Button
	  Maximize Browser Window
	  Press Keys 	${GET STARTED}	DOWN
	  ${LOCATION} = 	Get Location
	  Run Keyword if	'${LOCATION}' != '${GET STARTED URL}'	Press Keys 	${GET STARTED}	ENTER
```
In this solution, the test will first maximize the browser window. Then it will press the DOWN arrow kew. After that, the test will take note of the current URL. If the URL does not equal a certain value, the test will press the ENTER key. This method has proven to be successful on multiple computers.
 
  
