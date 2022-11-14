echo "Criando a imagem..."

docker build -t goliver10/kubernetes-projeto2-dio/.

echo "Fazendo o push das imagens..."

docker push goliver10/kubernetes-projeto2-dio

echo "Criando previamente os secrets utilizados..."

kubectl apply -f ./secrets.yml

echo "Criando os deployments..."

kubectl apply -f ./app-deployment.yml
kubectl apply -f ./mysql-deployment.yml

echo "Criando o loadbalancer..."

kubectl apply -f ./load-balancer.yml

echo "Executando o arquivo gitlab..."

kubectl apply -f ./gitlab-ci.yml
