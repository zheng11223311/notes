import pydub #安装 npm install pydub
          #同时需要安装ffmpeg  pip install ffmpeg
          # 需要下载ffmpeg  下载地址:https://github.com/GyanD/codexffmpeg/releases/tag/2021-01-01-git-63505fc60a
# 阅读 https://www.cnblogs.com/listenwhy/p/14229097.html
# 需要将ffmpeg 中的bin 文件夹(有ffmpeg.exe,ffplay.exe,ffprobe.exe) 配置到用户的环境变量中,配置到系统环境下无效,
# 最后需要重启编辑器才可以使用


# mp3=pydub.AudioSegment.from_mp3('./audio/22-1.aac') #不能使用aac 文件
mp3=pydub.AudioSegment.from_mp3('./audio/22-2.mp3')
audio=mp3[:21*1000] #切片操作,获取音乐汇总21 秒
audio+=50 #声音变大 增加50分贝 人的正常声音60分贝,  分贝大,音量小听起来声音也很大
audio.export('./audio/22-1-1.mp3') #写入文件
