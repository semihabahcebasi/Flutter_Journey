# 🚀 Gün 8 plus: Null Safety ve Koşullu Widget Kullanımı #
Bugün Flutter'da değişkenlerin null (boş) olma durumlarını nasıl yöneteceğimizi ve ekran üzerinde bu durumlara göre nasıl farklı widget'lar gösterebileceğimizi öğrendim.

**1. Null Safety Mantığı ve Operatörler**
Dart dilinde bir değişkenin null değer alabileceğini belirtmek ve bu durumu güvenli bir şekilde yönetmek için belirli operatörler kullanılır:


* ? (Nullable): Değişkenin null olabileceğini belirtir. 


Örnek: List? veriler;


* ! (Bang Operator): Değişkenin o an null olmadığına %100 emin olduğumuzda kullanılır. 

##### Örnek: Text(veriler![0]) (Burada "bu liste kesinlikle dolu" demiş oluyoruz).


* ?? (Default Value): Eğer soldaki değer null ise, sağdaki varsayılan değeri kullanır. 

##### Örnek: Text(veriler?[0] ?? "Liste boş")


* ??= (Null-Aware Assignment): Eğer değişken null ise ona yeni bir değer atar. 

##### Örnek: veriler ??= ["Varsayılan Eleman"];

**2. Widget İçinde Koşullu Gösterim (If-Else / Ternary)**
Ekranda verinin olup olmamasına göre farklı widget'lar göstermek için Ternary Operator (koşul ? doğru : yanlış) mantığını kullanabiliriz:

* Dart
// Değişken null ise farklı, doluysa farklı widget gösterimi
veriler == null 
    ? Text("Liste boş") 
    : Text(veriler?[0] ?? "Veri bulunamadı"),


**3. Kod Örnekleri ve Analizler**
Boş Liste Tanımlama ve Yazdırma
Bir listeyi null olarak tanımlayıp ekranda göstermeye çalışırsak:

* Dart
List? veriler = null; // null olabilir [cite: 1]

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Center(
      child: Column(
        children: [
          Text(veriler.toString()) // Ekrana "null" metnini basar [cite: 3, 4]
        ],
      ),
    ),
  );
}
#### Veri Güvenliği ile Eleman Çağırma
Listede eleman olduğundan emin değilsek ? kullanarak hatayı önleyebiliriz:

* Dart
// Emin değilsek ? operatörü hayat kurtarır [cite: 10]
Text(veriler?[0] ?? "Liste boş") 
**📌 Bugünün Kazanımları:**

* null değerlerle çalışırken uygulamanın çökmesini önlemeyi öğrendim.

* Widget ağacı içerisinde kısa if-else mantığıyla dinamik içerik oluşturmayı deneyimledim.