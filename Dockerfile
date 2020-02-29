FROM golang:1.9
MAINTAINER liuyh73  "kuliu.club@gmail.com"
# 该指令用于配置工作目录，其参数应该使用绝对目录。
WORKDIR $GOPATH/src/github.com/kuliu123/kuliday123
# ADD不但支持将本地文件复制到容器中，还支持本地提取文件和远程url下载
# ADD <src> <dst>
ADD . $GOPATH/src/github.com/kuliu123/kuliday123
RUN go get github.com/kuliu123/kuliday123
RUN go build .
# 该指令指示容器讲监听链接的端口，类似于，将容器中的某一个端口暴露出去，从而在外部访问绑定该端口。
EXPOSE 8080
# ENTRYPOINT允许你配置作为可执行文件运行的容器
ENTRYPOINT ["./go-web-form"]
————————————————
版权声明：本文为CSDN博主「liuyh73」的原创文章，遵循 CC 4.0 BY-SA 版权协议，转载请附上原文出处链接及本声明。
原文链接：https://blog.csdn.net/liuyh73/article/details/84181436
