k3d cluster delete ct-cluster
k3d cluster create ct-cluster --agents 1 --servers 1 -p "8080:30000@loadbalancer"
kubectl apply -f deployment.yaml

