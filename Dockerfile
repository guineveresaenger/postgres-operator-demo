FROM centos
COPY ./test.sh /test.sh
RUN chmod +x /test.sh
RUN curl -L https://github.com/CrunchyData/postgres-operator/releases/download/3.0/postgres-operator.3.0.tar.gz | tar xvz ./pgo ./conf/*
RUN mv pgo /usr/local/bin

CMD /test.sh