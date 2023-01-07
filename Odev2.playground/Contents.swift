import UIKit

//Soru 1

class KenarSayisi {
    var ks: Int?
    
    func icAcilarToplami(ks: Int) -> Int {
        if ks > 2 {
            let islem = ((ks - 2) * 180 )
            print("İc acılar toplamı : \(islem) derecedir")
            return islem
        }else{
            print("Minimum 3 giriniz.")
            return ks
        }
        
    }
    
}

var sonuc = KenarSayisi()
sonuc.icAcilarToplami(ks: 10)
sonuc.icAcilarToplami(ks: 2)

//Soru 2

class MaasHesabi {
    var gun: Int?
    
    func maasHesabi(gun: Int) -> Int {
        let islem = gun * 80
        if islem > 1600 {
            let mesai = (gun - 20) * 160 + 1600
            print("Mesai ücretleriyle beraber \(mesai)₺ kazandınız.")
            return mesai
        }else {
            print("Mesai yok. Kazanılan ücret \(islem)₺'dir.")
            return islem
        }
        
        
    }
   
    
}
var maas = MaasHesabi()
maas.maasHesabi(gun: 21)

maas.maasHesabi(gun: 12)

//Soru 3

class Kota {
    var kota: Int?
    
    func hesaplama(kota: Int) -> Int {
        let ucret = kota * 2
        
        if ucret > 100 {
            let ucret = (kota - 50 ) * 4 + 100
            print("Kota kullanım tutarınız aşım ücreti ile beraber \(ucret)₺'dir")
            return ucret
        }
        else{
            print("Kota kullanım tutarınız \(ucret)₺'dir")
            return ucret
        }
    }
}
var kota = Kota()
kota.hesaplama(kota: 50)
kota.hesaplama(kota: 51)

//Soru 4


class Fahrenhiet {
    var celcius: Int?
    
    func change(celcius: Double) -> Double {
        let fahrenhiet = celcius * 1.8 + 32
        
        print("\(celcius) celcius = \(fahrenhiet) fahrenheit")
        return fahrenhiet
        
    }
}

var fahrenhiet = Fahrenhiet()
fahrenhiet.change(celcius: 100)

//Soru 5

class Dikdortgen {
    var x: Int?
    var y: Int?
    
    
    func cevre(x: Int, y: Int){
        let cevre = 2 * (x + y)
        print("Dikdörtgenin cevre uzunlugu toplamı = \(cevre).")
    }
}
var f = Dikdortgen()
f.cevre(x: 10, y: 5)

//Soru 6

func faktoriyel( sayi : Int ) -> Int {
        var x = 1
        
        for i in 1...sayi {
            x *= i
        }
        return x
        
    }

    print ( faktoriyel(sayi: 5))
    


//Soru 7

func buraya(kelimegirin: String) -> Int{
    
    var x = 0
    
    for i in kelimegirin {
        if i == "a" {
            x += 1
        }
    }
    print("Metnin içinde \(x) tane 'a' harfi bulunuyor.")
    return x
}

buraya(kelimegirin: "Bunu yaparken biraz zorlandım ama güzeldi :)")
