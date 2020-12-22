/**
 * D header file for C99 libintl.h, which provides
 * message catalogs for internationalization.
 */

module libintl;
private import core.stdc.config;

extern (C) @safe nothrow @nogc:

char* gettext (scope const char* __msgid);
char* dgettext (scope const char* __domainname, scope const char* __msgid);
char* dcgettext (scope const char* __domainname, scope const char* __msgid, int __category);
char* ngettext (scope const char* __msgid1, scope const char* __msgid2, c_long __n);
char* dngettext (scope const char* __domainname, scope const char* __msgid1, scope const char* __msgid2,
                 c_long __n);
char* dcngettext (scope const char* __domainname, scope const char* __msgid1, scope const char* __msgid2,
                  c_long __n, int __category);
char* textdomain (scope const char* __domainname);
char* bindtextdomain (scope const char* __domainname, scope const char* __dirname);
char* bind_textdomain_codeset (scope const char* __domainname, scope const char* __codeset);

version (Darwin)
{
    char* __dgettext (scope const char* __domainname, scope const char* __msgid);
    char* __dcgettext (scope const char* __domainname, scope const char* __msgid, int __category);
}
