FROM ruby:3.3.6
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs vim

# Install Yarn
RUN apt-get update && apt-get install -y curl apt-transport-https wget
RUN curl https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y yarn

# Install Node.js
RUN curl https://deb.nodesource.com/setup_18.x | bash -
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 1655A0AB68576280
RUN apt-get update && apt-get install -y nodejs

RUN mkdir /myapp
WORKDIR /myapp
ADD Gemfile /myapp/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock

RUN gem install bundler
RUN bundle install
ADD . /myapp

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
