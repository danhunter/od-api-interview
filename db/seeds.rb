clinician_1 = Clinician.create({
  email:          'clinician1@enzymehealth.com',
  uuid:           SecureRandom.uuid,
  name:           'Clinician 1',
  clinician_type: 'physician',
  rating:         1,
  status:         'active',
  licenses:       ['tx']
})

clinician_2 = Clinician.create({
  email:          'clinician2@enzymehealth.com',
  uuid:           SecureRandom.uuid,
  name:           'Clinician 2',
  clinician_type: 'np',
  rating:         1,
  status:         'active',
  licenses:       ['tx', 'ca']
})

clinician_3 = Clinician.create({
  email:          'clinician3@enzymehealth.com',
  uuid:           SecureRandom.uuid,
  name:           'Clinician 3',
  clinician_type: 'np',
  rating:         2,
  status:         'active',
  licenses:       ['ca', 'ny']
})

clinician_4 = Clinician.create({
  email:          'clinician4@enzymehealth.com',
  uuid:           SecureRandom.uuid,
  name:           'Clinician 4',
  clinician_type: 'np',
  rating:         2,
  status:         'active',
  licenses:       ['tx', 'ny']
})

clinician_5 = Clinician.create({
  email:          'clinician5@enzymehealth.com',
  uuid:           SecureRandom.uuid,
  name:           '1 5',
  clinician_type: 'physician',
  rating:         3,
  status:         'active',
  licenses:       ['ny']
})

consult_rate_1 = ConsultRate.create
consult_rate_2 = ConsultRate.create

Enrollment.create({
  clinician: clinician_1,
  consult_rate: consult_rate_1,
})
Enrollment.create({
  clinician: clinician_5,
  consult_rate: consult_rate_1,
})

Enrollment.create({
  clinician: clinician_2,
  consult_rate: consult_rate_2,
})
Enrollment.create({
  clinician: clinician_3,
  consult_rate: consult_rate_2,
})
Enrollment.create({
  clinician: clinician_4,
  consult_rate: consult_rate_2,
})

consult_1 = Consult.create({
  consult_uuid: SecureRandom.uuid,
  consult_rate: consult_rate_1,
  state: 'tx',
  status: 'new'
})

consult_2 = Consult.create({
  consult_uuid: SecureRandom.uuid,
  consult_rate: consult_rate_1,
  state: 'ny',
  status: 'new'
})

consult_3 = Consult.create({
  consult_uuid: SecureRandom.uuid,
  consult_rate: consult_rate_2,
  state: 'ny',
  status: 'new'
})

consult_4 = Consult.create({
  consult_uuid: SecureRandom.uuid,
  consult_rate: consult_rate_2,
  state: 'tx',
  status: 'new'
})

consult_5 = Consult.create({
  consult_uuid: SecureRandom.uuid,
  consult_rate: consult_rate_2,
  state: 'ca',
  status: 'new'
})
