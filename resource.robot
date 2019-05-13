*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}			chrome
${URL}				https://liveintent.com/
${GET STARTED}		class:home-header-btn
${GET STARTED URL}	https://liveintent.com/free-evaluation/
${CONTACT US}		class:header-cta

*** Keywords ***
Open Browser To LiveIntent Page
	Open Browser 	${URL}    ${BROWSER}

Verify existence of the 'Get Started' Button
	Page Should Contain Element		${GET STARTED}

Click on 'Get Started' Button
	Maximize Browser Window
	Set Browser Implicit Wait	20 seconds
	Click Element	${GET STARTED}

Verify the 'Get Started' Page URL
	Location Should Be 		${GET STARTED URL}

Verify existence of the 'Contact Us' Button
	Page Should Contain Element		${CONTACT US}

