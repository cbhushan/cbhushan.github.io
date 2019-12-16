# cbhushan.github.io

This repository is the source of the website [http://cbhushan.github.io/](http://cbhushan.github.io/), which uses the awesome [Minimal Mistakes](https://mmistakes.github.io/minimal-mistakes/) theme for [Jekyll](http://jekyllrb.com/).

Also see the [LICENSE](https://github.com/cbhushan/cbhushan.github.io/blob/master/LICENSE) and [NOTICE](https://github.com/cbhushan/cbhushan.github.io/blob/master/NOTICE.md).


## Background information on Gems, Ruby, bundle & Jekyll

Source: [Ruby 101](https://jekyllrb.com/docs/ruby-101/)

- A "gem" is code you can include in Ruby projects.
- A "Gemfile" is a list of gems required for your site.
- "Bundler" is an application that installs the gems listed in your Gemfile.
- "Bundler" itself is installed by running `gem install bundler`
- If you’re using a Gemfile you would first run `bundle install` to install the gems, then `bundle exec jekyll serve` to build your site. This guarantees you’re using the gem versions set in the Gemfile.
- Basic details of gem-based themes are [described here](https://jekyllrb.com/docs/themes/).
  - [Minimal Mistakes Structure](https://mmistakes.github.io/minimal-mistakes/docs/structure/)
  - [Configure as necessary](https://mmistakes.github.io/minimal-mistakes/docs/configuration/)

- This website uses [remote theme method](https://mmistakes.github.io/minimal-mistakes/docs/quick-start-guide/#remote-theme-method) to get the [Minimal Mistakes theme](https://mmistakes.github.io/minimal-mistakes/).
  - This implies all theme related settings are saved in `Gemfile` and `_config.yml`
  - [mm-github-pages-starter](https://github.com/mmistakes/mm-github-pages-starter) is a minimal example using this approach.

- Overriding theme defaults:
  - [Good basic fundamental](https://jekyllrb.com/docs/themes/#overriding-theme-defaults)
  - [Minimal Mistakes specific instructions](https://mmistakes.github.io/minimal-mistakes/docs/overriding-theme-defaults/)



## Quick-start

Included [Dockerfile](./Dockerfile) can be used to quickly build and serve the website locally (before pushing to github). 
It is based on [jekyll image](https://hub.docker.com/r/jekyll/jekyll) ([more info](https://github.com/envygeeks/jekyll-docker/blob/master/README.md), original [Dockerfile](https://github.com/envygeeks/jekyll-docker/blob/master/repos/jekyll/Dockerfile))

Quick-steps:

```shell
# build docker image
$ docker build -t mmistakes:github .

# use image to serve website
docker run --rm --volume=/path/to/cbhushan.github.io:/srv/jekyll -p 4444:4000 mmistakes:github bundle install && bundle update && bundle exec jekyll serve --host=0.0.0.0
```

After this website should be served at http://localhost:4444/.
Make sure to disable any type of adblocker etc. for localhost
