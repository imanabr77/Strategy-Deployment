# Strategy-Deployment

Canary deployment is a software deployment strategy that gradually rolls out new versions of an application to a small subset of users before fully releasing it to everyone.

Inside this repo is one of the Canary strategy implementation scenarios using Argo rollout, which requires that CRD or Argo rollouts be installed on the Kubernetes cluster where this scenario is implemented.


To install the Argo rollouts plugin

> ./install-argo-rollouts-plugin.sh







### What is a Canary Deployment?

* It involves deploying a new version of an application alongside the existing one.
* A small percentage of traffic is routed to the new version while the rest continues on the old version.
* This allows testing the new version in a production-like environment with real users.

### How it Works

1. Initially, 100% of traffic goes to the current stable version.
2. The new version (canary) is deployed but only receives a small fraction of traffic (e.g., 5-10%).
3. As confidence grows, more traffic is gradually shifted to the canary version.
4. If issues arise, traffic can quickly be switched back to the original version.
5. Once deemed stable, all traffic is directed to the new version.

### Benefits

* Allows early feedback from real users in a production-like environment.
* Enables easy rollback if problems are detected.
* Helps capacity planning by testing resource usage with live data.
* Reduces risk by not fully replacing the existing version until proven stable.


### Implementation Considerations

* Requires tools or custom scripts to manage traffic routing between versions.
* Can be implemented manually or automated through CI/CD pipelines.
* May require additional monitoring and alerting systems to detect issues quickly.

Canary deployments provide a safer way to introduce changes to applications, especially for critical systems or large-scale deployments where downtime needs to be minimized.


