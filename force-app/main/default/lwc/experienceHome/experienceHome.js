import { LightningElement } from 'lwc';

export default class ExperienceHome extends LightningElement {
    CreateLead = false;
    CreateCase = false;
    ShowButtons = true;

    handleClickLead(){
        this.CreateLead = true;
        this.ShowButtons = false;
    }
    handleClickCase(){
        this.CreateCase = true;
        this.ShowButtons =  false;
    }

}