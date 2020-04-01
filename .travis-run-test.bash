#! /bin/bash
#
# .travis-run-test.bash
# Copyright (C) 2019 Shlomi Fish <shlomif@cpan.org>
#
# Distributed under terms of the MIT license.
#

set -e -x

m()
{
    make DBTOEPUB="/usr/bin/ruby $(which dbtoepub)" DOCBOOK5_XSL_STYLESHEETS_PATH=/usr/share/xml/docbook/stylesheet/docbook-xsl-ns "$@"
}

m

cancel_running_tests_for_now_due_to_not_implemented_and_lack_of_importance()
{
    m test
}
