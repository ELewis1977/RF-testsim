*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${TrainingPeaksLoginURL}    https://home.trainingpeaks.com/login

*** Keywords ***
Login
    Input Text    id=Username    ELewis1977
    Input Password    id=Password    1ronMan!
    Click Button    id=btnSubmit

LoginParams
    [Arguments]    ${userName}=Admin    ${Password}=Admin
    Input Text    id=Username    ${userName}
    Input Password    id=Password    ${Password}
    Click Button    id=btnSubmit

GoToHomePage
    Open Browser    ${TrainingPeaksLoginURL}    ${browser}
