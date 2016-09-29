# Check to make sure we can install the ipyparallel widget.
("${PREFIX}/bin/jupyter" serverextension --version >> "${PREFIX}/.messages.txt" 2>&1) || exit 0
("${PREFIX}/bin/jupyter" nbextension --version >> "${PREFIX}/.messages.txt" 2>&1) || exit 0

# Install the ipyparallel widget.
"${PREFIX}/bin/jupyter" serverextension enable --sys-prefix --py ipyparallel >> "${PREFIX}/.messages.txt" 2>&1
"${PREFIX}/bin/jupyter" nbextension enable --sys-prefix --py ipyparallel >> "${PREFIX}/.messages.txt" 2>&1
