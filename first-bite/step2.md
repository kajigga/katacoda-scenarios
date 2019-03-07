## 2.7 Salt Management Concept Lab


### 2.7.1 Access the Training Portal
A login to the class website will be provided.

<https://training.saltstack.com>

On the training portal you will find posted the public IP address of your Salt Master server.

### 2.7.2 Log into the SaltStack Console
Using a supported web browser (current versions of Google Chrome or Mozilla), go to your master server.

For example:

```
htts://<ip address>
```
Be sure to use <code>https:</code>. Because we are in lab environment, we are not going to worry about a signed certificate. Just click on the “Advanced” link and choose to “Proceed to <website address> (unsafe)“.

Then logon using these credentials:

  User Name: <b>root</b><br>
  Password: <b>salt</b><br>

### 2.7.3 Become Familiar With console

On the left hand side you will see 4 Icons. This is the main menu which has icons for <b>Targets, Jobs, Reports and Settings.</b>

![Main Menu](main_icons.png)

1. Select <b>Targets - All Minions</b> and check if your master is shown  
2. Chose other Targets to determine which ones your master is a member of.
3. View the list of Jobs in the Job List. Most in the list are predefined and installed with the console. One of the jobs was defined when the class was setup.

### 2.7.3 Deploy Minions

1. Select the Job named "Deploy Lab Minions"

![Deploy Minions](deploy_minion_job.png)

2. Select the RUN NOW icon in the job details **NOTE: ONLY RUN THE JOB ONCE!**

![Run Job](run_job.png)

3. Select <b>Notify on Job Completion</b>
4. Select <b>Notify on Job Failure</b>
5. Select <b>Run</b>

### 2.8.6 View New Minions

1. Select <b>Targets \> All Minions</b> and check if your new minions are shown. It may take a few minutes for the new minions to display in the console.
2. Chose other Targets to determine which ones your minions are members of.

#### End of Lab




----
Render port 8500: https://[[HOST_SUBDOMAIN]]-8500-[[KATACODA_HOST]].environments.katacoda.com/

Render port 80: https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/

Display page allowing user to select port:
https://[[HOST_SUBDOMAIN]]-[[KATACODA_HOST]].environments.katacoda.com/
    
