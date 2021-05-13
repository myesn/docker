# 从 python 3.7 映像开始构建镜像
FROM python:3.7-alpine
# 将工作目录设置为 /code
WORKDIR /code
# 设置 flask 命令使用的环境变量
ENV FLASK_APP app.py
ENV FLASK_RUN_HOST 0.0.0.0
# 安装 gcc，以便诸如 MarkupSafe 和 SQLAlchemy 之类的 python 包可以编译加速
RUN apk add --no-cache gcc musl-dev linux-headers
# 复制 requirements.txt 并安装 python 依赖
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
# 将 . 项目中的当前目录复制到 . 镜像中的工作目录
COPY . .
# 容器提供默认的执行命令为 flask run
CMD ["flask", "run"]