@echo off
REM Ĭ������ɫ��ǳɫ��1F����ɫ��0A��
set "theme=1F"
REM ���ȶ�ȡ��ǰĿ¼���������ã����TEMPĿ¼
if exist "%~dp0jsws_theme.cfg" (
    set /p theme=<"%~dp0jsws_theme.cfg"
) else if exist "%TEMP%\jsws_theme.cfg" (
    set /p theme=<"%TEMP%\jsws_theme.cfg"
)
color %theme%
:start
cls
title ϵͳά�� v0.2
echo.
echo  �X�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�[
echo  �U                                                                              �U
echo  �U                              ϵ ͳ ά �� v0.2                                �U
echo  �U                                                                              �U
echo  �d�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�g
echo  �U                                                                              �U
echo  �U                      ��ӭʹ�á�ϵͳά�������ߣ�                                �U
echo  �U                                                                              �U
echo  �d�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�g
echo  �U                                                                              �U
echo  �U    ��ѡ���ܣ��������ֺ�س���                                                �U
echo  �U                                                                              �U
echo  �U      [1]  �������           [2]  ��������                                    �U
echo  �U                                                                              �U
echo  �U      [3]  ϵͳ�޸�           [4]  ������                                      �U
echo  �U                                                                              �U
echo  �U      [5]  ����                                                               �U
echo  �U                                                                              �U
echo  �^�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�a
echo.
set /p choice=  ������ѡ�1-5���� 
echo.
if "%choice%"=="1" (
    cls
    echo.
    echo  �X�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�[
    echo  �U                              [ ������� ]                                �U
    echo  �d�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�g
    echo  �U                                                                          �U
    echo  �U         ���ڽ��е�����죬���Ժ򡭡�                                         �U
    echo  �U         �� Ctrl + C ��ȡ����졣                                          �U
    echo  �U                                                                          �U
    echo  �^�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�a
    echo  ����������������������������������������������������������������������������������������������������������������������������������������������������������
    REM ����ϵͳ��ʱ�ļ�
    del /f /s /q "%TEMP%\*"
    del /f /s /q "C:\Windows\Temp\*"
    REM �������վ
    rd /s /q %systemdrive%\$Recycle.Bin
    REM ����Ԥȡ�ļ�
    del /f /s /q "C:\Windows\Prefetch\*"
    REM ����Windows��־�ļ�
    del /f /s /q "C:\Windows\Logs\*"
    del /f /s /q "C:\Windows\System32\LogFiles\*"
    REM �������ʹ�õ��ĵ���¼
    del /f /s /q "%APPDATA%\Microsoft\Windows\Recent\*"
    REM ����Windows�������ػ���
    del /f /s /q "C:\Windows\SoftwareDistribution\Download\*"
    REM ϵͳ���
    sfc /scannow
    cls
    echo.
    echo  �X�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�[
    echo  �U                          ���������ɣ�                                   �U
    echo  �^�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�a
    echo  ����������������������������������������������������������������������������������������������������������������������������������������������������������
    echo  ��������ɣ�3��󷵻����˵�����
    timeout /t 3 /nobreak >nul
    goto start
) else if "%choice%"=="2" (
    cls
    echo.
    echo  �X�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�[
    echo  �U                              [ �������� ]                                �U
    echo  �d�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�g
    echo  �U                                                                          �U
    echo  �U         ���ڽ��������������Ժ򡭡�                                         �U
    echo  �U         �� Ctrl + C ��ȡ������                                          �U
    echo  �U                                                                          �U
    echo  �^�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�a
    echo  ����������������������������������������������������������������������������������������������������������������������������������������������������������
    REM 1. ����ǰ�û���ϵͳ��ʱ�ļ�
    del /f /s /q "%TEMP%\*"
    del /f /s /q "C:\Windows\Temp\*"
    REM 2. �������վ
    rd /s /q %systemdrive%\$Recycle.Bin
    REM 3. ����Ԥȡ�ļ�
    del /f /s /q "C:\Windows\Prefetch\*"
    REM 4. ����Windows��־�ļ�
    del /f /s /q "C:\Windows\Logs\*"
    del /f /s /q "C:\Windows\System32\LogFiles\*"
    REM 5. �������ʹ�õ��ĵ���¼
    del /f /s /q "%APPDATA%\Microsoft\Windows\Recent\*"
    REM 6. ����Windows�������ػ���
    del /f /s /q "C:\Windows\SoftwareDistribution\Download\*"
    REM 7. ������������棨��Chrome��EdgeΪ����
    del /f /s /q "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cache\*"
    del /f /s /q "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\Cache\*"
    REM 8. ����ϵͳ���󱨸������ļ�
    del /f /s /q "C:\ProgramData\Microsoft\Windows\WER\*"
    del /f /s /q "C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\WER\*"
    REM 9. ������������򱸷�
    del /f /s /q "C:\Windows\System32\DriverStore\FileRepository\*.bak"
    REM 10. ����Windows��������
    del /f /s /q "C:\$WINDOWS.~BT\*"
    del /f /s /q "C:\$WINDOWS.~WS\*"
    REM 11. ����ϵͳ��������
    del /f /s /q "C:\Windows\winsxs\*.log"
    del /f /s /q "C:\Windows\winsxs\Backup\*"
    REM 12. ����Office��ʱ�ļ�
    del /f /s /q "%USERPROFILE%\AppData\Local\Microsoft\Office\UnsavedFiles\*"
    REM 13. �������������������棨��QQ��΢�ŵȣ�
    del /f /s /q "%APPDATA%\Tencent\QQ\Temp\*"
    del /f /s /q "%APPDATA%\Tencent\WeChat\WeChat Files\*\FileStorage\Temp\*"
    REM 14. �������������Ŀ¼�µ���ʱ�ļ�
    del /f /s /q "%USERPROFILE%\Desktop\*.tmp"
    del /f /s /q "%USERPROFILE%\Downloads\*.tmp"
    REM 15. ����ϵͳ���建��
    del /f /s /q "%LOCALAPPDATA%\FontCache\*"
    REM 16. ����Windows����ͼ����
    del /f /s /q "%LOCALAPPDATA%\Microsoft\Windows\Explorer\thumbcache_*.db"
    REM 17. ����Windows Media Player����
    del /f /s /q "%LOCALAPPDATA%\Microsoft\Media Player\*"
    REM 18. ����DirectX����
    del /f /s /q "%LOCALAPPDATA%\Microsoft\DirectX Shader Cache\*"
    REM 19. ����OneDrive����
    del /f /s /q "%LOCALAPPDATA%\Microsoft\OneDrive\logs\*"
    REM 20. ����Edge��IE��ʱ�ļ�
    del /f /s /q "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\Cache\*"
    del /f /s /q "%LOCALAPPDATA%\Microsoft\Windows\INetCache\*"
    cls
    echo.
    echo  �X�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�[
    echo  �U                          ����������ɣ�                                   �U
    echo  �^�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�a
    echo  ����������������������������������������������������������������������������������������������������������������������������������������������������������
    echo  ��������ɣ�3��󷵻����˵�����
    timeout /t 3 /nobreak >nul
    goto start
) else if "%choice%"=="3" (
    cls
    echo.
    echo  �X�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�[
    echo  �U                              [ ϵͳ�޸� ]                                �U
    echo  �d�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�g
    echo  �U                                                                          �U
    echo  �U         ���ڽ���ϵͳ�޸������Ժ򡭡�                                         �U
    echo  �U         �� Ctrl + C ��ȡ���޸���                                          �U
    echo  �U                                                                          �U
    echo  �^�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�a
    echo  ����������������������������������������������������������������������������������������������������������������������������������������������������������
    REM ϵͳ�ļ������޸�
    sfc /scannow
    DISM /Online /Cleanup-Image /ScanHealth
    DISM /Online /Cleanup-Image /CheckHealth
    DISM /Online /Cleanup-Image /RestoreHealth
    cls
    echo.
    echo  �X�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�[
    echo  �U                          ϵͳ�޸���ɣ�                                  �U
    echo  �^�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�a
    echo  ����������������������������������������������������������������������������������������������������������������������������������������������������������
    echo  ��������ɣ�3��󷵻����˵�����
    timeout /t 3 /nobreak >nul
    goto start
) else if "%choice%"=="4" (
    cls
    echo.
    echo  �X�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�[
    echo  �U                              [ ������ ]                                  �U
    echo  �d�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�g
    echo  �U                                                                          �U
    echo  �U         ���๦�ܾ����ڴ�����                                                �U
    echo  �U                                                                          �U
    echo  �^�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�a
    echo  ����������������������������������������������������������������������������������������������������������������������������������������������������������
    echo  �����������˵�����
    timeout /t 5 /nobreak >nul
    goto start
) else if "%choice%"=="5" (
    :setting_menu
    cls
    echo.
    echo  �X�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�[
    echo  �U                                 [ ���� ]                                 �U
    echo  �d�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�g
    echo  �U                                                                          �U
    echo  �U      1. ��������                                                          �U
    echo  �U                                                                          �U
    echo  �^�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�a
    echo.
    set /p set_choice=  ������ѡ���1���س��������˵����� 
    if "%set_choice%"=="1" (
        cls
        echo.
        echo  �X�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�[
        echo  �U                              [ �������� ]                             �U
        echo  �d�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�g
        echo  �U                                                                      �U
        echo  �U      1. ǳɫ���⣨�׵����֣�                                           �U
        echo  �U      2. ��ɫ���⣨�ڵ����֣�                                           �U
        echo  �U                                                                      �U
        echo  �^�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�a
        echo.
        set /p theme_choice=  ������ѡ�1-2���� 
        REM ��ȷƥ�䣬ֻ����1��2
        if /i "%theme_choice%"=="1" (
            set "theme=1F"
            echo 1F>"%~dp0jsws_theme.cfg"
            echo 1F>"%TEMP%\jsws_theme.cfg"
        ) else if /i "%theme_choice%"=="2" (
            set "theme=0A"
            echo 0A>"%~dp0jsws_theme.cfg"
            echo 0A>"%TEMP%\jsws_theme.cfg"
        ) else (
            echo.
            echo  �X�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�[
            echo  �U                              [ ���� ]                               �U
            echo  �d�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�g
            echo  �U      ��Чѡ���������������ò˵�����                               �U
            echo  �^�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�a
            pause >nul
            goto setting_menu
        )
        color %theme%
        echo.
        echo  �������л�����������������ò˵������������Ч����
        pause >nul
        goto setting_menu
    ) else if "%set_choice%"=="" (
        goto start
    ) else (
        echo.
        echo  �X�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�[
        echo  �U                              [ ���� ]                               �U
        echo  �d�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�g
        echo  �U      ��Чѡ���������������ò˵�����                                 �U
        echo  �^�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�a
        pause >nul
        goto setting_menu
    )
) else (
    color 1C
    echo.
    echo  �X�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�[
    echo  �U                              [ ���� ]                                   �U
    echo  �d�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�g
    echo  �U      ��Ч��ѡ�������ѡ�� 1-5 ֮���ѡ�                               �U
    echo  �^�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�a
    timeout /t 4 >nul
    color %theme%
    goto start
)
echo.
echo  �^�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�a
echo  �U                   ? 2025 ��ط֮. ��������Ȩ��.                              �U
echo  �^�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�a