*** Settings ***
Resource            ../../Frameworks/Routers.robot

*** Variables ***
${text_total_result}                  css=[data-testid='total-result']
${field_filter_by_harga}              xpath=(//div[@data-testid='dropdown-container']//div[.='Harga'])[1]
${field_filter_by_durasi}             xpath=(//div[@data-testid='dropdown-container']//div[.='Durasi'])[1]
${field_sort_by}                      xpath=(//div[@data-testid='dropdown-container']//div[.='Pilih'])[1]
${field_empty_result}                 xpath=//div[@data-testid='empty-result-card']
${filter_by_price}                    xpath=//*[.='<100.000']
${filter_by_duration}                 xpath=//*[.='<1 jam']
${sort_by_rating}                     xpath=//*[.='Rating Tertinggi']
${sort_by_review}                     xpath=//*[.='Review Terbanyak']
${sort_by_latest}                     xpath=//*[.='Terbaru']
${sort_by_cheapest}                   xpath=//*[.='Harga Terendah']
${sort_by_most_expensive}             xpath=//*[.='Harga Tertinggi']


*** Keywords ***
Validate search result
  Wait until Element is visible       ${text_total_result} 
  Element should be visible           ${text_total_result}
  Wait until Element is visible       ${field_filter_by_harga}
  Element should be visible           ${field_filter_by_harga}
  Wait until Element is visible       ${field_filter_by_durasi}
  Element should be visible           ${field_filter_by_durasi}
  Wait until Element is visible       ${field_sort_by}
  Element should be visible           ${field_sort_by}

Validate search result not found
  Wait until Element is visible       ${field_empty_result} 
  Element should be visible           ${field_empty_result}
  Sleep          5

Filter by price
  Wait until Element is visible       ${field_filter_by_harga}
  Click Element                       ${field_filter_by_harga}
  Wait until Element is visible       ${filter_by_price}
  Click Element                       ${filter_by_price}

Filter by duration
  Wait until Element is visible       ${field_filter_by_durasi}
  Click Element                       ${field_filter_by_durasi}
  Wait until Element is visible       ${filter_by_duration}
  Click Element                       ${filter_by_duration}

Sort by rating
  Wait until Element is visible       ${field_sort_by}
  Click Element                       ${field_sort_by}
  Wait until Element is visible       ${sort_by_rating}
  Click Element                       ${sort_by_rating}


Sort by review
  Wait until Element is visible       ${field_sort_by}
  Click Element                       ${field_sort_by}
  Wait until Element is visible       ${sort_by_review}
  Click Element                       ${sort_by_review}


Sort by latest
  Wait until Element is visible       ${field_sort_by}
  Click Element                       ${field_sort_by}
  Wait until Element is visible       ${sort_by_latest}
  Click Element                       ${sort_by_latest}


Sort by cheapest
  Wait until Element is visible       ${field_sort_by}
  Click Element                       ${field_sort_by}
  Wait until Element is visible       ${sort_by_cheapest}
  Click Element                       ${sort_by_cheapest}


Sort by most expensive
  Wait until Element is visible       ${field_sort_by}
  Click Element                       ${field_sort_by}
  Wait until Element is visible       ${sort_by_most_expensive}
  Click Element                       ${sort_by_most_expensive}


