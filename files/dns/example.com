$TTL    86400
$ORIGIN example.com.
@         IN SOA       localhost. root.localhost.  (
                           2012042400 ; Serial
                           28800      ; Refresh
                           14400      ; Retry
                           3600000    ; Expire
                           86400 )    ; Minimum
          IN NS        localhost.

gw           IN A         192.168.75.1
puppet       IN A         192.168.75.5
build        IN A         192.168.75.10
phpmyadmin   IN A         192.168.75.11

mysql        IN A         192.168.75.40

; 100-150 DHCP public range
; 200-210 DHCP reservations

tftp         IN A         192.168.75.251
yumrepo      IN A         192.168.75.252
dns          IN A         192.168.75.253
dhcp         IN A         192.168.75.254

yum          IN CNAME     yumrepo
