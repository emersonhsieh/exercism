# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.gigasecond.Debug:
/Users/emersonhsieh/exercism/cpp/gigasecond/build/Debug/gigasecond:\
	/usr/local/lib/libboost_unit_test_framework-mt.a\
	/usr/local/lib/libboost_date_time-mt.a\
	/usr/local/lib/libboost_regex-mt.a
	/bin/rm -f /Users/emersonhsieh/exercism/cpp/gigasecond/build/Debug/gigasecond


PostBuild.gigasecond.Release:
/Users/emersonhsieh/exercism/cpp/gigasecond/build/Release/gigasecond:\
	/usr/local/lib/libboost_unit_test_framework-mt.a\
	/usr/local/lib/libboost_date_time-mt.a\
	/usr/local/lib/libboost_regex-mt.a
	/bin/rm -f /Users/emersonhsieh/exercism/cpp/gigasecond/build/Release/gigasecond


PostBuild.gigasecond.MinSizeRel:
/Users/emersonhsieh/exercism/cpp/gigasecond/build/MinSizeRel/gigasecond:\
	/usr/local/lib/libboost_unit_test_framework-mt.a\
	/usr/local/lib/libboost_date_time-mt.a\
	/usr/local/lib/libboost_regex-mt.a
	/bin/rm -f /Users/emersonhsieh/exercism/cpp/gigasecond/build/MinSizeRel/gigasecond


PostBuild.gigasecond.RelWithDebInfo:
/Users/emersonhsieh/exercism/cpp/gigasecond/build/RelWithDebInfo/gigasecond:\
	/usr/local/lib/libboost_unit_test_framework-mt.a\
	/usr/local/lib/libboost_date_time-mt.a\
	/usr/local/lib/libboost_regex-mt.a
	/bin/rm -f /Users/emersonhsieh/exercism/cpp/gigasecond/build/RelWithDebInfo/gigasecond




# For each target create a dummy ruleso the target does not have to exist
/usr/local/lib/libboost_date_time-mt.a:
/usr/local/lib/libboost_regex-mt.a:
/usr/local/lib/libboost_unit_test_framework-mt.a:
