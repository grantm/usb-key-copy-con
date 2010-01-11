usb-key-copy-con
================

The 'usb-key-copy-con' application provides a GUI console for *bulk copying*
USB keys (flash drives).  Here's an example of the program in operation:

![Screenshot of usb-key-copy-con][1]

Operation of the program is very simple:

1. Insert a 'master' USB key when prompted - the contents of the key will be
   copied into a temporary directory on the hard drive, after which the key
   can be removed
2. Insert blank keys into all available USB ports - the app will detect when
   each new key is inserted, start the copy process and alert the user on
   completion
3. Repeat step 2 as required.

The program can write to multiple keys in parallel. It can also use filtering
on device parameters to ensure that only devices which match the vendor name
and storage capacity specified will be overwritten - other devices will be
ignored.

The specifics of reading the master key, preparing a blank key (formatting
parameters etc) are implemented in short 'profile' scripts (a reader and a
writer). You can supply your own profile scripts if your requirements differ
from those provided.


Installation
------------

The application was developed to run on Linux and is probably not particularly
portable to other platforms.  The application will probably run most smoothly
in a GNOME desktop.

This program is written in Perl and packaged in standard CPAN distribution
format.  You can install the program and its dependencies with this command:

    perl -MCPAN -e "install('App::USBKeyCopyCon')"

On a Debian/Ubuntu system, a better approach would be to use `dh-make-perl` to
build a .deb package and install that.  First install the dependencies:

    sudo apt-get install libmoose-perl libgtk2-perl libnet-dbus-perl dosfstools sox gksu

Then build/install one Perl dependency that's not already packaged in Debian:

    sudo apt-get install dh-make-perl libdbus-glib-1-dev
    dh-make-perl --install --cpan Net::DBus::GLib

Finally, build/install the application itself:

    dh-make-perl --install --cpan App::USBKeyCopyCon


Documentation
-------------

The documentation is included in the source modules and script.  You can read
it online at: [http://search.cpan.org/dist/App-USBKeyCopyCon/][2].

The 'usb-key-copy-con' command also supports a `--help` option.


Copyright and Licence
---------------------

Copyright (C) 2009 Grant McLean

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.


 [1]: http://github.com/grantm/usb-key-copy-con/raw/master/img_src/screenshot.png  "Screenshot of usb-key-copy-con"
 [2]: http://search.cpan.org/dist/App-USBKeyCopyCon/ "search.cpan.org"

