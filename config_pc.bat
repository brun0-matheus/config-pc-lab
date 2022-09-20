set VSCODE_DOWNLOAD=%userprofile%\Downloads\vscode.zip
curl https://az764295.vo.msecnd.net/stable/74b1f979648cc44d385a2286793c226e611f59e7/VSCode-win32-x64-1.71.2.zip --output %VSCODE_DOWNLOAD%

set PATH=%PATH%;C:\Program Files\7-Zip\
7z x %VSCODE_DOWNLOAD% -o%userprofile%\Desktop\VSCode

set SETTINGS_PATH=%appdata%\Code\User
mkdir %SETTINGS_PATH%
curl https://raw.githubusercontent.com/brun0-matheus/config-pc-lab/main/settings.json --output %SETTINGS_PATH%\settings.json

wsl --install -d Ubuntu

set /P fds=Aperte enter quando o wsl terminar a instalacao

wsl -e bash -c "sudo sed -i -e 's/archive.ubuntu.com/sft.if.usp.br/' /etc/apt/sources.list && sudo apt-get update && sudo apt-get install build-essential -y"
