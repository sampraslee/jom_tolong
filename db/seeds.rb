# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

initiatives_dic = [
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


initiatives_dic.each do |initiatives|
    initiative = Initiative.create(name: initiatives[:name], help_type: initiatives[:help_type], link: initiatives[:link], location: initiatives[:location])
    puts initiative.name
end
