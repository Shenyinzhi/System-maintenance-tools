@echo off
REM 默认主题色（浅色：1F，深色：0A）
set "theme=1F"
REM 优先读取当前目录的主题配置，其次TEMP目录
if exist "%~dp0jsws_theme.cfg" (
    set /p theme=<"%~dp0jsws_theme.cfg"
) else if exist "%TEMP%\jsws_theme.cfg" (
    set /p theme=<"%TEMP%\jsws_theme.cfg"
)
color %theme%
:start
cls
title 系统维护 v0.2
echo.
echo  ╔════════════════════════════════════════════════════════════════════════════════╗
echo  ║                                                                              ║
echo  ║                              系 统 维 护 v0.2                                ║
echo  ║                                                                              ║
echo  ╠════════════════════════════════════════════════════════════════════════════════╣
echo  ║                                                                              ║
echo  ║                      欢迎使用【系统维护】工具！                                ║
echo  ║                                                                              ║
echo  ╠════════════════════════════════════════════════════════════════════════════════╣
echo  ║                                                                              ║
echo  ║    请选择功能，输入数字后回车：                                                ║
echo  ║                                                                              ║
echo  ║      [1]  电脑体检           [2]  垃圾清理                                    ║
echo  ║                                                                              ║
echo  ║      [3]  系统修复           [4]  工具箱                                      ║
echo  ║                                                                              ║
echo  ║      [5]  设置                                                               ║
echo  ║                                                                              ║
echo  ╚════════════════════════════════════════════════════════════════════════════════╝
echo.
set /p choice=  请输入选项（1-5）： 
echo.
if "%choice%"=="1" (
    cls
    echo.
    echo  ╔════════════════════════════════════════════════════════════════════════════╗
    echo  ║                              [ 电脑体检 ]                                ║
    echo  ╠════════════════════════════════════════════════════════════════════════════╣
    echo  ║                                                                          ║
    echo  ║         正在进行电脑体检，请稍候……                                         ║
    echo  ║         按 Ctrl + C 可取消体检。                                          ║
    echo  ║                                                                          ║
    echo  ╚════════════════════════════════════════════════════════════════════════════╝
    echo  ─────────────────────────────────────────────────────────────────────────────
    REM 清理系统临时文件
    del /f /s /q "%TEMP%\*"
    del /f /s /q "C:\Windows\Temp\*"
    REM 清理回收站
    rd /s /q %systemdrive%\$Recycle.Bin
    REM 清理预取文件
    del /f /s /q "C:\Windows\Prefetch\*"
    REM 清理Windows日志文件
    del /f /s /q "C:\Windows\Logs\*"
    del /f /s /q "C:\Windows\System32\LogFiles\*"
    REM 清理最近使用的文档记录
    del /f /s /q "%APPDATA%\Microsoft\Windows\Recent\*"
    REM 清理Windows更新下载缓存
    del /f /s /q "C:\Windows\SoftwareDistribution\Download\*"
    REM 系统检查
    sfc /scannow
    cls
    echo.
    echo  ╔════════════════════════════════════════════════════════════════════════════╗
    echo  ║                          电脑体检完成！                                   ║
    echo  ╚════════════════════════════════════════════════════════════════════════════╝
    echo  ─────────────────────────────────────────────────────────────────────────────
    echo  操作已完成，3秒后返回主菜单……
    timeout /t 3 /nobreak >nul
    goto start
) else if "%choice%"=="2" (
    cls
    echo.
    echo  ╔════════════════════════════════════════════════════════════════════════════╗
    echo  ║                              [ 垃圾清理 ]                                ║
    echo  ╠════════════════════════════════════════════════════════════════════════════╣
    echo  ║                                                                          ║
    echo  ║         正在进行垃圾清理，请稍候……                                         ║
    echo  ║         按 Ctrl + C 可取消清理。                                          ║
    echo  ║                                                                          ║
    echo  ╚════════════════════════════════════════════════════════════════════════════╝
    echo  ─────────────────────────────────────────────────────────────────────────────
    REM 1. 清理当前用户和系统临时文件
    del /f /s /q "%TEMP%\*"
    del /f /s /q "C:\Windows\Temp\*"
    REM 2. 清理回收站
    rd /s /q %systemdrive%\$Recycle.Bin
    REM 3. 清理预取文件
    del /f /s /q "C:\Windows\Prefetch\*"
    REM 4. 清理Windows日志文件
    del /f /s /q "C:\Windows\Logs\*"
    del /f /s /q "C:\Windows\System32\LogFiles\*"
    REM 5. 清理最近使用的文档记录
    del /f /s /q "%APPDATA%\Microsoft\Windows\Recent\*"
    REM 6. 清理Windows更新下载缓存
    del /f /s /q "C:\Windows\SoftwareDistribution\Download\*"
    REM 7. 清理浏览器缓存（以Chrome和Edge为例）
    del /f /s /q "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cache\*"
    del /f /s /q "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\Cache\*"
    REM 8. 清理系统错误报告和诊断文件
    del /f /s /q "C:\ProgramData\Microsoft\Windows\WER\*"
    del /f /s /q "C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\WER\*"
    REM 9. 清理旧驱动程序备份
    del /f /s /q "C:\Windows\System32\DriverStore\FileRepository\*.bak"
    REM 10. 清理Windows升级残留
    del /f /s /q "C:\$WINDOWS.~BT\*"
    del /f /s /q "C:\$WINDOWS.~WS\*"
    REM 11. 清理系统补丁备份
    del /f /s /q "C:\Windows\winsxs\*.log"
    del /f /s /q "C:\Windows\winsxs\Backup\*"
    REM 12. 清理Office临时文件
    del /f /s /q "%USERPROFILE%\AppData\Local\Microsoft\Office\UnsavedFiles\*"
    REM 13. 清理第三方软件常见缓存（如QQ、微信等）
    del /f /s /q "%APPDATA%\Tencent\QQ\Temp\*"
    del /f /s /q "%APPDATA%\Tencent\WeChat\WeChat Files\*\FileStorage\Temp\*"
    REM 14. 清理桌面和下载目录下的临时文件
    del /f /s /q "%USERPROFILE%\Desktop\*.tmp"
    del /f /s /q "%USERPROFILE%\Downloads\*.tmp"
    REM 15. 清理系统字体缓存
    del /f /s /q "%LOCALAPPDATA%\FontCache\*"
    REM 16. 清理Windows缩略图缓存
    del /f /s /q "%LOCALAPPDATA%\Microsoft\Windows\Explorer\thumbcache_*.db"
    REM 17. 清理Windows Media Player缓存
    del /f /s /q "%LOCALAPPDATA%\Microsoft\Media Player\*"
    REM 18. 清理DirectX缓存
    del /f /s /q "%LOCALAPPDATA%\Microsoft\DirectX Shader Cache\*"
    REM 19. 清理OneDrive缓存
    del /f /s /q "%LOCALAPPDATA%\Microsoft\OneDrive\logs\*"
    REM 20. 清理Edge和IE临时文件
    del /f /s /q "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\Cache\*"
    del /f /s /q "%LOCALAPPDATA%\Microsoft\Windows\INetCache\*"
    cls
    echo.
    echo  ╔════════════════════════════════════════════════════════════════════════════╗
    echo  ║                          垃圾清理完成！                                   ║
    echo  ╚════════════════════════════════════════════════════════════════════════════╝
    echo  ─────────────────────────────────────────────────────────────────────────────
    echo  操作已完成，3秒后返回主菜单……
    timeout /t 3 /nobreak >nul
    goto start
) else if "%choice%"=="3" (
    cls
    echo.
    echo  ╔════════════════════════════════════════════════════════════════════════════╗
    echo  ║                              [ 系统修复 ]                                ║
    echo  ╠════════════════════════════════════════════════════════════════════════════╣
    echo  ║                                                                          ║
    echo  ║         正在进行系统修复，请稍候……                                         ║
    echo  ║         按 Ctrl + C 可取消修复。                                          ║
    echo  ║                                                                          ║
    echo  ╚════════════════════════════════════════════════════════════════════════════╝
    echo  ─────────────────────────────────────────────────────────────────────────────
    REM 系统文件检查和修复
    sfc /scannow
    DISM /Online /Cleanup-Image /ScanHealth
    DISM /Online /Cleanup-Image /CheckHealth
    DISM /Online /Cleanup-Image /RestoreHealth
    cls
    echo.
    echo  ╔════════════════════════════════════════════════════════════════════════════╗
    echo  ║                          系统修复完成！                                  ║
    echo  ╚════════════════════════════════════════════════════════════════════════════╝
    echo  ─────────────────────────────────────────────────────────────────────────────
    echo  操作已完成，3秒后返回主菜单……
    timeout /t 3 /nobreak >nul
    goto start
) else if "%choice%"=="4" (
    cls
    echo.
    echo  ╔════════════════════════════════════════════════════════════════════════════╗
    echo  ║                              [ 工具箱 ]                                  ║
    echo  ╠════════════════════════════════════════════════════════════════════════════╣
    echo  ║                                                                          ║
    echo  ║         更多功能尽情期待……                                                ║
    echo  ║                                                                          ║
    echo  ╚════════════════════════════════════════════════════════════════════════════╝
    echo  ─────────────────────────────────────────────────────────────────────────────
    echo  即将返回主菜单……
    timeout /t 5 /nobreak >nul
    goto start
) else if "%choice%"=="5" (
    :setting_menu
    cls
    echo.
    echo  ╔════════════════════════════════════════════════════════════════════════════╗
    echo  ║                                 [ 设置 ]                                 ║
    echo  ╠════════════════════════════════════════════════════════════════════════════╣
    echo  ║                                                                          ║
    echo  ║      1. 主题设置                                                          ║
    echo  ║                                                                          ║
    echo  ╚════════════════════════════════════════════════════════════════════════════╝
    echo.
    set /p set_choice=  请输入选项（如1，回车返回主菜单）： 
    if "%set_choice%"=="1" (
        cls
        echo.
        echo  ╔════════════════════════════════════════════════════════════════════════╗
        echo  ║                              [ 主题设置 ]                             ║
        echo  ╠════════════════════════════════════════════════════════════════════════╣
        echo  ║                                                                      ║
        echo  ║      1. 浅色主题（白底蓝字）                                           ║
        echo  ║      2. 深色主题（黑底绿字）                                           ║
        echo  ║                                                                      ║
        echo  ╚════════════════════════════════════════════════════════════════════════╝
        echo.
        set /p theme_choice=  请输入选项（1-2）： 
        REM 精确匹配，只允许1或2
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
            echo  ╔════════════════════════════════════════════════════════════════════════╗
            echo  ║                              [ 错误 ]                               ║
            echo  ╠════════════════════════════════════════════════════════════════════════╣
            echo  ║      无效选项，按任意键返回设置菜单……                               ║
            echo  ╚════════════════════════════════════════════════════════════════════════╝
            pause >nul
            goto setting_menu
        )
        color %theme%
        echo.
        echo  主题已切换，按任意键返回设置菜单，重启软件生效……
        pause >nul
        goto setting_menu
    ) else if "%set_choice%"=="" (
        goto start
    ) else (
        echo.
        echo  ╔════════════════════════════════════════════════════════════════════════╗
        echo  ║                              [ 错误 ]                               ║
        echo  ╠════════════════════════════════════════════════════════════════════════╣
        echo  ║      无效选项，按任意键返回设置菜单……                                 ║
        echo  ╚════════════════════════════════════════════════════════════════════════╝
        pause >nul
        goto setting_menu
    )
) else (
    color 1C
    echo.
    echo  ╔════════════════════════════════════════════════════════════════════════════╗
    echo  ║                              [ 错误 ]                                   ║
    echo  ╠════════════════════════════════════════════════════════════════════════════╣
    echo  ║      无效的选项，请重新选择 1-5 之间的选项。                               ║
    echo  ╚════════════════════════════════════════════════════════════════════════════╝
    timeout /t 4 >nul
    color %theme%
    goto start
)
echo.
echo  ╚════════════════════════════════════════════════════════════════════════════════╝
echo  ║                   ? 2025 沈胤之. 保留所有权利.                              ║
echo  ╚════════════════════════════════════════════════════════════════════════════════╝