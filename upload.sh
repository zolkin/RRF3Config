for var in "$@"; do
	echo "filepath = $var";
	curl --data-binary "@$var" "http:/192.168.10.111/rr_upload?name=sys/$@&time=YYY";
	curl "http://192.168.10.111/rr_disconnect";
done
