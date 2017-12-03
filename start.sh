[ -e log.jtl ] && rm log.jtl
[ -e jmeter.log ] && rm jmeter.log
[ -d output ] && rm -rf ./output/*

# Make sure that the Java interpreter is set to java 1.8. jMeter does not work with java 9 yet
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

./apache-jmeter-3.3/bin/jmeter -n -t load.jmx -l log.jtl -j jmeter.log -e -o output -Jduration=1400