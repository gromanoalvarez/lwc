import { LightningElement, api } from 'lwc';
export default class Button extends LightningElement {
    @api label;
    @api icon;
    handleButton(event) {
      this.dispatchEvent(new CustomEvent('buttonclick',{
         bubbles: true //permite pasar data por event al controls padre y luego al numerator abuelo
      }));
    }
}