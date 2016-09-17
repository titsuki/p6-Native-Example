use v6;
use Test;
use Native::Example;

my myparam-build $param-build .= new;
is $param-build.a, 6;
is $param-build.b, 1e-5;

my myparam-new $param-new .= new; # cannot build

done-testing;
