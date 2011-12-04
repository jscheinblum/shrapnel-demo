# Install python and compiled modules for project
class python {
    case $operatingsystem {
        ubuntu: {
            package {
                ["python2.6-dev", "python2.6", "cython"]:
                    ensure => installed;
            }

            exec { "pip-install":
                command => "easy_install -U pip",
                creates => "/usr/local/bin/pip",
                require => Package["python2.6-dev", "python2.6", "cython"]
            }

            exec { "pip-install-compiled":
                command => "pip install -r $PROJ_DIR/requirements.txt",
                require => Exec['pip-install']
            }
        }
    }
}
