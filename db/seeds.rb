# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

initiatives_arr = [
    {name: 'CAREMongering Malaysia', help_type: 'volunteer', link: 'https://www.facebook.com/groups/653716671867349', location: 'Kuala Lumpur', image: ''},
    {name: 'Mercy Malaysia', help_type: 'finance', link: 'https://www.launchgood.com/campaign/covid19_emergency_relief_fund_for_vulnerable_communities_in_malaysia#!/', location: 'Kuala Lumpur', image: ''},
    {name: 'NGOhub', help_type: 'finance', link: 'https://www.ngohub.asia/campaigns/COVIDfund', location: 'All Malaysia', image: ''},
    {name: 'FV for Covid19', help_type: 'finance', link: 'https://kitafund.com/7541-fv-for-covid19-support-fund', location: 'All Malaysia', image: ''},
    {name: 'Tabung Covid19: Bantu Jiran Kita', help_type: 'finance', link: 'https://kitafund.com/7524-tabung-covid-19-bantu-jiran-kita', location: 'Kuala Lumpur, Kelantan, Melaka, Negeri Sembilan, Selangor', image: ''},
    {name: 'Mercy Malaysia - Call for Medical Volunteers', help_type: 'volunteer', link: 'https://twitter.com/MERCYMalaysia/status/1240292031815200768', location: 'All Malaysia', image: ''},
    {name: 'Petronita', help_type: 'finance', link: 'https://www.facebook.com/petronita.kl/posts/1482165491944215', location: 'All Malaysia', image: ''},
    {name: 'The Lost Food Project', help_type: 'volunteer', link: 'https://www.facebook.com/petronita.kl/posts/1482165491944215', location: 'All Malaysia', image: ''},
    {name: 'Covid19 & Refugees in Malaysia', help_type: 'finance', link: 'https://twitter.com/supernowoczesna/status/1239492501372694528?s=21', location: 'Perak', image: ''},
    {name: '#MakanKongsi', help_type: 'finance', link: 'https://www.facebook.com/155060824694541/posts/1301960240004588/', location: 'Johor Bahru', image: ''}
]

initiatives_arr.each do |initiatives|
    initiative = Initiative.create(name: initiatives[:name], help_type: initiatives[:help_type], link: initiatives[:link], location: initiatives[:location])
end

states_districts = [
    { state: 'Kuala Lumpur', districts: ['Kepong', 'Segambut', 'Batu', 'Wangsa Maju', 'Setiawangsa', 'Titiwangsa', 'Bukit Bintang', 'Lembah Pantai', 'Seputeh', 'Cheras', 'Bandar Tun Razak'] },
    { state: 'Johor', districts: ['Batu Pahat', 'Johor Bahru', 'Kluang', 'Kota Tinggi', 'Kulai', 'Mersing', 'Muar', 'Pontian', 'Segamat', 'Tangkak'] },
    { state: 'Kedah', districts: ['Baling', 'Bandar Baharu', 'Kota Setar', 'Kuala Muda', 'Kubang Pasu', 'Kulim', 'Langkawi', 'Padang Terap', 'Pendang', 'Pokok Sena', 'Sik', 'Yan'] },
    { state: 'Kelantan', districts: ['Bachok', 'Gua Musang', 'Jeli', 'Kota Bharu', 'Kuala Krai', 'Machang', 'Pasir Mas', 'Pasir Puteh', 'Tanah Merah', 'Tumpat'] },
    { state: 'Melaka', districts: ['Alor Gajah', 'Central Melaka', 'Jasin'] },
    { state: 'Negeri Sembilan', districts: ['Jelebu', 'Jempol', 'Kuala Pilah', 'Port Dickson', 'Rembau', 'Seremban', 'Tampin'] },
    { state: 'Pahang', districts: ['Bentong', 'Bera', 'Cameron Highlands', 'Jerantut', 'Kuantan', 'Lipis', 'Maran', 'Pekan', 'Raub', 'Rompin', 'Temerloh'] },
    { state: 'Penang', districts: ['Central Seberang Perai', 'North Seberang Perai', 'South Seberang Perai', 'Northeast Penang Island', 'Southwest Penang Island'] },
    { state: 'Perak', districts: ['Bagan Datuk', 'Batang Padang', 'Hilir Perak', 'Hulu Perak', 'Kampar', 'Kerian', 'Kinta', 'Kuala Kangsar', 'Larut', 'Matang', 'Selama', 'Manjung', 'Muallim', 'Perak Tengah'] },
    { state: 'Perlis', districts: ['Kangar'] },
    { state: 'Selangor', districts: ['Gombak', 'Hulu Langat', 'Hulu Selangor', 'Klang', 'Kuala Langat','Kuala Selangor', 'Petaling', 'Sabak Bernam', 'Sepang'] },
    { state: 'Terengganu', districts: ['Besut', 'Dungun', 'Hulu Terengganu', 'Kemaman', 'Kuala Nerus', 'Kuala Terengganu', 'Marang', 'Setiu'] },
    { state: 'Labuan', districts: ['Victoria'] },
    { state: 'Sabah', districts: ['Beaufort', 'Beluran', 'Keningau', 'Kota Belud', 'Kinabatangan', 'Kota Kinabalu', 'Kota Marudu', 'Kota Penyu', 'Kudat', 'Kunak', 'Lahad Datu', 'Nabawan', 'Papar', 'Penampang', 'Putatan', 'Pitas', 'Ranau', 'Sandakan', 'Semporna', 'Sipitang', 'Tambunan', 'Tawau', 'Telupid', 'Tenom', 'Tongod', 'Tuaran'] },
    { state: 'Sarawak', districts: ['Betong', 'Bintulu', 'Kapit', 'Kuching', 'Limbang', 'Miri', 'Mukah', 'Samarahan', 'Sarikei', 'Serian', 'Sibu', 'Sri Aman'] },
]

states_districts.each do |state_district|
    state = State.create(name: state_district[:state])
    state_district[:districts].each do |district|
        new_district = District.create(name: district, state: state)
    end
end