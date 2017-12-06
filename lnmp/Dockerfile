FROM registry-vpc.cn-beijing.aliyuncs.com/wzx/lnmp:base
MAINTAINER wzx 181788481@qq.com

RUN apt-get update \
	&& apt-get install -y supervisor \
	&& apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
	&& apt-get autoremove -y

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime


RUN mkdir -p /var/log/supervisor

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
