FROM ruby:2.3

ENV app_path /opt/cucumber/
WORKDIR ${app_path}

COPY Gemfile* ${app_path}

RUN bundle install

COPY . ${app_path}

ENTRYPOINT ["bundle", "exec", "cucumber -p ${BROWSER}_remote -p report"]
