terraform {
}

resource "random_pet" "pet" {
  length = var.pet-count
}

resource "random_string" "random_word" {
  length = var.word-length
}
