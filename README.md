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
1) Clone or download this git respository to your local system.
2) Download and install the Robot Framework.
3) In a terminal window, navigate to the location where you cloned the git respository.
4) In order to run the test, execute the following commands:
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
