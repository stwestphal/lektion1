require 'csv'


segmentArray = Array.new

CSV.foreach ('./Close.io_nodes_2016_10.csv') do |row|
  myline = row.to_s
  mydumparray = myline.split(",")

  # Callagent
  # Datum (Berlin)
  # Lead-Id
  # Segment-Type ***
  # Dauer(Minuten)
  # Note

  segmentArray.push(mydumparray[3])

end

ausgabeArray=segmentArray.each_with_object(Hash.new(0)) { |o, h| h[o] += 1 }

puts ausgabeArray.sort

puts "Gesamt Ergebnis #{ausgabeArray.length}"

puts"**********************"

#    CSV.foreach("./Close.io_nodes_2016_10.csv", quote_char: '"', col_sep: ';', row_sep: :auto, headers: true) do |row|
#      puts row[0]
#      puts row['xxx']
#    end

#titel="hallo"
#aktuellesJahr =2016
#geburt =1963

#ergebnis = aktuellesJahr % geburt

#if ergebnis>30
#text2=" ok"
#else
#text2=" nee"
#end

# commentar: ergebnis-'schublade' wird zum string 'addiert' ;)
#text = titel+" #{ergebnis}"+ text2+'!'

#puts text

