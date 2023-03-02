FROM rockylinux:8
RUN dnf groupinstall -y 'Development Tools'
RUN dnf install -y wget
RUN test -e /home/gentoo || useradd gentoo
USER gentoo
WORKDIR /home/gentoo
RUN wget https://gitweb.gentoo.org/repo/proj/prefix.git/plain/scripts/bootstrap-prefix.sh
RUN chmod +x /home/gentoo/bootstrap-prefix.sh
CMD bash

