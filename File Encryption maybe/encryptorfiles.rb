
  #===================================#
  # EncrypTOR an attept at encryption #
  #===================================#
  def encrypt(str,key1="ABCDEFGHIJKLMNOPQRSTUVWXYZ",key2="1234567890",key3="@#$_&-+()/",moresec=false)
    puts("Starting encryption...")
    puts("**********************")
    puts("Keys inputted:        ")
    puts(key1)
    puts(key2)
    puts(key3)
    puts("**********************")
    if moresec
      puts("You chose to randomise your keys")
      puts("**********************")
      puts("New keys:             ")
      key1 = key1.shuffle
      key1 = key1.join
      puts("Main key \n" + key1)
      key2 = key2.shuffle
      key2 = key2.join
      puts("First sub key \n" + key2)
      key3 = key3.shuffle
      key3 = key3.join
      puts("Second sub key \n" + key3)
      puts("MAKE SURE TO KEEP THESE KEYS SAFE, THERE WILL BE NO RECOVERING THE FILE/STRING IF YOU LOSE THEM")
      puts("**********************")
    end
    puts("*       Result       *")
    puts("**********************")
    str = sprintf(str)
    str = File.open(str,"wr")
    f = str.read
    yo = f.tr(key1,key1.reverse)
    yo = yo.tr(key2,key3)
    str.write(yo)
    return str
  end

  def decrypt(basestr,key1,key2,key3)
    puts("Starting decryption...")
    puts("**********************")
    puts("Keys inputted:        ")
    puts(key1)
    puts(key2)
    puts(key3)
    str = basestr
    str = sprintf(str)
    str = File.open(str,"wr")
    f = str.read
    yo = f.tr(key3,key2)
    yo = yo.tr(key1,key1.reverse)
    str.write(yo)
    puts("**********************")
    puts("*       Result       *")
    puts("**********************")
    return str
  end
    
puts("+---------------------------------+")
puts("|EncrypTOR, encryption to a degree|")
puts("+---------------------------------+")
puts("")
puts("What do you want to do? Encrypt (e) Decrypt (d)")
puts("")
method = gets.chomp
if method == "e"
  puts("")
  puts("Input filepath")
  puts("")
  strs = gets.chomp
  keys = []
  yo = 0
  for i in ["main","first sub","second sub"]
    puts("Input "+i+" key")
    puts("")
    keys[yo] = gets.chomp
    yo += 1
  end
  system("clear")
  x = encrypt(strs,keys[0],keys[1],keys[2])
  puts(x)
elsif method == "d"
  puts("")
  puts("Input encrypted filepath")
  puts("")
  strs = gets.chomp
  keys = []
  yo = 0
  for i in ["main","first sub","second sub"]
    puts("Input "+i+" key")
    puts("")
    keys[yo] = gets.chomp
    yo += 1
  end
  system("cls")
  x = decrypt(strs,keys[0],keys[1],keys[2])
  puts(x)
else
  puts("invalid method --------- :) ima eval it")
  eval(method)
end


#f crc ri

#abcdefghijklmnopqrstuvwxyz
#makdbdigcbwijcm
#gewudhcibacsjdmsa
