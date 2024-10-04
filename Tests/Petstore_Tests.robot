*** Settings ***
Library     Collections
Resource    ../Resources/PetStoreAPI.resource

*** Test Cases ***
Add Pet To Petstore
    [Documentation]    Checking if pet can be added to petstore.
    [Tags]    Regression    Test_AddPet
    Create Pet
    Add New Pet To The Store
    Dictionary Should Contain Value    ${add_pet_response}    ${pet_id}
    Dictionary Should Contain Value    ${add_pet_response}    ${pet_name}

Find Pet In Petstore
    [Documentation]    Checking if newly added pet can be found in petstore.
    [Tags]    Regression    Test_FindPet
    Create Pet
    Add New Pet To The Store
    Find Pet By ID    ${pet_id}
    Dictionary Should Contain Value    ${find_pet_response}   ${pet_id}
    Dictionary Should Contain Value    ${find_pet_response}   ${pet_name}