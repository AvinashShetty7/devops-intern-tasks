# Task 1: Server Setup and SSH Configuration

## Objective
To configure secure remote access to a Linux server using SSH with passwordless authentication.

---

## Step 1: Install OpenSSH Server

Update system packages.

sudo apt update

Install OpenSSH server.

sudo apt install openssh-server -y

Check SSH service status.

sudo systemctl status ssh

Enable SSH service.

sudo systemctl enable ssh

---

## Step 2: Verify Server IP Address

To find the IP address of the server run:

ip a

Example output:

192.168.1.10

---

## Step 3: Connect to Server Using SSH

From the client machine:

ssh username@server-ip

Example:

ssh ubuntu@192.168.1.10

---

## Step 4: Generate SSH Key Pair

Generate SSH keys on the client machine.

ssh-keygen

Press Enter for default values.

This generates:

~/.ssh/id_rsa  
~/.ssh/id_rsa.pub

---

## Step 5: Copy SSH Key to Server

ssh-copy-id username@server-ip

Example:

ssh-copy-id ubuntu@192.168.1.10

---

## Step 6: Test Passwordless Login

ssh ubuntu@192.168.1.10

The login should occur without asking for a password.

---

## Expected Outcome

Secure remote access to the server using SSH key-based authentication without password prompts.