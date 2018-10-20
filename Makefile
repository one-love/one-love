REGGAE_PATH = /usr/local/share/reggae
SERVICES = mongodb https://github.com/mekanix/jail-mongodb \
           redis https://github.com/mekanix/jail-redis \
           backend https://github.com/one-love/backend \
           frontend https://github.com/one-love/frontend

.include <${REGGAE_PATH}/mk/project.mk>

collect:
	@bin/collect.sh
