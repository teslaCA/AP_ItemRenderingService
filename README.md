# ap-irs
Used in conjunction with Smarter Balanced Item Viewing Service (IVS), the Item Rendering Service (IRS) Renders items from the item bank.

* Clones the item repository into local IRS file system
* Copies repository files to IVS service file system
* Calls IVS Reload endpoint to pick up configuration for selected item
* Returns the IVS Url that should be used to render this Item in calling application

## Technologies

* Spring Boot
* Spring Dev Tools
* Gradle

Installing Gradle separately is not required.  It is recommended
to use the Gradle Wrapper.

## External Dependencies

IRS depends on a running instance of Smarter Balanced Item Viewing Service (IVS). It also needs access to the IVS file system.

## Build Commands

Build: ```./gradlew clean build```

Build skip tests: ```./gradlew clean build -x test```

Run: ```./gradlew bootRun```

### Developer

Developers should use the alias ```gw``` as it starts the Gradle daemon
and is easy to type.

Build: ```./gw clean build```

Build skip tests: ```./gw clean build -x test```

Run: ```./gw bootRun```

## Item Viewing Service (IVS)

Smarter Balanced IVS service is currently a docker image accessible in docker hub.

A running instance of IVS is required for IRS to successfully return an Item preview Url.

Follow these steps to stand-up a local instance of IVS:
* Clone this repository
* Open a Terminal window and navigate to src\main\docker\ivs
* Run: ```docker-compose up```

This will stand-up an instance of the most recent IVS docker image

Important configuration settings within docker-compose.yml
* The IVS instance runs on port 8200
* The IVS local file system is configured to point to ```${HOME}/ItemBankIVS/``` this setting needs to match the ```ivsBaseDir``` in ```application.yml```

## application.yml

Spring Boot applications utilize the file ```application.yml```.  It defines
the configuration for the application.

The classpath ```application.yml``` located at ```src/main/resources``` defines
static configuration that is constant across all environments.

Located in the application root is ```application.yml```.  It defines the configuration
for *development only*.  This file is automatically picked up by Spring Boot
when the application is executed from the root of the project.  This file is not
included in the built JAR.

**IDE**

Intellij is the recommended IDE.  Spring Tool Suite is another option as it
has great support for Spring Boot applications.

Keep in mind with Intellij you will need to set the 'Working Directory' in the run configuration
to the root of the project so the development ```application.yml``` is picked up.
