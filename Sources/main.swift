import Kitura

let router = Router()
router.get("/") {
    req, res, next in
    res.send("Hello, world")
    next()
}


Kitura.addHTTPServer(onPort: 8080, with: router)
Kitura.run()
