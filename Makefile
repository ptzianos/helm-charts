.PHONY: index package

all : package index

index :
	helm repo index . --url https://github.com/ptzianos/helm-charts/raw/master/

package :
	helm lint charts/haproxy-ingress/
	helm package charts/haproxy-ingress/

