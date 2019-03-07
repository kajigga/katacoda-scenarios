# Remote Execution

Remote execution is the idea that you can command minions [definition needed] to execute a command. With SaltStack, the master only publishes a job [description needed]. Every connected minion sees this published job. A minion will executes that job if it determines that it is in the target [definition needed].

## How this Katacoda course works

Before we go too far, take a moment to familiarize yourself with how this katacoda system works.

To the right you have a terminal window where you can type commands. There will sometimes be commands in the text that you can click on and the command  will be entered for you.

Let try it. We want the salt master to request that all minions execute a very simple `test.ping` command.

Click on this commmand `salt \* test.ping`{{execute}} to have it entered into the terminal window for you.

Now enter the command `salt \* test.version`{{copy}} yourself in the terminal window. You can type it in or click on the command here to copy it.

These are two ways you will interact with the terminal during this course. There are other tools that you will use but we will discuss those when they become relevant.



----
Go to the docker folder `cd ~/tutorial/docker`{{execute}}.

Allow a code block to be executed `docker container ls`{{execute}}


Allow a code block to be copied `some-command`{{copy}}

>>Q1: Enter the extract string test<<
=== test

>>Q2: Enter the string containing test<<
=~= test

>>Q3: Multiple Choice <<
[*] Correct
[*] Correct
[ ] Incorrect

>>Q4: Single Choice <<
(*) Correct
( ) Incorrect
