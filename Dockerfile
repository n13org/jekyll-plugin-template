#FROM ruby:2-alpine
# RUN apk update && apk add --no-cache binutils cmake make libgcc musl-dev gcc g++

FROM ruby:2

# throw errors if Gemfile has been modified since Gemfile.lock
# RUN bundle config --global frozen 1

WORKDIR /usr/src/app

COPY lib/jekyll/KargWare/JekyllPlugInTemplate/version.rb lib/jekyll/KargWare/JekyllPlugInTemplate/version.rb
COPY *.gemspec ./

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .
