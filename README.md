# **Hastane Uygulaması**

### Amaç :

- **Uygulama hasta ile doktoru buluşturan bir platformdur.**
- **Hasta bölüm üzerinden veya anabilim dalı üzerinden doktor arayabilir. Ya da direk arama kutusunu kullanabilir.**
- **Hasta aradığı doktoru bulduktan sonra , doktorun profiline gidip ona mesaj gönderebilir ve doktor da bu mesajı görebilir. Ayrıca doktorun profilinden detaylı bilgiye ulaşabilir.**
- **Kısa bir gif :**
    
    ![]()
    

### Kullanım :

- **Öncelikle hasta uygulamaya giriş için kayıt olmalıdır. Hasta girişi ekranına tıkladıktan sonra hasta için giriş ekranına ulaşır. Buradan kayıt ol yazısına tıklayarak kayıt sayfasına yönlendirilir.**
- **Hasta kayıt olmak için bilgilerini girer. Resim seçimini yapar ve uygulamaya kayıt olur.**
- **Kayıt başarılı ise kullanıcı ana sayfaya yönlendirilir. Burada sağ üst köşeden  ︙  butonuna tıklayarak kendi bilgilerini görebilir ve isterse daha sonrasında profil fotoğrafını değiştirebilir.**
- **Kullanıcı istediği doktoru bulmak için arama kutusunu , anabilim ve uzmanlık panellerini ya da en altta doktor panelini kullanabilir.**
- **Aradığı doktoru bulduktan sonra onun profili üzerinde  💬  butonuna tıklayarak onunla iletişime geçebilir.**
- **Bu butona tıklandığında hasta ilgili doktor ile yapılacak olan mesajlaşma sayfasına yönlendirilir. Burada karşı tarafın online olup olmadığını görebilir.**
- **Bu sayfada altta bulunan panele istediği mesajı girdikten sonra gönderme butonu ile mesajı karşıya iletir.**

---

- **Doktorlar uygulamaya girerken kullanıcı kaydı yapmalarına gerek yoktur. Onlar kendi id bilgileri ile girerler.**
- **Bu id bilgileri uygulamaya kaydedilmiştir ve her doktorun kendine ait id’si vardır.**


### Teknik Kısım :

Uygulama ***Flutter*** kullanılarak yapılmıştır.  Mesajlaşma kısmında ***Websocket*** , backend tarafında ise ***Firebase*** ve ***Node.js*** kullanılmıştır. 

![Screenshot_13](https://user-images.githubusercontent.com/56133248/156839244-abdc8496-a355-4ec6-9de8-12fae520ab20.png)

