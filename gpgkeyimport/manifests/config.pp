# Transfer single issue file
class gpgkeyimport::config {
  exec { 'Key_Import_3B3A04EC':   
    command => "/bin/rpm --import http://nfs1.bobst.nyu.edu/kickstart/server/rhel6/custom/rpms/NYU-CUSTOM-RPM-GPG-1024-DSA-ELGAMAL-PUB-3B3A04EC",
    unless  => "/bin/rpm -qi gpg-pubkey-3b3a04ec-52b1e2a2",
  }
  exec { 'Key_Import_0608B895':
    command => "/bin/rpm --import http://nfs1.bobst.nyu.edu/kickstart/server/rhel6/custom/rpms/RPM-GPG-KEY-EPEL-6-0608B895",
    unless  => "/bin/rpm -qi gpg-pubkey-0608b895-4bd22942",
  }
}
