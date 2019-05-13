*** Settings ***
Resource          resource.robot

*** Test Cases ***
LiveIntent Challenge
	Open Browser To LiveIntent Page
	Verify existence of the 'Get Started' Button
	Click on 'Get Started' Button
	Verify the 'Get Started' Page URL
 	Verify existence of the 'Contact Us' Button
 	[Teardown]    Close Browser