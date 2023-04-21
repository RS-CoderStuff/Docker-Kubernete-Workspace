FROM alpine 
LABEL name=ravinder
RUN apk add python3 && mkdir /code 
ADD https://raw.githubusercontent.com/redashu/pythonLang/main/while.py /code/
# copy vs add is add for copy data from URL 
RUN chmod 644  /code/while.py && adduser -D jack 
RUN rm -rf /bin/sh 
# adding jack user
USER jack 
# calling jack user 
ENTRYPOINT ["python3"] 
CMD ["/code/while.py"] 
# REplacement of CMD and also having few difference 
# as last argument it is not replacable