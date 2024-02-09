const whitelist = [
  'msisdn',
  'country',
  'home_operator',
  'number_type',
  'source',
  'comments',
  'effective_from',
  'effective_to',
  'created'
]
const calls = [
  'home_operator',
  'terminating_operator',
  'country',
  'number_type',
  'anum',
  'bnum',
  'time_of_call',
  'date_of_call',
  'duration',
  'node',
  'route',
  'ati_result',
  'subscriber_state',
  'verification_decision',
  'blacklisted',
  'whitelisted',
]
const blacklist = [
  'msisdn',
  'source',
  'created_after',
  'created_before',
  'create_by',
  'category',
  'comments',
  'type',
  'number_type'
]
const verification = [
  'calling_party',
  'called_party',
  'call_date',
  'service_key',
  'node',
  'terminating_operator',
  'home_operator',
  'srism_result',
  'ati_result',
  'subscriber_state',
  'verification_decision',
]

const selectFieldsList = (filename) => {
  let fields = []
  switch (filename) {
    case 'blacklist':
      fields = blacklist
      break;
    case 'call':
      fields = calls
      break;
    case 'verification':
      fields = verification
      break;
    case 'whitelist':
      fields = whitelist
      break;
    default:
      fields = []
      break;
  }
  return fields
}

const formatData = (filename, data) => {
  const fields = selectFieldsList(filename)
  const formattedData = {}
  fields.forEach(field => {
    if(field === 'id') return;
    if(field === 'effective_from' && data.efffective_from) {
      formattedData.effective_from = data.efffective_from
      return;
    }
    if(data[field]){
      formattedData[field] = data[field]
    }
  });
  return formattedData
}

export default formatData