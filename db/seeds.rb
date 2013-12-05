# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#admin = User.create(email: 'admin@uoftironsports.ca',
                    #password: ENV['ADMIN_PASS'], password_confirmation: ENV['ADMIN_PASS'],
                    #first_name: 'Amanda', last_name: 'Santos',
                    #gender: 'F', registration_number: 0)
#admin.is_admin = true
#admin.save!

meet1 = Meet.create(title: 'Octobr 5th 2013 Classic 3-Lift Competition')
meet1.meet_results = [
  MeetResult.create(
    lifter:             'Walter Cariazo',
    weight:             94.95,
    gender:             'M',
    squat1:             170,
    squat1_success:     true,
    squat2:             285,
    squat2_success:     true,
    squat3:             200,
    squat3_success:     true,
    bench1:             130,
    bench1_success:     false,
    bench2:             155,
    bench2_success:     true,
    bench3:             165,
    bench3_success:     false,
    deadlift1:          240,
    deadlift1_success:  true,
    deadlift2:          255,
    deadlift2_success:  true,
    deadlift3:          273,
    deadlift3_success:  true,
  ),
  MeetResult.create(
    lifter: 'Mark Tatangelo',
    weight: 94.77,
    gender: 'M',
    squat1:           195,
    squat1_success:   true,
    squat2:           205,
    squat2_success:   true,
    squat3:           215,
    squat3_success:   true,
    bench1:           110,
    bench1_success:   true,
    bench2:           125,
    bench2_success:   true,
    bench3:           137,
    bench3_success:   true,
    deadlift1:        215,
    deadlift1_success:true,
    deadlift2:        240,
    deadlift2_success:true,
    deadlift3:        261,
    deadlift3_success:true,
  ),
  MeetResult.create(
    lifter: 'Adam Crockford',
    weight: 102,
    gender: 'M',
    squat1:           165,
    squat1_success:   true,
    squat2:           175,
    squat2_success:   true,
    squat3:           185,
    squat3_success:   true,
    bench1:           115,
    bench1_success:   true,
    bench2:           121,
    bench2_success:   true,
    bench3:           131,
    bench3_success:   true,
    deadlift1:        239,
    deadlift1_success:true,
    deadlift2:        250,
    deadlift2_success:true,
    deadlift3:        273,
    deadlift3_success:false,
  ),
  MeetResult.create(
      lifter: 'Andrey Vul',
      weight: 111.27,
      gender: 'M',
      squat1:           215,
      squat1_success:   true,
      squat2:           225,
      squat2_success:   true,
      squat3:           235,
      squat3_success:   true,
      bench1:           113,
      bench1_success:   false,
      bench2:           113,
      bench2_success:   true,
      bench3:           123,
      bench3_success:   false,
      deadlift1:        217,
      deadlift1_success:true,
      deadlift2:        225,
      deadlift2_success:true,
      deadlift3:        233,
      deadlift3_success:true,
  ),
  MeetResult.create(
      lifter: 'George Ceko',
      weight: 90.90,
      gender: 'M',
      squat1:           135,
      squat1_success:   true,
      squat2:           145,
      squat2_success:   true,
      squat3:           150,
      squat3_success:   true,
      bench1:           105,
      bench1_success:   true,
      bench2:           110,
      bench2_success:   true,
      bench3:           115,
      bench3_success:   true,
      deadlift1:        185,
      deadlift1_success:true,
      deadlift2:        195,
      deadlift2_success:true,
      deadlift3:        205,
      deadlift3_success:true,
  ),
  MeetResult.create(
      lifter: 'Christopher Juman',
      weight: 89.45,
      gender: 'M',
      squat1:           143,
      squat1_success:   false,
      squat2:           147,
      squat2_success:   false,
      squat3:           151,
      squat3_success:   true,
      bench1:           93,
      bench1_success:   true,
      bench2:           103,
      bench2_success:   true,
      bench3:           107,
      bench3_success:   true,
      deadlift1:        183,
      deadlift1_success:true,
      deadlift2:        200,
      deadlift2_success:true,
      deadlift3:        208,
      deadlift3_success:true,
  ),
  MeetResult.create(
      lifter: 'Jeremy Louie',
      weight: 84.86,
      gender: 'M',
      squat1:           125,
      squat1_success:   true,
      squat2:           145,
      squat2_success:   true,
      squat3:           149,
      squat3_success:   false,
      bench1:           105,
      bench1_success:   false,
      bench2:           107,
      bench2_success:   true,
      bench3:           111,
      bench3_success:   false,
      deadlift1:        181,
      deadlift1_success:true,
      deadlift2:        191,
      deadlift2_success:false,
      deadlift3:        200,
      deadlift3_success:true,
  ),
  MeetResult.create(
      lifter: 'Nicolo Marchisao',
      weight: 68.45,
      gender: 'M',
      squat1:           115,
      squat1_success:   true,
      squat2:           120,
      squat2_success:   true,
      squat3:           125,
      squat3_success:   false,
      bench1:           70,
      bench1_success:   true,
      bench2:           75,
      bench2_success:   true,
      bench3:           80,
      bench3_success:   false,
      deadlift1:        140,
      deadlift1_success:true,
      deadlift2:        142,
      deadlift2_success:true,
      deadlift3:        145,
      deadlift3_success:true,
  ),
  MeetResult.create(
      lifter: 'Will Kingsford',
      weight: 102.72,
      gender: 'M',
      squat1:           140,
      squat1_success:   true,
      squat2:           150,
      squat2_success:   true,
      squat3:           160,
      squat3_success:   true,
      bench1:           85,
      bench1_success:   true,
      bench2:           93,
      bench2_success:   false,
      bench3:           100,
      bench3_success:   false,
      deadlift1:        170,
      deadlift1_success:true,
      deadlift2:        190,
      deadlift2_success:false,
      deadlift3:        190,
      deadlift3_success:false,
  ),
  MeetResult.create(
      lifter: 'Lucy Trojanowski',
      weight: 77.6,
      gender: 'F',
      squat1:           69,
      squat1_success:   true,
      squat2:           79,
      squat2_success:   true,
      squat3:           89,
      squat3_success:   true,
      bench1:           49,
      bench1_success:   true,
      bench2:           57,
      bench2_success:   false,
      bench3:           57,
      bench3_success:   true,
      deadlift1:        91,
      deadlift1_success:true,
      deadlift2:        105,
      deadlift2_success:true,
      deadlift3:        113,
      deadlift3_success:true,
  ),
  MeetResult.create(
      lifter: 'Jordan Louie',
      weight: 67,
      gender: 'M',
      squat1:           75,
      squat1_success:   true,
      squat2:           95,
      squat2_success:   false,
      squat3:           105,
      squat3_success:   false,
      bench1:           75,
      bench1_success:   false,
      bench2:           75,
      bench2_success:   false,
      bench3:           75,
      bench3_success:   false,
      deadlift1:        135,
      deadlift1_success:true,
      deadlift2:        143,
      deadlift2_success:true,
      deadlift3:        145,
      deadlift3_success:true,
  ),
  MeetResult.create(
      lifter: 'Phillip Chan',
      weight: 68.81,
      gender: 'M',
      squat1:           127,
      squat1_success:   true,
      squat2:           139,
      squat2_success:   false,
      squat3:           139,
      squat3_success:   false,
      bench1:           81,
      bench1_success:   true,
      bench2:           85,
      bench2_success:   true,
      bench3:           89,
      bench3_success:   false,
      deadlift1:        180,
      deadlift1_success:false,
      deadlift2:        185,
      deadlift2_success:false,
      deadlift3:        185,
      deadlift3_success:false,
  )
]
meet1.save!

