FROM ruby:2.6.2-alpine3.9

ENV APP_DIR /mount
ENV RAILS_ENV development

WORKDIR $APP_DIR

RUN apk add build-base mariadb-dev nodejs tzdata

COPY . $APP_DIR

RUN bundle install

CMD ["rails", "s", "-b", "0.0.0.0"]
