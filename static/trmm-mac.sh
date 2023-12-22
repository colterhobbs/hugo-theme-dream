#!/usr/bin/env bash
curl -L -o tacticalagent-v2.6.0-darwin-arm64 'https://agents.tacticalrmm.com/api/v2/agents/?version=2.6.0&arch=arm64&token=f853d451-6c02-4961-91bb-6e6958994d4f&plat=darwin&api=api.jptech.support' && chmod +x tacticalagent-v2.6.0-darwin-arm64 && sudo ./tacticalagent-v2.6.0-darwin-arm64 -m install --api https://api.jptech.support --client-id 30 --site-id 33 --agent-type workstation --auth 3bc81df92f8dae105a670c243f801d23a93756e1b014dd4ead3d6dac607c1909


