FROM debian

RUN apt-get update && apt-get install -y \
    gcc \
    libfcgi-dev \
    spawn-fcgi \
    && rm -rf /var/lib/apt/lists

COPY ./miniserver.c ./s21/src/miniserver.c
COPY ./run_server.sh ./s21/src/run_server.sh

WORKDIR /s21/src/

RUN gcc -c miniserver.c -o miniserver.o \ 
    && gcc miniserver.o -lfcgi -o miniserver.out \
    && chmod +x run_server.sh

RUN groupadd -g 999 appuser && \
    useradd -r -u 999 -g appuser appuser

USER appuser

ENTRYPOINT ["/s21/src/run_server.sh"]


