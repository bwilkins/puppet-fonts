# Definition for the installation of the Monoid font by larsenwork
define fonts::tonsky::definitions::firacode {
  include fonts::tonsky::firacode
  $fonts="/Users/${::luser}/Library/Fonts"
  $location='tonsky/firacode'
  $prefix='FiraCode'
  file { "${prefix}-${title}.otf":
    ensure => 'present',
    path   => "${fonts}/${prefix}-${title}.otf",
    source => "puppet:///modules/fonts/${location}/${prefix}-${title}.otf"
  }
}
