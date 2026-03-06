# Task 5: Firewall Configuration

## Objective

To configure firewall rules that allow required services while restricting unauthorized access.

---

## Step 1: Install UFW Firewall

sudo apt update

sudo apt install ufw -y

---

## Step 2: Allow SSH From Specific IP

Example allowed IP:

192.168.1.20

Command:

sudo ufw allow from 192.168.1.20 to any port 22

---

## Step 3: Allow HTTP Traffic

sudo ufw allow 80

---

## Step 4: Allow Application Port

sudo ufw allow 8000

---

## Step 5: Enable Firewall

sudo ufw enable

---

## Step 6: Verify Firewall Rules

sudo ufw status

Example output:

22 ALLOW FROM 192.168.1.20  
80 ALLOW  
8000 ALLOW

---

## Expected Outcome

Firewall rules are configured to allow only authorized SSH access while permitting HTTP and application traffic.
