#!/bin/sh
echo $BASH_VERSION

base_url='https://my.ruanmei.com/api/User/Login'
browser_info='Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36'
user_hash='9833688dcb027758546669f94699a31014476e08092e1fb4941295f0b91b37f4181fe763f3404c3e9ed982c2ec3099df'

# curl 教程 https://www.ruanyifeng.com/blog/2019/09/curl-reference.html
RESULT_ITHOME=$(curl -A "${browser_info}" -G -d "userHash=${user_hash}" -d 'extra=4|ithome_android' -d 'auto=1' $base_url)
echo $RESULT_ITHOME >> ithome.log

RESULT_ZHM=$(curl -A "${browser_info}" -G -d "userHash=${user_hash}" -d 'extra=9|zhm_android' -d 'auto=1' -d 'appver=1.51' -d 'platform=zhm_android' -d 'channel=xiaomi' -d 'osver=33' $base_url)
echo $RESULT_ZHM >> zhm.log

# RESULT_YRL=$(curl -A 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36' -G -d 'userHash=9833688dcb027758546669f94699a31014476e08092e1fb4941295f0b91b37f4181fe763f3404c3e9ed982c2ec3099df' -d 'extra=4|ithome_android' -d 'auto=1' https://my.ruanmei.com/api/User/Login)
# echo $RESULT_YRL >> yrl.log

exit 0
