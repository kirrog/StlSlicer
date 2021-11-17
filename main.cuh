#ifndef STLSLICER_MAIN_CUH
#define STLSLICER_MAIN_CUH


struct vertex {
    float x;
    float y;
    float z;
};

struct triangle {
    struct vertex vec;
    struct vertex one;
    struct vertex two;
    struct vertex thr;
};

struct line {
    struct vertex one;
    struct vertex two;
};

struct stl_header {
    char header[80];
    unsigned int triangles_size;
};

struct list_tri {
    struct triangle triang;
    struct list_tri *next;
};

#endif //STLSLICER_MAIN_CUH
