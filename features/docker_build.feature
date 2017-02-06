Feature: Docker build
  To confirm that the Dockerfile builds without error.

Background:
  Given The "docker" binary exists.
  And a "Dockerfile" file is present.

Scenario: Run Docker build
  When I build the Dockerfile.
  Then a Docker image for this Dockerfile should exist.
