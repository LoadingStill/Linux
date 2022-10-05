#!/bin/bash
echo "####################    Grafana Installing    #######################"
echo "[grafana]" | sudo tee -a /etc/yum.repos.d/grafana.repo
echo "name=grafana" | sudo tee -a /etc/yum.repos.d/grafana.repo
echo "baseurl=https://packages.grafana.com/oss/rpm" | sudo tee -a /etc/yum.repos.d/grafana.repo
echo "repo_gpgcheck=1" | sudo tee -a /etc/yum.repos.d/grafana.repo
echo "enabled=1" | sudo tee -a /etc/yum.repos.d/grafana.repo
echo "gpgcheck=1" | sudo tee -a /etc/yum.repos.d/grafana.repo
echo "gpgkey=https://packages.grafana.com/gpg.key" | sudo tee -a /etc/yum.repos.d/grafana.repo
echo "sslverify=1" | sudo tee -a /etc/yum.repos.d/grafana.repo
echo "sslcacert=/etc/pki/tls/certs/ca-bundle.crt" | sudo tee -a /etc/yum.repos.d/grafana.repo
sudo dnf install grafana
echo "####################    Grafana Installed    #######################"
