# How to contribute to the Development of macchinetta-web-blank repository.

This document describes how to contribute the macchinetta-web-blank updates.

The macchinetta-web-blank is a [Maven](https://maven.apache.org/) based blank java project template for a quick start.
See [Building a Project with Maven](https://maven.apache.org/run-maven/index.html)

Contribution procedures are follows:


## Create a new issue

Create a new issue from [here](https://github.com/Macchinetta/macchinetta-web-blank/issues/new) for contributing(bug report, improvement or new content), and get an issue number(tracking id).

> **Note: Supported language**
>
> English only.

* Write the contribution overview into the title area.
* Write the contribution detail into the comment area.

 e.g.)
 ```
 ## Description
 In pom.xml file, there is a mistake in the below sentence.

 `"<artifactId>projctName</artifactId>"`

 ## Possible Solutions
 Modify to `"<artifactId>projectName</artifactId>"`

 ## Affects Version/s
 * 1.5.0.RELEASE
 * 1.4.2.RELEASE

 ## Fix Version/s
 (To be written later by project member)

 ## Issue Links
 * https://github.com/Macchinetta/macchinetta-web-blank/issues/999
 ```

## Fork a repository

Fork the `Macchinetta/macchinetta-web-blank` into your account repository of GitHub.

* Click a "Fork" button on GitHub web user interface.


## Clone a repository

Clone a forked repository into your local machine.


e.g.)

```
git clone https://github.com/{your account}/macchinetta-web-blank.git
```


## Create a work branch

Create a work branch on the master branch into your local repository.

> **Note: Recommended work branch name**
>
> issues/{issue number}_{short description}

e.g.)

```
git checkout master
git checkout -b issues/999_typo-in-POM
```


## Modify the macchinetta-web-blank

Modify the macchinetta-web-blank for contributing, and confirm if other projects using the macchinetta-web-blank needs modification.


## Build projects and execute tests

Build all projects using the [Maven](https://maven.apache.org/), and execute tests.

```
cd {root directory of your local repository}
mvn clean install -f pom.xml
```
If a maven build fails or there is an error(s) in the application then modify the source code to remove the failure(s)/error(s).

Deploy the projectName project to application server, and access to "http://{Application Server IP}:{Port}/projectName/" on web browser.

Then, develop a sample application and confirm the execution result as needed.
If the result fails, modify the source code again.


## Commit the modification

Commit the modification.

> **Note: Commit comment format**
>
> "{modification overview} #{issue number}"

> **Note: Supported language**
>
> English only.

e.g.)

```
git commit -a -m "Fixes typos in POM #999"
```


## Push the work branch

Push the work branch to the GitHub.

e.g.)

```
git push origin issues/999_typo-in-POM
```


## Create a pull request

Create a pull request via GitHub web user interface.
For details, refer to the [GitHub document-Creating a pull request-](https://help.github.com/articles/creating-a-pull-request/).

> **Note: Supported language**
>
> English only.

* Write the modification overview into the title area and add the #{issue number} at its end. (Default is commit comment or work branch name)
* Write the modification detail into the comment area. (If needed)
* Include the issue number(`#{issue number}` format) to track the modification into the comment area.

e.g.)

| Area | Content |
| ----- | --------- |
| Title | Fixes typos in POM #999 |
| Comment | Please review #999 . |
