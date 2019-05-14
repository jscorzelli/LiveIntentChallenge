*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}			chrome
${URL}				https://liveintent.com/
${GET STARTED}		css:.home-header-btn
${GET STARTED URL}	https://liveintent.com/free-evaluation/
${CONTACT US}		css:.header-cta

*** Keywords ***
Open Browser To LiveIntent Page
	Open Browser 	${URL}    ${BROWSER}

Verify existence of the 'Get Started' Button
	Page Should Contain Element		${GET STARTED}

Click on 'Get Started' Button
	Maximize Browser Window
	Press Keys 	${GET STARTED}	DOWN
	${LOCATION} = 	Get Location
	Run Keyword if	'${LOCATION}' != '${GET STARTED URL}'	Press Keys 	${GET STARTED}	ENTER

Verify the 'Get Started' Page URL
	Location Should Be 		${GET STARTED URL}

Verify existence of the 'Contact Us' Button
	Page Should Contain Element		${CONTACT US}

