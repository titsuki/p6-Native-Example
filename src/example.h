#if ! defined(HEADER_EXAMPLE_H)
#define HEADER_EXAMPLE_H

struct model {
  int length;
  int* words;
};

struct model* create_model(int, int*);

#endif /* HEADER_EXAMPLE_H */
