#!/usr/bin/env ruby

alphabetSet = ['a','b','c','ç','d','e','f','g','ğ','h','ı','i','j','k','l','m','n','o','p','q','r','s','t','u','ü','v','w','x','y','z']
numberSet = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
specialCharacterSet = ['!','>','\'','£','^','#', '+', '$', '%', '½', '&', '¾', '/', '(', '{', ')', '=', '?', '\\', '_', '|', '<', '>', 'é']



=begin
pavs = ARGV
min = pavs[1] 
max = pavs[3] 
charset = pavs[4]  
fileName = pavs[6] 
=end

pavs = ARGV
min = pavs[0]
max = pavs[1]

file = File.open(pavs[6], "a")


alphabetSet.length.times { |i|

	file.puts alphabetSet[i]

}



file.close





=begin
magicTouch <min> <max> <charset> <filename>


magicTouch --minimum <min> --maksimum <max> --karakterListesi <charset> --dosya <filename>
=end


=begin
ALPHABET
###########################################################

alphabetSet.length.times { |i|

	file.puts alphabetSet[i]

}

alphabetSet.length.times { |i|

	alphabetSet.length.times { |j|

		file.puts alphabetSet[i] + alphabetSet[j]

	}
	
}

alphabetSet.length.times { |i|

	alphabetSet.length.times { |j|

		alphabetSet.length.times { |z|

			file.puts alphabetSet[i] + alphabetSet[j] + alphabetSet[z]

		}
		

	}
	

}

alphabetSet.length.times { |i|

	alphabetSet.length.times { |j|

		alphabetSet.length.times { |z|

				alphabetSet.length.times { |x|

					file.puts alphabetSet[i] + alphabetSet[j] + alphabetSet[z] + alphabetSet[x]

				}
			

		}
		
	}
	

}


alphabetSet.length.times { |i|

	alphabetSet.length.times { |j|

		alphabetSet.length.times { |z|

				alphabetSet.length.times { |x|

					alphabetSet.length.times { |y|

						file.puts alphabetSet[i] + alphabetSet[j] + alphabetSet[z] + alphabetSet[x] + alphabetSet[y]

					}
					

				}
			

		}
		
	}
	

}

ALHABET CHARACTERS, NUMBER CHARACTERS AND SPECIAL CHARACTERS
######################################################################

alphaNumAndSpecSet.length.times { |i|

	file.puts alphaNumAndSpecSet[i].to_s

}

alphaNumAndSpecSet.length.times { |i|

	alphaNumAndSpecSet.length.times { |j|
	
		file.puts alphaNumAndSpecSet[i].to_s + alphaNumAndSpecSet[j].to_s

	}
}

alphaNumAndSpecSet.length.times { |i|

	alphaNumAndSpecSet.length.times { |j|

		alphaNumAndSpecSet.length.times { |z|

			file.puts alphaNumAndSpecSet[i].to_s + alphaNumAndSpecSet[j].to_s + alphaNumAndSpecSet[z].to_s

		}

	}

}



alphaNumAndSpecSet.length.times { |i|

	alphaNumAndSpecSet.length.times { |j|

		alphaNumAndSpecSet.length.times { |z|

			alphaNumAndSpecSet.length.times { |x|

				file.puts alphaNumAndSpecSet[i].to_s + alphaNumAndSpecSet[j].to_s + alphaNumAndSpecSet[z].to_s + alphaNumAndSpecSet[x].to_s
			}
		}
	}
}


alphaNumAndSpecSet.length.times { |i|

	alphaNumAndSpecSet.length.times { |j|

		alphaNumAndSpecSet.length.times { |z|

			alphaNumAndSpecSet.length.times { |x|

				alphaNumAndSpecSet.length.times { |y|

					file.puts alphaNumAndSpecSet[i].to_s + alphaNumAndSpecSet[j].to_s + alphaNumAndSpecSet[z].to_s + alphaNumAndSpecSet[x].to_s + alphaNumAndSpecSet[y].to_s

				}

			}
		}

	}

}



NUMBER CHARACTERS AND SPECIAL CHARACTERS
####################################################################


numAndSpecSet.length.times { |i|

	file.puts numAndSpecSet[i].to_s

}

numAndSpecSet.length.times { |i|

	numAndSpecSet.length.times { |j|
	
		file.puts numAndSpecSet[i].to_s + numAndSpecSet[j].to_s

	}
}

numAndSpecSet.length.times { |i|

	numAndSpecSet.length.times { |j|

		numAndSpecSet.length.times { |z|

			file.puts numAndSpecSet[i].to_s + numAndSpecSet[j].to_s + numAndSpecSet[z].to_s

		}

	}

}



numAndSpecSet.length.times { |i|

	numAndSpecSet.length.times { |j|

		numAndSpecSet.length.times { |z|

			numAndSpecSet.length.times { |x|

				file.puts numAndSpecSet[i].to_s + numAndSpecSet[j].to_s + numAndSpecSet[z].to_s + numAndSpecSet[x].to_s
			}
		}
	}
}


numAndSpecSet.length.times { |i|

	numAndSpecSet.length.times { |j|

		numAndSpecSet.length.times { |z|

			numAndSpecSet.length.times { |x|

				numAndSpecSet.length.times { |y|

					file.puts numAndSpecSet[i].to_s + numAndSpecSet[j].to_s + numAndSpecSet[z].to_s + numAndSpecSet[x].to_s + numAndSpecSet[y].to_s

				}

			}
		}

	}

}


ALPHABET CHARACTERS AND SPECIAL CHARACTERS
####################################################################

