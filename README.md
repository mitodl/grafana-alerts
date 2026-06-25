# grafana-alerts
Alerting configuration for the MITODL engineering group 

## NOTICE
Configurations commited to the `main` branch of this repo will be applied to all environment immediately upon pushing the commits to github (assuming they pass the linter + CI deployment...). 

Further details about this deployment can be found [here](https://github.com/mitodl/ol-infrastructure/tree/main/pipelines/infrastructure/cortextool)

## Notable Kubernetes alerts

- Celery Beat restart thrashing is monitored by `CeleryBeatPodRestarts` (warning, CI/QA) and `CeleryBeatPodRestartsCritical` (critical, production) in `cortex-rules/eks_general.yaml`.
- These alerts fire when a Beat pod restarts more than 3 times in 1 hour for at least 5 minutes.
- Runbook: https://github.com/mitodl/mit-learn/wiki/Celery-Beat-Troubleshooting
