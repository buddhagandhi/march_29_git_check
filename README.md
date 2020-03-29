## Setup before downloading repo
[Install Pipenv](https://github.com/pypa/pipenv)
[Webdriver Installation](https://github.com/robotframework/SeleniumLibrary#browser-drivers)

## Browserstack
```
./BrowserStackLocal --key <browser stack key>
```

## Steps after the repo is copied.
1. In the command line type the below text. This will install all dependencies.
```
pipenv install
```
2. Activate the env.
```
pipenv shell
```

## Hiptest Publisher

[Hiptest Publisher Documentation](https://github.com/hiptest/hiptest-publisher).
### to stop tracking config file changes after pull.
```
git update-index --assume-unchanged hiptest-publisher.conf
```
`hiptest-publisher.conf` **file is needed. Below is an example.**
> ***Token can be found Under Project Settings > Test Code Generation in Hiptest.***

```
token = <TOKEN>
not_recursive = false
split_scenarios = false
with_folders = true
keep_filenames = false
keep_foldernames = false
empty_folders = false
leafless_export = false
no_uids = false
no_parent_folder_tags = false
with_dataset_names = false
language = robotframework
output_directory = './'
overriden_templates = './templates'
site = https://app.hiptest.com
```
###  To see added actionwards to add to `keyword.robot` file
**1. Show actionwords diff since last update (summary) (default: false)**
```
hiptest-publisher -c hiptest-publisher.conf --show-actionwords-diff
```
**2. Export actionwords signature (default: false) > Must answer 'y'**
>***This command should be done after all actionwords have been updated***
```
hiptest-publisher -c hiptest-publisher.conf  --actionwords-signature
```
###  To pull down test scenarios from Hiptest (filename changes to .robot)
```
hiptest-publisher -c hiptest-publisher.conf --filename-pattern=%s.robot --overriden-templates=templates --test-run-id 293472 --without=actionwords
```
###  Posting results to HipTest
```
hiptest-publisher -c hiptest-publisher.conf --overriden-templates=templates --push Results/output.xml --test-run-id 293472 --push-format robot
```

## Robot Framework Commands

[Robot Framework Documentation](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#output-directory)
[Robot Framework SeleniumLibrary](http://robotframework.org/SeleniumLibrary/SeleniumLibrary.html)
***`<env>` (lowercase) provides what Environment to run test on***
1. dev
2. qa
3. staging
4. prod

###  To Run All Tests
```
pipenv run robot -N <create suite name> -v ENVIRONMENT:<env> -v EMAIL:<email> -v PW:<password> -d Results/ test_suites/
```
###  To Run Tests By Tag
```
pipenv run robot -N <create suite name> -v ENVIRONMENT:<env> -v EMAIL:<email> -v PW:<password> -d Results/ -i <tag> test_suites/
```
###  To Rerun Failed Tests
```
pipenv run robot -N <original suite name> -v ENVIRONMENT:<env> -v EMAIL:<email> -v PW:<password> -d Results/ -o rerun.xml --rerunfailed Results/output.xml test_suites/
```
###  Merge Results
```
pipenv run rebot -d Results/ -o output.xml --merge Results/output.xml Results/rerun.xml
```