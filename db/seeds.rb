# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
# cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Card.create([
  {
    title: 'Flu',
    symptoms: 'fever,cough,runny nose',
    medications: 'Dymadon,Fess little nose,Cuddles',
    doctor: 'Dr. Alan',
    date: '2013-07-13'.to_date,
    color: 'orange'
  },

  {
    title: 'Gastro',
    symptoms: 'fever,diarrhea',
    medications: 'Dymadon,Hydralites,Cuddles',
    doctor: 'Dr. Lisik',
    date: '2013-08-10'.to_date,
    color: 'green'
  },

  {
    title: 'Asthma',
    symptoms: 'cough,runny nose',
    medications: 'Ventolin,Flixotide,Redipred',
    doctor: 'Dr. Nixon',
    date: '2014-02-08'.to_date,
    color: 'blue'
  },

  {
    title: 'Allergy',
    symptoms: 'cough,runny nose,fever',
    medications: 'Claritin kids,Moogoo cream',
    doctor: 'Dr. Stephenson',
    date: '2014-08-14'.to_date,
    color: 'red'
  },

  {
    title: 'Immunisation',
    symptoms: 'cough,runny nose',
    medications: 'Ventolin,Flixotide,Redipred',
    doctor: 'Dr. Nixon',
    date: '2014-09-12'.to_date,
    color: 'blue'
  },

  {
    title: 'Croup',
    symptoms: 'cough,runny nose',
    medications: 'Ventolin,Flixotide,Redipred',
    doctor: 'Dr. Nixon',
    date: '2014-09-12'.to_date,
    color: 'red'
  },

  {
    title: 'Allergy',
    symptoms: 'cough,runny nose,fever',
    medications: 'Claritin kids,Moogoo cream',
    doctor: 'Dr. Stephenson',
    date: '2014-08-14'.to_date,
    color: 'red'
  },

  {
    title: 'Asthma',
    symptoms: 'cough,runny nose',
    medications: 'Ventolin,Flixotide,Redipred',
    doctor: 'Dr. Nixon',
    date: '2014-02-08'.to_date,
    color: 'blue'
  }

])