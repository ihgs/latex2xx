FROM ruby:2.2

RUN apt-get update
RUN apt-get install -y texlive-lang-cjk
RUN tlmgr init-usertree

RUN apt-get install -y build-essential libpq-dev
RUN mkdir /myapp
WORKDIR /myapp
ADD Gemfile /myapp/Gemfile
RUN bundle install
ADD . /myapp

CMD [ "bundle", "exec", "rails", "s", "-p", "3000", "-b", "0.0.0.0" ]
