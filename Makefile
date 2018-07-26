REGGAE_PATH = /usr/local/share/reggae
SERVICES = mongodb https://github.com/mekanix/jail-mongodb \
           frontend https://github.com/one-love/frontend \
           backend https://github.com/one-love/backend

.include <${REGGAE_PATH}/mk/project.mk>

