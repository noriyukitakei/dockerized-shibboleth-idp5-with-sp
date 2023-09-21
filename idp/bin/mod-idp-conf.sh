#!/bin/bash

sed -i -e s/validUntil=\"[^\"\]*\"/validUntil=\"2030-01-01T00:00:00\.999Z\"/ /opt/shibboleth-idp/metadata/idp-metadata.xml
sed -E -i '/<mdui:DisplayName>/ { /xml:lang="en"/! { s/<mdui:DisplayName>/<mdui:DisplayName xml:lang="en">/; } }' /opt/shibboleth-idp/metadata/idp-metadata.xml
sed -E -i '/<mdui:Description>/ { /xml:lang="en"/! { s/<mdui:Description>/<mdui:Description xml:lang="en">/; } }' /opt/shibboleth-idp/metadata/idp-metadata.xml

