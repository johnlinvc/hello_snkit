import Kitura
import SNKit

let router = Router()
router.get("/") {
    req, res, next in
    let window = SNWindow()
    print(req.queryParameters)
    window.rootViewController = ViewController()
    res.send(window.dispatch(query: req.queryParameters))
    next()
}


Kitura.addHTTPServer(onPort: 8080, with: router)
Kitura.run()
