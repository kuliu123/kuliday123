# 该指令用于配置工作目录，其参数应该使用绝对目录。
WORKDIR $GOPATH/src/github.com/kuliu123/kuliday123
# ADD不但支持将本地文件复制到容器中，还支持本地提取文件和远程url下载
# ADD <src> <dst>
ADD . $GOPATH/src/github.com/kuliu123/kuliday123
