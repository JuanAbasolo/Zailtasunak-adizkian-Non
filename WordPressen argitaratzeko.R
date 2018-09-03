## Post-a WordPressen argitaratzeko.

# !!! Ez dabil bibliografia kodeatzekoa
# !!! Ez dabiltza erreferentzi gurutzatuak

## Install RWordPress if missing | Ez dago CRANen
if (!require('RWordPress')) {
    devtools::install_github(c("duncantl/XMLRPC", "duncantl/RWordPress"))
}

## Load the libraries
library(RWordPress)
library(knitr)

## Define the option to access
options(WordpressLogin = c(jabasolo = 'ItJoXa-8911'),
        WordpressURL = 'https://euskara2h.wordpress.com/xmlrpc.php')

library(knitr)

knit2wp(
    input = '1808-Aditz-jokatuan-zailtasunak-nonWORDPRESS.Rmd', 
    title = 'Aditz jokatuan non ditu zailtasunak euskara H2 ikastun berantiarrak?', 
    shortcode = FALSE, ## 
    publish = TRUE,
    categories=c('Reproducible research'),
    mt_keywords=c('vcl', 'zailtasunak')
)

