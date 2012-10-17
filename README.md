XMenu
=====

A simple to use shell-implemented menu system

This menu system presents users with a extensible menu for encapsulating shell script commands that is not so friendly for users to remember.

For example, in some cases, you want user to execute a command as follows,

command-ex 0 0 1

where 0 0 1 are arguments provided to the command command-ex, which is intended to perform some pre-defined option.

Its functions may be easy to understand for users while its arguments may be too complicated to remember, as shown here, the command list contains three arguments which doesn't really indicate anything to users directly.

Therefore, you can write a shell script file named operation-ex with the content being the command line "comamnd-ex 0 0 1"

and then put this file into the menuitems folder of this project.

If you have many files and want to organize them with super menu entries, like 

a common-operations menuentry contains the operation-ex sub-menuentry,

You can simply create a directory named common-operations and create in it the operation-ex file above.

That's easy, isn't it.

So, why not just try it now? Giving comamnd line programs a more friendly user interface and hide unnecessary details from the lazy users.

Smart ideas always make our lives enjoyable.