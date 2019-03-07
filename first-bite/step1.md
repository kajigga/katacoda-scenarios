# Remote Execution

Remote execution is the idea that you can command minions [definition needed] to execute a command. With SaltStack, the master only publishes a job [description needed]. Every connected minion sees this published job. A minion will executes that job if it determines that it is in the target [definition needed].

## How this course works

Before we go too far, take a moment to familiarize yourself with how this course works.

You may have noticed a whole lot of stuff happening in the right hand side of this window. This is the terminal console that you will use to enter commands and interact with the SaltStack system prepared. We are using docker to launch several virtual machines and finally enter the SaltMaster itself.

This left-hand side will contain information, instructions, and self-assessment questions. You will sometimes find links you can click on to have commands entered into the console.

Let try it. We want the salt master to request that all minions execute a very simple `test.ping` command.

Click on this commmand `salt \* test.ping`{{execute}} to have it entered into the terminal window for you.

Now enter the command `salt \* test.version`{{copy}} yourself in the terminal window. You can type it in or click on the command here to copy it.

These are two ways you will interact with the terminal during this course. There are other tools that you will use but we will discuss those when they become relevant.



>>True/False: The SaltStack master executes commands on the minions <<
() Correct
(*) Incorrect
