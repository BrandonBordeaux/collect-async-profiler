## How to use

The purpose of this helper script is to schedule it using cron at an interval
that matches the duration of asyc-profiler (300 seconds). The script will configure
async-profiler to write to a timestamped output file to the specified directory
passed in as the first script argument.

Using this approach, you can have continuous monitoring of JVM threads that cover
5 minute periods.
