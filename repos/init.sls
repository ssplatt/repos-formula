# -*- coding: utf-8 -*-
# vim: ft=sls
# Init repos
{%- from "repos/map.jinja" import repos with context %}

include:
  - repos.install
  - repos.config
