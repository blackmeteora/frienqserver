export default new class Helper {

    public dateToString(date:Date): string {
        return date.toISOString().
        replace(/T/, ' ').
        replace(/\..+/, '');
    }

    public utcDate(date:Date) : number {
        return Date.UTC(date.getUTCFullYear(), date.getUTCMonth(), date.getUTCDate(), date.getUTCHours(), date.getUTCMinutes(), date.getUTCSeconds());
    }

}