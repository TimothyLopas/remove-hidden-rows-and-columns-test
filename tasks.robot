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
    # The below Log to Console may only show the first quad of data
    # If that occurs use the FOR loop or a similar FOR loop to enumerate the data
    # Though the Log to Console does not show the data is is all present
    Log To Console    ${Test}
    # In order to see the full dataset returned from Remove Hiddent Columns and Rows use
    # a loop similar to the one below
    FOR    ${row}    IN    @{{$Test.Rows}}
        Log To Console    ${row.Address} value is "${row.Value}"
    END
