# ansible-pause-bug-reproduction
This playbook repo contains a demo playbook for reproducing a bug in Ansible.

To reproduce the bug:

1. On a host with docker installed, run:

        docker pull trinitronx/ansible-base:devel-centos7-90f0c411e4
        docker pull trinitronx/ansible-base:devel-centos7-2.5.0
        export CONTAINER_ID=trinitronx/ansible-base:devel-centos7-90f0c411e4
        ./bin/docker-run 'ansible-playbook -i inventory/hosts playbooks/pause-test/pause-test.yml  -vvv --diff'

2. Try to abort playbook by pressing `Ctrl+c`, then `a` to abort [as documented in pause module "To abort a playbook press ctrl+c and then a."][1]
3. Watch as none of your `Ctrl+c`, `Escape` or `a` keypresses make any difference!
4. If you happen to hit `Enter` in frustration, the playbook ignores your pleas and continues anyway!


[1]: http://docs.ansible.com/ansible/latest/pause_module.html
