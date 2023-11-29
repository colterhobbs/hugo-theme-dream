#!/usr/bin/env bash
curl -L -o tacticalagent-v2.5.0-darwin-arm64 'https://agents.tacticalrmm.com/api/v2/agents/?version=2.5.0&arch=arm64&token=f853d451-6c02-4961-91bb-6e6958994d4f&plat=darwin&api=api.jptech.support' && chmod +x tacticalagent-v2.5.0-darwin-arm64 && sudo ./tacticalagent-v2.5.0-darwin-arm64 -m install --api https://api.jptech.support --client-id 30 --site-id 33 --agent-type workstation --auth aac0a7c816bcf25fc7c61e39af6b084d32b825e252aaf4c639b0e5ee2091c04d

