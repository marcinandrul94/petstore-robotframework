*** Settings ***
Library    RequestsLibrary
Library    FakerLibrary

*** Keywords ***
Create Pet
    Get Random Cat Image
    ${pet_name}=    First Name
    ${photo_urls_list}=    Create List    ${photo_url}
    ${category_dictionary}=    Create Dictionary    id=0    name=${pet_name} 
    ${tags_dictionary}=    Create Dictionary    id=0    name=${pet_name}
    ${tags_list}=    Create List    ${tags_dictionary}
    ${create_pet_payload}    Create Dictionary    id=0    category=${category_dictionary}    name=${pet_name}    
    ...    photoUrls=${photo_urls_list}    tags=${tags_list}    status=available
    Set Test Variable    ${pet_name}    ${pet_name}
    Set Test Variable    ${create_pet_payload}    ${create_pet_payload}
    
    
Get Random Cat Image
    ${response}    Get    url=https://api.thecatapi.com/v1/images/search    expected_status=200
    Set Test Variable    ${photo_url}   ${response.json()}[0][url]