meet2 = Meet.create(title: 'April 7th 2013 Classic 3-Lift Competition')
meet2.meet_results = [
  MeetResult.create(
    lifter: 'Isaac Baik',
    weight: 80.5,
    gender: 'M',
    squat1: 160,
    squat1_success: true,
    squat2:            170,
    squat2_success:    true,
    squat3:            180,
    squat3_success:    true,
    bench1:            140,
    bench1_success:    true,
    bench2:            150,
    bench2_success:    true,
    bench3:            160,
    bench3_success:    false,
    deadlift1:         210,
    deadlift1_success: true,
    deadlift2:         220,
    deadlift2_success: true,
    deadlift3:         235,
    deadlift3_success: true,
  ),
  MeetResult.create(
    lifter: 'Jeremiah Villanueva',
    weight: 68.7,
    gender: 'M',
    squat1: 150,
    squat1_success: true,
    squat2:            165,
    squat2_success:    true,
    squat3:            170,
    squat3_success:    true,
    bench1:            100,
    bench1_success:    true,
    bench2:            105,
    bench2_success:    false,
    bench3:            105,
    bench3_success:    false,
    deadlift1:         190,
    deadlift1_success: true,
    deadlift2:         200,
    deadlift2_success: false,
    deadlift3:         200,
    deadlift3_success: false,
  ),
  MeetResult.create(
    lifter: 'Zachary Morrow',
    weight: 86.1,
    gender: 'M',
    squat1: 160,
    squat1_success: true,
    squat2:            175,
    squat2_success:    true,
    squat3:            180,
    squat3_success:    false,
    bench1:            107,
    bench1_success:    true,
    bench2:            115,
    bench2_success:    false,
    bench3:            115,
    bench3_success:    false,
    deadlift1:         173,
    deadlift1_success: true,
    deadlift2:         185,
    deadlift2_success: true,
    deadlift3:         203,
    deadlift3_success: true,
  ),
  MeetResult.create(
    lifter: 'Zachary Hill',
    weight: 108.6,
    gender: 'M',
    squat1: 153,
    squat1_success: true,
    squat2:            175,
    squat2_success:    true,
    squat3:            185,
    squat3_success:    true,
    bench1:            93,
    bench1_success:    false,
    bench2:            93,
    bench2_success:    true,
    bench3:            105,
    bench3_success:    true,
    deadlift1:         183,
    deadlift1_success: true,
    deadlift2:         201,
    deadlift2_success: true,
    deadlift3:         215,
    deadlift3_success: true,
  ),
  MeetResult.create(
    lifter: 'Henry Lee',
    weight: 79.5,
    gender: 'M',
    squat1: 131,
    squat1_success: true,
    squat2:            145,
    squat2_success:    true,
    squat3:            149,
    squat3_success:    false,
    bench1:            93,
    bench1_success:    true,
    bench2:            97,
    bench2_success:    true,
    bench3:            99,
    bench3_success:    false,
    deadlift1:         171,
    deadlift1_success: true,
    deadlift2:         183,
    deadlift2_success: true,
    deadlift3:         185,
    deadlift3_success: false,
  ),
  MeetResult.create(
    lifter: 'Peter Radonic',
    weight: 91.6,
    gender: 'M',
    squat1: 140,
    squat1_success: false,
    squat2:            150,
    squat2_success:    true,
    squat3:            156,
    squat3_success:    false,
    bench1:            95,
    bench1_success:    true,
    bench2:            103,
    bench2_success:    false,
    bench3:            105,
    bench3_success:    false,
    deadlift1:         200,
    deadlift1_success: true,
    deadlift2:         210,
    deadlift2_success: true,
    deadlift3:         220,
    deadlift3_success: false,
  ),
  MeetResult.create(
    lifter: 'Danny Dinh',
    weight: 78.6,
    gender: 'M',
    squat1: 143,
    squat1_success: true,
    squat2:            153,
    squat2_success:    true,
    squat3:            159,
    squat3_success:    false,
    bench1:            91,
    bench1_success:    true,
    bench2:            97,
    bench2_success:    false,
    bench3:            97,
    bench3_success:    true,
    deadlift1:         145,
    deadlift1_success: true,
    deadlift2:         157,
    deadlift2_success: true,
    deadlift3:         165,
    deadlift3_success: true,
  ),
  MeetResult.create(
    lifter: 'Phillip Chan',
    weight: 75,
    gender: 'M',
    squat1: 121,
    squat1_success: true,
    squat2:            137,
    squat2_success:    true,
    squat3:            145,
    squat3_success:    false,
    bench1:            81,
    bench1_success:    true,
    bench2:            87,
    bench2_success:    true,
    bench3:            93,
    bench3_success:    false,
    deadlift1:         159,
    deadlift1_success: true,
    deadlift2:         173,
    deadlift2_success: false,
    deadlift3:         175,
    deadlift3_success: true,
  ),
  MeetResult.create(
    lifter: 'Emily Ng',
    weight: 65.4,
    gender: 'F',
    squat1: 93,
    squat1_success: true,
    squat2:            99,
    squat2_success:    true,
    squat3:            105,
    squat3_success:    false,
    bench1:            51,
    bench1_success:    false,
    bench2:            51,
    bench2_success:    true,
    bench3:            55,
    bench3_success:    false,
    deadlift1:         100,
    deadlift1_success: true,
    deadlift2:         105,
    deadlift2_success: true,
    deadlift3:         109,
    deadlift3_success: true,
  ),
  MeetResult.create(
    lifter: 'William Kingsford',
    weight: 94.7,
    gender: 'M',
    squat1: 111,
    squat1_success: true,
    squat2:            121,
    squat2_success:    true,
    squat3:            130,
    squat3_success:    true,
    bench1:            61,
    bench1_success:    true,
    bench2:            72,
    bench2_success:    false,
    bench3:            72,
    bench3_success:    false,
    deadlift1:         121,
    deadlift1_success: true,
    deadlift2:         140,
    deadlift2_success: true,
    deadlift3:         160,
    deadlift3_success: false,
  ),
  MeetResult.create(
    lifter: 'Jenny Lemberg',
    weight: 67.1,
    gender: 'F',
    squat1: 100,
    squat1_success: false,
    squat2:            102,
    squat2_success:    false,
    squat3:            102,
    squat3_success:    false,
    bench1:            0,
    bench1_success:    false,
    bench2:            0,
    bench2_success:    false,
    bench3:            0,
    bench3_success:    false,
    deadlift1:         0,
    deadlift1_success: false,
    deadlift2:         0,
    deadlift2_success: false,
    deadlift3: 0,
  )
]
meet2.save!

