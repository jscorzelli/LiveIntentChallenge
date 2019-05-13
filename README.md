# LiveIntentChallenge
Automation challenge for LiveIntent

# The Test
The task at hand was to create an automated test, which verifies a piece of funtionality on the LiveIntent company website.
Here are the steps the automated test executes:
1) Naviage to the LiveIntent company website (https://liveintent.com/).
2) Verify the existence of a button that says 'Get Started'. As long as this button is present on the website, this step      passes.
3) Click on the 'Get Started' button. The expecation is that the user will be navigated to a different portion of the company website.
4) Verify the URL after clicking on the 'Get Started' button. The expectation is the URL will be https://liveintent.com/free-evaluation/.
5) Verify the existance of a button that says 'Contact Us'. As long as this button is present on the website, this step passes.

# How to execute this test
1) Clone or download this git respository to your local system. Once this step is done, you will have a directory that    contains the following three files:
  ``` README.md ```
  ``` liveintent-challenge.robot ```
  ``` resource.robot ```
2) Download and install the Robot Framework. Here is where you can find information on installing the Robot Framework:
  https://robotframework.org/#documentation
3) In a terminal window, navigate to the location where you cloned the git respository.
4) In order to run the test, execute the following command:
  ```robot liveintent-challenge.robot```
5) When the test is complete, you will see an output like this in your terminal window:
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
# TODO: Add information about python and downloading seleniumLibrary if need be. And setting the path for chromme webdriver.

# Explanation of the file named liveintent-challenge.robot
This is the file that gets executed when you run the automated test. The test case that is being run is outlined in the 'Test Cases' section. The title of the test case is 'LiveIntent Challenge'. Below that, the steps of the test are indented. The title of each of the steps are very descriptive. The actual implemementation of the steps happes in a file called 'resource.robot', which is referenced in the 'Settings' section.

# Explanation of the file named resource.robot
This is the file that contains all of the libraries, variables and keywords that are used in this automated test. The 'Library' section references the 'SeleniumLibrary', which is used to gain access to the appropriate keywords needed to run this test. The 'Variables' section contains all of the constants that are needed for the test. These include the URLs, and names for the web elements that the test uses. Finally, the 'Keywords' section is where each step of the test is defined. The first line of each keyword is the title, and then the indented definition are commands that are provided by the Selenium libary. Each step that is defined is called in the liveintent-challenge.robot file.
