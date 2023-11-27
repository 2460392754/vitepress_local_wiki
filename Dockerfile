# 基础镜像
FROM node:16.15.0-alpine

# 创建 工作目录
WORKDIR /app

# copy 项目到镜像里
COPY . .

# 运行命令
RUN npm install -g pnpm && \
    pnpm install --frozen-lockfile

# 暴露端口
EXPOSE 5173

# 运行
CMD [ "npm", "run", "docs:dev" ]