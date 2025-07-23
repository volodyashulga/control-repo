node 'puppetagent1.localdomain' {
  include role::webserver
}


node 'puppetagent2.localdomain' {
  include role::database
}
