# Install python and compiled modules for project
class python {
    case $operatingsystem {
        ubuntu: {
            package {
                ["python2.6-dev", "python2.6", "python-pip", "cython"]:
                    ensure => installed;
            }

            exec { "pip-install-compiled":
                command => "pip install -r $PROJ_DIR/requirements/compiled.txt",
                require => Package['python-pip']
            }
        }
    }
}