alphaAndSpecSet.length.times { |i|

	file.puts alphaAndSpecSet[i].to_s

}

alphaAndSpecSet.length.times { |i|

	alphaAndSpecSet.length.times { |j|
	
		file.puts alphaAndSpecSet[i].to_s + alphaAndSpecSet[j].to_s

	}
}

alphaAndSpecSet.length.times { |i|

	alphaAndSpecSet.length.times { |j|

		alphaAndSpecSet.length.times { |z|

			file.puts alphaAndSpecSet[i].to_s + alphaAndSpecSet[j].to_s + alphaAndSpecSet[z].to_s

		}

	}

}



alphaAndSpecSet.length.times { |i|

	alphaAndSpecSet.length.times { |j|

		alphaAndSpecSet.length.times { |z|

			alphaAndSpecSet.length.times { |x|

				file.puts alphaAndSpecSet[i].to_s + alphaAndSpecSet[j].to_s + alphaAndSpecSet[z].to_s + alphaAndSpecSet[x].to_s
			}
		}
	}
}


alphaAndSpecSet.length.times { |i|

	alphaAndSpecSet.length.times { |j|

		alphaAndSpecSet.length.times { |z|

			alphaAndSpecSet.length.times { |x|

				alphaAndSpecSet.length.times { |y|

					file.puts alphaAndSpecSet[i].to_s + alphaAndSpecSet[j].to_s + alphaAndSpecSet[z].to_s + alphaAndSpecSet[x].to_s + alphaAndSpecSet[y].to_s

				}

			}
		}

	}

}


SPECIAL CHARACTERS
####################################################################

specialCharacterSet.length.times { |i|

	file.puts specialCharacterSet[i].to_s

}


specialCharacterSet.length.times { |i|

	specialCharacterSet.length.times { |j|
	
		file.puts specialCharacterSet[i].to_s + specialCharacterSet[j].to_s

	}
}

specialCharacterSet.length.times { |i|

	specialCharacterSet.length.times { |j|

		specialCharacterSet.length.times { |z|

			file.puts specialCharacterSet[i].to_s + specialCharacterSet[j].to_s + specialCharacterSet[z].to_s

		}

	}

}


specialCharacterSet.length.times { |i|

	specialCharacterSet.length.times { |j|

		specialCharacterSet.length.times { |z|

			specialCharacterSet.length.times { |x|

				file.puts specialCharacterSet[i].to_s + specialCharacterSet[j].to_s + specialCharacterSet[z].to_s + specialCharacterSet[x].to_s
			}
		}
	}
}



specialCharacterSet.length.times { |i|

	specialCharacterSet.length.times { |j|

		specialCharacterSet.length.times { |z|

			specialCharacterSet.length.times { |x|

				specialCharacterSet.length.times { |y|

					file.puts specialCharacterSet[i].to_s + specialCharacterSet[j].to_s + specialCharacterSet[z].to_s + specialCharacterSet[x].to_s + specialCharacterSet[y].to_s

				}

			}
		}

	}

}


ALPHABET AND NUMBER
##########################################################

alphaAndNumSet.length.times { |i|

	file.puts alphaAndNumSet[i].to_s

}


alphaAndNumSet.length.times { |i|

	alphaAndNumSet.length.times { |j|
	
		file.puts alphaAndNumSet[i].to_s + alphaAndNumSet[j].to_s

	}
}


alphaAndNumSet.length.times { |i|

	alphaAndNumSet.length.times { |j|

		alphaAndNumSet.length.times { |z|

			file.puts alphaAndNumSet[i].to_s + alphaAndNumSet[j].to_s + alphaAndNumSet[z].to_s

		}

	}

}

alphaAndNumSet.length.times { |i|

	alphaAndNumSet.length.times { |j|

		alphaAndNumSet.length.times { |z|

			alphaAndNumSet.length.times { |x|

				file.puts alphaAndNumSet[i].to_s + alphaAndNumSet[j].to_s + alphaAndNumSet[z].to_s + alphaAndNumSet[x].to_s
			}
		}
	}
}



alphaAndNumSet.length.times { |i|

	alphaAndNumSet.length.times { |j|

		alphaAndNumSet.length.times { |z|

			alphaAndNumSet.length.times { |x|

				alphaAndNumSet.length.times { |y|

					file.puts alphaAndNumSet[i].to_s + alphaAndNumSet[j].to_s + alphaAndNumSet[z].to_s + alphaAndNumSet[x].to_s + alphaAndNumSet[y].to_s

				}

			}
		}

	}

}


NUMBERS

################################################


numberSet.length.times { |i|

	file.puts numberSet[i].to_s

}

numberSet.length.times { |i|

	numberSet.length.times { |j|
	
		file.puts numberSet[i].to_s + numberSet[j].to_s

	}
}

numberSet.length.times { |i|

	numberSet.length.times { |j|

		numberSet.length.times { |z|

			file.puts numberSet[i].to_s + numberSet[j].to_s + numberSet[z].to_s

		}

	}

}

numberSet.length.times { |i|

	numberSet.length.times { |j|

		numberSet.length.times { |z|

			numberSet.length.times { |x|

				file.puts numberSet[i].to_s + numberSet[j].to_s + numberSet[z].to_s + numberSet[x].to_s
			}
		}
	}
}



numberSet.length.times { |i|

	numberSet.length.times { |j|

		numberSet.length.times { |z|

			numberSet.length.times { |x|

				numberSet.length.times { |y|

					file.puts numberSet[i].to_s + numberSet[j].to_s + numberSet[z].to_s + numberSet[x].to_s + numberSet[y].to_s

				}

			}
		}

	}

}





###########################################################

=end