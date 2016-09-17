use v6;
use NativeCall;
unit class Native::Example;

my constant $library = %?RESOURCES<libraries/example>.Str;

class myparam-build is repr('CStruct') is export {
    has int32 $.a;
    has num64 $.b;
    my sub init(myparam-build) is native($library) { * }
    submethod BUILD {
	init(self)
    }
}

class myparam-new is repr('CStruct') is export {
    has int32 $.a;
    has num64 $.b;
    my sub init(myparam-new) is native($library) { * }
    method new() {
	init(self);
	self;
    }
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
