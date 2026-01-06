include $(ENV_FILE)
ifndef ENV_FILE
$(error ENV_FILE is not set)
endif
export PYTHONPATH=$(PWD)

miner_dev:
	uv run neurons/miner_dev.py \
		--netuid $(NETUID) \
		--subtensor.network $(SUBTENSOR_NETWORK) \
		--subtensor.chain_endpoint $(SUBTENSOR_CHAIN_ENDPOINT) \
		--wallet.name $(WALLET_NAME) \
		--wallet.hotkey $(WALLET_HOTKEY) \
		--axon.port $(AXON_PORT) \
		--blacklist.force_validator_permit $(BLACKLIST_FORCE_VALIDATOR_PERMIT) \
		--blacklist.allow_non_registered $(BLACKLIST_ALLOW_NON_REGISTERED) \
		--logging.info
