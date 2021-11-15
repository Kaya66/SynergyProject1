import { LightningElement } from 'lwc';

import getAccount from '@salesforce/apex/AccountService.getAccount';

import ACCOUNT_OBJECT from '@salesforce/schema/Account'

export default class LwcDatabaseAccounts extends LightningElement {

    data = [];
    columns = [];

}