# vim: ft=sls
# mockups


linodeinternalca_trust_default:
  file.managed:
    - name: '/usr/local/share/ca-certificates/linode_internal_cacert.crt'
    - source: 'salt://test/mockup/files/cacert.pem'
    - user: root
    - group: root
    - mode: 0644
    - makdirs: true

linodeinternalca_trust_update_system:
  cmd.wait:
    - name: update-ca-certificates
    - watch:
      - file: linodeinternalca_trust_default

