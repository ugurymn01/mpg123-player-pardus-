# MPG123 Player (Pardus)
Bu proje, Linux tabanlı bir ses oynatıcı olan mpg123 aracını Pardus Linux üzerinde daha kullanıcı dostu hale getirmek için geliştirilmiştir. Proje, kullanıcıya hem grafiksel (GUI) hem de terminal tabanlı (TUI) iki farklı arayüz seçeneği sunar.

## Kullanılan Teknolojiler
- Bash (Shell Script)
- mpg123 – MP3 ve radyo oynatma
- whiptail – Terminal arayüz (TUI)
- YAD (Yet Another Dialog) – Grafik arayüz (GUI)

## Özellikler
- Yerel MP3 dosyası oynatma
- İnternet radyo yayınlarını dinleme
- Terminal tabanlı arayüz (whiptail)
- Grafik arayüz (YAD)
- Kullanıcı dostu menü yapısıyla kolay kullanım imkanı

# Kurulum
  Öncelikle kullandığımız işletim sistemi olan **PARDUS** işletim sistemini kurmakla başlıyoruz. Kendi bilgisayarınızda bu işletim sistemi yoksa bunu kullanmak için sanal makina indirip kullanılmasını öneririm bunun için ilk olarak bu sanal makinayı indiriyoruz:

[Virtual Box Kurulum linki](https://www.oracle.com/tr/virtualization/virtualbox/)
  
  Bu kurulumun hemen ardından Pardus işletim sistemini indirmek için linkimiz ise aşağıdadır:

[PARDUS dosyası](https://pardus.org.tr/)
  
  Daha sonra virtual box uygulaması üzerinden pardus işetim sistemi seçilerek sanal makina kurulumunu tamamlıyoruz.

## Uygulama Kurulumu Ve Çalıştırma
  İlk olarak terminali açıp uygulamayı kullanmak için bazı bileşenleri indiriyoruz. Bu bileşenleri aşağıdan direk kopyalayıp kullaabilirsiniz.
```bash
sudo apt update
sudo apt install mpg123 whiptail yad
```
  Gereksinimleri kurduktan sonra ise uygulamamız için gerekli indirmeleri yapıyoruz. İlk olarak projeyi klonlayalım
```bash
git clone https://github.com/ugurymn01/mpg123-player-pardus-
```
  Konlama işleminden sonra çalıştırmak için şu kodları adım adım çalıştırıyoruz. ./main.sh ile uygulamızı başlatıyoruz ve kullanıma başlıyoruz.
```bash
cd mpg123-player-pardus-
chmod +x main.sh
chmod +x tui/tui.sh
chmod +x gui/gui.sh
./main.sh
```
# Uygulama Tanıtımı
  Uygulamamızda bizi ilk olarak terminal üzerinden mi grafiksel olarak mı kullanmamızı tercih deceğimiz menü ekranı karşılıyor.

