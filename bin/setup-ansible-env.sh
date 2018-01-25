#!/usr/bin/env bash
REPO_BASE=$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )

# Set Ansible Inventory (can be overridden by plays, cmdline, etc.)
export ANSIBLE_HOSTS=${REPO_BASE}/inventory
