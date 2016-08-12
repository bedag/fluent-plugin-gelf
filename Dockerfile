FROM centos:7

RUN yum install -y git ruby ruby-dev gcc gcc-c++ make

CMD cd /fluent-plugin-gelf && gem build fluent-plugin-gelf.gemspec
