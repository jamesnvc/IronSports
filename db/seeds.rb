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

meet1 = Meet.create(title: 'Octobr 5th 2013 Classic 3-Lift Competition',
                   occured: DateTime.new(2013, 10, 5))
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

meet2 = Meet.create(title: 'April 7th 2013 Classic 3-Lift Competition',
                    occured: DateTime.new(2013, 4, 7))
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

meet3 = Meet.create(title: 'October 28th 2012 Classic 3-Lift Competition',
                   occured: DateTime.new(2012, 10, 28))
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

media_page = Page.create(
  private: false,
  title: 'media',
  in_nav: true,
  content: <<-MEDIAPAGECONTENT)
    <h2>Media</h2>
    <ul>
    <li class="gallery">
    <a href="https://picasaweb.google.com/105478977951551399459/Promotional?authuser=0&amp;feat=embedwebsite">
    <div class="text">Promotional</div>
    <img class="whitebrd" src="https://lh4.googleusercontent.com/-_lAWCFWNIqE/UD_iRCClm3E/AAAAAAAAABI/MP7GsLOpXIY/s144-c/Promotional.jpg">
    </a>
    </li>
    <li class="gallery">
    <a href="https://picasaweb.google.com/105478977951551399459/Recruitment">
    <div class="text">Recruitment</div>
    <img class="whitebrd" src="https://lh4.googleusercontent.com/-0YMvAWXNSXg/UHY3_eVJqmE/AAAAAAAAACU/7gl1ITuRuTE/s144-c/Recruitment.jpg">
    </a>
    </li>
    <li class="gallery">
    <a href="https://picasaweb.google.com/105478977951551399459/Seminars">
    <div class="text">Seminars</div>
    <img class="whitebrd" src="https://lh3.googleusercontent.com/-XgK_fx867vQ/UHY5l0UWnlE/AAAAAAAAACo/R2Vf6rXSpAE/s144-c/Seminars.jpg">
    </a>
    </li>
    <li class="gallery">
    <a href="https://picasaweb.google.com/105478977951551399459/OctoberClassic3Lift?authuser=0&amp;feat=directlink">
    <div class="text">
    October 28th 2012
    <br>
    Classic 3-Lift
    </div>
    <img class="whitebrd" src="https://lh5.googleusercontent.com/-bL6gyJf_Neo/UKm1Sj2Ga5E/AAAAAAAAAaY/iTMNyQI_f0c/s144-c/OctoberClassic3Lift.jpg">
    </a>
    </li>
    <li class="gallery">
    <a href="https://picasaweb.google.com/105478977951551399459/SpringClassic3Lift?authuser=0&amp;feat=directlink">
    <div class="text">
    April 7th 2013
    <br>
    Classic 3-Lift
    </div>
    <img class="whitebrd" src="https://lh5.googleusercontent.com/-1amOu75WEC4/UiTlRWYk21E/AAAAAAAAAr4/frqSLYr-_Mg/s144-c/SpringClassic3Lift.jpg">
    </a>
    </li>
    </ul>
  MEDIAPAGECONTENT
media_page.save!

