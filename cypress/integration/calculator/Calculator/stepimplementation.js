import { expect } from "chai";
import { Given, Then, When } from "cypress-cucumber-preprocessor/steps";

const url = "https://www.online-calculator.com/html5/online-calculator/index.php?v=10";


Given(`I open calculator app`, () => {
  cy.visit(url);
});


When(`I press {string} in the calculator`, numpad => {  
  numpad.split('').forEach(num => {
     var keycode = num.charCodeAt(0)
     cy.get("canvas")
     .trigger("keypress", {which: keycode, keyCode: keycode, bubbles: true})
   })
});

When(`I perform the arithmetic operation {string} in the calculator`, operation => {
  operation.split('').forEach(num => {
    var keycode = num.charCodeAt(0)
    cy.get("canvas")
    .trigger("keypress", {which: keycode, keyCode: keycode, bubbles: true})
  })
})


Then(`it should display {string} in the calculator screen`, numpad => {
  let actualText
  cy.window()
    .then((win) => {
      actualText = win.exportRoot.showscreen_txt.text
      actualText = actualText.replace(/ +/g, "");
    })
    .then(() => {
      expect(actualText).to.equal(numpad)
    })
})