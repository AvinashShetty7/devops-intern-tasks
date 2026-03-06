# Task 1: Server Setup and SSH Configuration

## Objective
To configure secure remote access to a Linux server using SSH with passwordless authentication.

---
## Used virtualbox for creating ubuntu server
---
## Step 1: Install OpenSSH Server

Update system packages.
```bash
sudo apt update
```
Install OpenSSH server.

```bash
sudo apt install openssh-server -y
```
Check SSH service status.

```bash
sudo systemctl status ssh
```
Enable SSH service.

```bash
sudo systemctl enable ssh
```
---

## Step 2: Verify Server IP Address

To find the IP address of the server run:
```bash
ifconfig
```


Example output:

10.181.122.217

---

## Step 3: Connect to Server Using SSH

From the client machine:
```bash
ssh username@server-ip
```

It will ask password for login
Example:

ssh a-vin@10.181.122.217

a-vin->default user
---

## Step 4: Generate SSH Key Pair for passwordless authentication

Generate SSH keys on the client machine.
```bash
ssh-keygen
```


Press Enter for default values.

This generates:

~/.ssh/id_rsa  
~/.ssh/id_rsa.pub

---

## Step 5: Copy SSH Key to Server
```bash
ssh-copy-id username@server-ip
```


Example:

ssh-copy-id a-vin@10.181.122.217

---

## Step 6: Test Passwordless Login
```bash
ssh a-vin@10.181.122.217
```


The login should occur without asking for a password.

---

## Expected Outcome

Secure remote access to the server using SSH key-based authentication without password prompts.