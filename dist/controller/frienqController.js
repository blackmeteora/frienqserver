"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
class FrienqController {
    Index(req, res) {
        res.end('Hello From Frienq Api !');
    }
    ProfilData(req, res) {
        res.send(req.body.user);
    }
}
exports.default = new FrienqController();
//# sourceMappingURL=frienqController.js.map