"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.default = new class Helper {
    dateToString(date) {
        return date.toISOString().
            replace(/T/, ' ').
            replace(/\..+/, '');
    }
};
//# sourceMappingURL=helper.js.map