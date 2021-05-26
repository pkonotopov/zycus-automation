#!/bin/sh
cd `dirname "$0"`

ENV=nonprod

source $PWD/ansible_config.sh

ansible-playbook ../../playbooks/ad-hoc/patroni/main.yml \
  -i ../../inventories/$ENV/ \
  --extra-vars "target=postgres" \
  "$@"
