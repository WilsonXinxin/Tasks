#!/bin/sh

# base_url='https://my.ruanmei.com/api/User/Login'
base_url='https://my.ruanmei.com/api/usersign/sign'
# browser_info='Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36'
browser_info='Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43'
user_hash='9833688dcb027758546669f94699a31014476e08092e1fb4941295f0b91b37f4181fe763f3404c3e9ed982c2ec3099df'

# echo "timestamp=$(($(date +%s%N)/1000000))"
# echo $(date +%s%3N)
# echo $(date +%s%3N)
# curl 教程 https://www.ruanyifeng.com/blog/2019/09/curl-reference.html
# RESULT_ITHOME=$(curl -A "${browser_info}" -G -d "userHash=${user_hash}" -d 'extra=4|ithome_android' -d 'auto=1' $base_url)
echo $(date +%s)
RESULT_ITHOME=$(curl -A "${browser_info}" -H 'Accept-Encoding: gzip' -H 'User-Agent: Dalvik/2.1.0 (Linux; U; Android 13; 22011211C Build/TP1A.220624.014)' -H 'content-type: application/x-www-form-urlencoded' -H 'Connection: Keep-Alive' -H 'Host: my.ruanmei.com' -G -d "userHash=${user_hash}" -d 'type=3' -d "timestamp=$(date +%s)" -d 'kbfbf3a2d1c611173=f82512c8f3f7948d2f160944305b31b9577702b5bb3815ce' $base_url)
# echo $(date +%s%3N) >> ithome.log
echo $RESULT_ITHOME >> ithome.log

# RESULT_ZHM=$(curl -A "${browser_info}" -G -d "userHash=${user_hash}" -d 'extra=9|zhm_android' -d 'auto=1' -d 'appver=1.51' -d 'platform=zhm_android' -d 'channel=xiaomi' -d 'osver=33' $base_url)
# echo $RESULT_ZHM >> zhm.log

# RESULT_YRL=$(curl -A 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36' -G -d 'userHash=9833688dcb027758546669f94699a31014476e08092e1fb4941295f0b91b37f4181fe763f3404c3e9ed982c2ec3099df' -d 'extra=4|ithome_android' -d 'auto=1' https://my.ruanmei.com/api/User/Login)
# echo $RESULT_YRL >> yrl.log

exit 0
