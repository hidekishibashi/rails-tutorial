FROM ruby:3.1.2

RUN mkdir /tutorial
WORKDIR /tutorial

# install nodejs(LTS)
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && apt-get install -y nodejs

# install yarn
RUN npm install --global yarn

COPY Gemfile /tutorial/Gemfile
COPY Gemfile.lock /tutorial/Gemfile.lock

# Bundlerの不具合対策(1)
RUN gem update --system
RUN bundle update --bundler

RUN bundle install
COPY . /tutorial

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]