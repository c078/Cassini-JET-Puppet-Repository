class basic {
    # Here you can add stuff to be inhereted by your basic classes
}
 
class basic::user inherits basic { 
          file { "/root/.bashrc": 
              ensure => present,
              source => "puppet:///modules/basic/.bashrc",
              group   => "root",
              owner => "root",
              mode  => "0644"
          }
}

class basic::software inherits basic {

          file { "/etc/apt/sources.list":
              ensure => present,
              source => "puppet:///modules/basic/sources.list",
              group   => "root",
              owner => "root",
              mode  => "0644",
          }

	file { "/tmp/sun-jdk6.pressed": 
              ensure => present,
              source => "puppet:///modules/basic/sun-jdk6.pressed",
              group   => "root",
              owner => "root",
              mode  => "0644",
          }


	exec { "apt-get update":
		path => ["/usr/bin", "/usr/sbin"], 
		require	=> File[ "/etc/apt/sources.list"],
	}

	package { "vim":
		ensure 		=> present,
	}

        package { "less":
                ensure          => present,
        }
        package { "curl":
                ensure          => present,
        }
        package { "mc":
                ensure          => present,
        }
        package { "sun-java6-jdk":
                ensure          => present,
		responsefile 	=> "/tmp/sun-jdk6.pressed",
                require         => [Exec[ "apt-get update"], File["/tmp/sun-jdk6.pressed"]],
        }


}
