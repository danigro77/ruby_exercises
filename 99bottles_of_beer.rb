#!/usr/local/bin/ruby
# coding: utf-8
require "active_support/inflector" # required for pluralizer

def init 
  @beers = ["Altenmunster Oktoberfest", "Altenmunster Winter Double Bock", "Ayinger Brau-Weisse", "Ayinger Dunkel Beer", "Ayinger Jahrhundert-bier 16.9", "Ayinger Oktoberfest Marzen", "Ayinger Ur-Weisse", "Ayinger Weizen-bock", "Beck's Beer", "Beck's Beer", "Beck's Beer", "Beck's Beer Dark", "Beck's Beer Oktoberfest", "Beck's Haake Beck Non-Alcoholic Beer", "Beck's Oktoberfest", "Beck's Premier Light", "Beck's Premier Light", "Bitburger Drive N/A", "Bitburger Pils", "Bitburger Pils", "Celebrator Dopplebock", "Clausthaler Golden Amber Alcohol Free ", "Clausthaler Pilsner Alcohol Free", "Dab Original Lager", "DAB Original Lager", "Erdinger Dunkler Weizen Bock", "Erdinger Hefe-Weiss", "Erdinger Oktoberfest 6-pk", "Erdinger Pikantus Weizenbock", "Erdinger Weissbier N/A", "Franziskaner Hefe-Weissbier", "Franziskaner Hefe-Weissbier", "Franziskaner Hefe-Weisse", "Franziskaner Hefeweizen Dark", "Hacker-Pschorr Oktoberfest", "Hacker-Pschorr Weisse", "Hofbrau Dunkel", "Hofbrau Munchen Hefeweizen", "Hofbrau Munchen Hefeweizen", "Hofbrau Oktoberfest", "Hofbrau Original Lager", "Hofbrau Original Lager", "Hopf Dunkel Weisse", "Hopf Helle Weisse", "Hopf Weisser Bock", "Jever Pilsener", "Konig Pilsener", "Kostritzer Black Beer", "Kulmbacher Pilsner", "Monchshof Kellerbier 5 Ltr Keg", "Monchshof Schwarzbier", "Paulaner Hefe-Weizen", "Paulaner Hefe-Weizen", "Paulaner Oktoberfest", "Paulaner Oktoberfest", "Paulaner Oktoberfest", "Paulaner Original Munich Lager", "Paulaner Premium Pils", "Paulaner Salvator Doppelbock", "Paulaner Salvator Doppelbock", "Paulaner Thomasbrau", "Pinkus Organic Pilsner", "Radeberger Holiday Gift Pack", "Radeberger Pilsner", "Radeberger Pilsner", "Reutberger Export Dunkel", "Reutberger Export Helle", "Schneider Aventinus Wheat-Doppelbock", "Schneider Edel-Weisse Organic", "Schneider Eisbock", "Schneider Hopfen-weisse", "Schneider Weisse Hefe-Weizenbier", "Schneider Weisse Nelson Sauvin", "Spaten Dunkel", "Spaten Marzen Oktoberfest", "Spaten Oktoberfest", "Spaten Optimator Dark", "Spaten Optimator Dark", "Spaten Optimator Dark", "Spaten Premium Lager", "Spaten Premium Lager", "Spaten Premium Lager 5 Liter", "St Pauli Girl", "St Pauli Girl", "St Pauli Girl Dark", "St Pauli Girl N/A", "Tucher Dunkles Hefe Weizen", "Tucher Helles Hefe Weizen", "Tucher Kristall Weizen", "Warsteiner Alcohol Free", "Warsteiner Dunkel", "Warsteiner Oktoberfest", "Warsteiner Premium", "Warsteiner Premium", "Weihenstephan Hefe-Dark", "Weihenstephan Hefe-Weiss", "Weihenstephan Hefe-Weiss", "Weihenstephan Korbinian", "Weihenstephan Kristall"]

  # beers aquired using the following javascript to manually 'scrape' bevmo.com german beer page (http://www.bevmo.com/Shop/ProductList.aspx?N=41+183&area=Beer&No=0&Ns=Name%7c0&ShowAll=true): 
  # var a = $("td.ProductListItemMiddleCol").find('a.ProductListItemLink')
  # var beer_array = []
  #   for (var i = 0; i < 99; i++) { 
  #   beer_array.push(a[i].text); 
  # };

  beer_song

end


def beer_song
  num_bottles = @beers.count
  if num_bottles != 1
    bottle = "bottle".pluralize 
  else
    bottle = "bottle"
  end
  puts "#{num_bottles} #{bottle} of German beer on the wall"
  puts "#{num_bottles} #{bottle} of German beer"
  puts "Take a #{@beers.shift} down and pass it around..."
  if @beers.empty? 
    puts "No more bottles of German beer on the wall!!!"
    puts "You really must be German...all the beer is gone!!" 
    return
  else
    puts "#{@beers.count} #{bottle} of German beer on the wall!!!"
    beer_song
  end
end

init
