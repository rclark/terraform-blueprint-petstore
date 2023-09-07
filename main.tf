terraform {
}

resource "random_pet" "pet" {
  length = var.pet-count
}
