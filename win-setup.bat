@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
choco feature enable -n allowGlobalConfirmation
choco install intellijidea-community
WshShell.SendKeys "{ENTER}"
choco install vscode
choco install googlechrome
choco install firefox
choco install jdk10
choco install maven
choco install selenium
choco upgrade selenium-all-drivers
choco install wget
choco install git
choco install docker
choco install curl
choco install nodejs
npm install -g @angular/cli
echo Initial setup Complete.  Have a great day!
echo ----------
echo The Following has been installed on your machine:
echo Node, Wget, Git, Docker, Curl, Angular, Protractor, Serverless, IntelliJ IDE, Visual Studio Code, Google Chrome, Firefox, Java, Chromedriver, Geckodriver, IEdriver, Edgedriver, Operadriver, and Maven.
echo 
echo Please visit the Initial-Setup ReadMe to check and finish the Setup.

