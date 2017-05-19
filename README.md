# fermayo/docker-login-secret
Creates a `config.json` secret with `docker login` credentials

## Usage

	docker run -it -v /var/run/docker.sock:/var/run/docker.sock fermayo/docker-login-secret [REGISTRY]

After logging in, creates a secret called `config.json` with the credentials in the format:

	{
		"auths": {
			"https://index.docker.io/v1/": {
				"auth": "<base64encoded credentials>"
			}
		}
	}

In combination with an environment variable like `DOCKER_CONFIG=/run/secrets`, this is useful for services with the docker CLI to have registry access for pushing or pulling private images.
