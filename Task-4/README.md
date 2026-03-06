# Task 4: Secure Monitoring Logs

## Objective
To restrict access to container monitoring logs using a dedicated user.

---

## Step 1: Create Monitoring User

sudo useradd monitoruser

Set password for the user.

sudo passwd monitoruser

---

## Step 2: Create Monitoring Directory

sudo mkdir -p /opt/container-monitor

---

## Step 3: Assign Ownership

sudo chown -R monitoruser:monitoruser /opt/container-monitor

---

## Step 4: Set Permissions

Provide full access only to monitoring user.

sudo chmod -R 700 /opt/container-monitor

Permission explanation:

7 = read, write, execute for owner  
0 = no permissions for others

---

## Step 5: Verify Access Control

Switch to monitoring user.

su monitoruser

Access monitoring folder.

cd /opt/container-monitor
ls

Now test with another user.

su ubuntu
cd /opt/container-monitor

Access should be denied.

---

## Expected Outcome

Only the monitoring user has full access to the monitoring logs while other users are restricted.