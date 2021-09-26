*** Settings ***
Resource            ../../Frameworks/Routers.robot

*** Variables ***
${field_img_logo_skill_academy}       css=img[alt='Skill Academy Logo']
${button_menu_for_enterprise}         xpath=//a[@data-testid='header-enterprise-skillacademy-button']/p
${button_menu_kelas_pekerja}          xpath=//a[@href='/prakerja']/p
${button_menu_tambah_uang_saku}       xpath=//a[@href='/referral/detail?scrollTo=&activeTab=']/p
${button_menu_dropdown_kategori}      xpath=//div[@data-testid='dropdown-category']/p
${field_input_search}                 xpath=//input[@data-testid='search-input-field']
${field_img_banner_home}              css=img[alt='Home Banner Large']
${field_img_icon_search}              xpath=//div[@data-testid='search-icon']

*** Keywords ***
Verify Homepage Opened
  Wait until Element is visible       ${field_img_logo_skill_academy} 
  Element should be visible           ${field_img_logo_skill_academy}
  Wait until Element is visible       ${button_menu_for_enterprise}
  Element should be visible           ${button_menu_for_enterprise}
  Wait until Element is visible       ${button_menu_kelas_pekerja}
  Element should be visible           ${button_menu_kelas_pekerja}
  Wait until Element is visible       ${button_menu_dropdown_kategori}
  Element should be visible           ${button_menu_dropdown_kategori}
  Wait until Element is visible       ${button_menu_tambah_uang_saku}
  Element should be visible           ${button_menu_tambah_uang_saku}
  Wait until Element is visible       ${field_input_search}
  Element should be visible           ${field_input_search}
  Wait until Element is visible       ${field_img_banner_home}
  Element should be visible           ${field_img_banner_home}

Input 'keyword' in field search
  [Arguments]    ${TEXT_KEYWORD_SEARCH}
  Wait until Element is visible       ${field_input_search}
  Input text                          ${field_input_search}     ${TEXT_KEYWORD_SEARCH}

Click search icon
  Wait until Element is visible       ${field_img_icon_search}
  Click Element                       ${field_img_icon_search}
