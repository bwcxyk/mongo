# 基础镜像
FROM mongo:4.2
# 添加创建用户脚本
COPY mongo_users.sh /docker-entrypoint-initdb.d/