about_page = Page.create(
  private: false,
  title: 'club',
  in_nav: false,
  content: <<-ABOUTPAGECONTENT)
    <h2>About U of T Ironsports</h2>
    <div class="text">
    <p></p>
    <p class="center">
    <img alt="Club1" class="whitebrd smaller" src="/assets/club1.jpg">
    </p>
    <p>
    The University of Toronto Ironsports Club (UTIS) is non-profit student
    strength training community.  Founded in March 2012, U of T Ironsports was created
    to connect students to strength training and nutrition resources as well as each other.
    Students are often seeking healthy methods of stress relief and support networks, both of
    which U of T Ironsports aims to provide.
    </p>
    <p>
    Our club now includes powerlifting and weightlifting divisions. Powerlifting is a sport
    that consists of three attempts at maximal weight on three lifts: squat, bench press, and deadlift.
    The powerlifts primarily test absolute strength. In comparison to powerlifting, weightlifting
    tests aspects of explosive strength. Weightlifting is an Olympic sport comprised of the snatch and
    clean &amp; jerk movements. Both sports demonstrate the extreme strength limits of human potential,
    and the incredible will and dedication of their athletes.
    </p>
    <p>
    Powerlifting and weightlifting appeal to students due to their versatility: though group
    training sessions are offered and encouraged, our members have the flexibility to train
    at a time most convenient to them. For some the sport can be a meditation, and for others
    picking up heavy things and putting them down is a great way to de-stress with your friends.
    Our members know, regardless of how poor or well our exams, essays, and assignments go -
    the iron will always make us feel better.
    </p>
    <p class="center">
    <img alt="Squat" class="whitebrd smaller" src="/assets/squat.jpg">
    </p>
    <h3>Why Strength Sports?</h3>
    <figure>
    <blockquote cite="http://www.oldtimestrongman.com/strength-articles/iron-henry-rollins">
    "The Iron is the best antidepressant I have ever found. There is no better
    way to fight weakness than with strength. Once the mind and body have been
    awakened to their true potential, it&rsquo;s impossible to turn back. The Iron
    never lies to you. You can walk outside and listen to all kinds of talk,
    get told that you&rsquo;re a god or a total bastard. The Iron will always kick
    you the real deal. The Iron is the great reference point, the all-knowing
    perspective giver. Always there like a beacon in the pitch black. I have
    found the Iron to be my greatest friend. It never freaks out on me, never
    runs. Friends may come and go. But two hundred pounds is always two hundred
    pounds."
    </blockquote>
    <figcaption>
    &mdash; Excerpt from
    <a href="http://www.oldtimestrongman.com/strength-articles/iron-henry-rollins">
    <cite>The Iron</cite>
    </a>
    by Henry Rollins
    </figcaption>
    </figure>
    </div>
  ABOUTPAGECONTENT
about_page.save!

calendar_page = Page.create(
  private: false,
  title: 'calendar',
  in_nav: true,
  content: <<-CALPAGECONTENT)
    <h2>Calendar</h2>
    <iframe frameborder="0" height="400" scrolling="no" src="http://www.google.com/calendar/embed?src=6nf5c208h1prqelvvn8la4eu04%40group.calendar.google.com&amp;ctz=America/Toronto" style=" border-width:0 " width="600"></iframe>
  CALPAGECONTENT
calendar_page.save!

contact_page = Page.create(
  private: false,
  title: 'contact',
  in_nav: true,
  content: <<-CONTACTPAGECONTENT)
    <h2>Contact</h2>
    <h4>General Inquiries:</h4>
    <ul>
    <li>
    Amanda Santos, Club President -
    <a href="mailto:president@uoftironsports.ca">president@uoftironsports.ca</a>
    </li>
    </ul>
    <h4>Questions about How to Join?</h4>
    <ul>
    <li>
    William Kingsford, VP Communication -
    <a href="mailto:vpcomm@uoftironsports.ca">vpcomm@uoftironsports.ca</a>
    </li>
    </ul>
    <h4>Questions about Lifting?</h4>
    <ul>
    <li>
    General
    <a href="mailto:coach@uoftironsports.ca">coach@uoftironsports.ca</a>
    </li>
    <li>
    Nick Wojcik, Powerlifting -
    <a href="mailto:coach@uoftironsports.ca">coach@uoftironsports.ca</a>
    </li>
    <li>
    Hiro Zhou, Weightlifting -
    <a href="mailto:coach@uoftironsports.ca">coach@uoftironsports.ca</a>
    </li>
    <li>
    Killian Lucas, Weightlifting -
    <a href="mailto:coach@uoftironsports.ca">coach@uoftironsports.ca</a>
    </li>
    </ul>
    <h4>Having problems with our website?</h4>
    <ul>
    <li></li>
    James Cash, Website Administrator -
    <a href="mailto:webadmin@uoftironsports.ca">webadmin@uoftironsports.ca</a>
    </ul>
  CONTACTPAGECONTENT
contact_page.save!

