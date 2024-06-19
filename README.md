# Instalar redmine en kubernetes


## Crear cluster kubernetes en DigitalOcean Cloud Provider
Crear cluster kubernetes en Digital Ocean usando terraform

```sh
git clone
terraform init
terraform plan
terraform apply
```

## Conectarnos al cluster usando el fichero kubeconfig
```sh
export KUBECONFIG=./kubeconfig_do 
```

## Instalar Redmine usando helm chart

```sh
kubectl create namespace redmine

helm install redmine \
    oci://registry-1.docker.io/bitnamicharts/redmine \
    --namespace redmine \
    --set databaseType=postgresql \
    --set redmineUsername=admin \
    --set redminePassword=Password1!
```

## Verificar acceso
```sh
export SERVICE_IP=$(kubectl get svc --namespace redmine redmine --template "{{ range (index .status.loadBalancer.ingress 0) }}{{ . }}{{ end }}")

echo "Redmine URL: http://$SERVICE_IP/"
```


# Configuracion de Redmine:
- Iniciar sesion como administrador
- Cambiar Idioma a Espaniol
- Crear usuarios
- 

# Integracion redmine con SLACK
- https://github.com/future-architect/redmine_slack_integration




# References:
- https://bitnami.com/stack/redmine/helm
- https://github.com/future-architect/redmine_slack_integration
- https://docs.bitnami.com/aws/apps/redmine/configuration/install-plugins/
