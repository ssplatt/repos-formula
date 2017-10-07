# -*- coding: utf-8 -*-
# vim: ft=sls
# How to configure repos
{%- from "repos/map.jinja" import repos with context %}

{% if repos.https %}
repos_install_apt_transport_https:
  pkg.installed:
    - name: "apt-transport-https" 
{% endif %}
