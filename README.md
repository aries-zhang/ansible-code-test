# Ansible code test

## Before run

Configurations needed on the control machine.

- Install Ansible

    - [Guide](https://docs.ansible.com/ansible/2.6/installation_guide/intro_installation.html#latest-releases-via-apt-ubuntu) for Ubuntu
    - [Guide](https://docs.ansible.com/ansible/2.6/installation_guide/intro_installation.html#latest-releases-via-pip) for macOS


- Install boto3

    ```sudo pip install boto boto3```

    For macOS, you need to ```sudo pip install boto3 --ignore-installed six```

    If python or pip was not installed on the control machine: 
    
    ```sudo apt install python python-pip```

- Environment variables

    Ansible ec2 module uses the following environment variables if ```aws_access_key``` and ```aws_secret_key``` are not specified in the script.

    ```
    export AWS_ACCESS_KEY_ID=your_aws_access_key_id
    export AWS_SECRET_ACCESS_KEY=your_aws_secret_access_key
    ```

## Run

```./main.sh```

## Issues

- Regarding to step 9 - "Log the resource usage of the container every 10 seconds", it seems Ansible does not support real-time output according to [this github issue](https://github.com/ansible/ansible/issues/3887). It was posted 4 years ago though, other later discussions on stackoverflow like [this](https://stackoverflow.com/questions/41194021/how-can-i-show-progress-for-a-long-running-ansible-task) conform to that, so alternatively the loop could be done in a shell script and call the Ansible playbook every ten seconds. Please refer to [main.sh](./main.sh) for more details about this approach.

