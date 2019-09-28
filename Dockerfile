FROM ev3dev/ev3dev-stretch-ev3-base
RUN /bin/bash -c 'cd /dev/shm && \
  curl -LO http://security.debian.org/debian-security/pool/updates/main/o/openssl/libssl1.0.0_1.0.1t-1+deb8u12_armel.deb && \
  curl -LO http://ftp.tw.debian.org/debian/pool/main/c/c-ares/libc-ares2_1.12.0-1+deb9u1_armel.deb && \
  curl -LO http://ftp.tw.debian.org/debian/pool/main/libv/libv8-3.14/libv8-3.14.5_3.14.5.8-8.1_armel.deb && \
  curl -LO http://ftp.tw.debian.org/debian/pool/main/n/nodejs/nodejs_0.10.29~dfsg-2_armel.deb && \
  dpkg -i libssl1.0.0_1.0.1t-1+deb8u12_armel.deb && \
  dpkg -i libc-ares2_1.12.0-1+deb9u1_armel.deb && \
  dpkg -i libv8-3.14.5_3.14.5.8-8.1_armel.deb && \
  dpkg -i nodejs_0.10.29~dfsg-2_armel.deb'
