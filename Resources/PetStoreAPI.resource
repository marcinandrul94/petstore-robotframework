*** Settings ***
Library    RequestsLibrary
Resource    CreatePet.resource

*** Variables ***
${base_url}    https://petstore.swagger.io/v2

*** Keywords ***
Add New Pet To The Store
    ${response}=    Post    url=${base_url}/pet    json=${create_pet_payload}    expected_status=200
    Set Test Variable    ${add_pet_response}    ${response.json()}
    Set Test Variable    ${pet_id}    ${add_pet_response}[id]
    Log    Pet Id is: ${pet_id}

Find Pet By ID
    [Arguments]    ${pet_id}
    ${response}=    GET    url=${base_url}/pet/${pet_id}     expected_status=200
    Set Test Variable    ${find_pet_response}    ${response.json()}