FROM ruby:2.4.2

WORKDIR /single_responsability

ADD . /single_responsability

RUN gem install bundle
