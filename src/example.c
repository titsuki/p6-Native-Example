# include "example.h"

static const myparam _defparam = {
    6, 1e-5
};

void init(myparam *param)
{
    memcpy(param, &_defparam, sizeof(*param));
}