events_page = Page.create(
  private: false,
  title: 'events',
  in_nav: true,
  content: <<-EVENTPAGECONTENT)
    <h2>Our Events</h2>
    <div class="text">
    <p>
    We primarily host three types of events throughout the year: lifting competitions,
    seminars, and social train &amp; eat events. Visit our
    <a href="/calendar">calendar</a>
    page for more details about upcoming events.
    </p>
    <h3>
    Lifting Competitions: Bar is Loaded
    </h3>
    <p>
    The hard work of our members is culminated &amp; showcased at our lifting
    competitions.  All of our lifters are students, each with midterms &amp; a
    life to balance outside of school. These competitions give them a unique
    competitive experience&mdash;to summon their focus, self-confidence, and
    strength to carry out these powerful full body movements.
    </p>
    <p>
    Competitions are hosted at 55 Harbord St. in the Strength &amp;
    Conditioning Centre at the U of T Athetic Center.
    All paid members are elibile to compete with a $15 athlete registration
    fee. For our members (&amp; supporters!) not interested in competiting,
    we need a ton of volunteers to spot, judge, load &amp; help with set-up and
    take-down. Spectators are welcome!
    </p>
    <br>
    <h4>Ironsports Classic 3-Lift Powerlifting Meets</h4>
    <figure class="left">
    <img alt="Squat2" class="whitebrd" src="/assets/squat2.jpg">
    <figcaption class="align-left">
    Photo by Aditya Bhargava
    </figcaption>
    </figure>
    <ul>
    <li>
    <div class="redtext">
    Students lifters will be demonstrating their one-repetition max attempts at the squat,
    bench, and deadlift. Our meets are conducted in IPF-style, with each lifter given three
    attempts at each lift. Raw weight totals will be scaled according to Wilks, and the
    top three lifters will take home bronze, silver, &amp; gold.
    </div>
    </li>
    <li>
    <u>Meet Director:</u>
    Amanda Santos -
    <a href="mailto:president@uoftironsports.ca">president@uoftironsports.ca</a>
    </li>
    <li>
    <u>Date:</u>
    Saturday, October 5th, 2013 (TBC) and Saturday, April 6th, 2014 (TBC)
    </li>
    </ul>
    <p class="clear"></p>
    <br>
    <h4>Ironsports Winter Weightlifting Competition</h4>
    <figure class="left">
    <img alt="Clean" class="whitebrd" src="/assets/clean.jpg">
    <figcaption class="align-left">
    Photo by Andrew Lloyd-Kuzik
    </figcaption>
    </figure>
    <ul>
    <li>
    <div class="redtext">
    Students lifters will be demonstrating their one-repetition max attempts at the snatch and
    clean &amp; jerk. Our meets are conducted in IWF-style, with each lifter given three attempts
    at each lift. Raw weight totals will be scaled according to Sinclair, and the top three
    lifters will take home bronze, silver, &amp; gold.
    </div>
    </li>
    <li>
    <u>Meet Director:</u>
    Killian Lucas -
    <a href="mailto:coach@uoftironsports.ca">coach@uoftironsports.ca</a>
    </li>
    <li>
    <u>Date:</u>
    Saturday, February 2nd, 2014 (TBC)
    </li>
    </ul>
    <p class="clear"></p>
    <br>
    <h3>
    Seminars: Strength Training &amp; Nutrition Education
    </h3>
    <p>
    </p><div class="redtext">
    Throughout the year we host training &amp; nutrition seminars, to help educate our student athletes.
    </div>
    Upcoming topics for this year include: Strength Training Programming, Competitive Powerlifting,
    Eating for Mass Gain, Mobility, Recovery &amp; Injury Prevention, Competitive Weightlifting, and
    Eating for Fat Loss.
    <p></p>
    <h3>
    Social Training &amp; Eating Events
    </h3>
    <p>
    </p><div class="redtext">
    Academic crunch time means for our members the need more casual programming.
    </div>
    Events such as Bulktober &amp; our post-workout meal contest were created to give our members a
    break from the iron and some time to catch up with the community.
    <p></p>
    </div>
  EVENTPAGECONTENT
