*** Settings ***
Documentation       Template robot main suite.

Library             RPA.Excel.Application


*** Variables ***
${ActiveFilePath}=      HiddenRandC.xlsx


*** Tasks ***
Minimal task
    Open Application
    Open Workbook    filename=${ActiveFilePath}
    ${vRowData}=    RPA.Excel.Application.Get Range    D2:H32
    Log To Console    ${vRowData}
    ${Test}=    RPA.Excel.Application.Remove Hidden Columns And Rows    D2:H32    Sheet1
    Log To Console    ${Test}
