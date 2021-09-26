*** Settings ***
Resource                        ../Frameworks/Routers.robot

Test Timeout                    ${DEFAULT_TEST_TIMEOUT}
Test Setup                      CommonKeywords.Start Testing        ${URL}
Test Teardown                   CommonKeywords.End Testing

*** Variables ***
${URL}                          ${HOST}

*** Test Cases ***
TC001 Search With Input Keyword
    [Documentation]  Search With Input Keyword
    [Tags]  Regression  Smoke

    Homepage.Verify Homepage Opened
    Homepage.Input 'keyword' in field search                java
    Homepage.Click search icon
    Searchpage.Validate search result

TC002 Search With Result Not Found
    [Documentation]  Search With Result Not Found
    [Tags]  Regression  Smoke

    Homepage.Verify Homepage Opened
    Homepage.Input 'keyword' in field search                asd
    Homepage.Click search icon
    Searchpage.Validate search result not found