events_page.save!

join_page = Page.create(
  private: false,
  title: 'joinus',
  in_nav: true,
  content: <<-JOINPAGECONTENT)
    <div class="text">
    <p class="center">
    <img alt="Stress" class="whitebrd left" src="/assets/stress.jpg">
    </p>
    <h3>
    <div class="redtext">
    Interested in becoming a member of U of T Ironsports?
    </div>
    </h3>
    <p>
    1. Sign up on our
    <a href="http://eepurl.com/oqcN1">mailing list</a>
    to recieve updates about our club events.
    </p>
    <p>
    2. Attend one of our seminars to register as an official member ($10). Visit our
    <a href="/calendar">calendar</a>
    to see upcoming events.
    </p>
    </div>
    <h3 class="text">
    Membership Benefits
    </h3>
    <p class="text">
    Becoming a paid member of U of T Ironsports entitles you to receipt of a
    custom U of T Ironsports training log notebook and eligibility to participate
    at any of our events. Membership is renewed annually. To register as an official
    paid member, one can do so at any of our seminar events.
    </p>
    <p class="text">
    Any U of T student, staff, alumni or faculty member is welcome to join U of T
    Ironsports. No lifting experience necessary.
    </p>
    <p class="clear"></p>
    <h3 class="text">
    Executive Team
    </h3>
    <p class="text">
    If you're interested in helping with the club logistics of hosting events,
    pursuing sponsorship opportunities, media respresentation, or managing our
    communications we'd love to hear from you. For more details regarding
    executive roles and structure of our club, feel free to take a look at our
    <a href="http://dl.dropbox.com/u/97246920/UofTIronsportsConstitution_031612.pdf">club constitution.</a>
    </p>
  JOINPAGECONTENT
join_page.save!

support_page = Page.create(
  private: false,
  title: 'supportus',
  in_nav: false,
  content: <<-SUPPORTPAGECONTENT)
    <h2>Support Us</h2>
    <div class="text">
    <p>
    U of T Ironsports represents a group determined to excel in their
    education, future careers, and the powerlifting sport. By sponsoring U of T
    Ironsports you are fostering the development of a strong, intelligent, and
    ambitious student community.
    </p>
    <p>
    All monetary support we aqcuire contributes to club programming and
    improving member experience. To host our events, rental fees are required
    for the space. We do this in the most economic way possible by using
    reduced rental rates for affiliated student groups at our university. While
    we do accept a small membership fee, we rely on external sponsorship for
    our financial support.
    </p>
    <p>
    If you or your organization is interested in supporting our club, please
    contact Amanda Santos at
    <a href="mailto:president@uoftironsports.ca">president@uoftironsports.ca.</a>
    </p>
    <h3>Sponsorship Incentives</h3>
    <p>
    U of T Ironsports accepts both monetary and in-kind donations. All partners
    of U of T Ironsports earn a logo on our website.
    </p>
    <table class="table" id="sponsors">
    <thead>
    <tr>
    <th></th>
    <th>Bronze</th>
    <th>Silver</th>
    <th>Gold</th>
    <th>Platinum</th>
    </tr>
    <tr>
    <th></th>
    <th>(&lt;$100)</th>
    <th>($101-$250)</th>
    <th>($251-$500)</th>
    <th>(&gt;$501)</th>
    </tr>
    </thead>
    <tbody>
    <tr>
    <td>Active promotion at all club events</td>
    <td></td>
    <td></td>
    <td></td>
    <td><i class="icon-ok"></i></td>
    </tr>
    <tr>
    <td>Feature advertisement in quarterly club newsletter</td>
    <td></td>
    <td></td>
    <td><i class="icon-ok"></i></td>
    <td><i class="icon-ok"></i></td>
    </tr>
    <tr>
    <td>Logo on team apparel</td>
    <td></td>
    <td><i class="icon-ok"></i></td>
    <td><i class="icon-ok"></i></td>
    <td><i class="icon-ok"></i></td>
    </tr>
    <tr>
    <td>Logo on team website</td>
    <td><i class="icon-ok"></i></td>
    <td><i class="icon-ok"></i></td>
    <td><i class="icon-ok"></i></td>
    <td><i class="icon-ok"></i></td>
    </tr>
    </tbody>
    </table>
    </div>
    <p class="center">
    <img alt="Squatlogo" class="whitebrd smaller" src="/assets/squatlogo.jpg">
    </p>
    <div class="text">
    <p>
    U of T Ironsports attends two club fairs on campus, hosted by U.T.S.U. and
    the U of T Engineering Society. At these events, the club and its sponsors
    are exposed to 1000+ undergraduate students at the University of Toronto.
    Our apparel is worn by team members at all events and throughout our
    training, providing additional exposure to the strength-training and
    athletic student communities.
    </p>
    <p>
    Although the club is still in its infancy, Ironsports athletes have already
    begun to make their mark. In June 2012, James Cash and Amanda Santos
    competed at the UTM Classic 3-lift Open OPA- sanctioned competition with
    Amanda achieving gold and James silver in their respective weight classes.
    James Cash qualified for nationals at this first meet with a 505 kg (1111
    lb) 3-lift total.
    </p>
    </div>
  SUPPORTPAGECONTENT
