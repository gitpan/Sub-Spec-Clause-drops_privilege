package Sub::Spec::Clause::drops_privilege;

our $VERSION = '0.01'; # VERSION

sub update_schema {
    my $schema = Sub::Spec::Schema::SCHEMA or return;
    $schema->[1]{keys}{drops_privilege} = 'bool*';
}

update_schema();

1;
# ABSTRACT: Add clause 'drops_privilege'


__END__
=pod

=head1 NAME

Sub::Spec::Clause::drops_privilege - Add clause 'drops_privilege'

=head1 VERSION

version 0.01

=head1 SYNOPSIS

 # in your sub spec
 drops_privilege => 1

=head1 DESCRIPTION

Argument: BOOL

This module adds 'drops_privilege' clause to sub spec. If set to 1, it specifies
that sub drops OS privileges when doing its job. Usually this is for tasks that
run as root/administrator.

This module adds a wrapper code to make sure that OS privilege is restored. A
sub might die in the middle of execution and haven't restored OS privileges yet.

=head1 SEE ALSO

L<Sub::Spec>

L<Sub::Spec::Wrapper>

=head1 AUTHOR

Steven Haryanto <stevenharyanto@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Steven Haryanto.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

