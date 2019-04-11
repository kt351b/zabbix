# zabbix
VoIP-monitoring

I use Zabbix to monitor VoIP-servers:
- trunk status
- quantity of active call via trunks 
- standart template for Linux servers monitoring
- Telegram notifications

Complex screen:
![zabbix_screen](https://user-images.githubusercontent.com/37866374/55942907-26393a80-5c4e-11e9-8713-e23f3c6fcfea.png)

I used this article - https://blog.zabbix.com/zabbix-3-4-mass-data-collection-using-mercury-and-smartmontools-as-an-example/ to crate a "dependent items". 

What you can find here:
- VoIP-template.xml - Zabbix template for above list
- VoIP-server-monitoring.xml - Zabbix template for VoIP-server monitoring ( disk space, RAM, CPU, etc...)
- VoIP-screen.xml - settings for "Complex screen" from the picture
- zabbix_agentd.conf - "UserParametr" for custom scripts
- Scripts:

--- /etc/zabbix/scripts/call1.trunk.list  - bash script to generate JSON file with trunk list to monitor

--- /etc/zabbix/scripts/trunk.control.registry.bash - bash script to monitor trunk status from JSON list

--- /etc/zabbix/scripts/call1.trunk.load - bash script to count quantity of calls via trunk

--- /etc/zabbix/scripts/call1.calls.quantity  - bash script to get total calls quantity throught VoIP-server
