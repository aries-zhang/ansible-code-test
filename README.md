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

TBD


changed: [localhost -> localhost] => (item={u'kernel': None, u'root_device_type': u'ebs', u'private_dns_name': u'ip-172-31-5-97.ap-southeast-2.compute.internal', u'public_ip': u'52.62.1.97', u'private_ip': u'172.31.5.97', u'id': u'i-074f1557cd7562f7f', u'ebs_optimized': False, u'state': u'running', u'virtualization_type': u'hvm', u'root_device_name': u'/dev/sda1', u'ramdisk': None, u'block_device_mapping': {u'/dev/sda1': {u'status': u'attached', u'delete_on_termination': True, u'volume_id': u'vol-0f91da902c01a6148'}}, u'key_name': u'test-key', u'image_id': u'ami-47c21a25', u'tenancy': u'default', u'groups': {u'sg-0384b577c1edb15a9': u'basic_access'}, u'public_dns_name': u'ec2-52-62-1-97.ap-southeast-2.compute.amazonaws.com', u'state_code': 16, u'tags': {}, u'placement': u'ap-southeast-2b', u'ami_launch_index': u'0', u'dns_name': u'ec2-52-62-1-97.ap-southeast-2.compute.amazonaws.com', u'region': u'ap-southeast-2', u'launch_time': u'2018-08-09T07:35:18.000Z', u'instance_type': u't2.micro', u'architecture': u'x86_64', u'hypervisor': u'xen'})