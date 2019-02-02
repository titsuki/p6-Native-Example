#include "example.h"
#include <stdlib.h>
#include <string.h>

struct model* create_model(int length, int* words) {
  struct model* m = (struct model*)malloc(sizeof(struct model));
  m->length = 10;
  m->words = (int*)malloc(sizeof(int) * m->length);
  memcpy(m->words, words, sizeof(int) * m->length);
  return m;
};
