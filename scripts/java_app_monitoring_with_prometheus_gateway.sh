#!/bin/bash
strindex() {
  x="${1%%$2*}"
  [[ "$x" = "$1" ]] && echo -1 || echo "${#x}"
}
z=$(ps aux | grep .jar)
while read -r z
do
   pos=$(strindex "$z" "/mnt/apps");
   if [ $pos != "-1" ]
   then
    ser=${z:pos};
    pid=$(echo $z | awk '{print $2}');
    cpu_value=$(echo $z | awk '{print $3z}');
    mem_value=$(echo $z | awk '{print $4z}');
    cpu_response=$cpu_response$(echo -e "\ncpu_usage{process=\""$ser"\", pid=\""$pid"\", machine=\""$HOSTNAME"\"} $cpu_value" );
    mem_response=$mem_response$(echo -e "\nmem_usage{process=\""$ser"\", pid=\""$pid"\", machine=\""$HOSTNAME"\"} $mem_value" );
   fi

#    var=$var$(awk '{print "cpu_usage{process=\""$11"\", pid=\""$2"\"}", $3z}');
done <<< "$z"
echo $cpu_response
echo $mem_response
curl -X POST -H  "Content-Type: text/plain" --data "$cpu_response
" http://localhost:9091/metrics/job/top/instance/$HOSTNAME
curl -X POST -H  "Content-Type: text/plain" --data "$mem_response
" http://localhost:9091/metrics/job/top/instance/$HOSTNAME
