class DictionaryProcesses

	# Temel CharSets
	@@alphabetSet = ['a','b','c','ç','d','e','f','g','ğ','h','ı','i','j','k','l','m','n','o', 'ö', 'p','q','r','s', 'ş', 't','u','ü','v','w','x','y','z']
	@@numberSet = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
	@@specialCharacterSet = ['@', '!','>','\'','£','^','#', '+', '$', '%', '½', '&', '¾', '/', '(', '{', ')', '=', '?', '\\', '_', '|', '<', '>', 'é']

	# Combine Charsets
	@@alphaAndNumSet = ['a','b','c','ç','d','e','f','g','ğ','h','ı','i','j','k','l','m','n','o', 'ö','p','q','r','s', 'ş', 't','u','ü','v','w','x','y','z', 0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
	@@alphaAndSpecSet = ['a','b','c','ç','d','e','f','g','ğ','h','ı','i','j','k','l','m','n','o', 'ö', 'p','q','r','s', 'ş', 't','u','ü','v','w','x','y','z','@', '!','>','\'','£','^','#', '+', '$', '%', '½', '&', '¾', '/', '(', '{', ')', '=', '?', '\\', '_', '|', '<', '>', 'é']
	@@numAndSpecSet = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9,'@', '!','>','\'','£','^','#', '+', '$', '%', '½', '&', '¾', '/', '(', '{', ')', '=', '?', '\\', '_', '|', '<', '>', 'é']
	@@alphaNumAndSpecSet = ['a','b','c','ç','d','e','f','g','ğ','h','ı','i','j','k','l','m','n','o', 'ö','p','q','r','s', 'ş', 't','u','ü','v','w','x','y','z', 0, 1, 2, 3, 4, 5, 6, 7, 8, 9,'@', '!','>','\'','£','^','#', '+', '$', '%', '½', '&', '¾', '/', '(', '{', ')', '=', '?', '\\', '_', '|', '<', '>', 'é']


	def self.helpMenu
		puts
		puts
		puts "MagicTouch Rules"
		puts "------------------------"
		puts "-m <min>       : Minimum character length of passwords"
		puts "-M <max>       : Maximum character length of passwords"
		puts "-c <charset>   : Character set which will be used"
		puts "-o <fileName>  : Output file name"
		puts "-r <pattern>   : Regular Expression Characters (MAX : 5 For BETA)"
		puts
		puts
		puts "Charset Keywords"
		puts "------------------------"
		puts "alphabetSet         : Just Letters"
		puts "numberSet           : Just Numbers"
		puts "specialCharacterSet : Just Special Characters"
		puts "alphaAndNumSet      : Letters and Numbers"
		puts "alphaAndSpecSet     : Letters and Special Characters"
		puts "numAndSpecSet       : Numbers and Special Characters"
		puts "alphaNumAndSpecSet  : Letters, Numbers and Special Characters"
		puts
		puts
		puts "Examples"
		puts "------------------------"
		puts "./magicTouch -r 1**38"
		puts "./magicTouch -m 1 -M 3 -c alphaAndNumSet -o wordlist"
		puts "./magicTouch -m 4 -M 4"
		puts "./magicTouch -m 2 -M 3 -c alphaNumAndSpecSet"
		puts
		puts
		exit
	end


	def self.errorMessage
		"\n\n#############################################################\n\nminimum length cannot be bigger than maximum length!\n\n#############################################################\n\n"
	end

	def self.createAlphabetSet(file, min, max)
		if min == "1"
			if max == "1"
				@@alphabetSet.length.times { |i|
					file.puts @@alphabetSet[i]
				}
			end
			if max == "2"
				@@alphabetSet.size.times { |i|
					file.puts @@alphabetSet[i]
				}

				@@alphabetSet.length.times { |i|
					@@alphabetSet.length.times { |j|
						file.puts @@alphabetSet[i] + @@alphabetSet[j]
					}
				}
			end
			if max == "3"
				@@alphabetSet.length.times { |i|
					file.puts @@alphabetSet[i]
				}
				
				@@alphabetSet.length.times { |i|
					@@alphabetSet.length.times { |j|
						file.puts @@alphabetSet[i] + @@alphabetSet[j]
					}
				}
				@@alphabetSet.length.times { |i|
					@@alphabetSet.length.times { |j|
						@@alphabetSet.length.times { |z|
							file.puts @@alphabetSet[i] + @@alphabetSet[j] + @@alphabetSet[z]
						}
					}
				}
			end
			if max == "4"
				@@alphabetSet.length.times { |i|
					file.puts @@alphabetSet[i]
				}
				
				@@alphabetSet.length.times { |i|
					@@alphabetSet.length.times { |j|
						file.puts @@alphabetSet[i] + @@alphabetSet[j]
					}
				}
				@@alphabetSet.length.times { |i|
					@@alphabetSet.length.times { |j|
						@@alphabetSet.length.times { |z|
							file.puts @@alphabetSet[i] + @@alphabetSet[j] + @@alphabetSet[z]
						}
					}
				}
				@@alphabetSet.length.times { |i|
					@@alphabetSet.length.times { |j|
						@@alphabetSet.length.times { |z|
							@@alphabetSet.length.times { |x|
								file.puts @@alphabetSet[i] + @@alphabetSet[j] + @@alphabetSet[z] + @@alphabetSet[x]
							}
						}
					}
				}
			end
			if max == "5"
				@@alphabetSet.length.times { |i|
					file.puts @@alphabetSet[i]
				}
				
				@@alphabetSet.length.times { |i|
					@@alphabetSet.length.times { |j|
						file.puts @@alphabetSet[i] + @@alphabetSet[j]
					}
				}
				@@alphabetSet.length.times { |i|
					@@alphabetSet.length.times { |j|
						@@alphabetSet.length.times { |z|
							file.puts @@alphabetSet[i] + @@alphabetSet[j] + @@alphabetSet[z]
						}
					}
				}
				@@alphabetSet.length.times { |i|
					@@alphabetSet.length.times { |j|
						@@alphabetSet.length.times { |z|
							@@alphabetSet.length.times { |x|
								file.puts @@alphabetSet[i] + @@alphabetSet[j] + @@alphabetSet[z] + @@alphabetSet[x]
							}
						}
					}
				}
				@@alphabetSet.length.times { |i|
					@@alphabetSet.length.times { |j|
						@@alphabetSet.length.times { |z|
								@@alphabetSet.length.times { |x|
									@@alphabetSet.length.times { |y|
										file.puts @@alphabetSet[i] + @@alphabetSet[j] + @@alphabetSet[z] + @@alphabetSet[x] + @@alphabetSet[y]
									}
								}
						}
					}
				}
			end
		elsif min == "2"

			# if max == 1
            #   ...
			# end
			
			# Burada yukarıdaki gibi başlanmadı. Çünkü min > max olduğu durumda buralara hiç gelmeden önce bir bildirim mesajı ve exit
			# komutuyla program sonlandırılmaktadır. Dolayısıyla burada yukarıdaki gibi bir if koyup min > max olamayağını belirtmemize
			# gerek yoktur.
			
			if max == "2"
				@@alphabetSet.length.times { |i|
					@@alphabetSet.length.times { |j|
						file.puts @@alphabetSet[i] + @@alphabetSet[j]
					}
				}
			end
			if max == "3"
				@@alphabetSet.length.times { |i|
					@@alphabetSet.length.times { |j|
						file.puts @@alphabetSet[i] + @@alphabetSet[j]
					}
				}
				@@alphabetSet.length.times { |i|
					@@alphabetSet.length.times { |j|
						@@alphabetSet.length.times { |z|
							file.puts @@alphabetSet[i] + @@alphabetSet[j] + @@alphabetSet[z]
						}
					}
				}
			end
			if max == "4"
				@@alphabetSet.length.times { |i|
					@@alphabetSet.length.times { |j|
						file.puts @@alphabetSet[i] + @@alphabetSet[j]
					}
				}
				@@alphabetSet.length.times { |i|
					@@alphabetSet.length.times { |j|
						@@alphabetSet.length.times { |z|
							file.puts @@alphabetSet[i] + @@alphabetSet[j] + @@alphabetSet[z]
						}
					}
				}
				@@alphabetSet.length.times { |i|
					@@alphabetSet.length.times { |j|
						@@alphabetSet.length.times { |z|
							@@alphabetSet.length.times { |x|
								file.puts @@alphabetSet[i] + @@alphabetSet[j] + @@alphabetSet[z] + @@alphabetSet[x]
							}
						}
					}
				}
			end
			if max == "5"
				@@alphabetSet.length.times { |i|
					@@alphabetSet.length.times { |j|
						file.puts @@alphabetSet[i] + @@alphabetSet[j]
					}
				}
				@@alphabetSet.length.times { |i|
					@@alphabetSet.length.times { |j|
						@@alphabetSet.length.times { |z|
							file.puts @@alphabetSet[i] + @@alphabetSet[j] + @@alphabetSet[z]
						}
					}
				}
				@@alphabetSet.length.times { |i|
					@@alphabetSet.length.times { |j|
						@@alphabetSet.length.times { |z|
							@@alphabetSet.length.times { |x|
								file.puts @@alphabetSet[i] + @@alphabetSet[j] + @@alphabetSet[z] + @@alphabetSet[x]
							}
						}
					}
				}
				@@alphabetSet.length.times { |i|
					@@alphabetSet.length.times { |j|
						@@alphabetSet.length.times { |z|
								@@alphabetSet.length.times { |x|
									@@alphabetSet.length.times { |y|
										file.puts @@alphabetSet[i] + @@alphabetSet[j] + @@alphabetSet[z] + @@alphabetSet[x] + @@alphabetSet[y]
									}
								}
						}
					}
				}
			end
		elsif min == "3"
			if max == "3"
				@@alphabetSet.length.times { |i|
					@@alphabetSet.length.times { |j|
						@@alphabetSet.length.times { |z|
							file.puts @@alphabetSet[i] + @@alphabetSet[j] + @@alphabetSet[z]
						}
					}
				}
			end
			if max == "4"
				@@alphabetSet.length.times { |i|
					@@alphabetSet.length.times { |j|
						@@alphabetSet.length.times { |z|
							file.puts @@alphabetSet[i] + @@alphabetSet[j] + @@alphabetSet[z]
						}
					}
				}
				@@alphabetSet.length.times { |i|
					@@alphabetSet.length.times { |j|
						@@alphabetSet.length.times { |z|
							@@alphabetSet.length.times { |x|
								file.puts @@alphabetSet[i] + @@alphabetSet[j] + @@alphabetSet[z] + @@alphabetSet[x]
							}
						}
					}
				}
			end
			if max == "5"
				@@alphabetSet.length.times { |i|
					@@alphabetSet.length.times { |j|
						@@alphabetSet.length.times { |z|
							file.puts @@alphabetSet[i] + @@alphabetSet[j] + @@alphabetSet[z]
						}
					}
				}
				@@alphabetSet.length.times { |i|
					@@alphabetSet.length.times { |j|
						@@alphabetSet.length.times { |z|
							@@alphabetSet.length.times { |x|
								file.puts @@alphabetSet[i] + @@alphabetSet[j] + @@alphabetSet[z] + @@alphabetSet[x]
							}
						}
					}
				}
				@@alphabetSet.length.times { |i|
					@@alphabetSet.length.times { |j|
						@@alphabetSet.length.times { |z|
								@@alphabetSet.length.times { |x|
									@@alphabetSet.length.times { |y|
										file.puts @@alphabetSet[i] + @@alphabetSet[j] + @@alphabetSet[z] + @@alphabetSet[x] + @@alphabetSet[y]
									}
								}
						}
					}
				}
			end
		elsif min == "4"
			if max == "4"
				@@alphabetSet.length.times { |i|
					@@alphabetSet.length.times { |j|
						@@alphabetSet.length.times { |z|
							@@alphabetSet.length.times { |x|
								file.puts @@alphabetSet[i] + @@alphabetSet[j] + @@alphabetSet[z] + @@alphabetSet[x]
							}
						}
					}
				}
			end
			if max == "5"
				@@alphabetSet.length.times { |i|
					@@alphabetSet.length.times { |j|
						@@alphabetSet.length.times { |z|
							@@alphabetSet.length.times { |x|
								file.puts @@alphabetSet[i] + @@alphabetSet[j] + @@alphabetSet[z] + @@alphabetSet[x]
							}
						}
					}
				}
				@@alphabetSet.length.times { |i|
					@@alphabetSet.length.times { |j|
						@@alphabetSet.length.times { |z|
								@@alphabetSet.length.times { |x|
									@@alphabetSet.length.times { |y|
										file.puts @@alphabetSet[i] + @@alphabetSet[j] + @@alphabetSet[z] + @@alphabetSet[x] + @@alphabetSet[y]
									}
								}
						}
					}
				}
			end
		elsif min == "5"
			if max == "5"
				@@alphabetSet.length.times { |i|
					@@alphabetSet.length.times { |j|
						@@alphabetSet.length.times { |z|
								@@alphabetSet.length.times { |x|
									@@alphabetSet.length.times { |y|
										file.puts @@alphabetSet[i] + @@alphabetSet[j] + @@alphabetSet[z] + @@alphabetSet[x] + @@alphabetSet[y]
									}
								}
						}
					}
				}
			end
		end
	end




	def self.createNumberSet(file, min, max)
		if min == "1"
			if max == "1"
				@@numberSet.length.times { |i|
					file.puts @@numberSet[i]
				}
			end
			if max == "2"
				@@numberSet.size.times { |i|
					file.puts @@numberSet[i]
				}

				@@numberSet.length.times { |i|
					@@numberSet.length.times { |j|
						file.puts @@numberSet[i].to_s + @@numberSet[j].to_s
					}
				}
			end
			if max == "3"
				@@numberSet.length.times { |i|
					file.puts @@numberSet[i]
				}
				
				@@numberSet.length.times { |i|
					@@numberSet.length.times { |j|
						file.puts @@numberSet[i].to_s + @@numberSet[j].to_s
					}
				}

				@@numberSet.length.times { |i|
					@@numberSet.length.times { |j|
						@@numberSet.length.times { |z|
							file.puts @@numberSet[i].to_s + @@numberSet[j].to_s + @@numberSet[z].to_s
						}
					}
				}
			end
			if max == "4"
				@@numberSet.length.times { |i|
					file.puts @@numberSet[i]
				}
				
				@@numberSet.length.times { |i|
					@@numberSet.length.times { |j|
						file.puts @@numberSet[i].to_s + @@numberSet[j].to_s
					}
				}
				@@numberSet.length.times { |i|
					@@numberSet.length.times { |j|
						@@numberSet.length.times { |z|
							file.puts @@numberSet[i].to_s + @@numberSet[j].to_s + @@numberSet[z].to_s
						}
					}
				}
				@@numberSet.length.times { |i|
					@@numberSet.length.times { |j|
						@@numberSet.length.times { |z|
							@@numberSet.length.times { |x|
								file.puts @@numberSet[i].to_s + @@numberSet[j].to_s + @@numberSet[z].to_s + @@numberSet[x].to_s
							}
						}
					}
				}
			end
			if max == "5"
				@@numberSet.length.times { |i|
					file.puts @@numberSet[i]
				}
				
				@@numberSet.length.times { |i|
					@@numberSet.length.times { |j|
						file.puts @@numberSet[i].to_s + @@numberSet[j].to_s
					}
				}
				@@numberSet.length.times { |i|
					@@numberSet.length.times { |j|
						@@numberSet.length.times { |z|
							file.puts @@numberSet[i].to_s + @@numberSet[j].to_s + @@numberSet[z].to_s
						}
					}
				}
				@@numberSet.length.times { |i|
					@@numberSet.length.times { |j|
						@@numberSet.length.times { |z|
							@@numberSet.length.times { |x|
								file.puts @@numberSet[i].to_s + @@numberSet[j].to_s + @@numberSet[z].to_s + @@numberSet[x].to_s
							}
						}
					}
				}
				@@numberSet.length.times { |i|
					@@numberSet.length.times { |j|
						@@numberSet.length.times { |z|
								@@numberSet.length.times { |x|
									@@numberSet.length.times { |y|
										file.puts @@numberSet[i].to_s + @@numberSet[j].to_s + @@numberSet[z].to_s + @@numberSet[x].to_s + @@numberSet[y].to_s
									}
								}
						}
					}
				}
			end
		elsif min == "2"
			if max == "2"
				@@numberSet.length.times { |i|
					@@numberSet.length.times { |j|
						file.puts @@numberSet[i].to_s + @@numberSet[j].to_s
					}
				}
			end
			if max == "3"
				@@numberSet.length.times { |i|
					@@numberSet.length.times { |j|
						file.puts @@numberSet[i].to_s + @@numberSet[j].to_s
					}
				}
				@@numberSet.length.times { |i|
					@@numberSet.length.times { |j|
						@@numberSet.length.times { |z|
							file.puts @@numberSet[i].to_s + @@numberSet[j].to_s + @@numberSet[z].to_s
						}
					}
				}
			end
			if max == "4"
				@@numberSet.length.times { |i|
					@@numberSet.length.times { |j|
						file.puts @@numberSet[i].to_s + @@numberSet[j].to_s
					}
				}
				@@numberSet.length.times { |i|
					@@numberSet.length.times { |j|
						@@numberSet.length.times { |z|
							file.puts @@numberSet[i].to_s + @@numberSet[j].to_s + @@numberSet[z].to_s
						}
					}
				}
				@@numberSet.length.times { |i|
					@@numberSet.length.times { |j|
						@@numberSet.length.times { |z|
							@@numberSet.length.times { |x|
								file.puts @@numberSet[i].to_s + @@numberSet[j].to_s + @@numberSet[z].to_s + @@numberSet[x].to_s
							}
						}
					}
				}
			end
			if max == "5"
				@@numberSet.length.times { |i|
					@@numberSet.length.times { |j|
						file.puts @@numberSet[i].to_s + @@numberSet[j].to_s
					}
				}
				@@numberSet.length.times { |i|
					@@numberSet.length.times { |j|
						@@numberSet.length.times { |z|
							file.puts @@numberSet[i].to_s + @@numberSet[j].to_s + @@numberSet[z].to_s
						}
					}
				}
				@@numberSet.length.times { |i|
					@@numberSet.length.times { |j|
						@@numberSet.length.times { |z|
							@@numberSet.length.times { |x|
								file.puts @@numberSet[i].to_s + @@numberSet[j].to_s + @@numberSet[z].to_s + @@numberSet[x].to_s
							}
						}
					}
				}
				@@numberSet.length.times { |i|
					@@numberSet.length.times { |j|
						@@numberSet.length.times { |z|
								@@numberSet.length.times { |x|
									@@numberSet.length.times { |y|
										file.puts @@numberSet[i].to_s + @@numberSet[j].to_s + @@numberSet[z].to_s + @@numberSet[x].to_s + @@numberSet[y].to_s
									}
								}
						}
					}
				}
			end
		elsif min == "3"
			if max == "3"
				@@numberSet.length.times { |i|
					@@numberSet.length.times { |j|
						@@numberSet.length.times { |z|
							file.puts @@numberSet[i].to_s + @@numberSet[j].to_s + @@numberSet[z].to_s
						}
					}
				}
			end
			if max == "4"
				@@numberSet.length.times { |i|
					@@numberSet.length.times { |j|
						@@numberSet.length.times { |z|
							file.puts @@numberSet[i].to_s + @@numberSet[j].to_s + @@numberSet[z].to_s
						}
					}
				}
				@@numberSet.length.times { |i|
					@@numberSet.length.times { |j|
						@@numberSet.length.times { |z|
							@@numberSet.length.times { |x|
								file.puts @@numberSet[i].to_s + @@numberSet[j].to_s + @@numberSet[z].to_s + @@numberSet[x].to_s
							}
						}
					}
				}
			end
			if max == "5"
				@@numberSet.length.times { |i|
					@@numberSet.length.times { |j|
						@@numberSet.length.times { |z|
							file.puts @@numberSet[i].to_s + @@numberSet[j].to_s + @@numberSet[z].to_s
						}
					}
				}
				@@numberSet.length.times { |i|
					@@numberSet.length.times { |j|
						@@numberSet.length.times { |z|
							@@numberSet.length.times { |x|
								file.puts @@numberSet[i].to_s + @@numberSet[j].to_s + @@numberSet[z].to_s + @@numberSet[x].to_s
							}
						}
					}
				}
				@@numberSet.length.times { |i|
					@@numberSet.length.times { |j|
						@@numberSet.length.times { |z|
							@@numberSet.length.times { |x|
								@@numberSet.length.times { |y|
									file.puts @@numberSet[i].to_s + @@numberSet[j].to_s + @@numberSet[z].to_s + @@numberSet[x].to_s + @@numberSet[y].to_s
								}
							}
						}
					}
				}
			end
		elsif min == "4"
			if max == "4"
				@@numberSet.length.times { |i|
					@@numberSet.length.times { |j|
						@@numberSet.length.times { |z|
							@@numberSet.length.times { |x|
								file.puts @@numberSet[i].to_s + @@numberSet[j].to_s + @@numberSet[z].to_s + @@numberSet[x].to_s
							}
						}
					}
				}
			end
			if max == "5"
				@@numberSet.length.times { |i|
					@@numberSet.length.times { |j|
						@@numberSet.length.times { |z|
							@@numberSet.length.times { |x|
								file.puts @@numberSet[i].to_s + @@numberSet[j].to_s + @@numberSet[z].to_s + @@numberSet[x].to_s
							}
						}
					}
				}
				@@numberSet.length.times { |i|
					@@numberSet.length.times { |j|
						@@numberSet.length.times { |z|
							@@numberSet.length.times { |x|
								@@numberSet.length.times { |y|
									file.puts @@numberSet[i].to_s + @@numberSet[j].to_s + @@numberSet[z].to_s + @@numberSet[x].to_s + @@numberSet[y].to_s
								}
							}
						}
					}
				}
			end
		elsif min == "5"
			if max == "5"
				@@numberSet.length.times { |i|
					@@numberSet.length.times { |j|
						@@numberSet.length.times { |z|
							@@numberSet.length.times { |x|
								@@numberSet.length.times { |y|
									file.puts @@numberSet[i].to_s + @@numberSet[j].to_s + @@numberSet[z].to_s + @@numberSet[x].to_s + @@numberSet[y].to_s
								}
							}
						}
					}
				}
			end
		end
	end  


	def self.createSpecialCharacterSet(file, min, max)
		if min == "1"
			if max == "1"
				@@specialCharacterSet.length.times { |i|
					file.puts @@specialCharacterSet[i]
				}
			end
			if max == "2"
				@@specialCharacterSet.size.times { |i|
					file.puts @@specialCharacterSet[i]
				}

				@@specialCharacterSet.length.times { |i|
					@@specialCharacterSet.length.times { |j|
						file.puts @@specialCharacterSet[i] + @@specialCharacterSet[j]
					}
				}
			end
			if max == "3"
				@@specialCharacterSet.length.times { |i|
					file.puts @@specialCharacterSet[i]
				}
				
				@@specialCharacterSet.length.times { |i|
					@@specialCharacterSet.length.times { |j|
						file.puts @@specialCharacterSet[i] + @@specialCharacterSet[j]
					}
				}
				@@specialCharacterSet.length.times { |i|
					@@specialCharacterSet.length.times { |j|
						@@specialCharacterSet.length.times { |z|
							file.puts @@specialCharacterSet[i] + @@specialCharacterSet[j] + @@specialCharacterSet[z]
						}
					}
				}
			end
			if max == "4"
				@@specialCharacterSet.length.times { |i|
					file.puts @@specialCharacterSet[i]
				}
				
				@@specialCharacterSet.length.times { |i|
					@@specialCharacterSet.length.times { |j|
						file.puts @@specialCharacterSet[i] + @@specialCharacterSet[j]
					}
				}
				@@specialCharacterSet.length.times { |i|
					@@specialCharacterSet.length.times { |j|
						@@specialCharacterSet.length.times { |z|
							file.puts @@specialCharacterSet[i] + @@specialCharacterSet[j] + @@specialCharacterSet[z]
						}
					}
				}
				@@specialCharacterSet.length.times { |i|
					@@specialCharacterSet.length.times { |j|
						@@specialCharacterSet.length.times { |z|
							@@specialCharacterSet.length.times { |x|
								file.puts @@specialCharacterSet[i] + @@specialCharacterSet[j] + @@specialCharacterSet[z] + @@specialCharacterSet[x]
							}
						}
					}
				}
			end
			if max == "5"
				@@specialCharacterSet.length.times { |i|
					file.puts @@specialCharacterSet[i]
				}
				
				@@specialCharacterSet.length.times { |i|
					@@specialCharacterSet.length.times { |j|
						file.puts @@specialCharacterSet[i] + @@specialCharacterSet[j]
					}
				}
				@@specialCharacterSet.length.times { |i|
					@@specialCharacterSet.length.times { |j|
						@@specialCharacterSet.length.times { |z|
							file.puts @@specialCharacterSet[i] + @@specialCharacterSet[j] + @@specialCharacterSet[z]
						}
					}
				}
				@@specialCharacterSet.length.times { |i|
					@@specialCharacterSet.length.times { |j|
						@@specialCharacterSet.length.times { |z|
							@@specialCharacterSet.length.times { |x|
								file.puts @@specialCharacterSet[i] + @@specialCharacterSet[j] + @@specialCharacterSet[z] + @@specialCharacterSet[x]
							}
						}
					}
				}
				@@specialCharacterSet.length.times { |i|
					@@specialCharacterSet.length.times { |j|
						@@specialCharacterSet.length.times { |z|
								@@specialCharacterSet.length.times { |x|
									@@specialCharacterSet.length.times { |y|
										file.puts @@specialCharacterSet[i] + @@specialCharacterSet[j] + @@specialCharacterSet[z] + @@specialCharacterSet[x] + @@specialCharacterSet[y]
									}
								}
						}
					}
				}
			end
		elsif min == "2"
			if max == "2"
				@@specialCharacterSet.length.times { |i|
					@@specialCharacterSet.length.times { |j|
						file.puts @@specialCharacterSet[i] + @@specialCharacterSet[j]
					}
				}
			end
			if max == "3"
				@@specialCharacterSet.length.times { |i|
					@@specialCharacterSet.length.times { |j|
						file.puts @@specialCharacterSet[i] + @@specialCharacterSet[j]
					}
				}
				@@specialCharacterSet.length.times { |i|
					@@specialCharacterSet.length.times { |j|
						@@specialCharacterSet.length.times { |z|
							file.puts @@specialCharacterSet[i] + @@specialCharacterSet[j] + @@specialCharacterSet[z]
						}
					}
				}
			end
			if max == "4"
				@@specialCharacterSet.length.times { |i|
					@@specialCharacterSet.length.times { |j|
						file.puts @@specialCharacterSet[i] + @@specialCharacterSet[j]
					}
				}
				@@specialCharacterSet.length.times { |i|
					@@specialCharacterSet.length.times { |j|
						@@specialCharacterSet.length.times { |z|
							file.puts @@specialCharacterSet[i] + @@specialCharacterSet[j] + @@specialCharacterSet[z]
						}
					}
				}
				@@specialCharacterSet.length.times { |i|
					@@specialCharacterSet.length.times { |j|
						@@specialCharacterSet.length.times { |z|
							@@specialCharacterSet.length.times { |x|
								file.puts @@specialCharacterSet[i] + @@specialCharacterSet[j] + @@specialCharacterSet[z] + @@specialCharacterSet[x]
							}
						}
					}
				}
			end
			if max == "5"
				@@specialCharacterSet.length.times { |i|
					@@specialCharacterSet.length.times { |j|
						file.puts @@specialCharacterSet[i] + @@specialCharacterSet[j]
					}
				}
				@@specialCharacterSet.length.times { |i|
					@@specialCharacterSet.length.times { |j|
						@@specialCharacterSet.length.times { |z|
							file.puts @@specialCharacterSet[i] + @@specialCharacterSet[j] + @@specialCharacterSet[z]
						}
					}
				}
				@@specialCharacterSet.length.times { |i|
					@@specialCharacterSet.length.times { |j|
						@@specialCharacterSet.length.times { |z|
							@@specialCharacterSet.length.times { |x|
								file.puts @@specialCharacterSet[i] + @@specialCharacterSet[j] + @@specialCharacterSet[z] + @@specialCharacterSet[x]
							}
						}
					}
				}
				@@specialCharacterSet.length.times { |i|
					@@specialCharacterSet.length.times { |j|
						@@specialCharacterSet.length.times { |z|
								@@specialCharacterSet.length.times { |x|
									@@specialCharacterSet.length.times { |y|
										file.puts @@specialCharacterSet[i] + @@specialCharacterSet[j] + @@specialCharacterSet[z] + @@specialCharacterSet[x] + @@specialCharacterSet[y]
									}
								}
						}
					}
				}
			end
		elsif min == "3"
			if max == "3"
				@@specialCharacterSet.length.times { |i|
					@@specialCharacterSet.length.times { |j|
						@@specialCharacterSet.length.times { |z|
							file.puts @@specialCharacterSet[i] + @@specialCharacterSet[j] + @@specialCharacterSet[z]
						}
					}
				}
			end
			if max == "4"
				@@specialCharacterSet.length.times { |i|
					@@specialCharacterSet.length.times { |j|
						@@specialCharacterSet.length.times { |z|
							file.puts @@specialCharacterSet[i] + @@specialCharacterSet[j] + @@specialCharacterSet[z]
						}
					}
				}
				@@specialCharacterSet.length.times { |i|
					@@specialCharacterSet.length.times { |j|
						@@specialCharacterSet.length.times { |z|
							@@specialCharacterSet.length.times { |x|
								file.puts @@specialCharacterSet[i] + @@specialCharacterSet[j] + @@specialCharacterSet[z] + @@specialCharacterSet[x]
							}
						}
					}
				}
			end
			if max == "5"
				@@specialCharacterSet.length.times { |i|
					@@specialCharacterSet.length.times { |j|
						@@specialCharacterSet.length.times { |z|
							file.puts @@specialCharacterSet[i] + @@specialCharacterSet[j] + @@specialCharacterSet[z]
						}
					}
				}
				@@specialCharacterSet.length.times { |i|
					@@specialCharacterSet.length.times { |j|
						@@specialCharacterSet.length.times { |z|
							@@specialCharacterSet.length.times { |x|
								file.puts @@specialCharacterSet[i] + @@specialCharacterSet[j] + @@specialCharacterSet[z] + @@specialCharacterSet[x]
							}
						}
					}
				}
				@@specialCharacterSet.length.times { |i|
					@@specialCharacterSet.length.times { |j|
						@@specialCharacterSet.length.times { |z|
								@@specialCharacterSet.length.times { |x|
									@@specialCharacterSet.length.times { |y|
										file.puts @@specialCharacterSet[i] + @@specialCharacterSet[j] + @@specialCharacterSet[z] + @@specialCharacterSet[x] + @@specialCharacterSet[y]
									}
								}
						}
					}
				}
			end
		elsif min == "4"
			if max == "4"
				@@specialCharacterSet.length.times { |i|
					@@specialCharacterSet.length.times { |j|
						@@specialCharacterSet.length.times { |z|
							@@specialCharacterSet.length.times { |x|
								file.puts @@specialCharacterSet[i] + @@specialCharacterSet[j] + @@specialCharacterSet[z] + @@specialCharacterSet[x]
							}
						}
					}
				}
			end
			if max == "5"
				@@specialCharacterSet.length.times { |i|
					@@specialCharacterSet.length.times { |j|
						@@specialCharacterSet.length.times { |z|
							@@specialCharacterSet.length.times { |x|
								file.puts @@specialCharacterSet[i] + @@specialCharacterSet[j] + @@specialCharacterSet[z] + @@specialCharacterSet[x]
							}
						}
					}
				}
				@@specialCharacterSet.length.times { |i|
					@@specialCharacterSet.length.times { |j|
						@@specialCharacterSet.length.times { |z|
							@@specialCharacterSet.length.times { |x|
								@@specialCharacterSet.length.times { |y|
									file.puts @@specialCharacterSet[i] + @@specialCharacterSet[j] + @@specialCharacterSet[z] + @@specialCharacterSet[x] + @@specialCharacterSet[y]
								}
							}
						}
					}
				}
			end
		elsif min == "5"
			if max == "5"
				@@specialCharacterSet.length.times { |i|
					@@specialCharacterSet.length.times { |j|
						@@specialCharacterSet.length.times { |z|
							@@specialCharacterSet.length.times { |x|
								@@specialCharacterSet.length.times { |y|
									file.puts @@specialCharacterSet[i] + @@specialCharacterSet[j] + @@specialCharacterSet[z] + @@specialCharacterSet[x] + @@specialCharacterSet[y]
								}
							}
						}
					}
				}
			end
		end
	end


	def self.createAlphaAndNumSet(file, min, max)
		if min == "1"
			if max == "1"
				@@alphaAndNumSet.length.times { |i|
					file.puts @@alphaAndNumSet[i]
				}
			end
			if max == "2"
				@@alphaAndNumSet.size.times { |i|
					file.puts @@alphaAndNumSet[i]
				}

				@@alphaAndNumSet.length.times { |i|
					@@alphaAndNumSet.length.times { |j|
						file.puts @@alphaAndNumSet[i].to_s + @@alphaAndNumSet[j].to_s
					}
				}
			end
			if max == "3"
				@@alphaAndNumSet.length.times { |i|
					file.puts @@alphaAndNumSet[i]
				}
				
				@@alphaAndNumSet.length.times { |i|
					@@alphaAndNumSet.length.times { |j|
						file.puts @@alphaAndNumSet[i].to_s + @@alphaAndNumSet[j].to_s
					}
				}
				@@alphaAndNumSet.length.times { |i|
					@@alphaAndNumSet.length.times { |j|
						@@alphaAndNumSet.length.times { |z|
							file.puts @@alphaAndNumSet[i].to_s + @@alphaAndNumSet[j].to_s + @@alphaAndNumSet[z].to_s
						}
					}
				}
			end
			if max == "4"
				@@alphaAndNumSet.length.times { |i|
					file.puts @@alphaAndNumSet[i]
				}
				
				@@alphaAndNumSet.length.times { |i|
					@@alphaAndNumSet.length.times { |j|
						file.puts @@alphaAndNumSet[i].to_s + @@alphaAndNumSet[j].to_s
					}
				}
				@@alphaAndNumSet.length.times { |i|
					@@alphaAndNumSet.length.times { |j|
						@@alphaAndNumSet.length.times { |z|
							file.puts @@alphaAndNumSet[i].to_s + @@alphaAndNumSet[j].to_s + @@alphaAndNumSet[z].to_s
						}
					}
				}
				@@alphaAndNumSet.length.times { |i|
					@@alphaAndNumSet.length.times { |j|
						@@alphaAndNumSet.length.times { |z|
							@@alphaAndNumSet.length.times { |x|
								file.puts @@alphaAndNumSet[i].to_s + @@alphaAndNumSet[j].to_s + @@alphaAndNumSet[z].to_s + @@alphaAndNumSet[x].to_s
							}
						}
					}
				}
			end
			if max == "5"
				@@alphaAndNumSet.length.times { |i|
					file.puts @@alphaAndNumSet[i]
				}
				
				@@alphaAndNumSet.length.times { |i|
					@@alphaAndNumSet.length.times { |j|
						file.puts @@alphaAndNumSet[i].to_s + @@alphaAndNumSet[j].to_s
					}
				}
				@@alphaAndNumSet.length.times { |i|
					@@alphaAndNumSet.length.times { |j|
						@@alphaAndNumSet.length.times { |z|
							file.puts @@alphaAndNumSet[i].to_s + @@alphaAndNumSet[j].to_s + @@alphaAndNumSet[z].to_s
						}
					}
				}
				@@alphaAndNumSet.length.times { |i|
					@@alphaAndNumSet.length.times { |j|
						@@alphaAndNumSet.length.times { |z|
							@@alphaAndNumSet.length.times { |x|
								file.puts @@alphaAndNumSet[i].to_s + @@alphaAndNumSet[j].to_s + @@alphaAndNumSet[z].to_s + @@alphaAndNumSet[x].to_s
							}
						}
					}
				}
				@@alphaAndNumSet.length.times { |i|
					@@alphaAndNumSet.length.times { |j|
						@@alphaAndNumSet.length.times { |z|
								@@alphaAndNumSet.length.times { |x|
									@@alphaAndNumSet.length.times { |y|
										file.puts @@alphaAndNumSet[i].to_s + @@alphaAndNumSet[j].to_s + @@alphaAndNumSet[z].to_s + @@alphaAndNumSet[x].to_s + @@alphaAndNumSet[y].to_s
									}
								}
						}
					}
				}
			end
		elsif min == "2"
			if max == "2"
				@@alphaAndNumSet.length.times { |i|
					@@alphaAndNumSet.length.times { |j|
						file.puts @@alphaAndNumSet[i].to_s + @@alphaAndNumSet[j].to_s
					}
				}
			end
			if max == "3"
				@@alphaAndNumSet.length.times { |i|
					@@alphaAndNumSet.length.times { |j|
						file.puts @@alphaAndNumSet[i].to_s + @@alphaAndNumSet[j].to_s
					}
				}
				@@alphaAndNumSet.length.times { |i|
					@@alphaAndNumSet.length.times { |j|
						@@alphaAndNumSet.length.times { |z|
							file.puts @@alphaAndNumSet[i].to_s + @@alphaAndNumSet[j].to_s + @@alphaAndNumSet[z].to_s
						}
					}
				}
			end
			if max == "4"
				@@alphaAndNumSet.length.times { |i|
					@@alphaAndNumSet.length.times { |j|
						file.puts @@alphaAndNumSet[i].to_s + @@alphaAndNumSet[j].to_s
					}
				}
				@@alphaAndNumSet.length.times { |i|
					@@alphaAndNumSet.length.times { |j|
						@@alphaAndNumSet.length.times { |z|
							file.puts @@alphaAndNumSet[i].to_s + @@alphaAndNumSet[j].to_s + @@alphaAndNumSet[z].to_s
						}
					}
				}
				@@alphaAndNumSet.length.times { |i|
					@@alphaAndNumSet.length.times { |j|
						@@alphaAndNumSet.length.times { |z|
							@@alphaAndNumSet.length.times { |x|
								file.puts @@alphaAndNumSet[i].to_s + @@alphaAndNumSet[j].to_s + @@alphaAndNumSet[z].to_s + @@alphaAndNumSet[x].to_s
							}
						}
					}
				}
			end
			if max == "5"
				@@alphaAndNumSet.length.times { |i|
					@@alphaAndNumSet.length.times { |j|
						file.puts @@alphaAndNumSet[i].to_s + @@alphaAndNumSet[j].to_s
					}
				}
				@@alphaAndNumSet.length.times { |i|
					@@alphaAndNumSet.length.times { |j|
						@@alphaAndNumSet.length.times { |z|
							file.puts @@alphaAndNumSet[i].to_s + @@alphaAndNumSet[j].to_s + @@alphaAndNumSet[z].to_s
						}
					}
				}
				@@alphaAndNumSet.length.times { |i|
					@@alphaAndNumSet.length.times { |j|
						@@alphaAndNumSet.length.times { |z|
							@@alphaAndNumSet.length.times { |x|
								file.puts @@alphaAndNumSet[i].to_s + @@alphaAndNumSet[j].to_s + @@alphaAndNumSet[z].to_s + @@alphaAndNumSet[x].to_s
							}
						}
					}
				}
				@@alphaAndNumSet.length.times { |i|
					@@alphaAndNumSet.length.times { |j|
						@@alphaAndNumSet.length.times { |z|
								@@alphaAndNumSet.length.times { |x|
									@@alphaAndNumSet.length.times { |y|
										file.puts @@alphaAndNumSet[i].to_s + @@alphaAndNumSet[j].to_s + @@alphaAndNumSet[z].to_s + @@alphaAndNumSet[x].to_s + @@alphaAndNumSet[y].to_s
									}
								}
						}
					}
				}
			end
		elsif min == "3"
			if max == "3"
				@@alphaAndNumSet.length.times { |i|
					@@alphaAndNumSet.length.times { |j|
						@@alphaAndNumSet.length.times { |z|
							file.puts @@alphaAndNumSet[i].to_s + @@alphaAndNumSet[j].to_s + @@alphaAndNumSet[z].to_s
						}
					}
				}
			end
			if max == "4"
				@@alphaAndNumSet.length.times { |i|
					@@alphaAndNumSet.length.times { |j|
						@@alphaAndNumSet.length.times { |z|
							file.puts @@alphaAndNumSet[i].to_s + @@alphaAndNumSet[j].to_s + @@alphaAndNumSet[z].to_s
						}
					}
				}
				@@alphaAndNumSet.length.times { |i|
					@@alphaAndNumSet.length.times { |j|
						@@alphaAndNumSet.length.times { |z|
							@@alphaAndNumSet.length.times { |x|
								file.puts @@alphaAndNumSet[i].to_s + @@alphaAndNumSet[j].to_s + @@alphaAndNumSet[z].to_s + @@alphaAndNumSet[x].to_s
							}
						}
					}
				}
			end
			if max == "5"
				@@alphaAndNumSet.length.times { |i|
					@@alphaAndNumSet.length.times { |j|
						@@alphaAndNumSet.length.times { |z|
							file.puts @@alphaAndNumSet[i].to_s + @@alphaAndNumSet[j].to_s + @@alphaAndNumSet[z].to_s
						}
					}
				}
				@@alphaAndNumSet.length.times { |i|
					@@alphaAndNumSet.length.times { |j|
						@@alphaAndNumSet.length.times { |z|
							@@alphaAndNumSet.length.times { |x|
								file.puts @@alphaAndNumSet[i].to_s + @@alphaAndNumSet[j].to_s + @@alphaAndNumSet[z].to_s + @@alphaAndNumSet[x].to_s
							}
						}
					}
				}
				@@alphaAndNumSet.length.times { |i|
					@@alphaAndNumSet.length.times { |j|
						@@alphaAndNumSet.length.times { |z|
								@@alphaAndNumSet.length.times { |x|
									@@alphaAndNumSet.length.times { |y|
										file.puts @@alphaAndNumSet[i].to_s + @@alphaAndNumSet[j].to_s + @@alphaAndNumSet[z].to_s + @@alphaAndNumSet[x].to_s + @@alphaAndNumSet[y].to_s
									}
								}
						}
					}
				}
			end
		elsif min == "4"
			if max == "4"
				@@alphaAndNumSet.length.times { |i|
					@@alphaAndNumSet.length.times { |j|
						@@alphaAndNumSet.length.times { |z|
							@@alphaAndNumSet.length.times { |x|
								file.puts @@alphaAndNumSet[i].to_s + @@alphaAndNumSet[j].to_s + @@alphaAndNumSet[z].to_s + @@alphaAndNumSet[x].to_s
							}
						}
					}
				}
			end
			if max == "5"
				@@alphaAndNumSet.length.times { |i|
					@@alphaAndNumSet.length.times { |j|
						@@alphaAndNumSet.length.times { |z|
							@@alphaAndNumSet.length.times { |x|
								file.puts @@alphaAndNumSet[i].to_s + @@alphaAndNumSet[j].to_s + @@alphaAndNumSet[z].to_s + @@alphaAndNumSet[x].to_s
							}
						}
					}
				}
				@@alphaAndNumSet.length.times { |i|
					@@alphaAndNumSet.length.times { |j|
						@@alphaAndNumSet.length.times { |z|
							@@alphaAndNumSet.length.times { |x|
								@@alphaAndNumSet.length.times { |y|
									file.puts @@alphaAndNumSet[i].to_s + @@alphaAndNumSet[j].to_s + @@alphaAndNumSet[z].to_s + @@alphaAndNumSet[x].to_s + @@alphaAndNumSet[y].to_s
								}
							}
						}
					}
				}
			end
		elsif min == "5"
			if max == "5"
				@@alphaAndNumSet.length.times { |i|
					@@alphaAndNumSet.length.times { |j|
						@@alphaAndNumSet.length.times { |z|
							@@alphaAndNumSet.length.times { |x|
								@@alphaAndNumSet.length.times { |y|
									file.puts @@alphaAndNumSet[i].to_s + @@alphaAndNumSet[j].to_s + @@alphaAndNumSet[z].to_s + @@alphaAndNumSet[x].to_s + @@alphaAndNumSet[y].to_s
								}
							}
						}
					}
				}
			end
		end
	end


	def self.createAlphaAndSpecSet(file, min, max)
		if min == "1"
			if max == "1"
				@@alphaAndSpecSet.length.times { |i|
					file.puts @@alphaAndSpecSet[i]
				}
			end
			if max == "2"
				@@alphaAndSpecSet.size.times { |i|
					file.puts @@alphaAndSpecSet[i]
				}

				@@alphaAndSpecSet.length.times { |i|
					@@alphaAndSpecSet.length.times { |j|
						file.puts @@alphaAndSpecSet[i].to_s + @@alphaAndSpecSet[j].to_s
					}
				}
			end
			if max == "3"
				@@alphaAndSpecSet.length.times { |i|
					file.puts @@alphaAndSpecSet[i]
				}
				
				@@alphaAndSpecSet.length.times { |i|
					@@alphaAndSpecSet.length.times { |j|
						file.puts @@alphaAndSpecSet[i].to_s + @@alphaAndSpecSet[j].to_s
					}
				}
				@@alphaAndSpecSet.length.times { |i|
					@@alphaAndSpecSet.length.times { |j|
						@@alphaAndSpecSet.length.times { |z|
							file.puts @@alphaAndSpecSet[i].to_s + @@alphaAndSpecSet[j].to_s + @@alphaAndSpecSet[z].to_s
						}
					}
				}
			end
			if max == "4"
				@@alphaAndSpecSet.length.times { |i|
					file.puts @@alphaAndSpecSet[i]
				}
				
				@@alphaAndSpecSet.length.times { |i|
					@@alphaAndSpecSet.length.times { |j|
						file.puts @@alphaAndSpecSet[i].to_s + @@alphaAndSpecSet[j].to_s
					}
				}
				@@alphaAndSpecSet.length.times { |i|
					@@alphaAndSpecSet.length.times { |j|
						@@alphaAndSpecSet.length.times { |z|
							file.puts @@alphaAndSpecSet[i].to_s + @@alphaAndSpecSet[j].to_s + @@alphaAndSpecSet[z].to_s
						}
					}
				}
				@@alphaAndSpecSet.length.times { |i|
					@@alphaAndSpecSet.length.times { |j|
						@@alphaAndSpecSet.length.times { |z|
							@@alphaAndSpecSet.length.times { |x|
								file.puts @@alphaAndSpecSet[i].to_s + @@alphaAndSpecSet[j].to_s + @@alphaAndSpecSet[z].to_s + @@alphaAndSpecSet[x].to_s
							}
						}
					}
				}
			end
			if max == "5"
				@@alphaAndSpecSet.length.times { |i|
					file.puts @@alphaAndSpecSet[i]
				}
				
				@@alphaAndSpecSet.length.times { |i|
					@@alphaAndSpecSet.length.times { |j|
						file.puts @@alphaAndSpecSet[i].to_s + @@alphaAndSpecSet[j].to_s
					}
				}
				@@alphaAndSpecSet.length.times { |i|
					@@alphaAndSpecSet.length.times { |j|
						@@alphaAndSpecSet.length.times { |z|
							file.puts @@alphaAndSpecSet[i].to_s + @@alphaAndSpecSet[j].to_s + @@alphaAndSpecSet[z].to_s
						}
					}
				}
				@@alphaAndSpecSet.length.times { |i|
					@@alphaAndSpecSet.length.times { |j|
						@@alphaAndSpecSet.length.times { |z|
							@@alphaAndSpecSet.length.times { |x|
								file.puts @@alphaAndSpecSet[i].to_s + @@alphaAndSpecSet[j].to_s + @@alphaAndSpecSet[z].to_s + @@alphaAndSpecSet[x].to_s
							}
						}
					}
				}
				@@alphaAndSpecSet.length.times { |i|
					@@alphaAndSpecSet.length.times { |j|
						@@alphaAndSpecSet.length.times { |z|
								@@alphaAndSpecSet.length.times { |x|
									@@alphaAndSpecSet.length.times { |y|
										file.puts @@alphaAndSpecSet[i].to_s + @@alphaAndSpecSet[j].to_s + @@alphaAndSpecSet[z].to_s + @@alphaAndSpecSet[x].to_s + @@alphaAndSpecSet[y].to_s
									}
								}
						}
					}
				}
			end
		elsif min == "2"
			if max == "2"
				@@alphaAndSpecSet.length.times { |i|
					@@alphaAndSpecSet.length.times { |j|
						file.puts @@alphaAndSpecSet[i].to_s + @@alphaAndSpecSet[j].to_s
					}
				}
			end
			if max == "3"
				@@alphaAndSpecSet.length.times { |i|
					@@alphaAndSpecSet.length.times { |j|
						file.puts @@alphaAndSpecSet[i].to_s + @@alphaAndSpecSet[j].to_s
					}
				}
				@@alphaAndSpecSet.length.times { |i|
					@@alphaAndSpecSet.length.times { |j|
						@@alphaAndSpecSet.length.times { |z|
							file.puts @@alphaAndSpecSet[i].to_s + @@alphaAndSpecSet[j].to_s + @@alphaAndSpecSet[z].to_s
						}
					}
				}
			end
			if max == "4"
				@@alphaAndSpecSet.length.times { |i|
					@@alphaAndSpecSet.length.times { |j|
						file.puts @@alphaAndSpecSet[i].to_s + @@alphaAndSpecSet[j].to_s
					}
				}
				@@alphaAndSpecSet.length.times { |i|
					@@alphaAndSpecSet.length.times { |j|
						@@alphaAndSpecSet.length.times { |z|
							file.puts @@alphaAndSpecSet[i].to_s + @@alphaAndSpecSet[j].to_s + @@alphaAndSpecSet[z].to_s
						}
					}
				}
				@@alphaAndSpecSet.length.times { |i|
					@@alphaAndSpecSet.length.times { |j|
						@@alphaAndSpecSet.length.times { |z|
							@@alphaAndSpecSet.length.times { |x|
								file.puts @@alphaAndSpecSet[i].to_s + @@alphaAndSpecSet[j].to_s + @@alphaAndSpecSet[z].to_s + @@alphaAndSpecSet[x].to_s
							}
						}
					}
				}
			end
			if max == "5"
				@@alphaAndSpecSet.length.times { |i|
					@@alphaAndSpecSet.length.times { |j|
						file.puts @@alphaAndSpecSet[i].to_s + @@alphaAndSpecSet[j].to_s
					}
				}
				@@alphaAndSpecSet.length.times { |i|
					@@alphaAndSpecSet.length.times { |j|
						@@alphaAndSpecSet.length.times { |z|
							file.puts @@alphaAndSpecSet[i].to_s + @@alphaAndSpecSet[j].to_s + @@alphaAndSpecSet[z].to_s
						}
					}
				}
				@@alphaAndSpecSet.length.times { |i|
					@@alphaAndSpecSet.length.times { |j|
						@@alphaAndSpecSet.length.times { |z|
							@@alphaAndSpecSet.length.times { |x|
								file.puts @@alphaAndSpecSet[i].to_s + @@alphaAndSpecSet[j].to_s + @@alphaAndSpecSet[z].to_s + @@alphaAndSpecSet[x].to_s
							}
						}
					}
				}
				@@alphaAndSpecSet.length.times { |i|
					@@alphaAndSpecSet.length.times { |j|
						@@alphaAndSpecSet.length.times { |z|
								@@alphaAndSpecSet.length.times { |x|
									@@alphaAndSpecSet.length.times { |y|
										file.puts @@alphaAndSpecSet[i].to_s + @@alphaAndSpecSet[j].to_s + @@alphaAndSpecSet[z].to_s + @@alphaAndSpecSet[x].to_s + @@alphaAndSpecSet[y].to_s
									}
								}
						}
					}
				}
			end
		elsif min == "3"
			if max == "3"
				@@alphaAndSpecSet.length.times { |i|
					@@alphaAndSpecSet.length.times { |j|
						@@alphaAndSpecSet.length.times { |z|
							file.puts @@alphaAndSpecSet[i].to_s + @@alphaAndSpecSet[j].to_s + @@alphaAndSpecSet[z].to_s
						}
					}
				}
			end
			if max == "4"
				@@alphaAndSpecSet.length.times { |i|
					@@alphaAndSpecSet.length.times { |j|
						@@alphaAndSpecSet.length.times { |z|
							file.puts @@alphaAndSpecSet[i].to_s + @@alphaAndSpecSet[j].to_s + @@alphaAndSpecSet[z].to_s
						}
					}
				}
				@@alphaAndSpecSet.length.times { |i|
					@@alphaAndSpecSet.length.times { |j|
						@@alphaAndSpecSet.length.times { |z|
							@@alphaAndSpecSet.length.times { |x|
								file.puts @@alphaAndSpecSet[i].to_s + @@alphaAndSpecSet[j].to_s + @@alphaAndSpecSet[z].to_s + @@alphaAndSpecSet[x].to_s
							}
						}
					}
				}
			end
			if max == "5"
				@@alphaAndSpecSet.length.times { |i|
					@@alphaAndSpecSet.length.times { |j|
						@@alphaAndSpecSet.length.times { |z|
							file.puts @@alphaAndSpecSet[i].to_s + @@alphaAndSpecSet[j].to_s + @@alphaAndSpecSet[z].to_s
						}
					}
				}
				@@alphaAndSpecSet.length.times { |i|
					@@alphaAndSpecSet.length.times { |j|
						@@alphaAndSpecSet.length.times { |z|
							@@alphaAndSpecSet.length.times { |x|
								file.puts @@alphaAndSpecSet[i].to_s + @@alphaAndSpecSet[j].to_s + @@alphaAndSpecSet[z].to_s + @@alphaAndSpecSet[x].to_s
							}
						}
					}
				}
				@@alphaAndSpecSet.length.times { |i|
					@@alphaAndSpecSet.length.times { |j|
						@@alphaAndSpecSet.length.times { |z|
								@@alphaAndSpecSet.length.times { |x|
									@@alphaAndSpecSet.length.times { |y|
										file.puts @@alphaAndSpecSet[i].to_s + @@alphaAndSpecSet[j].to_s + @@alphaAndSpecSet[z].to_s + @@alphaAndSpecSet[x].to_s + @@alphaAndSpecSet[y].to_s
									}
								}
						}
					}
				}
			end
		elsif min == "4"
			if max == "4"
				@@alphaAndSpecSet.length.times { |i|
					@@alphaAndSpecSet.length.times { |j|
						@@alphaAndSpecSet.length.times { |z|
							@@alphaAndSpecSet.length.times { |x|
								file.puts @@alphaAndSpecSet[i].to_s + @@alphaAndSpecSet[j].to_s + @@alphaAndSpecSet[z].to_s + @@alphaAndSpecSet[x].to_s
							}
						}
					}
				}
			end
			if max == "5"
				@@alphaAndSpecSet.length.times { |i|
					@@alphaAndSpecSet.length.times { |j|
						@@alphaAndSpecSet.length.times { |z|
							@@alphaAndSpecSet.length.times { |x|
								file.puts @@alphaAndSpecSet[i].to_s + @@alphaAndSpecSet[j].to_s + @@alphaAndSpecSet[z].to_s + @@alphaAndSpecSet[x].to_s
							}
						}
					}
				}
				@@alphaAndSpecSet.length.times { |i|
					@@alphaAndSpecSet.length.times { |j|
						@@alphaAndSpecSet.length.times { |z|
							@@alphaAndSpecSet.length.times { |x|
								@@alphaAndSpecSet.length.times { |y|
									file.puts @@alphaAndSpecSet[i].to_s + @@alphaAndSpecSet[j].to_s + @@alphaAndSpecSet[z].to_s + @@alphaAndSpecSet[x].to_s + @@alphaAndSpecSet[y].to_s
								}
							}
						}
					}
				}
			end
		elsif min == "5"
			if max == "5"
				@@alphaAndSpecSet.length.times { |i|
					@@alphaAndSpecSet.length.times { |j|
						@@alphaAndSpecSet.length.times { |z|
							@@alphaAndSpecSet.length.times { |x|
								@@alphaAndSpecSet.length.times { |y|
									file.puts @@alphaAndSpecSet[i].to_s + @@alphaAndSpecSet[j].to_s + @@alphaAndSpecSet[z].to_s + @@alphaAndSpecSet[x].to_s + @@alphaAndSpecSet[y].to_s
								}
							}
						}
					}
				}
			end
		end
	end



	def self.createNumAndSpecSet(file, min, max)
		if min == "1"
			if max == "1"
				@@numAndSpecSet.length.times { |i|
					file.puts @@numAndSpecSet[i]
				}
			end
			if max == "2"
				@@numAndSpecSet.size.times { |i|
					file.puts @@numAndSpecSet[i]
				}

				@@numAndSpecSet.length.times { |i|
					@@numAndSpecSet.length.times { |j|
						file.puts @@numAndSpecSet[i].to_s + @@numAndSpecSet[j].to_s
					}
				}
			end
			if max == "3"
				@@numAndSpecSet.length.times { |i|
					file.puts @@numAndSpecSet[i]
				}
				
				@@numAndSpecSet.length.times { |i|
					@@numAndSpecSet.length.times { |j|
						file.puts @@numAndSpecSet[i].to_s + @@numAndSpecSet[j].to_s
					}
				}
				@@numAndSpecSet.length.times { |i|
					@@numAndSpecSet.length.times { |j|
						@@numAndSpecSet.length.times { |z|
							file.puts @@numAndSpecSet[i].to_s + @@numAndSpecSet[j].to_s + @@numAndSpecSet[z].to_s
						}
					}
				}
			end
			if max == "4"
				@@numAndSpecSet.length.times { |i|
					file.puts @@numAndSpecSet[i]
				}
				
				@@numAndSpecSet.length.times { |i|
					@@numAndSpecSet.length.times { |j|
						file.puts @@numAndSpecSet[i].to_s + @@numAndSpecSet[j].to_s
					}
				}
				@@numAndSpecSet.length.times { |i|
					@@numAndSpecSet.length.times { |j|
						@@numAndSpecSet.length.times { |z|
							file.puts @@numAndSpecSet[i].to_s + @@numAndSpecSet[j].to_s + @@numAndSpecSet[z].to_s
						}
					}
				}
				@@numAndSpecSet.length.times { |i|
					@@numAndSpecSet.length.times { |j|
						@@numAndSpecSet.length.times { |z|
							@@numAndSpecSet.length.times { |x|
								file.puts @@numAndSpecSet[i].to_s + @@numAndSpecSet[j].to_s + @@numAndSpecSet[z].to_s + @@numAndSpecSet[x].to_s
							}
						}
					}
				}
			end
			if max == "5"
				@@numAndSpecSet.length.times { |i|
					file.puts @@numAndSpecSet[i]
				}
				
				@@numAndSpecSet.length.times { |i|
					@@numAndSpecSet.length.times { |j|
						file.puts @@numAndSpecSet[i].to_s + @@numAndSpecSet[j].to_s
					}
				}
				@@numAndSpecSet.length.times { |i|
					@@numAndSpecSet.length.times { |j|
						@@numAndSpecSet.length.times { |z|
							file.puts @@numAndSpecSet[i].to_s + @@numAndSpecSet[j].to_s + @@numAndSpecSet[z].to_s
						}
					}
				}
				@@numAndSpecSet.length.times { |i|
					@@numAndSpecSet.length.times { |j|
						@@numAndSpecSet.length.times { |z|
							@@numAndSpecSet.length.times { |x|
								file.puts @@numAndSpecSet[i].to_s + @@numAndSpecSet[j].to_s + @@numAndSpecSet[z].to_s + @@numAndSpecSet[x].to_s
							}
						}
					}
				}
				@@numAndSpecSet.length.times { |i|
					@@numAndSpecSet.length.times { |j|
						@@numAndSpecSet.length.times { |z|
								@@numAndSpecSet.length.times { |x|
									@@numAndSpecSet.length.times { |y|
										file.puts @@numAndSpecSet[i].to_s + @@numAndSpecSet[j].to_s + @@numAndSpecSet[z].to_s + @@numAndSpecSet[x].to_s + @@numAndSpecSet[y].to_s
									}
								}
						}
					}
				}
			end
		elsif min == "2"
			if max == "2"
				@@numAndSpecSet.length.times { |i|
					@@numAndSpecSet.length.times { |j|
						file.puts @@numAndSpecSet[i].to_s + @@numAndSpecSet[j].to_s
					}
				}
			end
			if max == "3"
				@@numAndSpecSet.length.times { |i|
					@@numAndSpecSet.length.times { |j|
						file.puts @@numAndSpecSet[i].to_s + @@numAndSpecSet[j].to_s
					}
				}
				@@numAndSpecSet.length.times { |i|
					@@numAndSpecSet.length.times { |j|
						@@numAndSpecSet.length.times { |z|
							file.puts @@numAndSpecSet[i].to_s + @@numAndSpecSet[j].to_s + @@numAndSpecSet[z].to_s
						}
					}
				}
			end
			if max == "4"
				@@numAndSpecSet.length.times { |i|
					@@numAndSpecSet.length.times { |j|
						file.puts @@numAndSpecSet[i].to_s + @@numAndSpecSet[j].to_s
					}
				}
				@@numAndSpecSet.length.times { |i|
					@@numAndSpecSet.length.times { |j|
						@@numAndSpecSet.length.times { |z|
							file.puts @@numAndSpecSet[i].to_s + @@numAndSpecSet[j].to_s + @@numAndSpecSet[z].to_s
						}
					}
				}
				@@numAndSpecSet.length.times { |i|
					@@numAndSpecSet.length.times { |j|
						@@numAndSpecSet.length.times { |z|
							@@numAndSpecSet.length.times { |x|
								file.puts @@numAndSpecSet[i].to_s + @@numAndSpecSet[j].to_s + @@numAndSpecSet[z].to_s + @@numAndSpecSet[x].to_s
							}
						}
					}
				}
			end
			if max == "5"
				@@numAndSpecSet.length.times { |i|
					@@numAndSpecSet.length.times { |j|
						file.puts @@numAndSpecSet[i].to_s + @@numAndSpecSet[j].to_s
					}
				}
				@@numAndSpecSet.length.times { |i|
					@@numAndSpecSet.length.times { |j|
						@@numAndSpecSet.length.times { |z|
							file.puts @@numAndSpecSet[i].to_s + @@numAndSpecSet[j].to_s + @@numAndSpecSet[z].to_s
						}
					}
				}
				@@numAndSpecSet.length.times { |i|
					@@numAndSpecSet.length.times { |j|
						@@numAndSpecSet.length.times { |z|
							@@numAndSpecSet.length.times { |x|
								file.puts @@numAndSpecSet[i].to_s + @@numAndSpecSet[j].to_s + @@numAndSpecSet[z].to_s + @@numAndSpecSet[x].to_s
							}
						}
					}
				}
				@@numAndSpecSet.length.times { |i|
					@@numAndSpecSet.length.times { |j|
						@@numAndSpecSet.length.times { |z|
								@@numAndSpecSet.length.times { |x|
									@@numAndSpecSet.length.times { |y|
										file.puts @@numAndSpecSet[i].to_s + @@numAndSpecSet[j].to_s + @@numAndSpecSet[z].to_s + @@numAndSpecSet[x].to_s + @@numAndSpecSet[y].to_s
									}
								}
						}
					}
				}
			end
		elsif min == "3"
			if max == "3"
				@@numAndSpecSet.length.times { |i|
					@@numAndSpecSet.length.times { |j|
						@@numAndSpecSet.length.times { |z|
							file.puts @@numAndSpecSet[i].to_s + @@numAndSpecSet[j].to_s + @@numAndSpecSet[z].to_s
						}
					}
				}
			end
			if max == "4"
				@@numAndSpecSet.length.times { |i|
					@@numAndSpecSet.length.times { |j|
						@@numAndSpecSet.length.times { |z|
							file.puts @@numAndSpecSet[i].to_s + @@numAndSpecSet[j].to_s + @@numAndSpecSet[z].to_s
						}
					}
				}
				@@numAndSpecSet.length.times { |i|
					@@numAndSpecSet.length.times { |j|
						@@numAndSpecSet.length.times { |z|
							@@numAndSpecSet.length.times { |x|
								file.puts @@numAndSpecSet[i].to_s + @@numAndSpecSet[j].to_s + @@numAndSpecSet[z].to_s + @@numAndSpecSet[x].to_s
							}
						}
					}
				}
			end
			if max == "5"
				@@numAndSpecSet.length.times { |i|
					@@numAndSpecSet.length.times { |j|
						@@numAndSpecSet.length.times { |z|
							file.puts @@numAndSpecSet[i].to_s + @@numAndSpecSet[j].to_s + @@numAndSpecSet[z].to_s
						}
					}
				}
				@@numAndSpecSet.length.times { |i|
					@@numAndSpecSet.length.times { |j|
						@@numAndSpecSet.length.times { |z|
							@@numAndSpecSet.length.times { |x|
								file.puts @@numAndSpecSet[i].to_s + @@numAndSpecSet[j].to_s + @@numAndSpecSet[z].to_s + @@numAndSpecSet[x].to_s
							}
						}
					}
				}
				@@numAndSpecSet.length.times { |i|
					@@numAndSpecSet.length.times { |j|
						@@numAndSpecSet.length.times { |z|
								@@numAndSpecSet.length.times { |x|
									@@numAndSpecSet.length.times { |y|
										file.puts @@numAndSpecSet[i].to_s + @@numAndSpecSet[j].to_s + @@numAndSpecSet[z].to_s + @@numAndSpecSet[x].to_s + @@numAndSpecSet[y].to_s
									}
								}
						}
					}
				}
			end
		elsif min == "4"
			if max == "4"
				@@numAndSpecSet.length.times { |i|
					@@numAndSpecSet.length.times { |j|
						@@numAndSpecSet.length.times { |z|
							@@numAndSpecSet.length.times { |x|
								file.puts @@numAndSpecSet[i].to_s + @@numAndSpecSet[j].to_s + @@numAndSpecSet[z].to_s + @@numAndSpecSet[x].to_s
							}
						}
					}
				}
			end
			if max == "5"
				@@numAndSpecSet.length.times { |i|
					@@numAndSpecSet.length.times { |j|
						@@numAndSpecSet.length.times { |z|
							@@numAndSpecSet.length.times { |x|
								file.puts @@numAndSpecSet[i].to_s + @@numAndSpecSet[j].to_s + @@numAndSpecSet[z].to_s + @@numAndSpecSet[x].to_s
							}
						}
					}
				}
				@@numAndSpecSet.length.times { |i|
					@@numAndSpecSet.length.times { |j|
						@@numAndSpecSet.length.times { |z|
							@@numAndSpecSet.length.times { |x|
								@@numAndSpecSet.length.times { |y|
									file.puts @@numAndSpecSet[i].to_s + @@numAndSpecSet[j].to_s + @@numAndSpecSet[z].to_s + @@numAndSpecSet[x].to_s + @@numAndSpecSet[y].to_s
								}
							}
						}
					}
				}
			end
		elsif min == "5"
			if max == "5"
				@@numAndSpecSet.length.times { |i|
					@@numAndSpecSet.length.times { |j|
						@@numAndSpecSet.length.times { |z|
							@@numAndSpecSet.length.times { |x|
								@@numAndSpecSet.length.times { |y|
									file.puts @@numAndSpecSet[i].to_s + @@numAndSpecSet[j].to_s + @@numAndSpecSet[z].to_s + @@numAndSpecSet[x].to_s + @@numAndSpecSet[y].to_s
								}
							}
						}
					}
				}
			end
		end
	end


	def self.createAlphaNumAndSpecSet(file, min, max)
		if min == "1"
			if max == "1"
				@@alphaNumAndSpecSet.length.times { |i|
					file.puts @@alphaNumAndSpecSet[i]
				}
			end
			if max == "2"
				@@alphaNumAndSpecSet.size.times { |i|
					file.puts @@alphaNumAndSpecSet[i]
				}

				@@alphaNumAndSpecSet.length.times { |i|
					@@alphaNumAndSpecSet.length.times { |j|
						file.puts @@alphaNumAndSpecSet[i].to_s + @@alphaNumAndSpecSet[j].to_s
					}
				}
			end
			if max == "3"
				@@alphaNumAndSpecSet.length.times { |i|
					file.puts @@alphaNumAndSpecSet[i]
				}
				
				@@alphaNumAndSpecSet.length.times { |i|
					@@alphaNumAndSpecSet.length.times { |j|
						file.puts @@alphaNumAndSpecSet[i].to_s + @@alphaNumAndSpecSet[j].to_s
					}
				}

				@@alphaNumAndSpecSet.length.times { |i|
					@@alphaNumAndSpecSet.length.times { |j|
						@@alphaNumAndSpecSet.length.times { |z|
							file.puts @@alphaNumAndSpecSet[i].to_s + @@alphaNumAndSpecSet[j].to_s + @@alphaNumAndSpecSet[z].to_s
						}
					}
				}
			end
			if max == "4"
				@@alphaNumAndSpecSet.length.times { |i|
					file.puts @@alphaNumAndSpecSet[i]
				}
				
				@@alphaNumAndSpecSet.length.times { |i|
					@@alphaNumAndSpecSet.length.times { |j|
						file.puts @@alphaNumAndSpecSet[i].to_s + @@alphaNumAndSpecSet[j].to_s
					}
				}
				@@alphaNumAndSpecSet.length.times { |i|
					@@alphaNumAndSpecSet.length.times { |j|
						@@alphaNumAndSpecSet.length.times { |z|
							file.puts @@alphaNumAndSpecSet[i].to_s + @@alphaNumAndSpecSet[j].to_s + @@alphaNumAndSpecSet[z].to_s
						}
					}
				}
				@@alphaNumAndSpecSet.length.times { |i|
					@@alphaNumAndSpecSet.length.times { |j|
						@@alphaNumAndSpecSet.length.times { |z|
							@@alphaNumAndSpecSet.length.times { |x|
								file.puts @@alphaNumAndSpecSet[i].to_s + @@alphaNumAndSpecSet[j].to_s + @@alphaNumAndSpecSet[z].to_s + @@alphaNumAndSpecSet[x].to_s
							}
						}
					}
				}
			end
			if max == "5"
				@@alphaNumAndSpecSet.length.times { |i|
					file.puts @@alphaNumAndSpecSet[i]
				}
				
				@@alphaNumAndSpecSet.length.times { |i|
					@@alphaNumAndSpecSet.length.times { |j|
						file.puts @@alphaNumAndSpecSet[i].to_s + @@alphaNumAndSpecSet[j].to_s
					}
				}
				@@alphaNumAndSpecSet.length.times { |i|
					@@alphaNumAndSpecSet.length.times { |j|
						@@alphaNumAndSpecSet.length.times { |z|
							file.puts @@alphaNumAndSpecSet[i].to_s + @@alphaNumAndSpecSet[j].to_s + @@alphaNumAndSpecSet[z].to_s
						}
					}
				}
				@@alphaNumAndSpecSet.length.times { |i|
					@@alphaNumAndSpecSet.length.times { |j|
						@@alphaNumAndSpecSet.length.times { |z|
							@@alphaNumAndSpecSet.length.times { |x|
								file.puts @@alphaNumAndSpecSet[i].to_s + @@alphaNumAndSpecSet[j].to_s + @@alphaNumAndSpecSet[z].to_s + @@alphaNumAndSpecSet[x].to_s
							}
						}
					}
				}
				@@alphaNumAndSpecSet.length.times { |i|
					@@alphaNumAndSpecSet.length.times { |j|
						@@alphaNumAndSpecSet.length.times { |z|
								@@alphaNumAndSpecSet.length.times { |x|
									@@alphaNumAndSpecSet.length.times { |y|
										file.puts @@alphaNumAndSpecSet[i].to_s + @@alphaNumAndSpecSet[j].to_s + @@alphaNumAndSpecSet[z].to_s + @@alphaNumAndSpecSet[x].to_s + @@alphaNumAndSpecSet[y].to_s
									}
								}
						}
					}
				}
			end
		elsif min == "2"
			if max == "2"
				@@alphaNumAndSpecSet.length.times { |i|
					@@alphaNumAndSpecSet.length.times { |j|
						file.puts @@alphaNumAndSpecSet[i].to_s + @@alphaNumAndSpecSet[j].to_s
					}
				}
			end
			if max == "3"
				@@alphaNumAndSpecSet.length.times { |i|
					@@alphaNumAndSpecSet.length.times { |j|
						file.puts @@alphaNumAndSpecSet[i].to_s + @@alphaNumAndSpecSet[j].to_s
					}
				}
				@@alphaNumAndSpecSet.length.times { |i|
					@@alphaNumAndSpecSet.length.times { |j|
						@@alphaNumAndSpecSet.length.times { |z|
							file.puts @@alphaNumAndSpecSet[i].to_s + @@alphaNumAndSpecSet[j].to_s + @@alphaNumAndSpecSet[z].to_s
						}
					}
				}
			end
			if max == "4"
				@@alphaNumAndSpecSet.length.times { |i|
					@@alphaNumAndSpecSet.length.times { |j|
						file.puts @@alphaNumAndSpecSet[i].to_s + @@alphaNumAndSpecSet[j].to_s
					}
				}
				@@alphaNumAndSpecSet.length.times { |i|
					@@alphaNumAndSpecSet.length.times { |j|
						@@alphaNumAndSpecSet.length.times { |z|
							file.puts @@alphaNumAndSpecSet[i].to_s + @@alphaNumAndSpecSet[j].to_s + @@alphaNumAndSpecSet[z].to_s
						}
					}
				}
				@@alphaNumAndSpecSet.length.times { |i|
					@@alphaNumAndSpecSet.length.times { |j|
						@@alphaNumAndSpecSet.length.times { |z|
							@@alphaNumAndSpecSet.length.times { |x|
								file.puts @@alphaNumAndSpecSet[i].to_s + @@alphaNumAndSpecSet[j].to_s + @@alphaNumAndSpecSet[z].to_s + @@alphaNumAndSpecSet[x].to_s
							}
						}
					}
				}
			end
			if max == "5"
				@@alphaNumAndSpecSet.length.times { |i|
					@@alphaNumAndSpecSet.length.times { |j|
						file.puts @@alphaNumAndSpecSet[i].to_s + @@alphaNumAndSpecSet[j].to_s
					}
				}
				@@alphaNumAndSpecSet.length.times { |i|
					@@alphaNumAndSpecSet.length.times { |j|
						@@alphaNumAndSpecSet.length.times { |z|
							file.puts @@alphaNumAndSpecSet[i].to_s + @@alphaNumAndSpecSet[j].to_s + @@alphaNumAndSpecSet[z].to_s
						}
					}
				}
				@@alphaNumAndSpecSet.length.times { |i|
					@@alphaNumAndSpecSet.length.times { |j|
						@@alphaNumAndSpecSet.length.times { |z|
							@@alphaNumAndSpecSet.length.times { |x|
								file.puts @@alphaNumAndSpecSet[i].to_s + @@alphaNumAndSpecSet[j].to_s + @@alphaNumAndSpecSet[z].to_s + @@alphaNumAndSpecSet[x].to_s
							}
						}
					}
				}
				@@alphaNumAndSpecSet.length.times { |i|
					@@alphaNumAndSpecSet.length.times { |j|
						@@alphaNumAndSpecSet.length.times { |z|
								@@alphaNumAndSpecSet.length.times { |x|
									@@alphaNumAndSpecSet.length.times { |y|
										file.puts @@alphaNumAndSpecSet[i].to_s + @@alphaNumAndSpecSet[j].to_s + @@alphaNumAndSpecSet[z].to_s + @@alphaNumAndSpecSet[x].to_s + @@alphaNumAndSpecSet[y].to_s
									}
								}
						}
					}
				}
			end
		elsif min == "3"
			if max == "3"
				@@alphaNumAndSpecSet.length.times { |i|
					@@alphaNumAndSpecSet.length.times { |j|
						@@alphaNumAndSpecSet.length.times { |z|
							file.puts @@alphaNumAndSpecSet[i] + @@alphaNumAndSpecSet[j] + @@alphaNumAndSpecSet[z]
						}
					}
				}
			end
			if max == "4"
				@@alphaNumAndSpecSet.length.times { |i|
					@@alphaNumAndSpecSet.length.times { |j|
						@@alphaNumAndSpecSet.length.times { |z|
							file.puts @@alphaNumAndSpecSet[i] + @@alphaNumAndSpecSet[j] + @@alphaNumAndSpecSet[z]
						}
					}
				}
				@@alphaNumAndSpecSet.length.times { |i|
					@@alphaNumAndSpecSet.length.times { |j|
						@@alphaNumAndSpecSet.length.times { |z|
							@@alphaNumAndSpecSet.length.times { |x|
								file.puts @@alphaNumAndSpecSet[i] + @@alphaNumAndSpecSet[j] + @@alphaNumAndSpecSet[z] + @@alphaNumAndSpecSet[x]
							}
						}
					}
				}
			end
			if max == "5"
				@@alphaNumAndSpecSet.length.times { |i|
					@@alphaNumAndSpecSet.length.times { |j|
						@@alphaNumAndSpecSet.length.times { |z|
							file.puts @@alphaNumAndSpecSet[i] + @@alphaNumAndSpecSet[j] + @@alphaNumAndSpecSet[z]
						}
					}
				}
				@@alphaNumAndSpecSet.length.times { |i|
					@@alphaNumAndSpecSet.length.times { |j|
						@@alphaNumAndSpecSet.length.times { |z|
							@@alphaNumAndSpecSet.length.times { |x|
								file.puts @@alphaNumAndSpecSet[i] + @@alphaNumAndSpecSet[j] + @@alphaNumAndSpecSet[z] + @@alphaNumAndSpecSet[x]
							}
						}
					}
				}
				@@alphaNumAndSpecSet.length.times { |i|
					@@alphaNumAndSpecSet.length.times { |j|
						@@alphaNumAndSpecSet.length.times { |z|
								@@alphaNumAndSpecSet.length.times { |x|
									@@alphaNumAndSpecSet.length.times { |y|
										file.puts @@alphaNumAndSpecSet[i] + @@alphaNumAndSpecSet[j] + @@alphaNumAndSpecSet[z] + @@alphaNumAndSpecSet[x] + @@alphaNumAndSpecSet[y]
									}
								}
						}
					}
				}
			end
		elsif min == "4"
			if max == "4"
				@@alphaNumAndSpecSet.length.times { |i|
					@@alphaNumAndSpecSet.length.times { |j|
						@@alphaNumAndSpecSet.length.times { |z|
							@@alphaNumAndSpecSet.length.times { |x|
								file.puts @@alphaNumAndSpecSet[i] + @@alphaNumAndSpecSet[j] + @@alphaNumAndSpecSet[z] + @@alphaNumAndSpecSet[x]
							}
						}
					}
				}
			end
			if max == "5"
				@@alphaNumAndSpecSet.length.times { |i|
					@@alphaNumAndSpecSet.length.times { |j|
						@@alphaNumAndSpecSet.length.times { |z|
							@@alphaNumAndSpecSet.length.times { |x|
								file.puts @@alphaNumAndSpecSet[i] + @@alphaNumAndSpecSet[j] + @@alphaNumAndSpecSet[z] + @@alphaNumAndSpecSet[x]
							}
						}
					}
				}
				@@alphaNumAndSpecSet.length.times { |i|
					@@alphaNumAndSpecSet.length.times { |j|
						@@alphaNumAndSpecSet.length.times { |z|
							@@alphaNumAndSpecSet.length.times { |x|
								@@alphaNumAndSpecSet.length.times { |y|
									file.puts @@alphaNumAndSpecSet[i] + @@alphaNumAndSpecSet[j] + @@alphaNumAndSpecSet[z] + @@alphaNumAndSpecSet[x] + @@alphaNumAndSpecSet[y]
								}
							}
						}
					}
				}
			end
		elsif min == "5"
			if max == "5"
				@@alphaNumAndSpecSet.length.times { |i|
					@@alphaNumAndSpecSet.length.times { |j|
						@@alphaNumAndSpecSet.length.times { |z|
							@@alphaNumAndSpecSet.length.times { |x|
								@@alphaNumAndSpecSet.length.times { |y|
									file.puts @@alphaNumAndSpecSet[i] + @@alphaNumAndSpecSet[j] + @@alphaNumAndSpecSet[z] + @@alphaNumAndSpecSet[x] + @@alphaNumAndSpecSet[y]
								}
							}
						}
					}
				}
			end
		end
	end

	def self.createWordlistByUsingRegExp(file, regExp)
		arr = regExp.split('')

		if arr.length == 1
			raise "\n\n########################################\n\nBöyle pattern olmaz olum! Bunun için pattern'a ihtiyacın yok.\n\n########################################\n\n"
		elsif arr.length == 2
			if arr[0] == '*' and arr[1] == '*'
				raise "\n\n########################################\n\nBöyle pattern olmaz olum! Bunun için pattern'a ihtiyacın yok.\n\n########################################\n\n"
			elsif arr[0] == '*' and arr[1] != '*'
				(0..9).each do |i|
					file.puts i.to_s + arr[1].to_s
				end
			elsif arr[0] != '*' and arr[1] == '*'
				(0..9).each do |i|
					file.puts arr[0].to_s + i.to_s
				end
			elsif arr[0] != '*' and arr[1] != '*'
				raise "\n\n########################################\n\nBöyle pattern olmaz olum! Bunun için pattern'a ihtiyacın yok.\n\n########################################\n\n"
			end
		elsif arr.length == 3
			if arr[0] == '*' and arr[1] == '*' and arr[2] == '*'
				(0..9).each do |i|
					(0..9).each do |j|
						(0..9).each do |k|
							file.puts i.to_s + j.to_s + k.to_s
						end
					end
				end
			elsif arr[0] == '*' and arr[1] == '*' and arr[2] != '*'
				(0..9).each do |i|
					(0..9).each do |j|
						file.puts i.to_s + j.to_s + arr[2].to_s
					end
				end
			elsif arr[0] == '*' and arr[1] != '*' and arr[2] == '*'
				(0..9).each do |i|
					(0..9).each do |j|
						file.puts i.to_s arr[1].to_s + j.to_s
					end
				end
			elsif arr[0] == '*' and arr[1] != '*' and arr[2] != '*'
				(0..9).each do |i|
					file.puts i.to_s arr[1].to_s + arr[2].to_s
				end
			elsif arr[0] != '*' and arr[1] == '*' and arr[2] == '*'
				(0..9).each do |i|
					(0..9).each do |j|
						file.puts arr[0].to_s + i.to_s + j.to_s
					end
				end
			elsif arr[0] != '*' and arr[1] == '*' and arr[2] != '*'
				(0..9).each do |i|
					file.puts arr[0].to_s + i.to_s + arr[2].to_s
				end
			elsif arr[0] != '*' and arr[1] != '*' and arr[2] == '*'
				(0..9).each do |i|
					file.puts arr[0].to_s + arr[1].to_s + i.to_s
				end
			elsif arr[0] != '*' and arr[1] != '*' and arr[2] != '*'
				raise "\n\n########################################\n\nBöyle pattern olmaz olum! Bunun için pattern'a ihtiyacın yok.\n\n########################################\n\n"
			end
		elsif arr.length == 4
			if arr[0] == '*' and arr[1] == '*' and arr[2] == '*' and arr[3] == '*'
				raise "\n\n########################################\n\nBöyle pattern olmaz olum! Bunun için pattern'a ihtiyacın yok.\n\n########################################\n\n"
			
			elsif arr[0] == '*' and arr[1] == '*' and arr[2] == '*' and arr[3] != '*'
				(0..9).each do |i|
					(0..9).each do |j|
						(0..9).each do |k|
							file.puts i.to_s + j.to_s + k.to_s + arr[3].to_s
						end
					end
				end
			elsif arr[0] == '*' and arr[1] == '*' and arr[2] != '*' and arr[3] == '*'
				(0..9).each do |i|
					(0..9).each do |j|
						(0..9).each do |k|
							file.puts i.to_s + j.to_s + arr[2].to_s + k.to_s
						end
					end
				end
			elsif arr[0] == '*' and arr[1] == '*' and arr[2] != '*' and arr[3] != '*'
				(0..9).each do |i|
					(0..9).each do |j|
						file.puts i.to_s + j.to_s + arr[2].to_s + arr[3].to_s
					end
				end
			elsif arr[0] == '*' and arr[1] != '*' and arr[2] == '*' and arr[3] == '*'
				(0..9).each do |i|
					(0..9).each do |j|
						(0..9).each do |k|
							file.puts i.to_s + arr[1].to_s + j.to_s + k.to_s
						end
					end
				end
			elsif arr[0] == '*' and arr[1] != '*' and arr[2] == '*' and arr[3] != '*'
				(0..9).each do |i|
					(0..9).each do |j|
						file.puts i.to_s + arr[1].to_s + j.to_s + arr[3].to_s
					end
				end
			elsif arr[0] == '*' and arr[1] != '*' and arr[2] != '*' and arr[3] == '*'
				(0..9).each do |i|
					(0..9).each do |j|
						file.puts i.to_s + arr[1].to_s + arr[2].to_s + j.to_s
					end
				end
			elsif arr[0] == '*' and arr[1] != '*' and arr[2] != '*' and arr[3] != '*'
				(0..9).each do |i|
					file.puts i.to_s + arr[1].to_s + arr[2].to_s + arr[3].to_s
				end
			elsif arr[0] != '*' and arr[1] == '*' and arr[2] == '*' and arr[3] == '*'
				(0..9).each do |i|
					(0..9).each do |j|
						(0..9).each do |k|
							file.puts arr[0].to_s + i.to_s + j.to_s + k.to_s
						end
					end
				end
			elsif arr[0] != '*' and arr[1] == '*' and arr[2] == '*' and arr[3] != '*'
				(0..9).each do |i|
					(0..9).each do |j|
						file.puts arr[0].to_s + i.to_s + j.to_s + arr[3].to_s
					end
				end
			elsif arr[0] != '*' and arr[1] == '*' and arr[2] != '*' and arr[3] == '*'
				(0..9).each do |i|
					(0..9).each do |j|
						file.puts arr[0].to_s + i.to_s + arr[2].to_s + j.to_s
					end
				end
			elsif arr[0] != '*' and arr[1] == '*' and arr[2] != '*' and arr[3] != '*'
				(0..9).each do |i|
					file.puts arr[0].to_s + i.to_s + arr[2].to_s + arr[3].to_s	
				end
			elsif arr[0] != '*' and arr[1] != '*' and arr[2] == '*' and arr[3] == '*'
				(0..9).each do |i|
					(0..9).each do |j|
						file.puts arr[0].to_s + arr[1].to_s + i.to_s + j.to_s
					end
				end
			elsif arr[0] != '*' and arr[1] != '*' and arr[2] == '*' and arr[3] != '*'
				(0..9).each do |i|
					file.puts arr[0].to_s + arr[1].to_s + i.to_s + arr[3].to_s
				end
			elsif arr[0] != '*' and arr[1] != '*' and arr[2] != '*' and arr[3] == '*'
				(0..9).each do |i|
					file.puts arr[0].to_s + arr[1].to_s + arr[2].to_s + i.to_s
				end
			elsif arr[0] != '*' and arr[1] != '*' and arr[2] != '*' and arr[3] != '*'
				raise "\n\n########################################\n\nBöyle pattern olmaz olum! Bunun için pattern'a ihtiyacın yok.\n\n########################################\n\n"
			end

		elsif arr.length == 5
			if arr[0] == '*' and arr[1] == '*' and arr[2] == '*' and arr[3] == '*' and arr[4] == '*'
				(0..9).each do |i|
					(0..9).each do |j|
						(0..9).each do |k|
							(0..9).each do |x|
								(0..9).each do |y|
									file.puts i.to_s + j.to_s + k.to_s + x.to_s + y.to_s
								end
							end
						end
					end
				end

			elsif arr[0] == '*' and arr[1] == '*' and arr[2] == '*' and arr[3] == '*' and arr[4] != '*'
				(0..9).each do |i|
					(0..9).each do |j|
						(0..9).each do |k|
							(0..9).each do |x|
								file.puts i.to_s + j.to_s + k.to_s + x.to_s + arr[4].to_s
							end
						end
					end
				end


			elsif arr[0] == '*' and arr[1] == '*' and arr[2] == '*' and arr[3] != '*' and arr[4] == '*'

				(0..9).each do |i|
					(0..9).each do |j|
						(0..9).each do |k|
							(0..9).each do |x|
								file.puts i.to_s + j.to_s + k.to_s + arr[3].to_s + x.to_s 
							end
						end
					end
				end

			elsif arr[0] == '*' and arr[1] == '*' and arr[2] == '*' and arr[3] != '*' and arr[4] != '*'

				(0..9).each do |i|
					(0..9).each do |j|
						(0..9).each do |k|
							file.puts i.to_s + j.to_s + k.to_s + arr[3].to_s + arr[4].to_s
						end
					end
				end

			elsif arr[0] == '*' and arr[1] == '*' and arr[2] != '*' and arr[3] == '*' and arr[4] == '*'
				(0..9).each do |i|
					(0..9).each do |j|
						(0..9).each do |k|
							(0..9).each do |x|
								file.puts i.to_s + j.to_s + arr[2].to_s + k.to_s + x.to_s 
							end
						end
					end
				end

			elsif arr[0] == '*' and arr[1] == '*' and arr[2] != '*' and arr[3] == '*' and arr[4] != '*'

				(0..9).each do |i|
					(0..9).each do |j|
						(0..9).each do |k|
							file.puts i.to_s + j.to_s + arr[2].to_s + k.to_s + arr[4].to_s
						end
					end
				end


			elsif arr[0] == '*' and arr[1] == '*' and arr[2] != '*' and arr[3] != '*' and arr[4] == '*'
				(0..9).each do |i|
					(0..9).each do |j|
						(0..9).each do |k|
							file.puts i.to_s + j.to_s + arr[2].to_s + arr[3].to_s + k.to_s
						end
					end
				end

			elsif arr[0] == '*' and arr[1] == '*' and arr[2] != '*' and arr[3] != '*' and arr[4] != '*'

				(0..9).each do |i|
					(0..9).each do |j|
						(0..9).each do |k|
							file.puts i.to_s + j.to_s + arr[2].to_s + arr[3].to_s + arr[4].to_s
						end
					end
				end

			elsif arr[0] == '*' and arr[1] != '*' and arr[2] == '*' and arr[3] == '*' and arr[4] == '*'

				(0..9).each do |i|
					(0..9).each do |j|
						(0..9).each do |k|
							(0..9).each do |l|
								file.puts i.to_s + arr[1].to_s + j.to_s + k.to_s + l.to_s
							end
						end
					end
				end


			elsif arr[0] == '*' and arr[1] != '*' and arr[2] == '*' and arr[3] == '*' and arr[4] != '*'

				(0..9).each do |i|
					(0..9).each do |j|
						(0..9).each do |k|
							file.puts i.to_s + arr[1].to_s + j.to_s + k.to_s + arr[4].to_s
						end
					end
				end


			elsif arr[0] == '*' and arr[1] != '*' and arr[2] == '*' and arr[3] != '*' and arr[4] == '*'

				(0..9).each do |i|
					(0..9).each do |j|
						(0..9).each do |k|
							file.puts i.to_s + arr[1].to_s + j.to_s + arr[3].to_s + k.to_s
						end
					end
				end

			elsif arr[0] == '*' and arr[1] != '*' and arr[2] == '*' and arr[3] != '*' and arr[4] != '*'

				(0..9).each do |i|
					(0..9).each do |j|
						file.puts i.to_s + arr[1].to_s + j.to_s + arr[3].to_s + arr[4].to_s	
					end
				end

			elsif arr[0] == '*' and arr[1] != '*' and arr[2] != '*' and arr[3] == '*' and arr[4] == '*'

				(0..9).each do |i|
					(0..9).each do |j|
						(0..9).each do |k|
							file.puts i.to_s + arr[1].to_s + arr[2].to_s + j.to_s + k.to_s	
						end
					end
				end


			elsif arr[0] == '*' and arr[1] != '*' and arr[2] != '*' and arr[3] == '*' and arr[4] != '*'

				(0..9).each do |i|
					(0..9).each do |j|
						file.puts i.to_s + arr[1].to_s + arr[2].to_s + j.to_s + arr[4].to_s
					end
				end

			elsif arr[0] == '*' and arr[1] != '*' and arr[2] != '*' and arr[3] != '*' and arr[4] == '*'

				(0..9).each do |i|
					(0..9).each do |j|
						file.puts i.to_s + arr[1].to_s + arr[2].to_s + arr[3].to_s + j.to_s
					end
				end

			elsif arr[0] == '*' and arr[1] != '*' and arr[2] != '*' and arr[3] != '*' and arr[4] != '*'

				(0..9).each do |i|
					(0..9).each do |j|
						file.puts i.to_s + arr[1].to_s + arr[2].to_s + arr[3].to_s + arr[4].to_s
					end
				end

			elsif arr[0] != '*' and arr[1] == '*' and arr[2] == '*' and arr[3] == '*' and arr[4] == '*'

				(0..9).each do |i|
					(0..9).each do |j|
						(0..9).each do |k|
							(0..9).each do |x|
								file.puts arr[0].to_s + i.to_s + j.to_s + k.to_s + x.to_s
							end
						end
					end
				end

			elsif arr[0] != '*' and arr[1] == '*' and arr[2] == '*' and arr[3] == '*' and arr[4] != '*'

				(0..9).each do |i|
					(0..9).each do |j|
						(0..9).each do |k|
							file.puts arr[0].to_s + i.to_s + j.to_s + k.to_s + arr[4].to_s
						end
					end
				end

			elsif arr[0] != '*' and arr[1] == '*' and arr[2] == '*' and arr[3] != '*' and arr[4] == '*'

				(0..9).each do |i|
					(0..9).each do |j|
						(0..9).each do |k|
							file.puts arr[0].to_s + i.to_s + j.to_s + arr[3].to_s + k.to_s
						end
					end
				end


			elsif arr[0] != '*' and arr[1] == '*' and arr[2] == '*' and arr[3] != '*' and arr[4] != '*'

				(0..9).each do |i|
					(0..9).each do |j|
						file.puts arr[0].to_s + i.to_s + j.to_s + arr[3].to_s + arr[4].to_s
					end
				end

			elsif arr[0] != '*' and arr[1] == '*' and arr[2] != '*' and arr[3] == '*' and arr[4] == '*'

				(0..9).each do |i|
					(0..9).each do |j|
						(0..9).each do |k|
							file.puts arr[0].to_s + i.to_s + arr[2].to_s + j.to_s + k.to_s
						end
					end
				end


			elsif arr[0] != '*' and arr[1] == '*' and arr[2] != '*' and arr[3] == '*' and arr[4] != '*'

				(0..9).each do |i|
					(0..9).each do |j|
						file.puts arr[0].to_s + i.to_s + arr[2].to_s + j.to_s + arr[4].to_s
					end
				end

			elsif arr[0] != '*' and arr[1] == '*' and arr[2] != '*' and arr[3] != '*' and arr[4] == '*'

				(0..9).each do |i|
					(0..9).each do |j|
						file.puts arr[0].to_s + i.to_s + arr[2].to_s + arr[3].to_s + j.to_s	
					end
				end

			elsif arr[0] != '*' and arr[1] == '*' and arr[2] != '*' and arr[3] != '*' and arr[4] != '*'

				(0..9).each do |i|
					file.puts arr[0].to_s + i.to_s + arr[2].to_s + arr[3].to_s + arr[4].to_s	
				end	

			elsif arr[0] != '*' and arr[1] != '*' and arr[2] == '*' and arr[3] == '*' and arr[4] == '*'

				(0..9).each do |i|
					(0..9).each do |j|
						(0..9).each do |k|
							file.puts arr[0].to_s + arr[1].to_s + i.to_s + j.to_s + k.to_s	
						end
					end
				end

			elsif arr[0] != '*' and arr[1] != '*' and arr[2] == '*' and arr[3] == '*' and arr[4] != '*'

				(0..9).each do |i|
					(0..9).each do |j|
						file.puts arr[0].to_s + arr[1].to_s + i.to_s + j.to_s + arr[4].to_s	
					end
				end

			elsif arr[0] != '*' and arr[1] != '*' and arr[2] == '*' and arr[3] != '*' and arr[4] == '*'

				(0..9).each do |i|
					(0..9).each do |j|
						(0..9).each do |k|
							file.puts arr[0].to_s + arr[1].to_s + i.to_s + arr[3].to_s + k.to_s	
						end
					end
				end

			elsif arr[0] != '*' and arr[1] != '*' and arr[2] == '*' and arr[3] != '*' and arr[4] != '*'

				(0..9).each do |i|
					file.puts arr[0].to_s + arr[1].to_s + i.to_s + arr[3].to_s + arr[4].to_s	
				end

			elsif arr[0] != '*' and arr[1] != '*' and arr[2] != '*' and arr[3] == '*' and arr[4] == '*'

				(0..9).each do |i|
					(0..9).each do |j|
						file.puts arr[0].to_s + arr[1].to_s + arr[2].to_s + i.to_s + j.to_s	
					end
				end


			elsif arr[0] != '*' and arr[1] != '*' and arr[2] != '*' and arr[3] == '*' and arr[4] != '*'
				(0..9).each do |i|
					(0..9).each do |j|
						file.puts arr[0].to_s + arr[1].to_s + arr[2].to_s + i.to_s + arr[4].to_s	
					end
				end
			elsif arr[0] != '*' and arr[1] != '*' and arr[2] != '*' and arr[3] != '*' and arr[4] == '*'
				(0..9).each do |i|
						file.puts arr[0].to_s + arr[1].to_s + arr[2].to_s + arr[3].to_s + i.to_s
				end
			elsif arr[0] != '*' and arr[1] != '*' and arr[2] != '*' and arr[3] != '*' and arr[4] != '*'
				raise "Böyle pattern olmaz."

			end
		end
	end
end