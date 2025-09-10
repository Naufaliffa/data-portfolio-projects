# 📝 Proyek Segmentasi Pelanggan

### **1. Tujuan Proyek (Business Understanding)**
Tujuan utama dari proyek ini adalah untuk melakukan **segmentasi pelanggan** berdasarkan data demografi dan perilaku transaksi. Dengan mengelompokkan pelanggan ke dalam segmen-segmen yang berbeda, perusahaan dapat memahami persona pelanggan dengan lebih baik dan merancang strategi pemasaran yang lebih personal dan efektif untuk setiap kelompok.

### **2. Penjelajahan dan Persiapan Data**
Dataset awal mengandung beberapa isu kualitas yang berhasil diatasi:
* **Data Kosong:** 24 baris data kosong pada kolom `Income` diisi menggunakan nilai median.
* **Outliers:** Data pelanggan dengan `Year_Birth` yang tidak realistis (sebelum tahun 1940) telah dihapus.
* **Kolom Tidak Relevan:** Kolom seperti `ID`, `Unnamed: 0`, `Z_CostContact`, dan `Z_Revenue` yang tidak memberikan informasi variatif telah dihapus.

Selanjutnya, dilakukan **feature engineering** untuk menciptakan variabel baru yang lebih informatif:
* `Age`: Usia pelanggan.
* `TotalChildren`: Jumlah total anak di rumah.
* `TotalSpending`: Total pengeluaran pelanggan di semua kategori produk.
* `TotalPurchases`: Total frekuensi transaksi di semua channel.

### **3. Metodologi (Modeling)**
Model segmentasi dibangun menggunakan algoritma **K-Means Clustering**. Untuk menentukan jumlah segmen (k) yang paling optimal, digunakan **Elbow Method**. Hasil analisis metode ini menunjukkan bahwa **4 segmen** adalah jumlah yang paling ideal untuk mengelompokkan pelanggan dalam dataset ini, karena memberikan keseimbangan terbaik antara variasi dalam cluster dan perbedaan antar cluster.

### **4. Hasil: 4 Persona Pelanggan (Evaluation)**
Model K-Means berhasil mengidentifikasi 4 persona pelanggan yang unik:

* **Segmen 0: The Cautious Families (Keluarga Hati-hati)**
    * **Karakteristik:** Usia menengah (rata-rata 50 tahun), pendapatan sedang, dan memiliki anak paling banyak.
    * **Perilaku:** Cenderung sangat hemat dengan pengeluaran terendah, namun paling sering mengunjungi website (kemungkinan untuk mencari promo).

* **Segmen 1: The Established Mid-lifers (Keluarga Mapan)**
    * **Karakteristik:** Usia paling senior (rata-rata 58 tahun), dengan pendapatan tinggi dan pengeluaran yang juga tinggi.
    * **Perilaku:** Merupakan pembeli yang loyal dan aktif di berbagai channel.

* **Segmen 2: The Affluent Spenders (Para Sultan Belanja)**
    * **Karakteristik:** Usia lebih muda (rata-rata 40 tahun), dengan pendapatan dan pengeluaran **paling tinggi** di antara semua segmen. Cenderung memiliki sedikit anak.
    * **Perilaku:** Pembeli paling aktif dan merupakan segmen yang paling bernilai secara finansial.

* **Segmen 3: The Young Potentials (Anak Muda Potensial)**
    * **Karakteristik:** Segmen termuda (rata-rata 38 tahun), dengan pendapatan dan pengeluaran paling rendah.
    * **Perilaku:** Belum banyak bertransaksi, namun aktif mengunjungi website.

### **5. Rekomendasi Bisnis**
Berdasarkan persona yang ditemukan, berikut adalah beberapa rekomendasi strategis:
* **Untuk "Affluent Spenders":** Fokus pada pemasaran produk premium, program loyalitas eksklusif, dan layanan *white-glove*.
* **Untuk "Established Mid-lifers":** Tawarkan produk berkualitas tinggi yang menekankan kenyamanan dan keandalan.
* **Untuk "Cautious Families":** Gunakan strategi promosi, diskon, dan produk *bundling* untuk menarik minat mereka.
* **Untuk "Young Potentials":** Bangun *brand awareness* melalui kampanye digital, tawarkan produk *entry-level*, dan fokus pada pembentukan hubungan jangka panjang.
