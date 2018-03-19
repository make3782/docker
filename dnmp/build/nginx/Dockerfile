from nginx:alpine

COPY ../sources.list.jessie /etc/apt/sources.list

RUN apk update && apk add ca-certificates && \
	apk add tzdata && \
	ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
	echo "Asia/Shanghai" > /etc/timezone
