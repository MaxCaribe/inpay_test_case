FROM ruby:3.2.2

RUN mkdir -p /var/www/app
RUN mkdir -p /var/www/app/engines/PaymentEngine
RUN mkdir -p /var/www/app/engines/CustomerEngine
COPY engines/PaymentEngine /var/www/app/engines/PaymentEngine
COPY engines/CustomerEngine /var/www/app/engines/CustomerEngine
WORKDIR /var/www/app

COPY Gemfile* /var/www/app/
RUN bundle install
