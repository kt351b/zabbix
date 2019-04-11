# zabbix
VoIP-monitoring

I use Zabbix to monitor VoIP-servers:
- trunk status
- quantity of active call via trunks 
- standart template for Linux servers monitoring
- Telegram notifications

I used this article - https://blog.zabbix.com/zabbix-3-4-mass-data-collection-using-mercury-and-smartmontools-as-an-example/ to crate a "dependent items". 

What you can find here:
- VoIP-template.xml - Zabbix template for above list
- zabbix_agentd.conf - "UserParametr" for custom scripts
- Scripts:

--- call1.trunk.list  - bash script to generate JSON file with trunks to monitor

--- trunk.control.registry.bash - bash script to monitor trunk status from JSON list

--- call1.trunk.load - bash script to count quantity of calls via trunk

--- call1.calls.quantity  - bash script to get total calls quantity throught VoIP-server
