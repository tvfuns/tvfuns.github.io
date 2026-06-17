@echo off
pushd "%~dp0"
rem exe对应你的主程序名，32位和64位有区别，自行修改
set "exe=i_view64.exe"
set "pid=IrfanView"

rem 图片格式关联（以下格式均与程序设置中提供的所有图片格式一致，不含视频格式，有需要可自行添加）
for %%i in (ANI,AVIF,B3D,BMP,DIB,CLP,CRT,CR2,CR3,CUR,DCM,ACR,IMA,DDS,DJVU,IW44,DXF,ECW,EMF,EPS,PS,EXR,G3,GIF,HDP,JXR,WDP,HEIC,ICO,IFF,LBM,JLS,JP2,JPC,J2K,JPF,JPG,JPEG,JFIF,JPE,JPM,JXL,MNG,JNG,PBM,PCD,PCX,DCX,PGM,PNG,PPM,PSD,PSB,PSP,QOI,RAS,SUN,RAW,RLE,SFF,SGI,RGB,SID,TGA,TIF,TIFF,WBMP,WEBP,WMF,XBM,XPM) do SFTA.exe --reg "%~dp0%exe%" ".%%i" "%pid%.%%i"

rem 由于icon.dll内图标太少，部分格式无图标可用时会自动默认主程序图标，解决这个问题就要找一个图标较多的dll，或者添加一行下面的命令，让JPEG与JPG共用同一个图标。（需要执行就把命令前的 "rem" 删除即可。）
rem SFTA.exe --reg "%~dp0%exe%" ".JPEG" "%pid%.JPG"

cls&echo.&echo IrfanView 格式关联成功！ &timeout /t 2 >nul