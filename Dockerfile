FROM ruby:3.1

RUN apt-get update -yqq && apt-get install -yqq --no-install-recommends nodejs

COPY . /usr/src/app/

WORKDIR /usr/src/app

RUN bundle

CMD ["rails", "s", "-b", "0.0.0.0"]