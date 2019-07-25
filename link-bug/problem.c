void ee_vsprintf(char *a) {
  char *b = "xd\n";
  do {
    switch (*b) {
    case 'o':
    case 'X':
    case 'x':
    case 'd':
    case 'i':
      break;
    default:
      *a++ = *b;
    }
    b++;
  } while (*b);
}
