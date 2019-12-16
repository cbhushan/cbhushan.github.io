FROM jekyll/jekyll:3
LABEL maintainer "cbhushan"

COPY Gemfile /srv/jekyll

RUN bundle install && bundle update

CMD ["jekyll", "--help"]

ENV PAGES_REPO_NWO="cbhushan/cbhushan.github.io"

WORKDIR /srv/jekyll
VOLUME  /srv/jekyll

EXPOSE 35729
EXPOSE 4000
