// Can be compited with gcc $filename.c -o $filename

typedef void * (*handler_values)(int);

enum ids {V1, V2};

#define MAP(X) \
  X(V1, "v1", handler_v1) \
  X(V2, "v2", handler_v2)

void *handler_v1(int valor);
void *handler_v2(int valor);

handler_values handler_vx[] = {
#define X(i, v, m) [i] = m,
		MAP(X)
#undef X
};

void *handler_v1(int valor) {}
void *handler_v2(int valor) {}

int main() {
  return 0;
}
