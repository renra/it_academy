# IT Academy - Hello World

This is a course meant for people who would like to learn about the principles on which the IT world works.

## Content

* This course is a fly through backend development, frontend development, databases, dev ops, workflows and tooling. It focuses on principles and combining of technologies instead of a particular language or framework.

## Languages

* Languages are just a means to tell the computer what it should do.
* CPU instruction set is the lowest "language" you can use, but that's too complicated to write complex applications.
* Compiled languages need a "compiler" which produces an executable file which can be run later.
* Interpreted languages need an "interpreter" which runs the program immediately.

## Editors

* Pick the one that suits you best.
* Notepad, PSPad, [Sublime text](https://www.sublimetext.com), [Neo Vim](https://github.com/neovim/neovim/wiki/Installing-Neovim) (for pros), [Emacs](https://www.gnu.org/software/emacs) (for pros)
* You can use [online editors](https://www.tutorialspoint.com/codingground.htm) too, but they will not teach you to use the tools of the language.
* You can use online services like [HackerRank](https://www.hackerrank.com) or [CodinGame](https://www.codingame.com)
* IDE - Integrated Development Environment - has more functions than a simple editor, but sometimes can be harder to work with (and slower). Examples are [Eclipse](https://www.eclipse.org), [Netbeans](https://netbeans.org), [MS Visual Studio](https://www.visualstudio.com). They are not always free.

## Docker

Manages images and containers.

* Image is an application together with its envrionment.
* A running image is called a container.

For this course we will work with an image called [it_academy_toolbox](https://hub.docker.com/r/renra/it_academy_toolbox). That ensures we can all work in an environment that has all the languages installed regardless of your operating system and that we are all using the same version of those languages.

```
docker pull renra/it_academy_toolbox           # pulls image from dockerhub
docker run -it renra/it_academy_toolbox bash   # starts a container with a terminal
docker ps                                      # shows running containers
```

## Docker compose

To start the toolbox and compile the source codes (for example for Java) do

```
docker-compose run app bash
make java
```

## What you should have / know after this course

* Have docker installed on your system.
* Be able to `pull` and `run` an image of your choice.
* Know the difference between compiled and interpreted languages.
* Be able to read the Dockerfile in this folder and intuitively understand what it does.
* Be able to read the source codes in this folder and intuitively understand what they do (no need to get every detail).

## Homework

1) Play with docker
2) Try coding online
3) Think about what we've done, learn to formulate questions.
4) Create a profile on [Dockerhub](https://hub.docker.com)
4) Create a profile on [Github](https://github.com)
5) Read the files in this folder and try to guess what they do.
