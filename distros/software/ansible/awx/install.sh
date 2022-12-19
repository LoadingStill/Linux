!#/bin/bash

#Helpful Guides:
#https://github.com/ansible/awx/blob/devel/INSTALL.md
#https://github.com/ansible/awx-operator (perfered way to install AWX)



#Required: Kubernetes, AWX, AWX CLI



#Kubernetes Install
curl -s "https://raw.githubusercontent.com/kubernetes-sigs/kustomize/master/hack/install_kustomize.sh"  | bash
#https://kubectl.docs.kubernetes.io/installation/kustomize/binaries/



#AWX Install
touch kustomization.yaml

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
apiVersion: kustomize.config.k8s.io/v1beta1
kind: Kustomization
resources:
  # Find the latest tag here: https://github.com/ansible/awx-operator/releases
  - github.com/ansible/awx-operator/config/default?ref=<tag>

# Set the image tags to match the git version from above
images:
  - name: quay.io/ansible/awx-operator
    newTag: <tag>

# Specify a custom namespace in which to install AWX
namespace: awx
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

kubectl get pods -n awx




#Make sure to add this new file to the list of "resources" in your 'kustomization.yaml' file:

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
resources:
  - github.com/ansible/awx-operator/config/default?ref=<tag>
  # Add this extra line:
  - awx-demo.yaml
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

#AWX CLI
pip3 install awxkit
awx --help
