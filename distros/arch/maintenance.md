# Maintenance tips

## journal files /var/log/journal/*
- Check current size: ```journalctl --disk-usage```
- Remove files until desired size: ```sudo journalctl --vacuum-size=200M```

## pacman cache /var/cache/pacman
- Keep just 2 old versions, remove uninstalled: ```sudo paccache -ruk 2```

