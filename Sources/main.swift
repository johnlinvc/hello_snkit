import Kitura
import SNKit

let router = Router()
router.get("/") {
    req, res, next in
    let window = SNWindow()
    res.send(window.dispatch())
    next()
}


Kitura.addHTTPServer(onPort: 8080, with: router)
Kitura.run()
