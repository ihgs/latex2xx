FROM latex_ruby

RUN mkdir /myapp
WORKDIR /myapp
ADD Gemfile /myapp/Gemfile
RUN bundle install
ADD . /myapp
EXPOSE 3000
CMD [ "bundle", "exec", "rails", "s", "-p", "3000", "-b", "0.0.0.0" ]
