const puppeteer = require('puppeteer');

(async () => {
  const browser = await puppeteer.launch();
  const page = await browser.newPage();
  await page.goto('http://localhost:5000/resume', {waitUntil: 'networkidle0'});
  await page.pdf({
    path: 'src/assets/documents/matthew-jorissen-resume.pdf',
    format: 'A4',
    printBackground: true,
    pageRanges: '1',
    scale: .93
  });

  await browser.close();
})();
