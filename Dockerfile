FROM alpine:latest
COPY entrypoint.sh /entrypoint.sh
RUN apk update \
    && apk add make unzip \
    && apk add perl perl-utils perl-app-cpanminus perl-xml-treepp perl-math-round perl-archive-zip \
    && cpanm -n Excel::Writer::XLSX Data::Table Data::Dumper Excel::Writer::XLSX::Chart Getopt::Std \
    && chmod +x entrypoint.sh
ENTRYPOINT ["/bin/ash","entrypoint.sh"]