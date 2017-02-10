[![Build Status](https://travis-ci.org/luismsousa/docker-security-test.svg?branch=master)](https://travis-ci.org/luismsousa/docker-security-test) [![Code Climate](https://codeclimate.com/github/luismsousa/docker-security-test/badges/gpa.svg)](https://codeclimate.com/github/luismsousa/docker-security-test)

# Docker Security Test
## BDD Security Testing
The purpose of this repository is to define a generic set of feature files that can be used to test Docker images/containers.

## Stucture
The repository can be broken down into the following:

 * examples - example feature file usage.
 * features - generic feature files and step definitions

## Testing

Feature files can be executed using rake.

```
docker run --rm -it \
	-v $(pwd)/Dockerfile:/dockerdir/Dockerfile \
	-v /var/run/docker.sock:/var/run/docker.sock \
	-w /dockerdir dockerbdd rake
```

## Next steps

* Turn generic feature set/tests into a RubyGem so they can be imported rather than duplicating features and step definitions in projects (see examples)

## Known issues

The docker containers are not terminated after the tests are executed, hence the following command should be run afterwards:

```
docker rm -f $(docker ps -a -q --filter 'name=container-to-delete')
```