# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

initiatives_arr = [
    {name: 'CAREMongering Malaysia', link: 'https://www.facebook.com/groups/653716671867349', location: 'Kuala Lumpur', description: 'Looking for youth volunteers to help the elderly (at most risk from COVID19) to run daily errands to minimize infection risk.', help_needed: 'volunteer'},
    {name: 'Mercy Malaysia', link: 'https://www.launchgood.com/campaign/covid19_emergency_relief_fund_for_vulnerable_communities_in_malaysia#!/', location: 'Kuala Lumpur', description: 'Fundraising to protect vulnerable communities in Malaysia.', help_needed: 'financial'},
    {name: 'NGOhub', link: 'https://www.ngohub.asia/campaigns/COVIDfund', location: 'All Malaysia', description: ' Fundraising to fund 16 NGOs so they can continue to serve our most vulnerable communities.', help_needed: 'financial'},
    {name: 'FV for Covid19', link: 'https://kitafund.com/7541-fv-for-covid19-support-fund', location: 'All Malaysia', description: 'We are aiming to raise RM500,000 via Kitafund to help aid as many frontliners as possible, in their efforts to save and protect Malaysians.', help_needed: 'financial'},
    {name: 'Tabung Covid19: Bantu Jiran Kita', link: 'https://kitafund.com/7524-tabung-covid-19-bantu-jiran-kita', location: 'Kuala Lumpur, Kelantan, Melaka, Negeri Sembilan, Selangor', description: 'Fundraising to buy staple food for vulnerable families.', help_needed: 'financial'},
    {name: 'Mercy Malaysia - Call for Medical Volunteers', link: 'https://twitter.com/MERCYMalaysia/status/1240292031815200768', location: 'All Malaysia', description: 'Requires medical volunteers to work with a consortium of NGOs.', help_needed: 'volunteer'},
    {name: 'Petronita', link: 'https://www.facebook.com/petronita.kl/posts/1482165491944215', location: 'All Malaysia', description: 'Fundraising to buy basic items and medical equipment.', help_needed: 'financial'},
    {name: 'The Lost Food Project', link: 'https://www.facebook.com/petronita.kl/posts/1482165491944215', location: 'All Malaysia', description: 'Fundraising and collecting food to support charities and vulnerable members of society.', help_needed: 'financial'},
    {name: 'Covid19 & Refugees in Malaysia', link: 'https://twitter.com/supernowoczesna/status/1239492501372694528?s=21', location: 'Perak', description: 'Fundraising to support four vulnerable Rohingya families in Perak. All funds raised will go towards food, rent and protection measures such as hand sanitiser.', help_needed: 'financial'},
    {name: '#MakanKongsi', link: 'https://www.facebook.com/155060824694541/posts/1301960240004588/', location: 'Johor Bahru', description: 'Fundraising to feed 2,000 vulnerable persons for two weeks in Johor, Selangor, Pahang, and Penang. The MakanKongsi intiative will be executed with Caremongering Penang and Persatuan Wanita Selangor.', help_needed: 'financial'}
]

initiatives_arr.each do |initiative|
    initiative = Initiative.create(name: initiative[:name], link: initiative[:link], location: initiative[:location], help_needed: initiative[:help_needed], description: initiative[:description])
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

