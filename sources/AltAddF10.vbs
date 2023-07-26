Dim wSShell
set WSShell = CreateObject("WScript.Shell")
wscript.sleep 1
wSShell.SendKeys ("%{F10}")
wscript.quit