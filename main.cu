#include <iostream>
#include "main.cuh"

char filename[255] = "/home/kirill/Documents/LearnProjects/StlSlicer/data/stl/Head_repaired.stl";

int readTriangles(FILE *fp, size_t size, struct list_tri *l) {
    for (int i = 0; i < size; i++) {
        struct triangle t = {};
        fread(&t, sizeof(struct triangle), 1, fp);
        struct list_tri *l_next = (struct list_tri *) (std::malloc(sizeof(struct list_tri)));
        l_next->next = nullptr;
        l->triang = t;
        l->next = l_next;
        l = l_next;
    }
    return 0;
}

int main() {
    FILE *fp;
    struct stl_header header = {};
    fp = fopen(filename, "rb");
    if (!fp) {
        printf("Can't open file");
        return 0;
    }
    fread(&header, sizeof(struct stl_header), 1, fp);
    printf("Number of triangles %d\n", header.triangles_size);

    struct list_tri l = {};
    if (readTriangles(fp, header.triangles_size, &l)) {
        printf("Error while read triangles from file");
        return 0;
    }


    // Get triangles from file

    // Sort vertexes of triangles to get a web

    // Sort triangles for each slice, delete all others vertexes and triangles

    // For each triangle get it vertexes and lines crossing with slice

    // Make chains from lines and vertexes

    // Print every chain on array

    // Save array as green color to png

    if (fp) {
        fclose(fp);
    }
    return 0;
}
