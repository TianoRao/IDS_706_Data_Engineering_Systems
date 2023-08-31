// For format details, see https://aka.ms/devcontainer.json. For config options, see the README at:// For format details, see https://aka.ms/devcontainer.json. For config options, see the README at:
// https://github.com/microsoft/vscode-dev-containers/tree/v0.245.2/containers/codespaces-linux
{
	"name": "GitHub Codespaces (Default)",

	"build": {
		"dockerfile": "Dockerfile",
		"context": ".."
	},
	"features": {
		"ghcr.io/devcontainers/features/nvidia-cuda:1": { 
		  "installCudnn": true
		}
	  },

	// Configure tool-specific properties.
	"customizations": {
		// Configure properties specific to VS Code.
		"vscode": {
			// Set *default* container specific settings.json values on container create.
			"settings": { 
				"go.toolsManagement.checkForUpdates": "local",
				"go.useLanguageServer": true,
				"go.gopath": "/go",
				"python.defaultInterpreterPath": "/home/codespace/venv/bin/python",
				"python.linting.enabled": true,
				"python.linting.pylintEnabled": true,
				"python.formatting.autopep8Path": "/home/codespace/venv/bin/autopep8",
				"python.formatting.blackPath": "/home/codespace/venv/bin/black",
				"python.formatting.yapfPath": "/home/codespace/venv/bin/yapf",
				"python.linting.banditPath": "/home/codespace/venv/bin/bandit",
				"python.linting.flake8Path": "/home/codespace/venv/bin/flake8",
				"python.linting.mypyPath": "/home/codespace/venv/bin/mypy",
				"python.linting.pycodestylePath": "/home/codespace/venv/bin/pycodestyle",
				"python.linting.pydocstylePath": "/home/codespace/venv/bin/pydocstyle",
				"python.linting.pylintPath": "/home/codespace/venv/bin/pylint",
				"lldb.executable": "/usr/bin/lldb",
				"files.watcherExclude": {
					"**/target/**": true
				}
			},
			
			// Add the IDs of extensions you want installed when the container is created.
			"extensions": [
				"GitHub.vscode-pull-request-github",
				"GitHub.copilot-nightly",
				"GitHub.copilot-labs",
				"ms-azuretools.vscode-docker",
				"ms-toolsai.jupyter",
				"ms-toolsai.jupyter-keymap",
				"ms-toolsai.jupyter-renderers",
				"ms-python.vscode-pylance",
				"ms-python.python",
				"ms-vscode.makefile-tools"
			]
		}
	},

	"remoteUser": "codespace",

	"overrideCommand": false,

	"mounts": ["source=codespaces-linux-var-lib-docker,target=/var/lib/docker,type=volume"],

	"runArgs": [
		"--cap-add=SYS_PTRACE",
		"--security-opt",
		"seccomp=unconfined",
		"--privileged",
		"--init"
	],
	
	// Use 'forwardPorts' to make a list of ports inside the container available locally.
	// "forwardPorts": [],

	// "oryx build" will automatically install your dependencies and attempt to build your project
	//"postCreateCommand": "oryx build -p virtualenv_name=.venv --log-file /tmp/oryx-build.log --manifest-dir /tmp || echo 'Could not auto-build. Skipping.'"
	 "postCreateCommand": "bash setup.sh"
}
// https://github.com/microsoft/vscode-dev-containers/tree/v0.245.2/containers/codespaces-linux
{
	"name": "GitHub Codespaces (Default)",

	"build": {
		"dockerfile": "Dockerfile",
		"context": ".."
	},
	"features": {
		"ghcr.io/devcontainers/features/nvidia-cuda:1": { 
		  "installCudnn": true
		}
	  },

	// Configure tool-specific properties.
	"customizations": {
		// Configure properties specific to VS Code.
		"vscode": {
			// Set *default* container specific settings.json values on container create.
			"settings": { 
				"go.toolsManagement.checkForUpdates": "local",
				"go.useLanguageServer": true,
				"go.gopath": "/go",
				"python.defaultInterpreterPath": "/home/codespace/venv/bin/python",
				"python.linting.enabled": true,
				"python.linting.pylintEnabled": true,
				"python.formatting.autopep8Path": "/home/codespace/venv/bin/autopep8",
				"python.formatting.blackPath": "/home/codespace/venv/bin/black",
				"python.formatting.yapfPath": "/home/codespace/venv/bin/yapf",
				"python.linting.banditPath": "/home/codespace/venv/bin/bandit",
				"python.linting.flake8Path": "/home/codespace/venv/bin/flake8",
				"python.linting.mypyPath": "/home/codespace/venv/bin/mypy",
				"python.linting.pycodestylePath": "/home/codespace/venv/bin/pycodestyle",
				"python.linting.pydocstylePath": "/home/codespace/venv/bin/pydocstyle",
				"python.linting.pylintPath": "/home/codespace/venv/bin/pylint",
				"lldb.executable": "/usr/bin/lldb",
				"files.watcherExclude": {
					"**/target/**": true
				}
			},
			
			// Add the IDs of extensions you want installed when the container is created.
			"extensions": [
				"GitHub.vscode-pull-request-github",
				"GitHub.copilot-nightly",
				"GitHub.copilot-labs",
				"ms-azuretools.vscode-docker",
				"ms-toolsai.jupyter",
				"ms-toolsai.jupyter-keymap",
				"ms-toolsai.jupyter-renderers",
				"ms-python.vscode-pylance",
				"ms-python.python",
				"ms-vscode.makefile-tools"
			]
		}
	},

	"remoteUser": "codespace",

	"overrideCommand": false,

	"mounts": ["source=codespaces-linux-var-lib-docker,target=/var/lib/docker,type=volume"],

	"runArgs": [
		"--cap-add=SYS_PTRACE",
		"--security-opt",
		"seccomp=unconfined",
		"--privileged",
		"--init"
	],
	
	// Use 'forwardPorts' to make a list of ports inside the container available locally.
	// "forwardPorts": [],

	// "oryx build" will automatically install your dependencies and attempt to build your project
	//"postCreateCommand": "oryx build -p virtualenv_name=.venv --log-file /tmp/oryx-build.log --manifest-dir /tmp || echo 'Could not auto-build. Skipping.'"
	 "postCreateCommand": "bash setup.sh"
}
