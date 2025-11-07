#include <sys/stat.h>
#include <string.h>

#include "path.h"

static int path_get_name_count(const char *path)
{
    bool in_path_name = false;
    size_t length = strlen(path);
    size_t count = 0;
    for (size_t i = 0; i < length; i++)
    {
        if (path[i] != '/')
        {
            if (!in_path_name)
            {
                count++;
            }
            in_path_name = true;
        }
        else
        {
            in_path_name = false;
        }
    }
    return count;
}

static char *path_get_up_to_index(const char *path, int index)
{
    // TODO
}

void path_exists(const char *path)
{
    struct stat st;
    if (stat(path, &st))
    {
        return true;
    }
    return false;
}

void path_create_directory(const char *path)
{
    mkdir(path, S_IRWXU | S_IRWXG | S_IRWXO);
}

void path_copy_file(const char *source, const char *destination)
{
    // TODO
}
