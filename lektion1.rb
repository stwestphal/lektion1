require 'csv'
require 'pry'

segmentArray = Array.new

# file holen und die dritte spalte in ein array (die anderen spalten interessieren hier nicht)
CSV.foreach("./Close.io_nodes_2016_10.csv",:headers=>false) do |row|

  myline = row.to_a   #to_a umwandeln in array: spart split und escapes-muell!

  #mydumparray = myline.split(",")

  # Callagent
  # Datum (Berlin)
  # Lead-Id
  # Segment-Type ***
  # Dauer(Minuten)
  # Note

  segmentArray.push(myline[3])

end

# namen im array zaehlen und zaehler im hash
ausgabeHash = {}
ausgabeArray=segmentArray.each do |item|

  ausgabeHash[item] = 0 if ausgabeHash[item].nil?
  ausgabeHash[item] += 1

end


#binding.pry    #stoppt ausführung


#******fileausgabe***********

printf "%-30s %s\n","Segment-Type","Anzahl"
ausgabeHash.drop(1).sort.each do |key, value|

  printf("%-30s %s\n",key, value)
end
printf("%-30s %s\n","Gesamt Ergebnis",ausgabeArray.length-1)


#***********************


puts"**********************"



