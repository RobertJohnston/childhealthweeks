# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

require 'date'
# Error in province numbers
list_provinces =[
  [1 , "Bubanza"],
  [2 , "Bujumbura Rural"],
  [3 , "Bururi"],
  [4 , "Cankuzo"],
  [5 , "Cibitoke"],
  [6 , "Gitega"],
  [7 , "Karuzi"],
  [8 , "Kayanza"],
  [9 , "Kirundo"],
  [10  , "Makamba"],
  [11  , "Muramvya"],
  [12  , "Muyinga"],
  [13  , "Mwaro"],
  [14  , "Ngozi"],
  [15  , "Rumonge"],
  [16  , "Rutana"],
  [17  , "Ruyigi"],
  [18  , "Mairie de Bujumbura"],
]

list_provinces.each do |id, province_name|
  State.create(id: id, state_name: province_name)
end



list_districts =[
  ["BUBANZA" ,0101],
  ["BUBANZA" ,0102],
  ["BUJUMBURA MAIRIE" ,0201],
  ["BUJUMBURA MAIRIE" ,0202],
  ["BUJUMBURA MAIRIE" ,0203],
  ["BUJUMBURA RURAL" ,0301],
  ["BUJUMBURA RURAL" ,0302],
  ["BUJUMBURA RURAL" ,0303],
  ["BURURI" ,0401],
  ["BURURI" ,0402],
  ["BURURI" ,0403],
  ["CANKUZO" ,0501],
  ["CANKUZO" ,0502],
  ["CIBITOKE" ,0601],
  ["CIBITOKE" ,0602],
  ["GITEGA" ,0701],
  ["GITEGA" ,0702],
  ["GITEGA" ,0703],
  ["GITEGA" ,0704],
  ["KARUSI" ,0801],
  ["KARUSI" ,0802],
  ["KAYANZA" ,0901],
  ["KAYANZA" ,0902],
  ["KAYANZA" ,0903],
  ["KIRUNDO" ,1001],
  ["KIRUNDO" ,1002],
  ["KIRUNDO" ,1003],
  ["KIRUNDO" ,1004],
  ["MAKAMBA" ,1101],
  ["MAKAMBA" ,1102],
  ["MURAMVYA" ,1201],
  ["MURAMVYA" ,1202],
  ["MUYINGA" ,1301],
  ["MUYINGA" ,1302],
  ["MUYINGA" ,1303],
  ["MWARO" ,1401],
  ["MWARO" ,1402],
  ["NGOZI" ,1501],
  ["NGOZI" ,1502],
  ["NGOZI" ,1503],
  ["RUTANA" ,1601],
  ["RUTANA" ,1602],
  ["RUYIGI" ,1701],
  ["RUYIGI" ,1702],
  ["RUYIGI" ,1703],
]

list_districts.each do |id, district_name|
  District.create(id: id, district_name: district_name)
end


def number1to100
  number = rand(1..120)-20
  # if number < 1 then number = nil
  number < 1  ? number = "" : number = number
end

3.times do |t|
  # make data for 3 child health week events in past 18 months

  random_day  = rand(1..30)
  user_id = rand(1..120)
  site_id = rand(1..120)
  vitamin_a_red_prog = rand(1..120)-20
  vitamin_a_blue_prog = rand(1..120)-20
  deworming_prog = rand(1..120)-20
  iron_folate_prog = rand(1..120)-20

  Rrogram_report.create(user_id: user_id,
                        site_id: site_id,
                        report_date: Date.new(2015,06,random_day),
                        vitamin_a_red: vitamin_a_red,
                        vitamin_a_blue: vitamin_a_blue,
                        deworming: deworming,
                        iron_folate: iron_folate)

  Stock_report.create(user_id: user_id,
                        site_id: site_id,
                        report_date: Date.new(2015,06,random_day),
                        vitamin_a_red: vitamin_a_red,
                        vitamin_a_blue: vitamin_a_blue,
                        deworming: deworming,
                        iron_folate: iron_folate)

#   end
end

# Night.create(castle_id: 1, not_available: Date.new(2015,06,rand(1..30)))

# Program Reports
#     "user_id"
#     "site_id"
#     "report_date"
#     "vitamin_a_red"
#     "vitamin_a_blue"
#     "deworming"
#     "iron_folate"

# Stock Reports
#     "user_id"
#     "site_id"
#     "vitamin_a_red"
#     "vitamin_a_blue"
#     "deworming"
#     "iron_folate"
#     "created_at",
#     "updated_at",

# added quotes and commas into db through libre office.

# "Nom_Province"  , "Nom_Distric" , "SiteName"  , "type_fosa" , code_fosa , type, ident , Latitude  , Longitude , altitude

