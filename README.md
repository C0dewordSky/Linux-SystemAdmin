# Linux SysAdmin

The *Linux SysAdmin* is a project to assess knowledge and practical skills in Linux system Administration. The project involves tasks related to user management and web server setup. 

This README provides detailed documentations on project objectives, tasks, setup instructions and evaluation criteria.

## Automation 

So I created a Shell Script named **user_mgmt.sh** to automate the entire process. You just have to have a Linux environment and have to run this script. This script will run, ask you for a username, check if its available. If not available, the Script will create a user with that particular name and a default password. And as soon as the user is created, it adds the name in the **usernames.txt** file and along with that open a webpage with a *welcome text*. 

**Note**: You can change the default password with the following command 
```bash
passwd username
```

## What You need to do?
 To update the bash script, make the required changes, edit the usernames.txt file with your usernames and its done.

## Project Objectives

The objective of this project is to demonstrate proficiency in Linux system administration concepts, including user management and web server setup. By completing the tasks in this project, you will showcase your skills in shell scripting, user management, and web server configuration.

### 1. User Management

**Task Description:** Create a shell script to automate user management tasks.

- Read a list of usernames from the "users.txt" file.
- For each username:
  - Check if the user already exists. If not, create the user with a default password.
  - Add the user to the "testgroup" group.
  - Print a message indicating whether the user was created or already existed.

**File:** `user_mgmt.sh`

### 2. Web Server Setup

**Task Description:** Install and configure a web server to serve a basic HTML page.

- Install a web server (e.g., Apache or Nginx) on your Linux system.
- Create an HTML file, "index.html," with a welcome message.
- Configure the web server to serve "index.html" as the default page.

**Files:** `index.html`

## Project Setup and Execution

1. Clone the repository to your local machine:

   ```bash
   git clone <repository_url>
   ```
Replace <repository_url> with the URL of this repository.

2. **User Management**:

- Edit the users.txt file and add the usernames, with each username on a *new line*.
- Execute the management script:

``` bash
./user_mgmt.sh
```
- The script will create users (if necessary) and add them to the "testgroup" group.

3. **Web Server Setup**:

- Install a web server (Apache or Nginx) on your Linux system using the appropriate package management command. eg:

```bash
sudo yum install nginx                                                 [For CentOS]

sudo apt update                                                        [For Ubuntu]
sudo apt install nginx
```
- Copy the index.html file to the default document root directory of your web server.
- Configure the web server to serve index.html as the default page.
- *Start* or *restart* the web server for the changes to take effect.

4. **Verification**:

- Access the IP address or hostname of your Linux system in a web browser.
- The browser should display the welcome message from the index.html file.
- Take a screenshot of the web page and save it as screenshot.png in the project directory.
