# Basic update manager configuration
class update_manager (
  $ensure = present,
  $prompt = 'lts', # valid options are 'never', 'normal', 'lts'
) {
  file { '/etc/update-manager/release-upgrades':
    ensure  => $ensure,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('update_manager/release-upgrades.erb'),
  }
}
