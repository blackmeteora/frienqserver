"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.default = new class Helper {
    dateToString(date) {
        return date.toISOString().
            replace(/T/, ' ').
            replace(/\..+/, '');
    }
    utcDate(date) {
        return Date.UTC(date.getUTCFullYear(), date.getUTCMonth(), date.getUTCDate(), date.getUTCHours(), date.getUTCMinutes(), date.getUTCSeconds());
    }
};
//# sourceMappingURL=helper.js.map