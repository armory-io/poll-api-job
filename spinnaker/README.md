# Preconfigured Job

The preconfigured job defined in this repo can be installed into your Orca configuration. Details [here](https://www.spinnaker.io/guides/operator/custom-job-stages/).

There are a couple of replacemnts you will need to fix
* `{your-k8s-account}` - the Kubernetes account you want to deploy this job with
* `{spinnaker-application-name}` - the application this job will be associated with
* `{docker-image-name}` - name of the docker image you've built from this repo and pushed up