import std.stdio;
import core.stdc.locale : setlocale, LC_ALL;
import libintl : bindtextdomain, textdomain, dgettext;

void main ()
{
    // Set up internationalization.
    setlocale (LC_ALL, "");

    // Use the example translation catalogue for error messages.
    bindtextdomain ("example", "./po");

    // Set the current default message catalog to "example".
    textdomain ("example");

    printf("%s\n", dgettext("example", "Hello"));
}
