# 24 mei : harus masih nyisa at least 400rb
require "date"
require "money"

def spaces_on number
   number.to_s.gsub(/\D/, '').reverse.gsub(/.{3}/, '\0 ').reverse
end

tgl_tf_nenek = Date.new(2020,5,24) 
saldo_sekarang = 7900000
target_sisa = 200000

p tgl_tf_nenek
p "Nenek akan transfer lagi tanggal #{tgl_tf_nenek}"
p "Sementera hari ini tgl #{Date.today} dan"
p "Saldoku sisa  #{spaces_on saldo_sekarang}"
sisa_hari = (tgl_tf_nenek - Date.today).numerator
p "masih ada #{sisa_hari} hari lagi"
# 
total_bisa_dikeluarkan =  (saldo_sekarang - target_sisa)/sisa_hari
p "Agar masih menyisakan Rp #{spaces_on(target_sisa)} pada #{tgl_tf_nenek} nanti"
p "Maka besok aku harus mengeluarkan Rp #{spaces_on(total_bisa_dikeluarkan)} / hari"