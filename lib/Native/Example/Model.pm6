use v6.c;
use NativeCall;
unit class Native::Example::Model is repr("CPointer");

my constant $library = %?RESOURCES<libraries/example>;
my sub create_model(int32, CArray[int32] --> Native::Example::Model) is native($library) { * };

method new(Int :$length!, Int :@words!) {
    create_model($length, CArray[int32].new(@words));
}
