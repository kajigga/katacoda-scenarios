# Chapter 2 - Salt Concepts and Terminology


## 2.1 Objectives

In this section we will discuss:

* Features of Salt
* Salt Management Concept
* Open Event System
* Introduction to Salt Terminology
* YAML Configuration File Format

The Salt platform, or simply `Salt` is a Python-based open-source remote execution framework for configuration management, automation, provisioning, and orchestration.


## 2.2 Features of Salt


Salt delivers a dynamic communication bus for infrastructures that can be used for:

* Remote Execution
* Configuration Management
* Automation and Orchestration
* Cloud Management

It supports the **Infrastructure as Code** approach to deployment and cloud management.


### 2.2.1 Remote Management

Running commands on remote systems is the core function of Salt. Salt can execute commands across thousands of systems in seconds.

### 2.2.2 Configuration Management

The Salt configuration management system is based on storing all configuration or "state" data inside an easily understood data structure.
The basic system is:

* Simple - easy to administer and manage
* Extensible - easy to add custom modules, or extend existing states
* Deterministic - executes in the same way every time
* Layerable - provides layers of data abstraction (e.g. states call execution modules)


### 2.2.3 Automation and orchestration

Executing remote management and configuration on a minion is perfect when you want to ensure that the minion is configured and running the way you want. Sometimes, however, you want to configure a set of minions all at once. For example, if you want to set up a load balancer in front of a cluster of web servers you can ensure the load balancer is set up first, and then the same matching configuration is applied consistently across the whole cluster. Orchestration is the way to do this.


### 2.2.4 Cloud Management

Salt Cloud provides a powerful interface to interact with cloud hosts. This interface is tightly integrated with Salt, and new virtual machines are automatically connected to your Salt Master after creation. Salt Cloud is the system used to provision virtual machines on various public clouds via a cleanly controlled profile and mapping system.

Multiple cloud providers can be configured on a single Salt Master. Salt Cloud deploys the Salt Minion as it creates new cloud instances.

![Salt Cloud](salt-cloud-intro.png)

Salt cloud provides provisioning of new instances in both public and private clouds


## 2.3 Salt Management Concepts

A SaltStack Enterprise implementation consists of an Enterprise system with one or multiple Salt Master(s) managing Salt Minions.

* The SaltStack Enterprise system is the heart of the Salt infrastructure, it is the Central Command and Control Interface. Multiple Salt Masters and their Salt Minions can be managed from here.
* A Salt Master is a server running the `salt-master` service that provides management to many systems.
* A Salt Minion is any system/device managed by Salt. A Salt Minion can run the `salt-minion` service or can be agent-less using `salt-ssh` or `salt-proxy`.


![Salt Stack Enterprise](enterprise_50_model.png)

SaltStack Enterprise Framework


### 2.3.1 SaltStack Enterprise

SaltStack Enterprise provides an intuitive user interface to perform complex functions like configuration management and orchestration. Jobs in SaltStack Enterprise can be built, stored, and scheduled so you spend less time and fewer resources executing routine functions. It also allows distributing the work to other skill-level employees and teams while securing your system and guarding the environment from the misuse of powerful tools.

SaltStack Enterprise features include:

* A web-based user interface
* Role-based access control
* Multi-master support
* Central job and event cache
* Scheduling UI
* LDAP and Active Directory integration
* Reporting
* An enterprise API (eAPI)


### 2.3.2 Salt Master

A server running the `salt-master` service is a Salt Master.
The Salt Master provides a cohesive platform for orchestration and automation between managed systems. Salt can be configured with redundant masters.

### 2.3.3 Salt Minion

A system under control of the master is considered a Salt Minion. However, minions do not require a master to be managed but can run in a stand-alone mode.

* The `salt-minion` service runs as a management agent on a system.
* The `salt-minion` service can run pretty much anywhere you can have a Python interpreter.


## 2.4 Salt Topology

Salt has two basic "channels" for communicating with minions. Each channel requires a client (minion) and a server (master) implementation to work within Salt. These pairs of channels will work together to implement the specific message passing required by the channel interface. Salt is based on a powerful, asynchronous, network topology. The central idea is to have the fastest communication possible.

