#!/bin/bash

cat >>/etc/supervisord.conf<<-EOF
[supervisord]
nodaemon=true
[program:DOClever]
stdout_logfile_maxbytes=100MB
stdout_logfile=/tmp/debug.log
stderr_logfile=/tmp/error.log
command=lnmp start
EOF

# run supervisord
/usr/bin/supervisord -c /etc/supervisord.conf
