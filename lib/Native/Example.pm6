use v6.c;
use NativeCall;
use Native::Example::Model;

unit class Native::Example;

has CArray[Native::Example::Model] $!models;
submethod BUILD(CArray[Native::Example::Model] :$!models!) { }

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
