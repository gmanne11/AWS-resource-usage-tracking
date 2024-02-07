# AWS-resource-usage-tracking
This Repo has shell script that checks and keeps track of AWS resource utilization. This is further integrated with cronjob to schedule running everyday at 5pm and send an email to gopim4959@gmail.com.

# Setting Up a Cron Job with Crontab

# Run the following command in your terminal to open the crontab file for editing:

crontab -e


# Add a new line to the crontab file specifying the schedule and command to execute. For example, to run a script every day at 5:00 PM:

0 17 * * * /Users/vivekmanne/AWS-resource-usage-tracking/aws_resource_tracker.sh