list_sites = [
  ["Bubanza" , "Bubanza" , "CDS BUANZA I"  , "cds" , 010101  , "SST" , 044 , -3.08393800 , 29.39568600 , 1100.00],
  ["Bubanza" , "Bubanza" , "HOPITAL BUBANZA" , "hop" , 010101  ,  "" , 045 , -3.08416900 , 29.39564300 , 1100.00],
  ["Bubanza" , "Bubanza" , "CDS BUBANZA II"  , "cds" , 010102  , "STA" , 053 , -3.08451600 , 29.39869700 , 1093.00],
  ["Bubanza" , "Bubanza" , "CDS MURAMBA" , "cds" , 010103  , "",  026 , -3.03457400 , 29.38671700 , 1351.00],
  ["Bubanza" , "Bubanza" , "CDS MUSIGATI"  , "cds" , 010104  , "STA" , 001 , -3.06805600 , 29.46021800 , 1309.00],
  ["Bubanza" , "Bubanza" , "CDS KIVYUKA" , "cds" , 010106  , "STA" , 009 , -3.02795000 , 29.45095700 , 1339.00],
  ["Bubanza" , "Bubanza" , "CDS NTAMBA"  , "cds" , 010107  , "STA" , 016 , -2.98318600 , 29.43727700 , 1700.00],
  ["Bubanza" , "Bubanza" , "CDS KARINZI" , "cds" , 010108  , "",  021 , -2.98474800 , 29.38753000 , 1543.00],
  ["Bubanza" , "Bubanza" , "CDS MISUHUKO"  , "cds" , 010110  , "",  018 , -2.97805500 , 29.43318300 , 1711.00],
  ["Bubanza" , "Bubanza" , "CDS NGARA" , "cds" , 010111  , "STA" , 023 , -3.01726600 , 29.34892000 , 1286.00],
  ["Bubanza" , "Bubanza" , "CDS DAGROPASS AMAGANIKINDI" , "cds" , 010112  , "",  032 , -3.05396600 , 29.31484100 , 1433.00],
  ["Bubanza" , "Bubanza" , "CDS MUYEBE"  , "cds" , 010114  , "STA" , 029 , -3.13786000 , 29.48598700 , 1557.00],
  ["Bubanza" , "Bubanza" , "CDS CIYA"  , "cds" , 010115  , "",  007 , -3.03898500 , 29.42315800 , 1299.00],
  ["Bubanza" , "Bubanza" , "CDS CONA"  , "cds" , 010116  , "",  043 , -3.12556700 , 29.36645600 , 921.00],
  ["Bubanza" , "Bubanza" , "CDS MITAKATAKA"  , "cds" , 010117  , "",  041 , -3.13944800 , 29.36426300 , 888.00],
  ["Bubanza" , "Bubanza" , "CDS BUVYUKO" , "cds" , 010118  , "",  035 , -3.05936600 , 29.34728800 , 1062.00],
  ["Bubanza" , "Bubanza" , "CDS MASARE"  , "cds" , 010119  , "",  028 , -3.11217400 , 29.48886400 , 1184.00],
  ["Bubanza" , "Bubanza" , "CDS GITANGA" , "cds" , 010120  , "",  022 , -2.98049200 , 29.36266100 , 1239.00],
  ["Bubanza" , "Bubanza" , "CDS RUSHIHA" , "cds" , 010121  , "",  020 , -2.96904800 , 29.39668500 , 1487.00],
  ["Bubanza" , "Bubanza" , "CDS SAINTE TRINITE"  , "cds" , 010122  , "",  039 , -3.08168700 , 29.39204100 , 1092.00],
  ["Bubanza" , "Mpanda"  , "CDS NINGA" , "cds" , 010201  , "STA" , 065 , -3.24053000 , 29.31654900 , 792.00],
  ["Bubanza" , "Mpanda"  , "HOP GIHANGA" , "hop" , 010201  , "",  017 , -3.19025700 , 29.30537900 , 824.00],
  ["Bubanza" , "Mpanda"  , "CDS AMI DE BURINGA"  , "cds" , 010202  , "",  070 , -3.26998700 , 29.31943400 , 803.00],
  ["Bubanza" , "Mpanda"  , "HOP MPANDA"  , "hop" , 010202  , "",  050 , -3.17054000 , 29.40419300 , 884.00],
  ["Bubanza" , "Mpanda"  , "CDS MURENGEZA" , "cds" , 010203  , "",  047 , -3.20317100 , 29.37321900 , 841.00],
  ["Bubanza" , "Mpanda"  , "HOP LA CONFIANCE"  , "hop" , 010203  , "",  004 , -3.12420500 , 29.31634500 , 880.00],
  ["Bubanza" , "Mpanda"  , "CDS MPANDA"  , "cds" , 010204  , "SST" , 034 , -3.17035300 , 29.40528100 , 911.00],
  ["Bubanza" , "Mpanda"  , "CDS LAPATIENCE DE MUSENYI" , "cds" , 010205  , "STA" , 035 , -3.19114700 , 29.40453800 , 884.00],
  ["Bubanza" , "Mpanda"  , "CDS REMESHA" , "cds" , 010207  , "",  036 , -3.19102100 , 29.40487800 , 884.00],
  ["Bubanza" , "Mpanda"  , "CDS GIHANGA" , "cds" , 010208  , "STA" , 018 , -3.19007900 , 29.30553600 , 825.00],
  ["Bubanza" , "Mpanda"  , "CDS MUZINDA" , "cds" , 010209  , "",  063 , -3.25727500 , 29.41857700 , 887.00],
  ["Bubanza" , "Mpanda"  , "CDS BURAMATA"  , "cds" , 010210  , "STA" , 001 , -3.15030600 , 29.34620500 , 887.00],
  ["Bubanza" , "Mpanda"  , "CDS RUGAZI"  , "cds" , 010211  , "STA" , 024 , -3.23048600 , 29.46536000 , 1427.00],
  ["Bubanza" , "Mpanda"  , "CDS GIHUNGWE"  , "cds" , 010212  , "",  007 , -3.13498200 , 29.29223800 , 900.00],
  ["Bubanza" , "Mpanda"  , "CDS MUKOMERE"  , "cds" , 010214  , "",  064 , -3.26410500 , 29.42053400 , 902.00],
  ["Bubanza" , "Mpanda"  , "BUBANZA MEDICAL CENTER"  , "cds" , 010215  , "",  061 , -3.24594000 , 29.41059900 , 867.00],
  ["Bubanza" , "Mpanda"  , "CDS RUYANGE" , "cds" , 010216  , "STA" , 062 , -3.25423400 , 29.41484300 , 874.00],
  ["Bubanza" , "Mpanda"  , "CDS KIRA URAGAKIRA"  , "cds" , 010217  , "",  056 , -3.22880400 , 29.40521100 , 875.00],
  ["Bubanza" , "Mpanda"  , "CDS VYIZIGIRO" , "cds" , 010219  , "",  021 , -3.18010100 , 29.32601600 , 840.00],
  ["Bubanza" , "Mpanda"  , "CDS RUCE"  , "cds" , 010220  , "STA" , 025 , -3.17012200 , 29.50245900 , 1478.00],
  ["Bubanza" , "Mpanda"  , "CDS BUTANUKA"  , "cds" , 010221  , "",  033 , -3.14317800 , 29.43464300 , 1165.00],
  ["Bubanza" , "Mpanda"  , "CDS LA VIE"  , "cds" , 010222  , "",  069 , -3.27110000 , 29.31544000 , 800.00],
  ["Bubanza" , "Mpanda"  , "CDS HARAGAKIZA"  , "cds" , 010223  , "",  012 , -3.19228800 , 29.30479000 , 822.00],
  ["Bubanza" , "Mpanda"  , "CDS KIRENGANE" , "cds" , 010224  , "",  072 , -3.20499800 , 29.43303200 , 1092.00],
  ["Bubanza" , "Mpanda"  , "CDS RUHUKA"  , "cds" , 010225  , "",  073 , -3.25737400 , 29.45042100 , 1068.00],
  ["Bujumbura Mairie"  , "Zone Nord" , "CDS BUTERERE I"  , "cds" , 020101  , "",  087 , -3.33087300 , 29.34314200 , 795.00],
  ["Bujumbura Mairie"  , "Zone Nord" , "CDS LA VIE"  , "cds" , 020102  , "",  078 , -3.33710200 , 29.35825700 , 800.00],
  ["Bujumbura Mairie"  , "Zone Nord" , "CDS ALIBU" , "cds" , 020103  , "",  081 , -3.33705000 , 29.35435700 , 800.00],
  ["Bujumbura Mairie"  , "Zone Nord" , "CESABU"  , "cds" , 020104  , "",  082 , -3.33682900 , 29.35107400 , 799.00],
  ["Bujumbura Mairie"  , "Zone Nord" , "CDS LIFE CLINIC CIBITOKE"  , "cds" , 020106  , "",  067 , -3.34143100 , 29.37409400 , 838.00],
  ["Bujumbura Mairie"  , "Zone Nord" , "CDS LUMI?RE" , "cds" , 020107  , "",  063 , -3.34056800 , 29.38073100 , 830.00],
  ["Bujumbura Mairie"  , "Zone Nord" , "CDSMIRANGOI" , "cds" , 020110  , "",  094 , -3.34261500 , 29.39096900 , 851.00],
  ["Bujumbura Mairie"  , "Zone Nord" , "CDS HUMURA"  , "cds" , 020111  , "",  061 , -3.34391000 , 29.38902000 , 849.00],
  ["Bujumbura Mairie"  , "Zone Nord" , "CDS UMUCO" , "cds" , 020112  , "",  050 , -3.35110700 , 29.38801700 , 858.00],
  ["Bujumbura Mairie"  , "Zone Nord" , "CDS TWIZERE" , "cds" , 020113  , "",  041 , -3.34964700 , 29.38317400 , 839.00],
  ["Bujumbura Mairie"  , "Zone Nord" , "CDS SAINT JUSTIN"  , "cds" , 020114  , "",  046 , -3.34366700 , 29.39527900 , 864.00],
  ["Bujumbura Mairie"  , "Zone Nord" , "ALUMA" , "cds" , 020115  , "",  031 , -3.33565200 , 29.38729500 , 834.00],
  ["Bujumbura Mairie"  , "Zone Nord" , "CDS MUNEZERO"  , "cds" , 020116  , "",  060 , -3.34609600 , 29.38734200 , 851.00],
  ["Bujumbura Mairie"  , "Zone Nord" , "CDS COMM KAMENGE"  , "cds" , 020117  , "STA" , 032 , -3.33997000 , 29.38430500 , 837.00],
  ["Bujumbura Mairie"  , "Zone Nord" , "CDS KINAMA"  , "cds" , 020118  , "",  026 , -3.33204900 , 29.38108600 , 823.00],
  ["Bujumbura Mairie"  , "Zone Nord" , "CENTRE DE SANTE ESPOIR"  , "cds" , 020119  , "",  005 , -3.33460000 , 29.38302900 , 826.00],
  ["Bujumbura Mairie"  , "Zone Nord" , "CESAKIM" , "cds" , 020120  , "",  004 , -3.33740200 , 29.38539200 , 832.00],
  ["Bujumbura Mairie"  , "Zone Nord" , "CDS SOURCE DE VIE" , "cds" , 020121  , "",  011 , -3.32599500 , 29.37707300 , 814.00],
  ["Bujumbura Mairie"  , "Zone Nord" , "CDS EDEN"  , "cds" , 020122  , "",  023 , -3.33738700 , 29.37996300 , 826.00],
  ["Bujumbura Mairie"  , "Zone Nord" , "CDS HOP'S GOD CENTER"  , "cds" , 020123  , "",  006 , -3.33509200 , 29.37867400 , 820.00],
  ["Bujumbura Mairie"  , "Zone Nord" , "CDS NGAGARA" , "cds" , 020124  , "STA" , 135 , -3.35191400 , 29.37295200 , 829.00],
  ["Bujumbura Mairie"  , "Zone Nord" , "CDS ST KIZITO" , "cds" , 020125  , "",  090 , -3.36403100 , 29.34711400 , 785.00],
  ["Bujumbura Mairie"  , "Zone Nord" , "CDS IRISHURA"  , "cds" , 020126  , "",  113 , -3.36901500 , 29.40054600 , 935.00],
  ["Bujumbura Mairie"  , "Zone Nord" , "CDS KADEYO"  , "cds" , 020127  , "",  064 , -3.34228600 , 29.37693300 , 840.00],
  ["Bujumbura Mairie"  , "Zone Nord" , "CDS KORINEZA"  , "cds" , 020128  , "",  024 , -3.33183800 , 29.37912000 , 818.00],
  ["Bujumbura Mairie"  , "Zone Nord" , "CDS ESPOIR KIRA" , "cds" , 020129  , "",  074 , -3.34522100 , 29.36811300 , 813.00],
  ["Bujumbura Mairie"  , "Zone Nord" , "CDS KIGOBE"  , "cds" , 020130  , "",  118 , -3.35356400 , 29.39430800 , 892.00],
  ["Bujumbura Mairie"  , "Zone Nord" , "CDS REMA"  , "cds" , 020132  , "",  112 , -3.36727500 , 29.39626300 , 898.00],
  ["Bujumbura Mairie"  , "Zone Nord" , "CDS AMANI" , "cds" , 020133  , "",  021 , -3.33414000 , 29.37409300 , 814.00],
  ["Bujumbura Mairie"  , "Zone Nord" , "CDS KWIZERA" , "cds" , 020134  , "",  111 , -3.37212600 , 29.40040100 , 946.00],
  ["Bujumbura Mairie"  , "Zone Nord" , "CDS AMAHORO" , "cds" , 020135  , "",  014 , -3.32696000 , 29.37679800 , 817.00],
  ["Bujumbura Mairie"  , "Zone Nord" , "CDS LA CHARIT?"  , "cds" , 020136  , "",  016 , -3.33242100 , 29.37194500 , 814.00],
  ["Bujumbura Mairie"  , "Zone Nord" , "CDS NTASEKA" , "cds" , 020137  , "",  037 , -3.34430800 , 29.38273300 , 840.00],
  ["Bujumbura Mairie"  , "Zone Nord" , "CDS IZERE" , "cds" , 020138  , "",  009 , -3.31814700 , 29.38831500 , 830.00],
  ["Bujumbura Mairie"  , "Zone Nord" , "CDS BUKIRIRO"  , "cds" , 020139  , "",  062 , -3.34231500 , 29.38188400 , 832.00],
  ["Bujumbura Mairie"  , "Zone Nord" , "CDS BUTERERE II" , "cds" , 020140  , "STA" , 086 , -3.34002700 , 29.34232400 , 794.00],
  ["Bujumbura Mairie"  , "Zone Nord" , "CDS ST DAVID"  , "cds" , 020142  , "",  076 , -3.33867300 , 29.36800100 , 813.00],
  ["Bujumbura Mairie"  , "Zone Nord" , "CDS GENNESARETH" , "cds" , 020143  , "",  007 , -3.33187100 , 29.39006200 , 834.00],
  ["Bujumbura Mairie"  , "Zone Nord" , "CDS ST AUBIN"  , "cds" , 020144  , "",  075 , -3.34556800 , 29.36868700 , 815.00],
  ["Bujumbura Mairie"  , "Zone Nord" , "CDS MUKIZA MWIZA"  , "cds" , 020146  , "",  043 , -3.34820000 , 29.40157500 , 902.00],
  ["Bujumbura Mairie"  , "Zone Nord" , "CDS ST LUC"  , "cds" , 020147  , "",  085 , -3.33301200 , 29.34775500 , 803.00],
  ["Bujumbura Mairie"  , "Zone Centre" , "HPRC"  , "hop" , 020201  , "",  002 , -3.37425600 , 29.36276200 ,],
  ["Bujumbura Mairie"  , "Zone Centre" , "CENTRE DE SOINS          BRARUDI"  , "cds" , 020202  , "",  053 , -3.37185400 , 29.34944300 , 782.00],
  ["Bujumbura Mairie"  , "Zone Centre" , "CPLR"  , "hop" , 020202  , "",  105 , -3.38796400 , 29.36584200 , 822.00],
  ["Bujumbura Mairie"  , "Zone Centre" , "CDS ST MICHEL" , "cds" , 020204  , "",  046 , -3.37990900 , 29.36781000 , 810.00],
  ["Bujumbura Mairie"  , "Zone Centre" , "MAISON MEDICALE DE   BUJUMBUR├Ç" , "hop" , 020205  , "",  003 , -3.37261200 , 29.36438800 , 812.00],
  ["Bujumbura Mairie"  , "Zone Centre" , "POLYCEB" , "hop" , 020206  , "SST" , 040 , -3.38067600 , 29.36848200 , 821.00],
  ["Bujumbura Mairie"  , "Zone Centre" , "CDS BWIZA JABE"  , "cds" , 020209  , "",  027 , -3.37055400 , 29.37030600 , 823.00],
  ["Bujumbura Mairie"  , "Zone Centre" , "CDS KAZE"  , "cds" , 020210  , "",  016 , -3.37636500 , 29.37218100 , 829.00],
  ["Bujumbura Mairie"  , "Zone Centre" , "CDS LA SAGESSE"  , "cds" , 020211  , "",  013 , -3.37406200 , 29.36676600 , 820.00],
  ["Bujumbura Mairie"  , "Zone Centre" , "CDS LA GUERISON" , "cds" , 020212  , "",  015 , -3.37489800 , 29.36755900 , 822.00],
  ["Bujumbura Mairie"  , "Zone Centre" , "ABUBEF JABE" , "cdv" , 020213  , "",  023 , -3.36640000 , 29.37109600 , 831.00],
  ["Bujumbura Mairie"  , "Zone Centre" , "OOB" , "cds" , 020215  , "",  024 , -3.36658800 , 29.36612900 , 823.00],
  ["Bujumbura Mairie"  , "Zone Centre" , "CMC BUYENZI" , "cds" , 020218  , "STA" , 001 , -3.37452200 , 29.36156600 , 804.00],
  ["Bujumbura Mairie"  , "Zone Centre" , "ENFANT SOLEIL" , "cds" , 020219  , "",  025 , -3.36929000 , 29.36481100 , 814.00],
  ["Bujumbura Mairie"  , "Zone Centre" , "CDS NYOTA" , "cds" , 020220  , "",  006 , -3.37239700 , 29.35825700 , 800.00],
  ["Bujumbura Mairie"  , "Zone Centre" , "CDS REFERENCE" , "cds" , 020222  , "",  009 , -3.36847900 , 29.36011900 , 800.00],
  ["Bujumbura Mairie"  , "Zone Centre" , "ABUBEF BUYENZI"  , "cdv" , 020224  , "",  051 , -3.36953400 , 29.35298300 , 789.00],
  ["Bujumbura Mairie"  , "Zone Centre" , "SOLIDALITE PLUS" , "cds" , 020225  , "",  052 , -3.37047400 , 29.35405700 , 791.00],
  ["Bujumbura Mairie"  , "Zone Centre" , "CDS SALAMA"  , "cds" , 020226  , "",  011 , -3.37069900 , 29.36293200 , 802.00],
  ["Bujumbura Mairie"  , "Zone Centre" , "CDS AFYA"  , "cds" , 020227  , "",  010 , -3.36956600 , 29.36120200 , 804.00],
  ["Bujumbura Mairie"  , "Zone Centre" , "SOS NYAKABIGA" , "cds" , 020229  , "",  017 , -3.37646400 , 29.37922000 , 840.00],
  ["Bujumbura Mairie"  , "Zone Centre" , "CDS CUBAHIRO"  , "cds" , 020230  , "",  019 , -3.37229400 , 29.37603200 , 838.00],
  ["Bujumbura Mairie"  , "Zone Centre" , "CENTRE MEDICA  SAINTPIERRE"  , "cds" , 020231  , "",  028 , -3.37880600 , 29.37554700 , 833.00],
  ["Bujumbura Mairie"  , "Zone Centre" , "CATB"  , "cds" , 020232  , "",  004 , -3.37274200 , 29.35932600 , 801.00],
  ["Bujumbura Mairie"  , "Zone Centre" , "CLIPA" , "clin"  , 020233  , "",  045 , -3.38126000 , 29.36675500 , 806.00],
  ["Bujumbura Mairie"  , "Zone Centre" , "CDS KIRA DE JABE"  , "cds" , 020234  , "",  020 , -3.37094500 , 29.37289700 , 833.00],
  ["Bujumbura Mairie"  , "Zone Centre" , "CDS VYIZIGIRO" , "cds" , 020236  , "",  014 , -3.37487300 , 29.36756300 , 822.00],
  ["Bujumbura Mairie"  , "Zone Centre" , "CDS AGAKIZA" , "cds" , 020237  , "",  018 , -3.37809600 , 29.39650000 , 879.00],
  ["Bujumbura Mairie"  , "Zone Sud"  , "HOP CMCK"  , "hop" , 020301  , "",  062 , -3.41781500 , 29.35720900 , 800.00],
  ["Bujumbura Mairie"  , "Zone Sud"  , "KININDO" , "cds" , 020301  , "",  026 , -3.41526300 , 29.34812200 , 780.00],
  ["Bujumbura Mairie"  , "Zone Sud"  , "TABARUKA"  , "cds" , 020302  , "",  025 , -3.47221200 , 29.35164900 , 783.00],
  ["Bujumbura Mairie"  , "Zone Sud"  , "KANYOSHA"  , "cds" , 020303  , "STA" , 019 , -3.43475400 , 29.36112700 , 844.00],
  ["Bujumbura Mairie"  , "Zone Sud"  , "RUZIBA"  , "cds" , 020304  , "",  005 , -3.47113000 , 29.34940000 , 824.00],
  ["Bujumbura Mairie"  , "Zone Sud"  , "TUYISABE"  , "cds" , 020305  , "",  009 , -3.45537300 , 29.35140000 , 826.00],
  ["Bujumbura Mairie"  , "Zone Sud"  , "NKORERINEZA" , "cds" , 020306  , "",  030 , -3.42689700 , 29.36819800 , 786.00],
  ["Bujumbura Mairie"  , "Zone Sud"  , "UMUVYEYI"  , "cds" , 020307  , "",  017 , -3.42292300 , 29.35647800 , 802.00],
  ["Bujumbura Mairie"  , "Zone Sud"  , "HORIZON" , "cds" , 020308  , "",  013 , -3.43359400 , 29.35600800 , 828.00],
  ["Bujumbura Mairie"  , "Zone Sud"  , "RUKUNDO" , "cds" , 020310  , "",  015 , -3.42945700 , 29.35449500 , 826.00],
  ["Bujumbura Mairie"  , "Zone Sud"  , "BANYAGIHUGU" , "cds" , 020311  , "",  014 , -3.43363200 , 29.35593400 , 828.00],
  ["Bujumbura Mairie"  , "Zone Sud"  , "LA VICTOIRE" , "cds" , 020312  , "",  023 , -3.42748300 , 29.36066400 , 811.00],
  ["Bujumbura Mairie"  , "Zone Sud"  , "MUSAGA"  , "cds" , 020314  , "STA" , 029 , -3.41335400 , 29.37023400 , 854.00],
  ["Bujumbura Mairie"  , "Zone Sud"  , "MPORE" , "cds" , 020316  , "",  054 , -3.40760500 , 29.37369900 , 883.00],
  ["Bujumbura Mairie"  , "Zone Sud"  , "LIFE CLINIC KINANIRA"  , "cds" , 020319  , "",  028 , -3.42003000 , 29.36135300 , 815.00],
  ["Bujumbura Mairie"  , "Zone Sud"  , "DUSENGE" , "cds" , 020320  , "",  052 , -3.41945000 , 29.37842600 , 966.00],
  ["Bujumbura Mairie"  , "Zone Sud"  , "CMPK"  , "cds" , 020321  , "",  021 , -3.42693700 , 29.36419900 , 830.00],
  ["Bujumbura Mairie"  , "Zone Sud"  , "BETHEL"  , "cds" , 020322  , "",  020 , -3.43257300 , 29.36066600 , 845.00],
  ["Bujumbura Mairie"  , "Zone Sud"  , "UKWIZERA"  , "cds" , 020324  , "",  022 , -3.42743100 , 29.36068400 , 816.00],
  ["Bujumbura Mairie"  , "Zone Sud"  , "BETHESIDA" , "cds" , 020325  , "",  007 , -3.46778400 , 29.34934300 , 822.00],
  ["Bujumbura Mairie"  , "Zone Sud"  , "VYIZIGIRO" , "cds" , 020326  , "",  006 , -3.46855200 , 29.34979500 , 823.00],
  ["Bujumbura Mairie"  , "Zone Sud"  , "KIRA"  , "cds" , 020327  , "",  024 , -3.47229600 , 29.35160700 , 815.00],
  ["Bujumbura Mairie"  , "Zone Sud"  , "BUKIRIRO"  , "cds" , 020328  , "",  010 , -3.43893600 , 29.35422200 , 825.00],
  ["Bujumbura-Rural" , "Kabezi"  , "CDS BUGARAMA"  , "cds" , 030101  , "",  016 , -3.69252000 , 29.35728500 , 1645.00],
  ["Bujumbura-Rural" , "Kabezi"  , "HOPITAL DE DISTRICT KABEZI"  , "hop" , 030101  , "",  004 , -3.53657200 , 29.34865400 , 829.00],
  ["Bujumbura-Rural" , "Kabezi"  , "HOPITAL DE DISTRICT KABEZI"  , "hop" , 030101  , "",  039 , -3.53348600 , 29.34240000 , 805.00],
  ["Bujumbura-Rural" , "Kabezi"  , "CDS MAGARA I"  , "cds" , 030102  , "STA" , 012 , -3.72657800 , 29.31635800 , 784.00],
  ["Bujumbura-Rural" , "Kabezi"  , "CDS MUTUMBA" , "cds" , 030103  , "STA" , 035 , -3.58832100 , 29.36192100 , 991.00],
  ["Bujumbura-Rural" , "Kabezi"  , "CDS MAGARA III"  , "cds" , 030104  , "",  015 , -3.72813100 , 29.31836500 , 791.00],
  ["Bujumbura-Rural" , "Kabezi"  , "CDS MUBONE"  , "cds" , 030105  , "",  020 , -3.50810900 , 29.38064100 , 1334.00],
  ["Bujumbura-Rural" , "Kabezi"  , "CDS KABEZI"  , "cds" , 030106  , "SST" , 002 , -3.53699100 , 29.34898300 , 831.00],
  ["Bujumbura-Rural" , "Kabezi"  , "CDS KABEZI"  , "cds" , 030106  , "STA" , 002 , -3.53699100 , 29.34898300 , 831.00],
  ["Bujumbura-Rural" , "Kabezi"  , "CDS GITAZA"  , "cds" , 030108  , "STA" , 008 , -3.61637700 , 29.34592600 , 783.00],
  ["Bujumbura-Rural" , "Kabezi"  , "CDS DUSHIME" , "cds" , 030109  , "",  030 , -3.61542300 , 29.39439600 , 1749.00],
  ["Bujumbura-Rural" , "Kabezi"  , "CDS MUTAMBU" , "cds" , 030110  , "STA" , 022 , -3.52839500 , 29.42927300 , 1819.00],
  ["Bujumbura-Rural" , "Kabezi"  , "CDS RUTONGO" , "cds" , 030111  , "STA" , 029 , -3.63795100 , 29.45607800 ,],
  ["Bujumbura-Rural" , "Kabezi"  , "CDS KIMINA"  , "cds" , 030113  , "",  027 , -3.49914200 , 29.36889500 , 1124.00],
  ["Bujumbura-Rural" , "Kabezi"  , "CDS MUHUTA"  , "cds" , 030114  , "",  031 , -3.61587000 , 29.39329500 , 1767.00],
  ["Bujumbura-Rural" , "Kabezi"  , "CDS BURIMA"  , "cds" , 030115  , "",  037 , -3.48874500 , 29.40850600 , 1070.00],
  ["Bujumbura-Rural" , "Kabezi"  , "CDS MUKONKO" , "cds" , 030116  , "",  028 , -3.51220400 , 29.46379600 , 2048.00],
  ["Bujumbura-Rural" , "Kabezi"  , "CDS CASHI" , "cds" , 030117  , "",  010 , -3.67884400 , 29.32986800 , 792.00],
  ["Bujumbura-Rural" , "Kabezi"  , "CDS ST GEOGRE" , "cds" , 030118  , "",  017 , -3.72413800 , 29.31918800 , 821.00],
  ["Bujumbura-Rural" , "Kabezi"  , "CDS KIRA"  , "cds" , 030119  , "",  033 , -3.60008900 , 29.36889600 , 1229.00],
  ["Bujumbura-Rural" , "Kabezi"  , "CDS BAMBO" , "cds" , 030120  , "",  038 , -3.70361000 , 29.43293300 , 2013.00],
  ["Bujumbura-Rural" , "Rwibaga" , "CDS RWIBAGA" , "cds" , 030201  , "STA" , 020 , -3.47127000 , 29.53920100 , 2287.00],
  ["Bujumbura-Rural" , "Rwibaga" , "CDS IJENDA"  , "cds" , 030202  , "",  017 , -3.48063300 , 29.56779400 , 2185.00],
  ["Bujumbura-Rural" , "Rwibaga" , "HOP IJENDA"  , "hop" , 030202  , "",  018 , -3.48040900 , 29.56755700 , 2185.00],
  ["Bujumbura-Rural" , "Rwibaga" , "MATERNITE HOP IJENDA"  , "maternit?" , 030202  , "",  019 , -3.48163500 , 29.56799500 , 2181.00],
  ["Bujumbura-Rural" , "Rwibaga" , "CDS MATARA"  , "cds" , 030203  , "STA" , 005 , -3.48177600 , 29.47971700 , 1878.00],
  ["Bujumbura-Rural" , "Rwibaga" , "CDS MAYUYU"  , "cds" , 030204  , "STA" , 012 , -3.57705700 , 29.50890600 , 2397.00],
  ["Bujumbura-Rural" , "Rwibaga" , "CDS NYABIBONDO"  , "cds" , 030205  , "",  002 , -3.44305000 , 29.48491700 , 1966.00],
  ["Bujumbura-Rural" , "Rwibaga" , "CDS KANKIMA" , "cds" , 030206  , "",  006 , -3.43895200 , 29.51836300 , 2332.00],
  ["Bujumbura-Rural" , "Rwibaga" , "CDS MUGONGO" , "cds" , 030207  , "",  007 , -3.40862000 , 29.56433300 , 2210.00],
  ["Bujumbura-Rural" , "Rwibaga" , "CDS BIKANKA" , "cds" , 030208  , "",  008 , -3.53236900 , 29.56492700 , 2401.00],
  ["Bujumbura-Rural" , "Rwibaga" , "CDS RUKINA"  , "cds" , 030209  , "",  013 , -3.52701300 , 29.51693900 , 2297.00],
  ["Bujumbura-Rural" , "Rwibaga" , "CDS NYABRABA"  , "cds" , 030210  , "STA" , 004 , -3.45452700 , 29.46094800 , 1665.00],
  ["Bujumbura-Rural" , "Rwibaga" , "CDS MUSINZIRA" , "cds" , 030211  , "",  011 , -3.64800900 , 29.50234800 , 2540.00],
]

list_sites.each do |Nom_Province, Nom_Distric, SiteName, type_fosa, code_fosa, type, ident, Latitude, Longitude, altitude|
  # Site.create(id: code_fosa, site_name: SiteName, latitude: Latitude, longitude:Longitude)
  Site.create(id: code_fosa, site_name: SiteName, latitude: Latitude, longitude:Longitude)
end


