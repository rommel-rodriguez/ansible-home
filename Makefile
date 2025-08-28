## TODO: Set Pytorch environment variable, with the settings to fit my 2GB VRAM.

ENV_FILE ?= "env.yml"
R = ""
# LOCK_PREFIX = "envlock_"
# LOCK_SUFIX = ".yml"

.PHONY: role 
role:
	ansible-galaxy init --init-path roles "$(R)"
.PHONY: expenv
expenv:
	conda env export --from-history > "$(ENV_FILE)" 
	conda run -n base conda-lock lock --mamba --file "$(ENV_FILE)"
	conda run -n base conda-lock lock --mamba --file "$(ENV_FILE)" --platform win-64
.PHONY: updenv
updenv:
	conda env update --file environment.yml --prune