### 2.4.1 Open Event System

The event system is used for both inter-process communication as well as network transport in Salt.

* Events are seen by both the master and minions.
* Events can be monitored and evaluated by both.
* The event bus lays the groundwork for orchestration and real-time monitoring.

![Event System](event-system.png)

The Salt event system execution architecture

All minions see jobs and results by subscribing to events published on the event system.


Salt uses a pluggable event system:
* ZeroMQ (0MQ) - the current default socket-level library providing a flexible transport layer.
* Tornado - full TCP-based transport layer event system.

Both the Salt Master and minion have a socket-level event system.

### 2.4.2 High-speed Communication Bus

One of the greatest strengths of Salt is the speed of execution. The socket-level event system provides a high-speed communication bus. The efficiency and scalability are possible because of the high-speed communication bus utilized by Salt and is more efficient than running a higher-level web services (http).

The remote execution system is at the heart of what makes Salt a powerful and useful platform. The remote execution system is the component that all components are built upon.


## 2.5 YAML Salt Configuration File Format

`YAML Ain't Markup Language` is a human friendly data serialization standard for all programming languages. It is not a markup language like XML which uses tags to "mark" text. YAML commonly focuses on data structures, such as lists and dictionaries, not document markup.

### 2.5.1 Rules of YAML

The default renderer for many of the files used in Salt is the YAML renderer. YAML is a markup language with many powerful features. However, Salt uses a small subset of YAML that maps over very commonly used data structures, like lists and dictionaries. It is the job of the YAML renderer to take the YAML data structure and compile it into a Python data structure for use by Salt.

There are basic rules for creating YAML:

* Data is structured in key: value pairs.
* Mappings use a colon and one space (“: ”) to mark each key: value pair.
* The value of keys can be in many different structures.
* All keys/properties are case-sensitive.
* Comments begin with a hash “#”.


### 2.5.2 YAML Simple Structure

YAML consists of three basic element types.

1. Scalars - *key: value* mappings where the value can be a number, string, or boolean value
2. Lists - a *key:* followed by a list of values where each value is on a separate line and preceded with two spaces and a hyphen
3. Dictionaries - a collection of *key: value* mappings and lists.

<div class="isa_note"><b>Note:</b> All keys are case-sensitive.</div>

Here are some simple YAML examples:

#### Scalar
```
# key: value
vegetables: peas
fruit: apples
grains: bread
```


#### List

```
# sequence_key:
#   - value1
#   - value2
vegetables:
  - peas
  - carrots
fruits:
  - apples
  - oranges
```

#### Dictionary

```
dinner:
  appetizer: shrimp cocktail
  drink: sparkling water
  entree:
    - steak
    - mashed potatoes
    - dinner roll
  dessert:
    - chocolate cake
```

### 2.5.3 Lists and Dictionaries - YAML Block Structures

* Indentation sets the context. You MUST indent your properties and lists with one or more spaces, but two spaces is standard.
* Tabs are NOT allowed, use spaces ONLY.
* YAML is organized into block structures.
* A collection, which is a list, or dictionary block sequence, indicates each entry with a hyphen and a space ( “- ”).


### 2.5.4 Additional YAML Resources

There is an online YAML parser that can be used to validate syntax and structure at:
<http://yaml-online-parser.appspot.com/>

Additional information can be found at:
<http://docs.saltstack.com/en/latest/topics/troubleshooting/yaml_idiosyncrasies.html>

<b>Tip:</b> You may want to save these YAML websites for reference throughout the course.


## 2.6 Summary

In this section we discussed:

* Features of Salt
* Salt Management Concept
* Open Event System
* YAML Configuration File Format



----

Go to the docker folder `cd ~/tutorial/docker`{{execute}}.

Start the salt master `docker-compose up sm`{{execute}}

Allow a code block to be executed `docker container ls`{{execute}}

For multiple terminals, execute the command on HOST1 `some-command`{{execute HOST1}}
For multiple terminals, execute the command on HOST2 `some-command`{{execute HOST2}}

For multiple terminals, execute the command on T1 `some-command`{{execute T1}}
For multiple terminals, execute the command on T2 `some-command`{{execute T2}}

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
