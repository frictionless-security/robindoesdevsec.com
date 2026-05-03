# Ubuntu Automated System Maintenance Script

This repository contains a custom Bash script developed to automate the essential maintenance tasks for Ubuntu-based systems. I designed and wrote this code to ensure system security and stability through a streamlined, one-step update process.

## Development and Implementation

The following steps outline the process I followed to create and implement this utility:

1.  **Script Creation**
    The source code was written and saved into a shell script file using the nano text editor:
    `nano Update-test.sh`

2.  **Code Development**
    The logic was structured to handle package index updates, software upgrades, dependency management, and system storage optimization (cleaning) sequentially.

3.  **Configuring Permissions**
    A critical step in the development was granting the file the necessary execution rights. By default, new files do not have executable status. I configured this using:
    `chmod +x Update-test.sh`

4.  **Execution**
    The script requires root privileges to modify system packages. It is executed using:
    `sudo ./Update-test.sh`

## Functional Overview

The script performs five primary maintenance operations:
* **Repository Synchronization**: Updates the local package database.
* **Package Upgrading**: Upgrades all currently installed software.
* **Distribution Upgrade**: Handles complex dependency changes for newer package versions.
* **Dependency Cleanup**: Automatically removes obsolete packages that are no longer required.
* **Cache Optimization**: Clears the local archive of retrieved package files.

## Troubleshooting and Technical Insights

### Resolved Issue: Permission Denied
During the initial testing phase, the system returned a "Permission denied (os error 13)" message, even when utilizing sudo.

### Root Cause Analysis
The error occurred because the file lacked the execution bit in its permission metadata. In Linux environments, sudo privileges provide administrative access but do not bypass the requirement for a file to be explicitly marked as executable to run as a process.

### Resolution
The issue was resolved by applying the execute flag via the change mode command:
`chmod +x Update-test.sh`
This experience highlighted the importance of Linux file system permissions within the DevOps workflow.

---
*Developed by Robin - DevOps Practice*