rm log.jtl
rm jmeter.log
rm -rf ./output/*
./apache-jmeter-3.3/bin/jmeter -n -t load.jmx -l log.jtl -j jmeter.log -e -o output -Dbasedomain=https://dcsl-next.epfl.ch -Dconcurrency=1