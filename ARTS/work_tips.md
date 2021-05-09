# 2021





## ✅week15

---

### Postman 软件

- 下载地址
  - https://www.postman.com/downloads/
- 可以模拟 各种请求 用来测试 api
- 可以方便的把 各种请求 都放在一个文件夹下面管理





#### 1. 模拟用户登录

https://blog.csdn.net/qq_34861341/article/details/102885211

**原理：**

```
在 headers 中 放入 cookie 里的 session id

因为 服务器 保持会话就是 通过 session 的
```

| key    | 表头                                                |
| ------ | --------------------------------------------------- |
| Cookie | session_id=25dc48227c8cfb58a268a1300573ffd11827a1f8 |
|        |                                                     |

如果想模拟另外一个用户，就用 session_id 换成另一个人登录后在 浏览器中找到的 session_id

但是切换的时候 记得查看：

- Headers     Hide auto-generated headers
  - 这个选项要打开，看看是不是 这个请求已经隐藏了一个 cookie，要是是，就要先删除隐藏的，再添加





#### 2. 制作 json 请求

 直接在 请求的 body 里面 用 raw 形式，

直接 粘进去 json 就好了

```json
{
        "cate_name": "消耗品",
        "mat_name":"笔记本",
        "apply_num":"1",
        "apply_reason":"正常损坏了",
        "aly_commit":"申请理由",
}
```







## ✅week19-001

- 「关于初识如何阅读源码」
- https://istw7xze8e.feishu.cn/docs/doccnR8Rj41YRCRSI9VtcJaoICc#xxYuD2

