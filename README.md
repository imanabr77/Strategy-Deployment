# Strategy-Deployment

Canary deployment is a software deployment strategy that gradually rolls out new versions of an application to a small subset of users before fully releasing it to everyone.

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

