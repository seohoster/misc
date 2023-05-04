::===========================================================================================
:: This bit will error-out if ran in the CMD with %%I . use only one % if you run from CMD ::
::===========================================================================================

@echo off
:: #### RESET HARD
For /F "skip=1tokens=*" %%I in ('vmrun list') do vmrun reset "%%I"


:: #### STOP HARD
For /F "skip=1tokens=*" %%I in ('vmrun list') do vmrun stop "%%I"
::===========================================================================================



:: taskkill /IM vmplayer.exe /T /F