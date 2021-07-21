FROM ubuntu

MAINTAINER devesh <deveshwar00@gmail.com>

COPY genUser.bashrc /root/genUser.bashrc
COPY permit.bashrc /root/permit.bashrc
COPY schedule.bashrc /root/schedule.bashrc
COPY future.txt /root/future,txt

CMD ["bash","/root/genUser.bashrc"]
CMD ["bash","/root/permit.bashrc"]
CMD ["bash","/root/scedule.bashrc"]
