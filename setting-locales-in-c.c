/* Example from https://stackoverflow.com/q/14753505
 * 
 * To get the list of system installed locales: '$ locale -a '
 * It appears the the locale string must exactly match the output of '$ locale -a'.
 */

#include <stdio.h>
#include <locale.h>

int main() {

    char *current = setlocale(LC_NUMERIC, NULL);
    printf("Current locale '%s'\n", current);

    // Cases that don't work
    //char *test_locale = "French_Canada.1252";
    //char *test_locale = "ES_es";
    //char *test_locale = "es_Spain";
    //char *test_locale = "es";
    //char *test_locale = "spa_Spain";

    // Cases that work ok
    char *test_locale = "es_ES.utf8"; 
    //char *test_locale = "es_BO.utf8";
    //char *test_locale = "POSIX";
    //char *test_locale = "C";
        
    char *res = setlocale(LC_NUMERIC, test_locale); // ".OCP" if you want to use system settings
    if(res != NULL) {
        printf("Locale set to %s\n", res);
    } else {
        printf("Specified locale '%s' doesn't exist!\n", test_locale);
    }   

    printf("Float example: %f\n", 3.14159);

    return 0;
}