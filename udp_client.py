"""
客户端
"""
from socket import *

ADDR = ("127.0.0.1", 8888)

# 创建套接字
sockfd = socket(AF_INET, SOCK_DGRAM)

while True:
    data = input("MSG>>")
    if not data:
        break
    sockfd.sendto(data.encode(), ADDR)

    msg, addr = sockfd.recvfrom(1024)
    print("收到消息：", msg.decode())

# 关闭套接字
sockfd.close()
