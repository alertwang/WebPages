@echo off
rem set SVN_BINDIR=d:/Subversion/bin
setlocal
set REPOS=%1
set TXN=%2
rem check that logmessage contains at least 6 characters
rem %SVN_BINDIR%/svnlook log "%REPOS%" -t "%TXN%" | findstr "......" > nul
svnlook log "%REPOS%" -t "%TXN%" | findstr "......" > nul
if %errorlevel% gtr 0 goto err
exit 0
:err
echo 请输入本次提交修改日志,且不得少于6个字符! 1>&2
exit 1
