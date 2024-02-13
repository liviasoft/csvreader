const filename = 'blacklist'
import { PrismaClient } from '@prisma/client';
import xlsx from 'xlsx';
import formatData from './utils/formatters.js';

const { readFile, utils } = xlsx;

const parse = (filename) => {
  const excelData = readFile(filename);
  return Object.keys(excelData.Sheets).map((name) => ({
    name,
    data: utils.sheet_to_json(excelData.Sheets[name], {raw: false, defval: null, blankrows: true}),
  }))
}

let data = [];

parse(`./data/${filename}.csv`).forEach((el) => {
  data = el.data
})

const writeFileToDB = async(filename) => {
  if(data.length){
    console.log({sample: data[0], formatted: formatData(filename, data[0])});
    const prisma = new PrismaClient()
    const formatted = [];
    data.forEach((dp) => {
      formatted.push(formatData(filename, dp))
    })
    const result = await prisma[filename].createMany({
      data: [
        ...formatted
      ]
    })
    console.log({result});
  } else {
    console.log(`No data present in ${filename}.csv`)
  }
}
await writeFileToDB(filename)
