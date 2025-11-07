#ifndef _PATH_H_INCLUDED_
#define _PATH_H_INCLUDED_

#include <stdbool.h>

bool path_exists(const char *path);
void path_create_folder(const char *path);
void path_copy_directory(const char *source, const char *destination);

#endif
