FROM myoung34/github-runner
COPY credentials.sh /
CMD ["/credentials.sh", "/ephemeral-runner.sh"]
