kubectl create namespace monitoring
kubectl -n monitoring apply -f elasticsearch/create-pvc.yaml
kubectl -n monitoring apply -f elasticsearch/elasticsearch-deployment.yaml
kubectl -n monitoring apply -f elasticsearch/elasticsearch-service.yaml
sleep 10
kubectl -n monitoring apply -f kibana/kibana-deployment.yaml
kubectl -n monitoring apply -f kibana/kibana-service.yaml
sleep 100
kubectl -n monitoring apply -f filebeat/filebeat-cr.yaml
kubectl -n monitoring apply -f filebeat/filebeat-inputs.yaml
kubectl -n monitoring apply -f filebeat/filebeat-sa.yaml
kubectl -n monitoring apply -f filebeat/filebeat-config.yaml
kubectl -n monitoring apply -f filebeat/filebeat-crb.yaml
kubectl -n monitoring apply -f filebeat/filebeat.yaml
kubectl -n monitoring apply -f metricbeat/metricbeat-cr.yaml
kubectl -n monitoring apply -f metricbeat/metricbeat-daemonset-modules.yaml
kubectl -n monitoring apply -f metricbeat/metricbeat-deployment-modules.yaml
kubectl -n monitoring apply -f metricbeat/metricbeat-sa.yaml
kubectl -n monitoring apply -f metricbeat/state-metrics-deploy.yaml
kubectl -n monitoring apply -f metricbeat/metricbeat-config.yaml
kubectl -n monitoring apply -f metricbeat/kube-state-metrics-service.yaml
kubectl -n monitoring apply -f metricbeat/metricbeat-crb.yaml
kubectl -n monitoring apply -f metricbeat/state-metrics-rbac.yaml
kubectl -n monitoring apply -f metricbeat/metricbeat-ds.yaml
kubectl -n monitoring apply -f metricbeat/metricbeat.yaml
kubectl -n monitoring apply -f apm-server/apm-server-service.yaml
kubectl -n monitoring apply -f apm-server/apm-server-config.yaml
kubectl -n monitoring apply -f apm-server/apm-server.yaml
