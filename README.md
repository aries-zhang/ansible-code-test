# ansible-code-test

## Preparation

### Control Machine configuration

- Installation of Ansible
https://docs.ansible.com/ansible/2.6/installation_guide/intro_installation.html#latest-releases-via-apt-ubuntu

- Install boto3
    ```sudo pip install boto boto3```

    If you are working on macOS, you will need ```sudo pip install boto3 --ignore-installed six```

- Environment variables

    Ansible ec2 module will use the following environment varibales if ```aws_access_key``` and ```aws_secret_key``` variables are not specified in the script.

    ```
    export AWS_ACCESS_KEY_ID=your_aws_access_key_id
    export AWS_SECRET_ACCESS_KEY=your_aws_secret_access_key
    ```

### AWS configuration
- Security group ```basic_http```

## Run the script

```./main.sh```

## Notes:

- Regarding to step 9 - "Log the resource usage of the container every 10 seconds", it seems Ansible does not support real-time output according to [this github issue](https://github.com/ansible/ansible/issues/3887). It was posted 4 years ago though, other later discussions on [stackoverflow](https://stackoverflow.com/questions/41194021/how-can-i-show-progress-for-a-long-running-ansible-task) conform to that, so alternatively the loop could be done in a shell script and call the Ansible playbook every 10 seconds. Please refer to [main.sh](./main.sh) for more details about this approach.

