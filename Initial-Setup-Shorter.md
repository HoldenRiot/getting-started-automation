# Initial Setup Guide

## Getting Started with Automated Testing

This ReadMe is a guide to getting everything you need to start automation testing web & mobile apps. 

### Before you go any further, please Select your OS Below to ensure you follow the correct instructions.

# Setup on Mac OS:

1. Clone this project.

2. In a new Terminal Window, Navigate to the `/getting-started/` directory where you cloned this project.

3. Run the `mac-setup` by typing $ `./mac-setup` in Terminal.

4. Check *Environment variables* are setup correctly by typing the following in a **New Terminal Window**:
- **`echo $JAVA_HOME`**
  - If correct, You should see something like: `/Library/Java/JavaVirtualMachines/jdk1.8.0_171.jdk/Contents/Home`

- **`echo $PATH`**
  - If correct, You should see something like: 
    ```/usr/local/apache-maven/apache-maven-3.5.4/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/share/dotnet:~/.dotnet/tools:/Library/Frameworks/Mono.framework/Versions/Current/Commands:/Applications/Xamarin Workbooks.app/Contents/SharedSupport/path-bin```

- **`mvn -version`**
  - If correct, You should see something like: `Apache Maven 3.5.4 (1edded0938998edf8bf061f1ceb3cfdeccf443fe; 2018-06-17T14:33:14-04:00)Maven home: /usr/local/Cellar/maven/3.5.4/libexecJava version: x.x.x_xxx, vendor: Oracle Corporation, runtime: /Library/Java/JavaVirtualMachines/jdkx.x.x_xxx.jdk/Contents/Home/jre
  Default locale: en_US, platform encoding: UTF-8
  OS name: "mac os x", version: "10.13.5", arch: "x86_64", family: "mac"`

- **`javac -version`**
  - If correct, You should see something like: `javac 1.8.x_xxx`

Still having Issues with Setup on Mac OS? View the Help Guides:
- [How to Install Java SDK & Maven on Mac OS using HomeBrew](https://www.youtube.com/watch?v=vHGdjKuXKAs&feature=youtu.be)

# Setup on Windows:

### Shorter Windows Setup: (Recommended)

1. Clone and Run `win-setup` Batch File as Administrator.

2. Check *Environment variables* are setup correctly by typing the following in a **New Terminal Window**:
- **`echo %JAVA_HOME%`**
  - If correct, You should see something like: `/Library/Java/JavaVirtualMachines/jdk1.8.0_171.jdk/Contents/Home`

- **`echo %PATH%`**
  - If correct, You should see the path of Maven installed displayed. 

- **`mvn -version`**
  - If correct, You should see the Version of Maven installed displayed.

- **`javac -version`**
  - If correct, You should see something like: `javac xx.x.x`
 
 3. Enter Windows Environment Variables: (If You do not see all the above displayed correctly)

   1. In Search, search for and then select: System (Control Panel)

   2. Click the Advanced system settings link.

   3. Click Environment Variables. In the section System Variables, find the PATH environment variable and select it. Click Edit. If the PATH environment variable does not exist, click New.

   4. In the Edit System Variable (or New System Variable) window, specify the value of the PATH environment variable. Click OK. Close all remaining windows by clicking OK.

   5. Reopen Command prompt window, and run your java code.

   6. Add the Java "/bin" folder to the path if it hasn't been added. (See Step 2) e.g. `C:\Program Files\Java\jdkx.x.x_xxx\bin`

   7. Create a `JAVA_HOME` environment variable for the root path. e.g. `C:\Program Files\Java\jdkx.x.x_xxx`.

   8. Add `C:\maven_3_3_9\bin` to the PATH in System Variables.

   9. Add `CHROMEDRIVER_HOME` environment variable to Chromedriver.exe location. (E.g. User\drivers\chromedriver.exe).

   10. Add `GECKODRIVER_HOME` environment variables to Geckodriver.exe location (E.g. User\drivers\geckodriver.exe).

       - **Note:** On `CHROMEDRIVER_HOME` and `GECKODRIVER_HOME`, be sure that is the exact path to the .exe of chromedriver/geckodriver!
       
### [View the Longer Windows Setup](https://github.com/HoldenRiot/getting-started-automation/blob/master/Initial-Setup-Longer.md)

Still having Issues with Setup on Windows? View the Help Guides:

- [How to Install Maven on Windows](https://www.mkyong.com/maven/how-to-install-maven-in-windows/)
- [How-To Install Maven and Java JDK on Windows 10](https://www.youtube.com/watch?v=1bDd5B8TA2g&feature=youtu.be)

**[Back To Table of Contents](https://github.com/HoldenRiot/getting-started-automation/blob/master/1-Start-Here.md)**
