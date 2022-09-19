<template>
  <div class="sC-AxiKw dZbDOR">
    <div class="modal-content">
      <form @submit.prevent="handleSubmit" enctype="multipart/form-data">
        <div class="modal-header">
          <div class="modal-header-left">
          <span class="close" @click="handleClose"> ✖ </span>
            <h5>Upload Video</h5>
            <div class="save">
              <button class="sc-Axirz erzyjx" ref="save">Save</button>
            </div>
          </div>
          <div class="tab video-form">
            <input required ref="file"
                    @change="handleFileChange"
                    id="video-upload"
                    type="file"
                    name="mufile"
                    accept= "video/*"/>
            <video controls ref="videoFile"></video><br />
            <!-- <input type="hidden" name="cover" :value="img"> -->
            <input required name="title" ref="title"  type="text" placeholder="Enter the title" value="1"/>
            <textarea name="description" ref="description" placeholder="Tell viewers about your video" >123</textarea>
          </div>
        </div>
      </form>
    </div>
  </div>
</template>
<script lang='ts'>
import { defineComponent, onMounted, ref } from 'vue'
import { useRouter } from 'vue-router'
import { uploadVideo } from '../../api/user'
export default defineComponent({
  name: 'UploadVideo',
  setup (props, context) {
    const file = ref(null)
    const videoFile = ref(null)
    const title = ref(null)
    const description = ref(null)
    const save = ref(null)
    const img = ref('')
    const router = useRouter()
    const handleClose = () => {
      // 对外发布一个自定义事件
      context.emit('close')
    }
    var getVideoBase64: (url: string) => Promise<string>
    // 视频预览
    const handleFileChange = () => {
      const fileObj = (file.value as any).files[0];
      //   console.log(fileObj)
      (videoFile.value as any).src = URL.createObjectURL(fileObj)
      getVideoBase64((videoFile.value as any).src).then((res: string) => {
        // console.log('1 ' + res)
        (img.value as string) = (res as string)
        // console.log(img.value)
      })
    }
    // 上传视频
    const handleSubmit = async () => {
    //   获取uploader 上传实例
    //   console.log(title.value)
    //   console.log(file.value)
      (save.value as any).innerText = 'loading...'
      const uploader = {
        cover: img.value,
        title: (title.value as any).value,
        description: (description.value as any).value,
        file: (file.value as any).files[0]
      }
      //   console.log(uploader)
      //   添加上传文件
      //   开始上传
      const data = await uploadVideo(uploader)
      console.log(data)
      context.emit('close')
      // 上传完成->创建视频
      router.push({
        name: 'watch',
        params: {
          _id: data.data.video._id // _id 为 videoId
        }
      })
      if (data) {
        (save.value as any).innerText = 'Save'
      }
    }

    /*
    * 截取视频的第一帧
    */
    onMounted(() => {
      getVideoBase64 = (url:string) => {
        return new Promise(function (resolve) {
          let dataURL = ''
          const video = (videoFile.value as any)
          // let video = document.createElement("video")
          video.setAttribute('crossOrigin', 'anonymous') // 处理跨域
          // video.setAttribute('src', url)
          // video.setAttribute('width', 400)
          // video.setAttribute('height', 240)
          video.src = url
          video.setAttribute('autoplay', 'autoplay')
          //   canplaythrough视频能够不停顿地一直播放
          //   canplay 视频能够播放,但是后续需要缓冲
          video.addEventListener('canplaythrough', function () {
            const canvas = document.createElement('canvas')
            const width = video.offsetWidth // canvas的尺寸和图片一样
            const height = video.offsetHeight
            console.log(width)
            canvas.width = width
            canvas.height = height
            canvas.setAttribute('position', 'absolute')
            canvas.setAttribute('top', '0');
            // canvas?.getContext("2d")?.drawImage(video, 0, 0, width, height) // 绘制canvas
            // canvas!表示一定存在值 表示强制解析（告诉typescript编译器，这里一定有值 表示类型推断排除null、undefined
            ((canvas!).getContext('2d')!).drawImage(video, 0, 0, width, height) // 绘制canvas
            // document.body.appendChild(canvas)
            dataURL = canvas.toDataURL('image/jpeg') // 转换为base64
            // console.log(dataURL)
            resolve(dataURL)
            // console.log(video.currentTime)
          })
        })
      }
    })

    return {
      handleClose,
      file,
      videoFile,
      handleFileChange,
      img,
      handleSubmit,
      title,
      description,
      save
    }
  }
})
</script>

<style scoped>
.sC-AxiKw {
  position: absolute;
  width: 100vw;
  height: 100vh;
  background-color: rgba(0, 0, 0, 0.445);
}
.modal-content {
  width: 700px;
  height: calc(100vh - 40px);
  margin: 40px auto;
  background-color: rgb(32, 32, 32);
  display: flex;
  flex-direction: column;
  padding-bottom: 20px;
}
.modal-header-left {
  width: 100%;
  height: 70px;
  line-height: 70px;
  background-color: rgb(16, 15, 15);
  display: flex;
}
.close {
  color: red;
  font-weight: 900;
  font-size: 30px;
  margin-left: 20px;
  cursor: pointer;
}
h5 {
  color: #fff;
  font-size: 30px;
  margin-left: 20px;
  font-weight: 400;
}
.save {
  flex: 1;
  text-align: right;
  padding-right: 20px;
}
button {
  width: 100px;
  height: 50px;
  color: #fff;
  background-color: red;
  border-radius: 5px;
  cursor: pointer;
}
.tab {
  width: 100%;
  padding-left: calc(10% / 2);
}
input[type="file"] {
  width: 90%;
  height: 60px;
  margin: 5px 0;
  line-height: 60px;
  background-color: rgb(19, 19, 19);
  font-size: 20px;
  padding-left: 20px;
  color: #fff;
  cursor: pointer;
}
video {
  margin-top: 5px;
  width: 90%;
}
input[type="text"],
textarea {
  width: 90%;
  height: 60px;
  margin: 5px 0;
  line-height: 60px;
  padding-left: 20px;
  background-color: rgb(19, 19, 19);
  font-size: 20px;
  border: none;
  outline: none;
  color: #fff;
}
textarea {
  height: 150px;
}
</style>
