#config for connection withou password

file {'/etc/ssh/ssh_config':
	ensure  => present,
	content => 'Include /etc/ssh/ssh_config.d/*.conf 
	Host*
		SendEnv LANG LC_*
		HashKnownHosts yes
		GSSAPIAuthentication yes
		IdentityFile ~/.ssh/school
		PasswordAuthentication no',
}	
