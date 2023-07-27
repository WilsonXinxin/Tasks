import time
import requests
import json

BASE_URL='https://my.ruanmei.com/api/usersign/sign?userHash=9833688dcb027758546669f94699a31014476e08092e1fb4941295f0b91b37f4181fe763f3404c3e9ed982c2ec3099df&type=3&timestamp={t}&kbfbf3a2d1c611173=f82512c8f3f7948d2f160944305b31b9577702b5bb3815ce'.format(t=round(time.time()*1000))
BROWSER_INFO='Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43'
USER_HASH='9833688dcb027758546669f94699a31014476e08092e1fb4941295f0b91b37f4181fe763f3404c3e9ed982c2ec3099df'

def main():
  print(111)
  headers = {
    # 'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36'
    'Accept-Encoding': 'gzip',
    'User-Agent': 'Dalvik/2.1.0 (Linux; U; Android 13; 22011211C Build/TP1A.220624.014)',
    'content-type': 'application/x-www-form-urlencoded',
    'Connection': 'Keep-Alive',
    'Host': 'my.ruanmei.com'
  }
  # userHash=9833688dcb027758546669f94699a31014476e08092e1fb4941295f0b91b37f4181fe763f3404c3e9ed982c2ec3099df&type=3&timestamp=1687829678690&
  # params = {
  #   'userHash': USER_HASH,
  #   'type': 3,
  #   'timestamp': round(time.time()*1000),
  #   'kbfbf3a2d1c611173': 'f82512c8f3f7948d2f160944305b31b9577702b5bb3815ce'
  # }
  print(BASE_URL)
  # response = requests.get(BASE_URL, headers=headers)
  # curr_time = round(time.time()*1000)
  # print(res)
  # print(type(response.text))
  # print(response.json())
  # print(json.loads(response.text))
  # print(type(response.json()))

if __name__ == '__main__':
    main()