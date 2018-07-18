# Initial Setup Guide
## Getting Started with Automated Testing

This ReadMe is a guide to getting everything you need to start automation testing web & mobile apps. 

### Before you go any further, please Select your OS Below to ensure you follow the correct instructions.
#### [MacOS](https://gitlab.com/DMI-TA/getting-started/blob/master/Initial-Setup.md#macos)
#### [Windows](https://gitlab.com/DMI-TA/getting-started/blob/master/Initial-Setup.md#windows)

# Setup on Mac OS:
1. Create a Folder Directory called `Drivers` in your `/Users/YourUserNameHere/` Directory where YourUserNameHere is your Mac Username.

2. Download [ChromeDriver](http://chromedriver.chromium.org/downloads), and extract to your newly created `/Users/YourUserNameHere/drivers/`

3. Download [GeckoDriver](https://github.com/mozilla/geckodriver/releases), and extract to `/Users/YourUserNameHere/drivers/`

4. Install [Homebrew](https://brew.sh/) 
    - `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
` into Terminal window   

5. After installing [Homebrew](https://brew.sh/), Open a new Terminal Window and Do the Following: 
    - `brew update`   -- (to check for updates)
    - `brew upgrade` -- (to apply updates)
    - `brew cask install java`
    - `brew install maven`

6. In a Terminal Window, Do the Following:
- `nano .bash_profile` (To create a Bash Profile)
    - In your `.bash_profile`, make it look like the following: 
```
export M2_HOME=/usr/local/apache-maven/apache-maven-3.5.4
export M2=$M2_HOME/bin
export PATH=$M2:$PATH
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
# System Variables
export SAUCE_USERNAME=userNameHere
export SAUCE_ACCESS_KEY=keyHere
export BROWSERSTACK_USER=userNameHere
export BROWSERSTACK_ACCESSKEY=keyHere
export APPLITOOLS_KEY=keyHere
export CHROMEDRIVER_HOME=/Users/USERNAMEHERE/drivers/chromedriver
export GECKODRIVER_HOME=/Users/USERNAMEHERE/drivers/geckodriver 
```

**Note:** On `CHROMEDRIVER_HOME` and `GECKODRIVER_HOME`, be sure that is the exact path to the .exe of chromedriver/geckodriver! (See Steps 1-3)

7. Check to ensure the environment variables are setup correctly by typing the following in a **New Terminal Window**:
- **`echo $JAVA_HOME`**
    - If correct, You should see something like: `/Library/Java/JavaVirtualMachines/jdk1.8.0_171.jdk/Contents/Home` 
        - If incorrect, see Step 1 & 4. (Install Java JDK and Set Environment Variable).  


- **`echo $PATH`** 
    - If correct, You should see something like: 
        ```/usr/local/apache-maven/apache-maven-3.5.4/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/share/dotnet:~/.dotnet/tools:/Library/Frameworks/Mono.framework/Versions/Current/Commands:/Applications/Xamarin Workbooks.app/Contents/SharedSupport/path-bin```
        - If incorrect, See Step 5 & 6. (Install Maven and Set Environment Variable)

- **`javac -version`**
    - If correct, You should see something like: `javav 1.8.x_xxx`
        - If incorrect, See Step 5 & 6.

- **`mvn - version`**
    - If correct, You should see something like: `Apache Maven 3.5.4 (1edded0938998edf8bf061f1ceb3cfdeccf443fe; 2018-06-17T14:33:14-04:00)
Maven home: /usr/local/Cellar/maven/3.5.4/libexec
Java version: x.x.x_xxx, vendor: Oracle Corporation, runtime: /Library/Java/JavaVirtualMachines/jdkx.x.x_xxx.jdk/Contents/Home/jre
Default locale: en_US, platform encoding: UTF-8
OS name: "mac os x", version: "10.13.5", arch: "x86_64", family: "mac"`
- If incorrect, See Step 5 & 6. 

Still having Issues with Setup on Mac OS? View the Help Guides:
- [How to Install Java SDK & Maven on Mac OS using HomeBrew](https://www.youtube.com/watch?v=vHGdjKuXKAs&feature=youtu.be)

# Setup on Windows:

### Shorter Windows Setup: (Recommended)
1. Create a Folder Directory called `Drivers` in your `/User/` Directory where YourUserNameHere is your Windows Username.

2. Download [ChromeDriver](http://chromedriver.chromium.org/downloads), and extract to your newly created `\User\drivers\`

3. Download [GeckoDriver](https://github.com/mozilla/geckodriver/releases), and extract to `\User\drivers\`

4. Download and Install Chocolatey
    - Follow Install Instructions [here](https://chocolatey.org/install).
    - Using the [Chocolately Package page](https://chocolatey.org/packages), we can find what we need. (Search isn't always teh best so using Google as well "site:chocolatey.org Java JDK") (or chocolate search "tag:jdk").

5. Open a New Command Prompt/Terminal window and enter the following to install Java, Maven, and IntelliJ: 
    - `choco install jdk10`
    - `choco install maven`

6. Setting your Evironment Variables:
- Enter Windows Environment Variables:
    1. In Search, search for and then select: System (Control Panel)
    2. Click the Advanced system settings link.
    3. Click Environment Variables. In the section System Variables, find the PATH environment variable and select it. Click Edit. If the PATH environment variable does not exist, click New.
    4. In the Edit System Variable (or New System Variable) window, specify the value of the PATH environment variable. Click OK. Close all remaining windows by clicking OK.
    5. Reopen Command prompt window, and run your java code.

- Add the Java "/bin" folder to the path if it hasn't been added. (See Step 2) e.g. `C:\Program Files\Java\jdkx.x.x_xxx\bin`
- Create a `JAVA_HOME` environment variable for the root path. e.g. `C:\Program Files\Java\jdkx.x.x_xxx`.
- Add `C:\maven_3_3_9\bin` to the PATH in System Variables.
- Set `CHROMEDRIVER_HOME` environment variable to Chromedriver.exe location. (E.g. User\drivers\chromedriver.exe).
- Set `GECKODRIVER_HOME` environment variables to Geckodriver.exe location (E.g. User\drivers\geckodriver.exe).
    - **Note:** On `CHROMEDRIVER_HOME` and `GECKODRIVER_HOME`, be sure that is the exact path to the .exe of chromedriver/geckodriver!

7. Check to ensure the environment variables are setup correctly by typing the following in a **New Command Prompt/Terminal Window**:
- **`javac -version`** 
    - If correct, You should see the version of Java installed displayed
        - If incorrect, see Step 1 & 4. (Install Java JDK).  
    
- **`mvn -version`** 
    - If correct, You should see the version of mvn installed displayed
        - If incorrect, see Step 2 % 4. 

- **`echo %JAVA_HOME%`** 
    - If correct, You should see the path of Java installed displayed
        - If incorrect, see Step 1 & 4. 

- **`echo %PATH%`** 
    - If correct, You should see the path of Maven installed displayed
        - If incorrect, see Step 2 & 4.

### Longer Windows Setup:
1. Create a Folder Directory called `Drivers` in your `\User\` Directory where YourUserNameHere is your Windows Username.

2. Download [ChromeDriver](http://chromedriver.chromium.org/downloads), and extract to your newly created `\User\drivers\`

3. Download [GeckoDriver](https://github.com/mozilla/geckodriver/releases), and extract to `\User\drivers\`

4. Download & Install [Java JDK](http://www.oracle.com/technetwork/java/javase/downloads/index.html). (Download the JDK, not JRE). e.g ``C:\Program Files\Java\jdkx.x.x_xxx`(Where the X's are the version you installed.)

5. Download and Install [Maven](http://maven.apache.org/download.html#Installation).
    - Download and Unzip Maven to a directory (avoid one with spaces in it). 
        - e.g. `C:\maven_3_3_9`

6. Setup Environment Variables.
- Enter Windows Environment Variables:
    1. In Search, search for and then select: System (Control Panel)
    2. Click the Advanced system settings link.
    3. Click Environment Variables. In the section System Variables, find the PATH environment variable and select it. Click Edit. If the PATH environment variable does not exist, click New.
    4. In the Edit System Variable (or New System Variable) window, specify the value of the PATH environment variable. Click OK. Close all remaining windows by clicking OK.
    5. Reopen Command prompt window, and run your java code.
- Add the Java "/bin" folder to the path if it hasn't been added. (See Step 2) e.g. `C:\Program Files\Java\jdkx.x.x_xxx\bin`
- Create a `JAVA_HOME` environment variable for the root path. e.g. `C:\Program Files\Java\jdkx.x.x_xxx`.
- Add `C:\maven_3_3_9\bin` to the PATH in System Variables.
- Add `CHROMEDRIVER_HOME` environment variable to Chromedriver.exe location. (E.g. User\drivers\chromedriver.exe).
- Add `GECKODRIVER_HOME` environment variables to Geckodriver.exe location (E.g. User\drivers\geckodriver.exe).
    - **Note:** On `CHROMEDRIVER_HOME` and `GECKODRIVER_HOME`, be sure that is the exact path to the .exe of chromedriver/geckodriver!

7. Check to ensure the environment variables are setup correctly by typing the following in a **New Command Prompt/Terminal Window**:
- **`javac -version`** 
    - If correct, You should see the version of Java installed displayed
        - If incorrect, see Step 1 & 4 (Install Java JDK). 
   
- **`mvn -version`** 
    - If correct, You should see the version of mvn installed displayed
        - If incorrect, see Step 2 % 4. 

- **`echo %JAVA_HOME%`** 
    - If correct, You should see the path of Java installed displayed
        - If incorrect, see Step 1 & 4. 

- **`echo %PATH%`** 
    - If correct, You should see the path of Maven installed displayed
        - If incorrect, see Step 2 & 4.

Still having Issues with Setup on Windows? View the Help Guides:
- [How to Install Maven on Windows](https://www.mkyong.com/maven/how-to-install-maven-in-windows/)
- [How-To Install Maven and Java JDK on Windows 10](https://www.youtube.com/watch?v=1bDd5B8TA2g&feature=youtu.be)

**[Back To Table of Contents](https://gitlab.com/DMI-TA/getting-started/blob/master/1-Start-Here.md)**