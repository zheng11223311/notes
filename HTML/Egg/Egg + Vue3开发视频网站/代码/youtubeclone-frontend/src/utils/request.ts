import axios, { AxiosRequestHeaders } from 'axios' // npm i axios
import { store } from '@/store'

export const request = axios.create({
  baseURL: process.env.VUE_APP_API_BASIC_URL // /.env.production 文件
})
// console.log(process.env)

// 请求拦截器
request.interceptors.request.use(config => {
  const { user } = store.state
  if (user) {
    (config.headers as AxiosRequestHeaders).Authorization = 'Bearer ' + user.token
  }
  // console.log(config.headers)
  return config // 放行
}, error => {
  return Promise.reject(error)
})

// 响应拦截器
