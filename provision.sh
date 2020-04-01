#!/usr/bin/env bash

# -e Fail and exit script on any errors
# -x Print and expand each command
set -ex

# Install Wireguard
yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
curl -o /etc/yum.repos.d/jdoss-wireguard-epel-7.repo \
  https://copr.fedorainfracloud.org/coprs/jdoss/wireguard/repo/epel-7/jdoss-wireguard-epel-7.repo
yum update -y
yum install -y wireguard-dkms wireguard-tools
mkdir -p /etc/wireguard/
