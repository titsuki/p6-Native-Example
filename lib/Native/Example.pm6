use v6;
use NativeCall;
unit class Native::Example;

my constant $library = %?RESOURCES<libraries/example>.Str;

class MyStruct is repr('CStruct') {
    has CArray[int32] $!x;
    method to-list {
        $!x.list;
    }
    submethod BUILD {
        $!x := CArray[int32].allocate: 10;
    }
}

my sub func(MyStruct) is native($library) { * }

method run {
    my $a = MyStruct.new;
    $a.to-list.say;
    func($a);
    $a.to-list.say;
}

=begin pod

=head1 NAME

Native::Example - blah blah blah

=head1 SYNOPSIS

  use Native::Example;

=head1 DESCRIPTION

Native::Example is ...

=head1 AUTHOR

titsuki <titsuki@cpan.org>

=head1 COPYRIGHT AND LICENSE

Copyright 2016 titsuki

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

=end pod
