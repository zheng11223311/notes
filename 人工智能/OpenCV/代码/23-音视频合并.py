import pydub #安装 npm install pydub
          #同时需要安装ffmpeg  pip install ffmpeg
          # 需要下载ffmpeg  下载地址:https://github.com/GyanD/codexffmpeg/releases/tag/2021-01-01-git-63505fc60a

import subprocess #cmd 命令
# 阅读 https://www.cnblogs.com/listenwhy/p/14229097.html
# 需要将ffmpeg 中的bin 文件夹(有ffmpeg.exe,ffplay.exe,ffprobe.exe) 配置到用户的环境变量中,配置到系统环境下无效,
# 最后需要重启编辑器才可以使用

# ffmpeg 也可以合并 m3u8 视频
# ffmpeg 音视频处理的库,c语言写的

# 合并音频和视频  ./video/21-2.mp4 和./audio/22-3.mp3  输出合并后的视频 ./video/23-out.mp4
# 如果视频没有音频的时间长,视频播放完后会卡在最后一帧画面,而音频会继续播放,所以需要先截取音频时间长度和视频相等
cmd='ffmpeg -i ./video/21-2.mp4 -i ./audio/22-2.mp3 ./video/23-out.mp4'
# subprocess.call(cmd,shell=True)  #Mac 系统需要shell 参数,windows 不需要,shell 就是命令行的意思
c=subprocess.call(cmd)
print('-------------------',c)  #0 代表成功,其中执行输出的红色为ffmpeg 的日志输出,不是报错


