FROM nginx

ENTRYPOINT ["nginx", "-c"] # 定参，不会被 docker run 命令行中指定的参数所覆盖
CMD ["/etc/nginx/nginx.conf"] # 变参，该语法会将 CMD 指令中的参数传递给 ENTRYPOINT 指令指定的程序，并且会被命令行中指定的参数所覆盖

# 不传参运行
# sudo docker run myesn/nginx:test
# 容器内运行的命令是 nginx -c /etc/nginx/nginx.conf

# 传参运行
# sudo docker run myesn/nginx:test -c /etc/nginx/new.conf
# 容器内运行的命令是 nginx -c -c /etc/nginx/new.conf
# 因为 ENTRYPOINT 中指定的参数不会被 docker run 命令行指定的参数所覆盖