
# Simple program that outputs "Hello"

The example shows a usecase of the libintl dub.

The repo contains a working example for a Romanian translation of the word "Hello".

Just run

    # create translations file
    msgfmt --output-file=po/ro/LC_MESSAGES/example.mo po/ro/LC_MESSAGES/example.po

    # set locale to Romanian
    LANG=ro_RO.UTF-8

    # run application
    dub run

## Internationalisation with gettext

Prerequisites: gettext, msgfmt, msginit.

Based on a program, you need to generate a Portable Object Template (with the extension .pot) file. These files are templates for Portable Object (with the extension .po) files, and contain a list of strings that are to be translated in your program.

Based on this template, generate a .po file, that needs to be modifed to contain the translations. From this, generate a Machine Object (with the extension .mo) file, that will be used by the application.

For your messages to be automatically pulled, the relative path (from the directory provided to bindtextdomain in the application) to the .mo file should be: ./language-abreviation/LC_MESSAGES/catalogue-name.mo

The steps explained previously:

- Generate a .pot file with the command:

        xgettext --keyword=_ --language=C --add-comments --sort-output -o po/example.pot ./source/app.d

Note: xgettext does not know about the D language, but you can use C just fine.

- Customize it and generate a .po file (the example is for Romanian):

        msginit --input=po/example.pot --locale=ro --output=po/ro/LC_MESSAGES/example.po

- From it, generate a .mo file:

        msgfmt --output-file=po/ro/LC_MESSAGES/example.mo po/ro/LC_MESSAGES/example.po

The translations used by the program are found in the example.mo file.

## Resources

When I worked on internationalisation, I found [this tutorial](https://www.labri.fr/perso/fleury/posts/programming/a-quick-gettext-tutorial.html) very useful.
