/* Compiled C
 * A collection of C programs that are compiled to assembly 
 * code for understanding how C and assembly work.
 * GitHub: https://wwww.github.com/lewisevans2007/Compiled_C
 * Licence: GNU General Public Licence v3.0
 * By: Lewis Evans
 * 
 * This program has a function that returns the value of A - B.
*/

int subtract(int a, int b) {
    int c = a - b;
    return c;
}

int main() {
    int a = 1;
    int b = 2;
    int c = subtract(a, b);
    return 0;
}