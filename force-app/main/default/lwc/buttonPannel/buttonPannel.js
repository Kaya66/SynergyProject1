import { LightningElement } from 'lwc';

export default class ButtonPannel extends LightningElement {

    handleClickLead(){
        let event = new CustomEvent("buttonclick");
        this.dispatchEvent(event);
    }
    handleClickCase(){
        let event = new CustomEvent("buttonclick2");
        this.dispatchEvent(event);
    }

}