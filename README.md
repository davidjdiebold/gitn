# gitn

Gitn is an easy to use bash utility to add numbers before git status command.
Git commands can rely on these numbers instead of file paths.

I wrote this utility because I was fed-up to use my mouse to copy-paste paths.
But I have mostly done this for the small pleasure of writing (dirty) bash.
Why would I write this utility in C when I can have fun with awk ?

## Installation

```
foo@bar:~$ ./init.sh
Setting-up gitn...
ready for action !
```

```
foo@bar:~$ source ~/.bash_profile
```

This script updates your bash_profile with a section that:
* saves git path to a dedicated variable
* creates an alias to override git with gitn

## Usage

Now you can use git in your favorite project:

```console
foo@bar:~$ git status
1       new file:   My/Module/new_script.sh
2       modified:   My/Module/modified_script.sh
3       Untracked:  My/Module/untracked_script.sh
foo@bar:~$ git add 3
```