meet3 = Meet.create(title: 'October 28th 2012 Classic 3-Lift Competition')
meet3.meet_results = [
  MeetResult.create(
    lifter: 'John Tan',
    weight: 82,
    gender: 'M',
    squat1:            127,
    squat1_success:    true,
    squat2:            143,
    squat2_success:    true,
    squat3:            153,
    squat3_success:    true,
    bench1:            73,
    bench1_success:    true,
    bench2:            85,
    bench2_success:    true,
    bench3:            99,
    bench3_success:    false,
    deadlift1:         185,
    deadlift1_success: true,
    deadlift2:         207,
    deadlift2_success: true,
    deadlift3:         213,
    deadlift3_success: true,
  ),
  MeetResult.create(
    lifter: 'Jade Pauley',
    weight: 73.6,
    gender: 'M',
    squat1:            115,
    squat1_success:    true,
    squat2:            129,
    squat2_success:    true,
    squat3:            137,
    squat3_success:    false,
    bench1:            75,
    bench1_success:    false,
    bench2:            77,
    bench2_success:    true,
    bench3:            81,
    bench3_success:    true,
    deadlift1:         161,
    deadlift1_success: true,
    deadlift2:         171,
    deadlift2_success: true,
    deadlift3:         177,
    deadlift3_success: true,
  ),
  MeetResult.create(
    lifter: 'Abdullah Syed',
    weight: 78.8,
    gender: 'M',
    squat1:            135,
    squat1_success:    true,
    squat2:            142,
    squat2_success:    false,
    squat3:            144,
    squat3_success:    true,
    bench1:            75,
    bench1_success:    true,
    bench2:            80,
    bench2_success:    true,
    bench3:            87,
    bench3_success:    true,
    deadlift1:         155,
    deadlift1_success: true,
    deadlift2:         161,
    deadlift2_success: true,
    deadlift3:         168,
    deadlift3_success: false,
  ),
  MeetResult.create(
    lifter: 'Peter Radonic',
    weight: 86.7,
    gender: 'M',
    squat1:            125,
    squat1_success:    false,
    squat2:            127,
    squat2_success:    true,
    squat3:            143,
    squat3_success:    false,
    bench1:            83,
    bench1_success:    true,
    bench2:            87,
    bench2_success:    true,
    bench3:            93,
    bench3_success:    false,
    deadlift1:         180,
    deadlift1_success: true,
    deadlift2:         190,
    deadlift2_success: true,
    deadlift3:         195,
    deadlift3_success: false,
  ),
  MeetResult.create(
    lifter: 'Henry Lee',
    weight: 73.8,
    gender: 'M',
    squat1:            113,
    squat1_success:    true,
    squat2:            117,
    squat2_success:    true,
    squat3:            125,
    squat3_success:    true,
    bench1:            79,
    bench1_success:    true,
    bench2:            85,
    bench2_success:    true,
    bench3:            91,
    bench3_success:    false,
    deadlift1:         141,
    deadlift1_success: true,
    deadlift2:         149,
    deadlift2_success: true,
    deadlift3:         153,
    deadlift3_success: true,
  ),
  MeetResult.create(
    lifter: 'Danny Dinh',
    weight: 77.3,
    gender: 'M',
    squat1:            127,
    squat1_success:    true,
    squat2:            135,
    squat2_success:    true,
    squat3:            143,
    squat3_success:    false,
    bench1:            83,
    bench1_success:    false,
    bench2:            87,
    bench2_success:    true,
    bench3:            93,
    bench3_success:    true,
    deadlift1:         121,
    deadlift1_success: true,
    deadlift2:         129,
    deadlift2_success: true,
    deadlift3:         133,
    deadlift3_success: true,
  ),
  MeetResult.create(
    lifter: 'Eddie Shen',
    weight: 71.1,
    gender: 'M',
    squat1:            111,
    squat1_success:    false,
    squat2:            111,
    squat2_success:    false,
    squat3:            115,
    squat3_success:    true,
    bench1:            81,
    bench1_success:    false,
    bench2:            81,
    bench2_success:    false,
    bench3:            81,
    bench3_success:    false,
    deadlift1:         119,
    deadlift1_success: true,
    deadlift2:         125,
    deadlift2_success: true,
    deadlift3:         127,
    deadlift3_success: false,
  ),

]
meet3.save!
