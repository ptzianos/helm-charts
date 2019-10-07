.PHONY: index package

all : index package

index :
	helm repo index . --url https://ptzianos.github.io/helm-charts

package :
	helm lint charts/haproxy-ingress/
	helm package charts/haproxy-ingress/

