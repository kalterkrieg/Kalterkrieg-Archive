@echo off
Copy "./descriptor.mod" "../kalterkrieg-archive.mod"
set "CD=%CD:\=/%"
echo path="%CD%">>../kalterkrieg-archive.mod
echo Descriptor set up successfully. Mod installed as Kalterkrieg - Archive 0.1.
pause