package Sub::Spec::Wrapper::Clause::drops_privilege;

sub after_eval {
    my ($wrapper, $val) = @_;
    $wrapper->add_line('if ($< == 0 && $>) { $> = 0; $) = $( }');
}

1;

__END__
=pod

=head1 NAME

Sub::Spec::Wrapper::Clause::drops_privilege

=head1 VERSION

version 0.03

=head1 AUTHOR

Steven Haryanto <stevenharyanto@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Steven Haryanto.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

