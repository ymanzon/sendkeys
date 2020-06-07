@if (@CodeSection == @Batch) @then


@echo off

rem Use %SendKeys% to send keys to the keyboard buffer
set SendKeys=CScript //nologo //E:JScript "%~F0"

rem Start the other program in the same Window
start "" /B cmd

rem iniciando cmd de forma maximizada
rem start /max "" cmd

%SendKeys% "echo checking keys..."

%SendKeys% "echo BACKSPACE {BACKSPACE}"
%SendKeys% "echo BS {BS}"
%SendKeys% "echo BKSP {BKSP}"
%SendKeys% "echo BREAK {BREAK}"
%SendKeys% "echo CAPSLOCK {CAPSLOCK}"
%SendKeys% "echo DELETE {DELETE} or {DEL}"
%SendKeys% "echo DOWN {DOWN}"
%SendKeys% "echo END {END}"
%SendKeys% "echo ENTER {ENTER} or ~"
%SendKeys% "echo ESC {ESC}"
%SendKeys% "echo HELP {HELP}"
%SendKeys% "echo HOME {HOME}"
%SendKeys% "echo INSERT {INSERT} or {INS}"
%SendKeys% "echo LEFT {LEFT}"
%SendKeys% "echo NUMLOCK {NUMLOCK}"
%SendKeys% "echo PGDN {PGDN}"
%SendKeys% "echo PGUP {PGUP}"
%SendKeys% "echo PRTSC {PRTSC}"
%SendKeys% "echo RIGHT {RIGHT}"
%SendKeys% "echo SCROLLLOCK {SCROLLLOCK}"
%SendKeys% "echo TAB {TAB}"
%SendKeys% "echo UP {UP}"
%SendKeys% "echo F1 {F1}"
%SendKeys% "echo F2 {F2}"
%SendKeys% "echo F3 {F3}"
%SendKeys% "echo F4 {F4}"
%SendKeys% "echo F5 {F5}"
%SendKeys% "echo F6 {F6}"
%SendKeys% "echo F7 {F7}"
%SendKeys% "echo F8 {F8}"
%SendKeys% "echo F9 {F9}"
%SendKeys% "echo F10 {F10}"
%SendKeys% "echo F11 {F11}"
%SendKeys% "echo F12 {F12}"

%SendKeys% "echo {+}"
%SendKeys% "echo {^}"
%SendKeys% "echo {%}"

%SendKeys% "echo finish{ENTER}"
%SendKeys% "echo exit{ENTER}"

goto :EOF


@end


// JScript section

var WshShell = WScript.CreateObject("WScript.Shell");
WshShell.SendKeys(WScript.Arguments(0));