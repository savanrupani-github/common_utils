# Create SSH keys
```
# Terminal commands
# -C: comment
# -f: file name for the key pair

cd ~/.ssh
ssh-keygen -t ed25519 -C "savan.rupani@outlook.com" -f "savanrupani-github"
ssh-keygen -t ed25519 -C "savan.rupani@radiant.digital" -f "srupani-radiant"
```

Above commands create public and private keys in **~/.ssh/** folder.

# Add SSH keys to to SSH-agent
```
# Start ssh-agent
eval "$(ssh-agent -s)"

ssh-add --apple-use-keychain ~/.ssh/savanrupani-github
ssh-add --apple-use-keychain ~/.ssh/srupani-radiant

# If the file doesn't exist, create the file.
touch ~/.ssh/config
```

# Add public keys to the github.com account
1. Go to settings on github.com
2. Click on *SSH and GPG Keys* under Access
3. Click on New SSH Key
4. Provide a Title (e.g. srupani-nmd-mac)
5. Execute terminal command to copy the public key content `pbcopy < ~/.ssh/savanrupani-github.pub`
6. Paste it under Key section on the web page
7. Follow the same instructions and copy other public keys to their corresponding accounts

# Modify config file
```
# Open ~/.ssh/config file and add foloowing content

#savanrupani-github account
Host github.com-savanrupani-github
    HostName github.com
    User savanrupani-github
    IdentityFile ~/.ssh/savanrupani-github

#srupani-radiant account
Host github.com-srupani-radiant
    HostName github.com
    User srupani-radiant
    IdentityFile ~/.ssh/srupani-radiant
```

# Clone new repositories
```
# Notice: github.com has to be replaced by github.com-srupani-radiant
git clone git@github.com-srupani-radiant:VeritasDataResearch/AzureInfrastructure.git

# Notice: github.com has to be replaced by github.com-savanrupani-github
git clone git@github.com-savanrupani-github:savanrupani-github/tutorials.git
```

# Update URL for exisiting repositories
```
# radiant repositories
git remote set-url origin git@github.com-srupani-radiant:VeritasDataResearch/AzureInfrastructure.git
git remote set-url origin git@github.com-srupani-radiant:VeritasDataResearch/processing.git

# personal repositories
git remote set-url origin git@github.com-savanrupani-github:savanrupani-github/tutorials.git
```

# Set username and email for all repositories
```
# Examples:
cd "/Users/srupani-nmd/Documents/Documents - srupani-NMD/GitHub/tutorials"
git config user.email "savan.rupani@outlook.com"
git config user.name "Savan Rupani"

cd "/Users/srupani-nmd/Documents/Documents - srupani-NMD/GitHub/processing"
git config user.email "savan.rupani@radiant.digital"
git config user.name "Savan Rupani"

```
