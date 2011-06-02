# Copyright (C) 2011 eBox Technologies S.L.
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License, version 2, as
# published by the Free Software Foundation.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA

package EBox::CGI::Virt::VNC;

use strict;
use warnings;

use base 'EBox::CGI::ClientBase';

use EBox;
use EBox::Gettext;

sub new
{
    my $class = shift;
    my $self = $class->SUPER::new('title' => __('View Console'),
                                  'template' => '/virt/vncviewer.mas',
                                  @_);
    bless($self, $class);
    return $self;
}

sub _process
{
    my ($self) = @_;

    my @array = ();
    # FIXME: get this properly?
    push(@array, 'port' => 6900);

    $self->{params} = \@array;
}

1;
