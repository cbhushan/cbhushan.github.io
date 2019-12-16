---
title: "List commands used to build a docker image"
date: 2019-12-07
classes: wide
categories:
  - blog
tags:
  - Docker
  - Tips
---

Often its useful to know what commands were used to build a docker image.
[docker history](https://docs.docker.com/engine/reference/commandline/history/) is a handy tool for this purpose.

Here is an example that list history of a [python image](https://hub.docker.com/_/python/): 
{% raw %}
```
$ docker history python
IMAGE               CREATED             CREATED BY                                      SIZE                COMMENT
ad01f54ca3a9        11 months ago       /bin/sh -c #(nop)  CMD ["python3"]              0B                  
<missing>           11 months ago       /bin/sh -c set -ex;   wget -O get-pip.py 'ht…   5.93MB              
<missing>           11 months ago       /bin/sh -c #(nop)  ENV PYTHON_PIP_VERSION=18…   0B                  
<missing>           11 months ago       /bin/sh -c cd /usr/local/bin  && ln -s idle3…   32B                 
<missing>           11 months ago       /bin/sh -c set -ex   && wget -O python.tar.x…   70.3MB              
<missing>           11 months ago       /bin/sh -c #(nop)  ENV PYTHON_VERSION=3.7.2     0B                  
<missing>           12 months ago       /bin/sh -c #(nop)  ENV GPG_KEY=0D96DF4D4110E…   0B                  
<missing>           12 months ago       /bin/sh -c apt-get update && apt-get install…   17MB                
<missing>           12 months ago       /bin/sh -c #(nop)  ENV LANG=C.UTF-8             0B                  
<missing>           12 months ago       /bin/sh -c #(nop)  ENV PATH=/usr/local/bin:/…   0B                  
<missing>           12 months ago       /bin/sh -c set -ex;  apt-get update;  apt-ge…   556MB               
<missing>           12 months ago       /bin/sh -c apt-get update && apt-get install…   142MB               
<missing>           12 months ago       /bin/sh -c set -ex;  if ! command -v gpg > /…   7.81MB              
<missing>           12 months ago       /bin/sh -c apt-get update && apt-get install…   23.2MB              
<missing>           12 months ago       /bin/sh -c #(nop)  CMD ["bash"]                 0B                  
<missing>           12 months ago       /bin/sh -c #(nop) ADD file:a61c14b18252183a4…   101MB             
```
{% endraw %}

Note that the history is listed in reversed chronological order and some of the columns are truncated.
Futher `--format` flag can be used for fine tuning the outputs.

{% include adsense-in-article.html %}

Here is the history of the same [python image](https://hub.docker.com/_/python/) in chronologocal order without truncation.
Note `tac` command at the end.

{% raw %}
```shell
$ docker history --no-trunc --format "{{.CreatedAt}} [{{.Size}}]: {{.CreatedBy}}"  python | tac

2018-11-15T17:44:00-05:00 [101MB]: /bin/sh -c #(nop) ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
2018-11-15T17:44:09-05:00 [0B]: /bin/sh -c #(nop)  CMD ["bash"]
2018-11-16T06:15:57-05:00 [23.2MB]: /bin/sh -c apt-get update && apt-get install -y --no-install-recommends   ca-certificates   curl   netbase   wget  && rm -rf /var/lib/apt/lists/*
2018-11-16T06:16:02-05:00 [7.81MB]: /bin/sh -c set -ex;  if ! command -v gpg > /dev/null; then   apt-get update;   apt-get install -y --no-install-recommends    gnupg    dirmngr   ;   rm -rf /var/lib/apt/lists/*;  fi
2018-11-16T06:17:06-05:00 [142MB]: /bin/sh -c apt-get update && apt-get install -y --no-install-recommends   bzr   git   mercurial   openssh-client   subversion     procps  && rm -rf /var/lib/apt/lists/*
2018-11-16T06:19:28-05:00 [556MB]: /bin/sh -c set -ex;  apt-get update;  apt-get install -y --no-install-recommends   autoconf   automake   bzip2   dpkg-dev   file   g++   gcc   imagemagick   libbz2-dev   libc6-dev   libcurl4-openssl-dev   libdb-dev   libevent-dev   libffi-dev   libgdbm-dev   libgeoip-dev   libglib2.0-dev   libjpeg-dev   libkrb5-dev   liblzma-dev   libmagickcore-dev   libmagickwand-dev   libncurses5-dev   libncursesw5-dev   libpng-dev   libpq-dev   libreadline-dev   libsqlite3-dev   libssl-dev   libtool   libwebp-dev   libxml2-dev   libxslt-dev   libyaml-dev   make   patch   xz-utils   zlib1g-dev     $(    if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then     echo 'default-libmysqlclient-dev';    else     echo 'libmysqlclient-dev';    fi   )  ;  rm -rf /var/lib/apt/lists/*
2018-11-16T17:23:02-05:00 [0B]: /bin/sh -c #(nop)  ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
2018-11-16T17:23:03-05:00 [0B]: /bin/sh -c #(nop)  ENV LANG=C.UTF-8
2018-11-16T17:23:18-05:00 [17MB]: /bin/sh -c apt-get update && apt-get install -y --no-install-recommends   tk-dev   uuid-dev  && rm -rf /var/lib/apt/lists/*
2018-11-16T17:23:18-05:00 [0B]: /bin/sh -c #(nop)  ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
2018-12-26T03:42:00-05:00 [0B]: /bin/sh -c #(nop)  ENV PYTHON_VERSION=3.7.2
2018-12-26T03:44:29-05:00 [70.3MB]: /bin/sh -c set -ex   && wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"  && wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"  && gpg --batch --verify python.tar.xz.asc python.tar.xz  && { command -v gpgconf > /dev/null && gpgconf --kill all || :; }  && rm -rf "$GNUPGHOME" python.tar.xz.asc  && mkdir -p /usr/src/python  && tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz  && rm python.tar.xz   && cd /usr/src/python  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"  && ./configure   --build="$gnuArch"   --enable-loadable-sqlite-extensions   --enable-shared   --with-system-expat   --with-system-ffi   --without-ensurepip  && make -j "$(nproc)"  && make install  && ldconfig   && find /usr/local -depth   \(    \( -type d -a \( -name test -o -name tests \) \)    -o    \( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \)   \) -exec rm -rf '{}' +  && rm -rf /usr/src/python   && python3 --version
2018-12-26T03:44:30-05:00 [32B]: /bin/sh -c cd /usr/local/bin  && ln -s idle3 idle  && ln -s pydoc3 pydoc  && ln -s python3 python  && ln -s python3-config python-config
2018-12-26T03:44:30-05:00 [0B]: /bin/sh -c #(nop)  ENV PYTHON_PIP_VERSION=18.1
2018-12-26T03:44:36-05:00 [5.93MB]: /bin/sh -c set -ex;   wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py';   python get-pip.py   --disable-pip-version-check   --no-cache-dir   "pip==$PYTHON_PIP_VERSION"  ;  pip --version;   find /usr/local -depth   \(    \( -type d -a \( -name test -o -name tests \) \)    -o    \( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \)   \) -exec rm -rf '{}' +;  rm -f get-pip.py
2018-12-26T03:44:36-05:00 [0B]: /bin/sh -c #(nop)  CMD ["python3"]
```
{% endraw %}
