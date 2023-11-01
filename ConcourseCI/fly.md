# Login and create test pipeline

```bash
fly login -t test -c https://concourse-ci.e-builder.net --team-name test (only needed one time)
fly -t jpoponea-test sync     (Only needed one time)
cd pipeline-generation/tasks 
fly -t jpoponea-test set-pipeline -p plat-2865-qa -c plat-2865-test.yaml
fly -t jpoponea-test unpause-pipeline -p plat-2865-qa   
```
