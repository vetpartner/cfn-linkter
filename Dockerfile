FROM python:3.8-alpine

RUN pip install cfn-lint
RUN pip install pydot
RUN apk add docker && service docker start
RUN docker ps -a


ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
