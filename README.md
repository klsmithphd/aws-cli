# aws-cli
Dockerized Amazon Web Services (AWS) Command Line Interface (CLI)

## How to use
The recommended way of using this Dockerized version of the aws-cli is as follows:

    docker run --rm -i -t -v $HOME/.aws:/root/.aws rkdnio/aws-cli

The options there work as follows
* `--rm` : clean up the filesystem after the docker container exits
* `-i` : establish an interactive session (you'll often want to provide input to the aws-cli
* `-v $HOME/.aws:/root/.aws` : This mounts the `.aws` directory of your user account as a volume inside the container. This allows for any configuration to be persisted outside the lifecycle of the container.

If you need to override the image defaults and run a different command instead of `aws`, use the `--entrypoint` option before the image name, e.g., `--entrypoint /bin/sh`.

### Recommendations
It's probably easiest to set up an alias in your profile so that you don't have to keep repeating that lengthy `docker run` command. Consider adding this to your `.bash_profile` (or equivalent):

    alias aws='docker run --rm -i -t -v $HOME/.aws:/root/.aws rkdnio/aws-cli'
