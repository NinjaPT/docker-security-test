
Feature: Packages
  To confirm that the Docker image does not contain packages that could affect
  the security of the container.

  As a developer
  I want to harden my VM.
  So that it has less attack vectors.

Background:
  Given The "docker" binary exists.
  And a "Dockerfile" file is present.
  And a Docker image has been built.
  And a container is running.

Scenario: Remove packages
  Then the following packages should not be installed:
  | gcc           |
  | make          |
  | git           |
  | telnet        |
  | telnet-server |
  Then stop containers.
