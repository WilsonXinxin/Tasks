#!/bin/sh

BASE_URL='http://amdc.m.taobao.com/amdc/mobileDispatch?appVersion=10.17.0&appkey=21646297&cv=0&v=6.1'

RESULT=$(curl -X POST -H 'Accept-Encoding: gzip' -H 'User-Agent: Dalvik/2.1.0 (Linux; U; Android 13; 22011211C Build/TP1A.220624.014)' -H 'Content-Length: 448' -H 'Content-Type: application/x-www-form-urlencoded' -H 'Host: amdc.m.taobao.com' -d 'secData: Lxi48kqw8vl4/vGVCVB3JUhOMEdMu0YyZW8UeV4iMSEpFyiosO/qXaZo/WcFdV39VicG7+TAg7ibG0qJYTPudT3uyExDMQQuxHcx0ner84nMCGLTvUoS0w/j//+u/ClGJMuhi73csMyvIcFu1NQ5e2URYVRuY7bq/itOvd0OYSENnY+FfdhCg0Qs9xmz5CBp99NOUW9ncE3QHmDDH+SEmw==' -d 'netType: WIFI' -d 'appName: taobao_android' -d 'channel: 600000' -d 'sign: 27a9365ef73fe1a7fcdb91dfe39e990c769cb106' -d 'platform: android' -d 'sid: 3465468581' -d "t: $(date +%s%3N)" -d 'domain: huodong.taobao.com' -d 'signType: sec' -d 'stackType: 4' $BASE_URL)
# echo $(date +%s%3N) >> ithome.log
echo $RESULT >> taobao.log
