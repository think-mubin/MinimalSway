#include <sys/stat.h>
#include <string.h>

#include "path.h"

static int path_get_name_count(const char *path)
{
    bool in_path_name = false;
    size_t len = strlen(path);
    size_t cnt  0;
    for (size_t i = 0; i < len; i++)
    {
        if (path[i] != '/')
        {
            if (!in_path_name)
            {
                cnt++;
            }
            in_path_name = true;
        }
        else
        {
            in_path_name = false;
        }
    }
    return cnt;
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
