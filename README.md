# dotfiles for @DenDen047

This is dotfiles for myself.

## [Lambda Cloud](https://lambda.ai/)

Connect to a Lambda Cloud instance through SSH.
```bash
ssh ubuntu@IP_ADDRESS -i ~/.ssh/lambda_cloud
```

Install setup environment.
```bash
curl -fsSL https://raw.githubusercontent.com/DenDen047/dotfiles/refs/heads/master/setup_scripts/lambda_cloud1.sh | bash

# after reboot, run the following command
curl -fsSL https://raw.githubusercontent.com/DenDen047/dotfiles/refs/heads/master/setup_scripts/lambda_cloud2.sh | bash
```
