.PHONY: index package

all : index package

index :
	helm repo index . --url https://github.com/ptzianos/helm-charts/raw/master/

package :
	helm lint charts/haproxy-ingress/
	helm package charts/haproxy-ingress/

