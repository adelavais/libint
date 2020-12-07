/**
 * D header file for C99 libint.h, which provides
 * message catalogs for internationalization.
 */

module libint;
private import core.stdc.config;

char* gettext (scope const char* __msgid) @system nothrow @nogc;
char* dgettext (scope const char* __domainname, scope const char* __msgid) @system nothrow @nogc;
char* __dgettext (scope const char* __domainname, scope const char* __msgid) @system nothrow @nogc;
char* dcgettext (scope const char* __domainname, scope const char* __msgid, int __category) @system nothrow @nogc;
char* __dcgettext (scope const char* __domainname, scope const char* __msgid, int __category) @system nothrow @nogc;
char* ngettext (scope const char* __msgid1, scope const char* __msgid2, c_long __n) @system nothrow @nogc;
char* dngettext (scope const char* __domainname, scope const char* __msgid1, scope const char* __msgid2,
c_long __n) @system nothrow @nogc;
char* dcngettext (scope const char* __domainname, scope const char* __msgid1, scope const char* __msgid2,
c_long __n, int __category) @system nothrow @nogc;
char* textdomain (scope const char* __domainname) @system nothrow @nogc;
char* bindtextdomain (scope const char* __domainname, scope const char* __dirname) @system nothrow @nogc;
char* bind_textdomain_codeset (scope const char* __domainname, scope const char* __codeset) @system nothrow @nogc;