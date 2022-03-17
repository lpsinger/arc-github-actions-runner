# Self-Hosted GitHub Actions Runner for Architect Packages on Amazon ECS

This is a Docker image for a [self-hosted GitHub Actions runner] based on the
excellent [myoung34/docker-github-actions-runner] project. It is meant to be
executed on [Amazon ECS] to run jobs that deploy [Architect] projects.
[Architect] is not able to automatically use credentials supplied by an
[ECS task IAM role] because it does not use the full
[AWS SDK credential provider chain]. This runner installs the AWS credentials
in the location `~/.aws/credentials` to work around this limitation.

[self-hosted GitHub Actions runner]: https://docs.github.com/en/actions/hosting-your-own-runners/about-self-hosted-runners
[myoung34/docker-github-actions-runner]: https://github.com/myoung34/docker-github-actions-runner
[Amazon ECS]: https://aws.amazon.com/ecs
[Architect]: https://arc.codes/
[ECS task IAM role]: https://docs.aws.amazon.com/AmazonECS/latest/userguide/task-iam-roles.html
[AWS SDK credential provider chain]: https://docs.aws.amazon.com/sdk-for-javascript/v2/developer-guide/setting-credentials-node.html
