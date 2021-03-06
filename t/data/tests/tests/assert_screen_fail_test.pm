# Copyright (C) 2017 SUSE LLC
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License along
# with this program; if not, see <http://www.gnu.org/licenses/>.

use 5.018;
use strict;
use warnings;

use base 'basetest';

use testapi;

sub run {
    # Test done this way, because:
    eval { assert_screen ['no_tag', 'no_tag2'], timeout => 1, no_wait => 1; };
    bmwqemu::diag($@) if ($@);

    eval { assert_screen 'no_tag3', timeout => 1, no_wait => 1; };
    bmwqemu::diag($@) if ($@);

}

1;
