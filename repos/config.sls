# -*- coding: utf-8 -*-
# vim: ft=sls
# How to configure repos
{%- from "repos/map.jinja" import repos with context %}

{% if repos.debian_backports.enabled %}
debian_backports_repo:
  pkgrepo.managed:
    - humanname: Debian Backports
    - name: deb {{ repos.debian_backports.url }} {{ repos.debian_backports.dist }} main
    - file: /etc/apt/sources.list.d/{{ repos.debian_backports.dist }}.list
{% endif %}

{% if repos.debian.enabled %}
debian_repo:
  pkgrepo.managed:
    - humanname: Debian {{ repos.debian.dist }}
    - name: deb {{ repos.debian.url }} {{ repos.debian.dist }} main
    - file: /etc/apt/sources.list.d/debian-{{ repos.debian.dist }}.list
{% endif %}

{% if repos.mysql.enabled %}
mysql_repo:
  pkgrepo.managed:
    - humanname: Mysql
    - name: deb {{ repos.mysql.url }} jessie mysql-apt-config mysql-5.7 mysql-tools
    - file: /etc/apt/sources.list.d/mysql.list
    - keyserver: {{ repos.mysql.keyserver }}
    - keyid: {{ repos.mysql.keyid }}
{% endif %}

{% if repos.docker.enabled %}
docker_repo:
  pkgrepo.managed:
    - humanname: Docker {{ repos.docker.dist }}
    - name: deb {{ repos.docker.url }} {{ repos.docker.dist }} main
    - file: /etc/apt/sources.list.d/docker.list
    - keyid: {{ repos.docker.keyid }}
    - keyserver: {{ repos.docker.keyserver }}
{% endif %}

{% if repos.elastic.enabled %}
elastic_repo:
  pkgrepo.managed:
    - humanname: Elastic Repo
    - name: deb {{ repos.elastic.url }} stable main
    - file: /etc/apt/sources.list.d/elastic-{{ repos.elastic.version }}.list
    - key_url: {{ repos.elastic.key_url }}
{% endif %}

{% if repos.nginx.enabled %}
nginx_repo:
  pkgrepo.managed:
    - humanname: nginx Repo
    - name: deb {{ repos.nginx.url }}{{ grains['os']|lower }} {{ grains['oscodename'] }} nginx
    - file: /etc/apt/sources.list.d/nginx.list
    - key_url: http://nginx.org/keys/nginx_signing.key
{% endif %}

{% if repos.jenkins.enabled %}
jenkins_repo:
  pkgrepo.managed:
    - humanname: Jenkins
    - name: deb {{ repos.jenkins.url }} binary/
    - file: /etc/apt/sources.list.d/jenkins.list
    - key_url: http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key
{% endif %}

{% if repos.saltstack.enabled %}
saltstack_repo:
  pkgrepo.managed:
    - humanname: Saltstack
    - name: deb {{ repos.saltstack.url }}/apt/debian/{{ salt['grains.get']('osmajorrelease') }}/amd64/latest {{ salt['grains.get']('oscodename') }} main
    - file: /etc/apt/sources.list.d/saltstack.list
    - key_url: {{ repos.saltstack.url }}/apt/debian/{{ salt['grains.get']('osmajorrelease') }}/amd64/latest/SALTSTACK-GPG-KEY.pub
{% endif %}

{% if repos.non_free.jessie.enabled %}
nonfree_general_repo:
  pkgrepo.managed:
    - humanname: non_free
    - name: deb http://mirrors.linode.com/debian jessie non-free contrib
    - file: /etc/apt/sources.list.d/non-free.list

nonfree_updates_repo:
  pkgrepo.managed:
    - humanname: non_free_updates
    - name: deb http://mirrors.linode.com/debian jessie-updates non-free
    - file: /etc/apt/sources.list.d/non-free.list

nonfree_security_repo:
  pkgrepo.managed:
    - humanname: non_free_security
    - name: deb http://security.debian.org/ jessie/updates non-free
    - file: /etc/apt/sources.list.d/non-free.list
{% endif %}

{% if repos.ceph.enabled %}
ceph_repo:
  pkgrepo.managed:
    - humanname: Ceph Repo
    - name: deb {{ repos.ceph.url }} {{ repos.ceph.release }} {{ repos.ceph.comp }}
    - file: /etc/apt/sources.list.d/ceph.list
    - key_url: {{ repos.ceph.key_url }}
{% endif %}

{% if repos.nodejs.enabled %}
nodejs_repo:
  pkgrepo.managed:
    - humanname: nodejs repo
    - name: deb {{ repos.nodejs.url }} {{ repos.nodejs.release }} {{ repos.nodejs.comp }}
    - file: /etc/apt/sources.list.d/nodesource.list
    - key_url: {{ repos.nodejs.key_url }}
{% endif %}
