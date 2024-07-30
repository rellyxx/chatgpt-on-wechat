# FROM ghcr.io/zhayujie/chatgpt-on-wechat:latest

# ENTRYPOINT ["/entrypoint.sh"]

# 使用官方的 Python 基础镜像
FROM python:3.9

# 设置工作目录
WORKDIR /app

# 复制 requirements.txt 文件以安装依赖
COPY requirements.txt /app/

# 安装 Python 依赖库
RUN pip install --no-cache-dir -r requirements.txt

# 复制应用代码到容器中
COPY . /app/

# 暴露端口（根据应用的需要调整）
EXPOSE 5000

# 设置环境变量（可选）
ENV FLASK_APP=app.py
ENV FLASK_ENV=production

# 设置容器启动时运行的命令
CMD ["python", "app.py"]

