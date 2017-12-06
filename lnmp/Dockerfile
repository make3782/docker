FROM registry-vpc.cn-beijing.aliyuncs.com/wzx/lnmp:base
MAINTAINER wzx 181788481@qq.com

RUN apt update \
	&& apt install -y supervisor

RUN mkdir -p /var/log/supervisor

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
