@echo off
chcp 65001 >nul
:: 65001 - UTF-8

cd /d "%~dp0..\"
set BIN=%~dp0..\bin\

set LIST_TITLE=ZAPRET: Ultimate Fix ALT EXTENDED
set LIST_PATH=%~dp0..\lists\list-ultimate.txt
set RULES=%~dp0..\lists\rules.txt
set DISCORD_IPSET_PATH=%~dp0..\lists\ipset-discord.txt

start "zapret: discord" /min "%BIN%winws.exe" --wf-udp=50000-65535 ^
--filter-udp=50000-65535 --dpi-desync=fake --dpi-desync-any-protocol --dpi-desync-fake-quic="%BIN%quic_initial_www_google_com.bin" --new ^
--wf-l3=ipv4 --wf-tcp=443 --dpi-desync=syndata
--wf-l3=ipv4 --wf-tcp=443 --dpi-desync=syndata --dpi-desync-fake-syndata="%BIN%tls_clienthello_iana_org.bin"
--wf-l3=ipv4 --wf-tcp=443 --dpi-desync=syndata,split2
--wf-l3=ipv4 --wf-tcp=443 --dpi-desync=syndata,split2 --dpi-desync-fake-syndata="%BIN%tls_clienthello_iana_org.bin"
--wf-l3=ipv4 --wf-tcp=443 --dpi-desync=syndata,disorder2
--wf-l3=ipv4 --wf-tcp=443 --dpi-desync=syndata,disorder2 --dpi-desync-fake-syndata="%BIN%tls_clienthello_iana_org.bin"
--wf-l3=ipv4 --wf-tcp=443 --dpi-desync=syndata --wssize 1:6
--wf-l3=ipv4 --wf-tcp=443 --dpi-desync=syndata --dpi-desync-fake-syndata="%BIN%tls_clienthello_iana_org.bin" --wssize 1:6
--wf-l3=ipv4 --wf-tcp=443 --dpi-desync=syndata,split2 --wssize 1:6
--wf-l3=ipv4 --wf-tcp=443 --dpi-desync=syndata,split2 --dpi-desync-fake-syndata="%BIN%tls_clienthello_iana_org.bin" --wssize 1:6
--wf-l3=ipv4 --wf-tcp=443 --dpi-desync=syndata,disorder2 --wssize 1:6
--wf-l3=ipv4 --wf-tcp=443 --dpi-desync=syndata,disorder2 --dpi-desync-fake-syndata="%BIN%tls_clienthello_iana_org.bin" --wssize 1:6
