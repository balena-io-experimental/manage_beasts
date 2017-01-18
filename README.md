# manage_beasts
Quick and dirty shell scripts for managing demo environments for resin.io demos

`./combine.sh` will pull all the beasts into a single application, with an optional -a parameter to set the application target.  Default will be "microBeastGlobal".

`./split.sh` will split the beasts into their individual applications.

Device UUIDs are stored in the `beasts` file.
