#!/bin/sh

# 复制项目的文件到对应docker路径，便于一键生成镜像。
usage() {
	echo "Usage: sh copy.sh"
	exit 1
}


# copy sql
echo "begin copy sql "
cp ../sql/ry_20210908.sql ./mysql/db
cp ../sql/ry_config_20220114.sql ./mysql/db

# copy html
echo "begin copy html "
cp -r ../gourddoll-ui/dist/** ./nginx/html/dist


# copy jar
echo "begin copy gourddoll-gateway "
cp ../gourddoll-gateway/target/gourddoll-gateway.jar ./gourddoll/gateway/jar

echo "begin copy gourddoll-auth "
cp ../gourddoll-auth/target/gourddoll-auth.jar ./gourddoll/auth/jar

echo "begin copy gourddoll-visual "
cp ../gourddoll-visual/gourddoll-monitor/target/gourddoll-visual-monitor.jar  ./gourddoll/visual/monitor/jar

echo "begin copy gourddoll-modules-system "
cp ../gourddoll-modules/gourddoll-system/target/gourddoll-modules-system.jar ./gourddoll/modules/system/jar

echo "begin copy gourddoll-modules-file "
cp ../gourddoll-modules/gourddoll-file/target/gourddoll-modules-file.jar ./gourddoll/modules/file/jar

echo "begin copy gourddoll-modules-job "
cp ../gourddoll-modules/gourddoll-job/target/gourddoll-modules-job.jar ./gourddoll/modules/job/jar

echo "begin copy gourddoll-modules-gen "
cp ../gourddoll-modules/gourddoll-gen/target/gourddoll-modules-gen.jar ./gourddoll/modules/gen/jar

