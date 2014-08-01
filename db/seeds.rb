# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
# cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Card.create([
  {
    card_type: 'sick',
    title: 'Flu',
    symptoms: 'fever,cough,runny nose',
    medications_attributes: [
      {name: 'Dymadon'},
      {name: 'Fess little nose'},
      {name: 'Cuddles'}
      ],
    doctor: 'Dr. Alan',
    date: '2013-07-13'.to_date,
    color: 'orange'
  },

  {
    card_type: 'sick',
    title: 'Gastro',
    symptoms: 'fever,diarrhea',
    medications_attributes: [{name: 'Dymadon'}, {name: 'Hydralites'}, {name: 'Cuddles'}],
    doctor: 'Dr. Lisik',
    date: '2013-08-10'.to_date,
    color: 'green'
  },

  {
    card_type: 'sick',
    title: 'Asthma',
    symptoms: 'cough,runny nose',
    medications_attributes: [{name: 'Ventolin'}, {name: 'Flixotide'}, {name: 'Redipred'}],
    doctor: 'Dr. Nixon',
    date: '2014-02-08'.to_date,
    color: 'blue'
  },

  {
    card_type: 'sick',
    title: 'Allergy',
    symptoms: 'cough,runny nose,fever',
    medications_attributes: [{name: 'Claritin kids'}, {name: 'Moogoo'}, {name: 'Cream'}],
    doctor: 'Dr. Stephenson',
    date: '2014-08-14'.to_date,
    color: 'red'
  },

  {
    card_type: 'sick',
    title: 'Immunisation',
    symptoms: 'cough,runny nose',
    medications_attributes: [{name: 'Ventolin'}, {name: 'Flixotide'}, {name: 'Redipred'}],
    doctor: 'Dr. Nixon',
    date: '2014-09-12'.to_date,
    color: 'blue'
  },

  {
    card_type: 'sick',
    title: 'Croup',
    symptoms: 'cough,runny nose',
    medications_attributes: [{name: 'Ventolin'}, {name: 'Flixotide'}, {name: 'Redipred'}],
    doctor: 'Dr. Nixon',
    date: '2014-09-12'.to_date,
    color: 'red'
  },

  {
    card_type: 'sick',
    title: 'Allergy',
    symptoms: 'cough,runny nose,fever',
    medications_attributes: [{name: 'Claritin kids'}, {name: 'Moogoo'}, {name: 'Cream'}],
    doctor: 'Dr. Stephenson',
    date: '2014-08-14'.to_date,
    color: 'red'
  }
])