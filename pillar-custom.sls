# -*- coding: utf-8 -*-
# vim: ft=yaml
# Custom Pillar Data for repos

repos:
  debian_backports:
    enabled: True
  docker:
    enabled: True
  mysql:
    enabled: true
  elastic:
    enabled: True
  nginx:
    enabled: True
  jenkins:
    enabled: True
  debian:
    enabled: True
    dist: stretch
  saltstack:
    enabled: True
  non_free:
    jessie:
      enabled: True
  ceph:
    enabled: true
    url: https://download.ceph.com/debian-luminous/
  nodejs:
    enabled: true
