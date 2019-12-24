export default new class Helper {

    public dateToString(date:Date): string {
        return date.toISOString().
        replace(/T/, ' ').
        replace(/\..+/, '');
    }

}