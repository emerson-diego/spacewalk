#
# Copyright (c) 2008--2012 Red Hat, Inc.
#
# This software is licensed to you under the GNU General Public License,
# version 2 (GPLv2). There is NO WARRANTY for this software, express or
# implied, including the implied warranties of MERCHANTABILITY or FITNESS
# FOR A PARTICULAR PURPOSE. You should have received a copy of GPLv2
# along with this software; if not, see
# http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
#
# Red Hat trademarks are not licensed under GPLv2. No permission is
# granted to use or replicate Red Hat trademarks that are incorporated
# in this software or its documentation.
#

use strict;

package Sniglets::Users;

use PXT::Utils;

use RHN::User;
use RHN::Org;
use PXT::HTML;
use RHN::Mail;
use PXT::ACL;
use Mail::RFC822::Address;
use URI;

use Sniglets::Forms;
use Sniglets::Forms::Style;
use RHN::ContactMethod;
use RHN::ContactGroup;
use RHN::SatInstall;

use RHN::DataSource::SystemGroup;

use Digest::MD5;
use Date::Parse;

sub register_tags {
  my $class = shift;
  my $pxt = shift;
}

sub register_callbacks {
  my $class = shift;
  my $pxt = shift;

}

1;
