FROM myoung34/github-runner
COPY credentials.sh /
# Kill after 4 hours, because the credentials last for 6 hours by default.
CMD ["/credentials.sh", "timeout", "4h", "/entrypoint.sh"]
