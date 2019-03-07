# Chapter 1 - Introduction

## Welcome to Salt Enterprise I Training

The purpose of this course is to train the attendee on the broad functionality of Salt through lecture discussions and hands-on labs. This course is focused on the fundamental skills needed to be a Salt Enterprise administrator.

### Objectives
In this section we will discuss the following:

* Introductions
* Class logistics
* Lab environment


### Introductions
The better we know you before we dive into Salt, the better we will be able to adjust the class to meet your needs.

Introduce yourself:

* Name
* Company
* Title
* Experience with Salt
* Something about yourself that is not related to computers; i.e. a separate hobby


### Class Logistics
The presentation will generally follow the content in the manual. Some material in the manual may not be presented in the slides.

The instructor will be available during the lab-time to assist in any questions or difficulties encountered by students.

* Class Schedule:
  * 5-day class: 9 am - 1 pm (MST)
  * 3-day class: 9 am - 5 pm (MST)
  * In certain situations, the instructor may alter these times to better suit the needs of the class.
* Breaks:
  * In general, breaks will occur about after about an hour and half; please let your instructor know your preference if it differs.
  * The timing of breaks may be dependent upon the circumstances surrounding the class.
  * The instructor, at their discretion, may select alternate times for breaks which may be more appropriate for that class's situation.

### Emergency Exits and Restrooms
The instructor/training center will direct students to the locations of the restrooms and any emergency exits and evacuation plans.

If circumstances occur which prevents a student from attending part of the class, it is appreciated for the student to let the instructor know as soon as possible.


## Lab Environment

At the end of most chapters, one or more lab items will be available to help further the students' knowledge of the material covered.

Labs will be performed in a live, cloud-based environment which mimics real-life situations.

### Be Respectful
The labs are set up in a cloud environment shared by all students. It is your responsibility to act respectfully to your fellow students, SaltStack, and the cloud provider.

* We will all be sharing the same API key so be careful.
* Follow lab instructions.
* Do not create extra VMs or any larger than the lab states.

Any malicious, abusive, or careless actions in the lab will not be tolerated and may result in the student being removed from the class without any refund. Such individual will be monetarily responsible for any additional expense.

### Lab Goals
The labs in this course are designed to guide the student through configuring and installing a small to moderate sized Salt-based infrastructure.


At the end of the course, it is expected that a student will have obtained the required knowledge to manage an infrastructure of a reasonable size and complexity.

* Hands-on Salt experience
* Reinforced concepts
* Working knowledge of configuration management using Salt

note: The lab environments will be deleted at the end of the class.


## Manual Conventions
In this manual, you will find many text styles that distinguish different kinds of information. Here are some examples and an explanation of their meanings.


A block of code looks like the following:

```
# File: /srv/salt/apache/init.sls
install_apache:
  pkg.installed:
    - name: httpd
```

A command that should be run from the command line.

```
$ salt '*' test.ping
```

A command followed by it's results.

```
$ salt-key -L
Unaccepted Keys:
salt-master
Accepted Keys:
Rejected:
```

Text clarifications

```
-l  =   dash and the letter l
 1  =   number one
 0  =   zero
 O  =   uppercase letter "O"
```

