char ee_vsprintf() {
  char out = 0;
  char *b = "xdy";
  do {
    switch (*b) {
    case 'a':
    case 'X':
    case 'x':
    case 'd':
    case 'i':
      break;
    default:
      out += (char)b;
    }
    b++;
  } while (*b);
  return out;
}
