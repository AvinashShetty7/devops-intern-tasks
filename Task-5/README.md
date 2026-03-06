# Task 5: Firewall Configuration

## Objective

To configure firewall rules that allow required services while restricting unauthorized access.

---

## Step 1: Install UFW Firewall
```bash
sudo apt update

sudo apt install ufw -y
```


---

## Step 2: Allow SSH From Specific IP

Example allowed IP:

10.181.122.152 (host laptop ip)

Command:
```bash
sudo ufw allow from 10.181.122.152 to any port 22
```


---

## Step 3: Allow HTTP Traffic
```bash
sudo ufw allow 80
```


---

## Step 4: Allow Application Port
```bash
sudo ufw allow 8000
```


---

## Step 5: Enable Firewall
```bash
sudo ufw enable
```


---

## Step 6: Verify Firewall Rules
```bash
sudo ufw status
```


Example output:
```bash
To                         Action      From
--                         ------      ----
80                         ALLOW       Anywhere
8000                       ALLOW       Anywhere
22                         ALLOW       10.181.122.152
80 (v6)                    ALLOW       Anywhere (v6)
8000 (v6)                  ALLOW       Anywhere (v6)

```


---

## Expected Outcome

Firewall rules are configured to allow only authorized SSH access while permitting HTTP and application traffic.
