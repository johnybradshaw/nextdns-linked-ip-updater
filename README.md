# nextdns-linked-ip-updater
Update the Linked IP for [NextDNS*](https://nextdns.io/?from=pgbnyk5z) on a regular basis (every 15 minutes)

## Usage

Find your programmatic url from your config's Setup page, it will look something like this: `https://link-ip.nextdns.io/<config-id>/<config-secret>`

Set those as environment variables you pass during the setup of the container:

```bash
docker run -d --name cron \
-e config_id=<config-id> \
-e config_secret=<config-secret> \
qazwsx\nextdns-ip-updater
```

### Appendix
\* A referral link