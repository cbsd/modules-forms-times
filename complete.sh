#!/bin/sh

zones=$( cd /usr/share/zoneinfo && find * -type f -or -type l | grep -v tab$ | sort )

count=1

for i in ${zones}; do
	echo 'INSERT INTO timezone_autocomplete ( text, order_id ) VALUES ( '${i}', ${count} );'
	count=$(( count + 1 ))
done
