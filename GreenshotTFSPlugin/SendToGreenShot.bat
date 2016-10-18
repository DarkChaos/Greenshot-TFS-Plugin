REM copy file to GreenShot folder
@echo off
cls

set GreenShotPath=%1
set PlugInPath="\Plugins\GreenshotTFSPlugin"
set TeamExplorerPath="C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\IDE\CommonExtensions\Microsoft\TeamFoundation\Team Explorer"

MD %GreenShotPath%%PlugInPath%
copy /Y "bin\Release\GreenshotTFSPlugin.gsp" %GreenShotPath%%PlugInPath%\GreenshotTFSPlugin.gsp

MD %GreenShotPath%\Languages\%PlugInPath%
copy /Y "Languages\*.*" %GreenShotPath%\Languages\%PlugInPath%

copy /Y %TeamExplorerPath%\Microsoft.TeamFoundation.Client.dll %GreenShotPath%%PlugInPath%\
copy /Y %TeamExplorerPath%\Microsoft.TeamFoundation.Common.dll %GreenShotPath%%PlugInPath%\
copy /Y %TeamExplorerPath%\Microsoft.TeamFoundation.WorkItemTracking.Client.DataStoreLoader.dll %GreenShotPath%%PlugInPath%\
copy /Y %TeamExplorerPath%\Microsoft.TeamFoundation.WorkItemTracking.Client.dll %GreenShotPath%%PlugInPath%\
copy /Y %TeamExplorerPath%\Microsoft.TeamFoundation.WorkItemTracking.Common.dll %GreenShotPath%%PlugInPath%\
copy /Y %TeamExplorerPath%\Microsoft.TeamFoundation.WorkItemTracking.Proxy.dll %GreenShotPath%%PlugInPath%\
copy /Y %TeamExplorerPath%\Microsoft.VisualStudio.Services.Client.dll %GreenShotPath%%PlugInPath%\
copy /Y %TeamExplorerPath%\Microsoft.VisualStudio.Services.Common.dll %GreenShotPath%%PlugInPath%\
copy /Y %TeamExplorerPath%\Microsoft.VisualStudio.Services.WebApi.dll %GreenShotPath%%PlugInPath%\
copy /Y %TeamExplorerPath%\Microsoft.WITDataStore64.dll %GreenShotPath%%PlugInPath%\