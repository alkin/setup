# Check if the system is a Dell or Inspiron or Latitude or XPS
DELL_PRODUCT=$(sudo dmidecode -s system-product-name | grep -i "Dell\|Inspiron\|Latitude\|XPS")

if [ -n "$DELL_PRODUCT" ]; then
    yay -S dell-command-configure --needed --noconfirm
    sudo /opt/dell/dcc/cctk --primarybatterycfg=Custom:70-80
fi
