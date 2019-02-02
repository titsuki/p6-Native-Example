use v6.c;
use Test;
use NativeCall;
use Native::Example;
use Native::Example::Model;

class A {
    method func {
        my CArray[Native::Example::Model] $models = CArray[Native::Example::Model].allocate: 10;
        for ^10 {
            my Int @words;
            @words.push(1) for ^10;
            $models[$_] = Native::Example::Model.new(:length(10), :@words);
        }
        ($models, Any);
    }
};

lives-ok {
    my $a = A.new;
    my ($models, $) = $a.func;
    my $instance = Native::Example.new(:models($models));
}

done-testing;
