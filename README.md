# Jenkins Exporter

Jenkins exporter for prometheus, written in python.

[![CircleCI](https://circleci.com/gh/MichaelVL/jenkins_exporter.svg?style=svg)](https://circleci.com/gh/MichaelVL/jenkins_exporter)

## Usage

    jenkins_exporter.py [-h] [-j jenkins] [--user user]
                        [--password password] [-p port]

    optional arguments:
      -h, --help            show this help message and exit
      -j jenkins, --jenkins jenkins
                            server url from the jenkins api
      --user user           jenkins api user
      --password password   jenkins api password
      -p port, --port port  Listen to this port

## Deployment on Kubernetes

See the deploy/kubernetes folder.

## Heritage

- AbletonDevTools [jenkins_exporter](https://github.com/AbletonDevTools/jenkins_exporter)
- Lovoo's [jenkins_exporter](https://github.com/lovoo/jenkins_exporter)
- Perception's [python exporter example](http://www.robustperception.io/writing-a-jenkins-exporter-in-python)
