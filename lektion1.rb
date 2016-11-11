titel="hallo"
aktuellesJahr =2016
geburt =1963

ergebnis = aktuellesJahr % geburt

if ergebnis>30
text2=" ok"
else
text2=" nee"
end

# commentar: ergebnis-'schublade' wird zum string 'addiert' ;)
text = titel+" #{ergebnis}"+ text2+'!'

puts text

