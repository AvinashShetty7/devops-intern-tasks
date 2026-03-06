# Task 4: Secure Monitoring Logs

## Objective
To restrict access to container monitoring logs using a dedicated user.

---


## Step 1: Assign Ownership
```bash
sudo chown -R a-vin:a-vin /opt/container-monitor
```


---

## Step 2: Set Permissions

Provide full access only to monitoring user.
```bash
sudo chmod -R 700 /opt/container-monitor
```


Permission explanation:

7 = read, write, execute for owner  
0 = no permissions for others

---

## Step 3: Verify Access Control

Switch to monitoring user.
```bash
su a-vin
```


Access monitoring folder.
```bash
cd /opt/container-monitor
ls
```


Now test with another user.
```bash
su avi
cd /opt/container-monitor
```


Access should be denied.

---

## Expected Outcome

Only the monitoring user has full access to the monitoring logs while other users are restricted.