# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ko = Language.create(
    name: "한국어",
    title: "코로나 감염 현황",
    location: "지역",
    date: "날짜",
    numConfirmed: "확진자 수",
    route: "이동동선",
    prevention: "예방행동수칙",
    inProcess: "검사진행",
    monitored: "감시대상",
    thisWeek: "금주",
    accumulated: "누적",
    numConfirmedByLocation: "지역별 확진자 수",
    today: "금일",
    lastWeek: "전주",
    guide: "아래 표를 클릭하시면 해당하는 이동경로를 조회 가능합니다.",
    index: "번호",
    residence: "거주지",
    dateConfirmed: "확진일",
    routeIdentified: "경로파악",
    genderAge: "성별연령",
    confirmedName: "확진자명",
    infectionRoute: "감염경로",
    movementRoute: "이동경로",
    image: "https://www.kma.go.kr/upload/images_by_editor/202002/ns_02182020173048.jpg",
)

en = Language.create(
    name: "English",
    title: "Corona outbreak",
    location: "Location",
    date: "Date",
    numConfirmed: "Number of confirmed cases",
    route: "Movement path",
    prevention: "Public advice",
    inProcess: "Checkup in progress",
    monitored: "Being monitored",
    thisWeek: "This week",
    accumulated: "Accumulated",
    numConfirmedByLocation: "Number of confirmed cases by location",
    today: "Today",
    lastWeek: "Last week",
    guide: "Click on each row to see the movement path of the corresponding case.",
    index: "Index",
    residence: "Residence area",
    dateConfirmed: "Date confirmed",
    routeIdentified: "Movement path identification",
    genderAge: "Gender/Age",
    confirmedName: "Name of the patient",
    infectionRoute: "Infection route",
    movementRoute: "Movement path",
    image: "https://monaghan.ie/wp-content/uploads/2020/03/COVID-19-A3-Public-Information-Poster-English-scaled.jpg",
)

si = Si.create(
    name: "용인시",
    inProcessThisWeek: 30,
    inProcessAccumulated: 30,
    monitoredThisWeek: 30,
    monitoredAccumulated: 30,
)

gu = Gu.create(
    name: "처인구",
    today: 30,
    thisWeek: 30,
    lastWeek: 30,
    accumulated: 30,
    si_id: si.id
)

gu2 = Gu.create(
    name: "수지구",
    today: 30,
    thisWeek: 30,
    lastWeek: 30,
    accumulated: 30,
    si_id: si.id
)

dong = Dong.create(
    name: "모현읍",
    today: 15,
    thisWeek: 15,
    lastWeek: 15,
    accumulated: 15,
    gu_id: gu.id,
    si_id: gu.si_id
)

dong2 = Dong.create(
    name: "역삼동",
    today: 15,
    thisWeek: 15,
    lastWeek: 15,
    accumulated: 15,
    gu_id: gu.id,
    si_id: gu.si_id
)

dong3 = Dong.create(
    name: "신봉동",
    today: 30,
    thisWeek: 30,
    lastWeek: 30,
    accumulated: 30,
    gu_id: gu2.id,
    si_id: gu2.si_id
)

confirmed = Confirmed.create(
    index: 1,
    dateConfirmed: "2020-08-19",
    routeIdentified: true,
    age: 28,
    dong_id: dong.id,
    gu_id: dong.gu_id,
    si_id: dong.si_id
)

confirmed2 = Confirmed.create(
    index: 2,
    dateConfirmed: "2020-08-20",
    routeIdentified: true,
    age: 28,
    dong_id: dong3.id,
    gu_id: dong3.gu_id,
    si_id: dong3.si_id
)

LanguageConfirmed.create(
    language_id: ko.id,
    confirmed_id: confirmed.id,
    name: "김땡땡",
    gender: "여",
    infectionRoute: "공기",
    movementRoute: "땡땡고등학교 - 땡땡노래방 - 땡땡놀이터",
)

LanguageConfirmed.create(
    language_id: en.id,
    confirmed_id: confirmed.id,
    name: "Kim Dang Dang",
    gender: "Female",
    infectionRoute: "Air",
    movementRoute: "DD high school - DD Karaoke - DD Playgroud",
)

LanguageConfirmed.create(
    language_id: ko.id,
    confirmed_id: confirmed2.id,
    name: "김땡땡",
    gender: "남",
    infectionRoute: "접촉",
    movementRoute: "땡땡고등학교 - 땡땡노래방 - 땡땡놀이터",
)

LanguageConfirmed.create(
    language_id: en.id,
    confirmed_id: confirmed2.id,
    name: "Kim Dang Dang",
    gender: "Male",
    infectionRoute: "Touch",
    movementRoute: "DD high school - DD Karaoke - DD Playgroud",
)

LanguageDong.create(
    language_id: ko.id,
    dong_id: dong.id,
    name: "모현읍",
)

LanguageDong.create(
    language_id: ko.id,
    dong_id: dong2.id,
    name: "역삼동",
)

LanguageDong.create(
    language_id: ko.id,
    dong_id: dong3.id,
    name: "신봉동",
)

LanguageDong.create(
    language_id: en.id,
    dong_id: dong.id,
    name: "Mohyeon-eub",
)

LanguageDong.create(
    language_id: en.id,
    dong_id: dong2.id,
    name: "Yeoksam-dong",
)

LanguageDong.create(
    language_id: en.id,
    dong_id: dong3.id,
    name: "Shinbong-dong",
)

LanguageGu.create(
    language_id: ko.id,
    gu_id: gu.id,
    name: "처인구"
)

LanguageGu.create(
    language_id: en.id,
    gu_id: gu.id,
    name: "Cheoin-gu"
)

LanguageGu.create(
    language_id: ko.id,
    gu_id: gu2.id,
    name: "수지구"
)

LanguageGu.create(
    language_id: en.id,
    gu_id: gu2.id,
    name: "Suji-gu"
)

LanguageSi.create(
    language_id: ko.id,
    si_id: si.id,
    name: "용인시"
)

LanguageSi.create(
    language_id: en.id,
    si_id: si.id,
    name: "Yongin-si"
)
