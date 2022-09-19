import { request } from '@/utils/request'

interface LoginInput {
    email: string;
    password: string;
}

export interface User{
    email: string;
    token: string;
    username: string;
    channelDescription?: string;
    avatar?: string; // ?表示可选参数
}

interface LoginPayload {
    user: User;
}

export const login = (data:LoginInput) => {
  return request.post<LoginPayload>('/api/v1/users/login', data) // LoginPayload 泛型 对返回的数据res 进行约束类型
}

interface File {
    name:string,
    size: number,
    type: string
}

interface uploadVideoInput {
    cover:string,
    title:string,
    description?:string
    file:File
}

export interface updateVideo {
    video:{
        cover:string,
        title:string,
        description?:string
        commentCount:number,
        createAt:string,
        disLikesCount:number,
        likesCount:number,
        playUrl:string,
        viewCount:number,
        _id:string,
        updateAt:string,
        user:string
    }
}
export const uploadVideo = (data:uploadVideoInput) => {
  return request.post<updateVideo>('/api/v1/videos', data, {
    headers: { // 用于上传文件
      'Content-Type': 'multipart/form-data'
    }
  }) // LoginPayload 泛型 对返回的数据res 进行约束类型
}

export const getVideo = (videoId:string) => {
  return request.get<updateVideo>('/api/v1/videos/' + videoId) // LoginPayload 泛型 对返回的数据res 进行约束类型
}
