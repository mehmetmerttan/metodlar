import UIKit

//Kenar sayısına göre iç açıların sonucu veren metod
func icAcilarToplami(kenarSayisi: Int) -> Int? {
    guard kenarSayisi >= 3 else {
        print("Kenar sayısı 3 veya daha fazla olmalıdır.")
        return nil
    }
    let toplam = (kenarSayisi - 2) * 180
    return toplam
}

if let toplam = icAcilarToplami(kenarSayisi: 6) {
    print("İç açılar toplamı: \(toplam)")
}


//Maaş hesabı ve elde edilen değeri gösteren metod
func maasHesapla(gunSayisi: Int) -> Double{
    let calismaSaatiGunu = 8.0
    let saatUcreti = 10.0
    let mesaiUcreti = 20.0
    let mesaiLimit = 160.0
    
    let toplamCalismaSaati = Double(gunSayisi) * calismaSaatiGunu
    var toplamMaas: Double = 0.0
    
    if toplamCalismaSaati <= mesaiLimit{
        toplamMaas = toplamCalismaSaati * saatUcreti
    }else{
        let normalCalismasaati = mesaiLimit
        let mesaiSaati = toplamCalismaSaati - mesaiLimit
        toplamMaas = (normalCalismasaati * saatUcreti) + (mesaiSaati * mesaiUcreti)
    }
    
    return toplamMaas
}

let gunSayisi = 46
let maas = maasHesapla(gunSayisi: gunSayisi)
print("Maaş: \(maas)₺")


//Kota miktarına göre ücret hesaplama metodu
func ucretHesapla(kotaMiktariGB: Double) -> Double {
    let temelKota = 50.0
    let temelUcret = 100.0
    let kotaAsimUcreti = 4.0

    var toplamUcret = temelUcret

    if kotaMiktariGB > temelKota {
        let asimMiktari = kotaMiktariGB - temelKota
        toplamUcret += asimMiktari * kotaAsimUcreti
    }
    
    return toplamUcret
}

let kotaMiktari = 68.0
let ucret = ucretHesapla(kotaMiktariGB: kotaMiktari)
print("Fatura ücreti: \(ucret)₺")


//dereceyi fahrenhiet'a dönüştürme
func dereceFahrenhiet(dereceC: Double) -> Double {
    let dereceF = (dereceC * 1.8) + 32
    return dereceF
}

let celsiusDerece = 30.0
let fahrenheitDerece = dereceFahrenhiet(dereceC: celsiusDerece)
print("\(celsiusDerece)°C = \(fahrenheitDerece)°F")


//dikdörtgen çevre hesaplama
func dikdortgenCevre(genislik: Double, yukseklik: Double) -> Double {
    return 2 * (genislik + yukseklik)
}

let genislik = 5.0
let yukseklik = 3.0
let cevre = dikdortgenCevre(genislik: genislik, yukseklik: yukseklik)
print("Dikdörtgenin çevresi: \(cevre)")


//faktöriyel değeri hesaplama
func faktoriyel(_ n: Int) -> Int {
    if n == 0 {
        return 1
    } else {
        return n * faktoriyel(n - 1)
    }
}

let sayi = 5
let sonuc = faktoriyel(sayi)
print("\(sayi)! = \(sonuc)")


//kelime içinde kaç adet a aharfi var
func aHarfSay(kelime: String) -> Int {
    var sayac = 0
    for harf in kelime {
        if harf == "a" || harf == "A" {
            sayac += 1
        }
    }
    return sayac
}

let kelime = "Kara"
let sonuc1 = aHarfSay(kelime: kelime)
print("\(sonuc1) adet 'a' harfi var.")

