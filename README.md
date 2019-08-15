# poll-api-job

`poll-api-job` defines a simple script that can be used in a Kubernetes Job for polling an API until the response returns a desired output.

Example Kubernetes Job

```
apiVersion: batch/v1
kind: Job
metadata:
  name: status-poller
  namespace: spinnaker
spec:
  backoffLimit: 0
  template:
    spec:
      restartPolicy: Never
      containers: 
        - name: status-poller
          image: armory-io/poll-api-job:latest
          env:
            - name: API_URL
              value: http://my-api.com/tickets/1234
            - name: STATUS_FILTER
              value: ".task.status"
            - name: DESIRED_STATUS
              value: APPROVED
```

I've also included a sample configuration for a Preconfigured Job in the `spinnaker` directory!