#include <stdarg.h>

void ee_vsprintf(char *buf) {
  char *fmt = "xd\n";

  do {
    fmt++;

    switch (*fmt)
    {
      case 'o':
      case 'X':
      case 'x':
      case 'd':
      case 'i':
        break;

      default:
        *buf++ = *fmt;
        continue;
    }

    *buf = 'B';
    ++buf;

    fmt++;
  } while (*fmt);

  *buf = '\0';
}
