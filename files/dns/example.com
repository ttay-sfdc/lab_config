$TTL    86400
$ORIGIN example.com.
@         IN SOA       localhost. root.localhost.  (
                           2012042400 ; Serial
                           28800      ; Refresh
                           14400      ; Retry
                           3600000    ; Expire
                           86400 )    ; Minimum
          IN NS        localhost.

gw           IN A         10.0.0.1
puppet       IN A         10.0.0.5
build        IN A         10.0.0.10
phpmyadmin   IN A         10.0.0.11

mysql        IN A         10.0.0.40

; 100-150 DHCP public range
; 200-210 DHCP reservations

tftp         IN A         10.0.0.251
yumrepo      IN A         10.0.0.252
dns          IN A         10.0.0.253
dhcp         IN A         10.0.0.254

yum          IN CNAME     yumrepo
