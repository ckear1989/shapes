#!/bin/bash

# Rscript -e "devtools::create(\"./\")"
# Rscript -e "devtools::load_all()"
Rscript -e "devtools::test()"
# Rscript -e "devtools::document()"
# Rscript -e "devtools::build_manual()"
# Rscript -e "devtools::check(document=FALSE, manual=FALSE, force_suggests=TRUE, run_dont_test=FALSE)"
# Rscript -e "devtools::install()"
# Rscript -e "devtools::check(document=TRUE, manual=TRUE, force_suggests=TRUE, run_dont_test=FALSE)"
# Rscript -e "rmarkdown::render(\"README.Rmd\", output_file=\"README.md\")"