support_page.save!

team_page = Page.create(
  private: false,
  title: 'team',
  in_nav: false,
  content: <<-TEAMPAGECONTENT)
    <h2>About Our Team</h2>
    <div class="text">
    <p></p>
    <p class="center">
    <img alt="Members" class="whitebrd smaller" src="/assets/members.jpg">
    </p>
    <p>
    The University of Toronto Ironsports Club (UTIS) is non-profit student
    strength training community.  Founded in March 2012, U of T Ironsports was created
    to connect students to strength training and nutrition resources as well as each other.
    Students are often seeking healthy methods of stress relief and support networks, both of
    which U of T Ironsports aims to provide.
    </p>
    <p>
    Our club now includes powerlifting and weightlifting divisions. Powerlifting is a sport
    that consists of three attempts at maximal weight on three lifts: squat, bench press, and deadlift.
    The powerlifts primarily test absolute strength. In comparison to powerlifting, weightlifting
    tests aspects of explosive strength. Weightlifting is an Olympic sport comprised of the snatch and
    clean &amp; jerk movements. Both sports demonstrate the extreme strength limits of human potential,
    and the incredible will and dedication of their athletes.
    </p>
    <p>
    Powerlifting and weightlifting appeal to students due to their versatility: though group
    training sessions are offered and encouraged, our members have the flexibility to train
    at a time most convenient to them. For some the sport can be a meditation, and for others
    picking up heavy things and putting them down is a great way to de-stress with your friends.
    Our members know, regardless of how poor or well our exams, essays, and assignments go -
    the iron will always make us feel better.
    </p>
    <p class="center">
    <img alt="Squat" class="whitebrd smaller" src="/assets/squat.jpg">
    </p>
    </div>
    <h3 class="text">
    Membership Benefits
    </h3>
    <p class="text">
    Becoming a paid member of U of T Ironsports entitles you to reciept of a
    custom U of T Ironsports training log notebook and a membership card. This
    card allows you to access all online club resources and compete at all club
    meets. For our train &amp; eat social events, as a team we may receive meals at a
    reduced cost. These discounts are only applicable to paid members. Membership
    is renewed annually. To register as an official paid member, one can only do
    so at our training &amp; nutrition seminars.
    </p>
    <p class="text">
    Any U of T student, staff, or faculty member is welcome to join U of T
    Ironsports. No prequisites training-wise are required.
    </p>
    <h3 class="text">
    Executive Team
    </h3>
    <p class="text">
    If you're interested in helping with the club logistics of hosting events,
    pursuing sponsorship opportunities, media respresentation, or managing our
    communications we'd love to hear from you. For more details regarding
    executive roles and structure of our club, feel free to take a look at our
    <a href="http://dl.dropbox.com/u/97246920/UofTIronsportsConstitution_031612.pdf">club constitution.</a>
    </p>
  TEAMPAGECONTENT
team_page.save!
