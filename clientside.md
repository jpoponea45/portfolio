
# ClientSide
* Javascript
    * Web sockets
        * Signal R
        * Pusher
        * Lightstreamer
    * ECMA 5
    * ES6/ES2015
        * Promises
        * Arrow Functions
        * Classes
        * Template strings
        * Blocked scoped variables/functions
        * Iterators (for n of fibonacci)
        * Generators (function*/yield)
        * Modules
        * Default/Spread parameters
        * Map, Set
        * Proxies
    * Security
        * XSS
        * iFrame
    * Async
        * Promises
        * RxJS
            >library for composing asynchronous and event-based programs by using observable sequences. 
            * Core type Observable, 
            * Satellite types (Observer, Schedulers, Subjects) and 
            * operators (map, filter, reduce, every)
            * Observable
                > Observables are lazy Push collections of multiple values
            * Observer
            * Subscription
            * Operators
            * Subject 
                >special type of Observable that allows values to be multicasted to many Observers
            * Schedulers
    * PWA 
        * Proxy between browser and web server
        * Service Workers 
        * Manifests (installation)
    * Testing
        * Test Runners
            * Karma
        * Unit testing
            * Jest
        * e2e testing (testing the user flow)
            * Protractor
            * Jasmine
        * Visual Regression Testing (Snapshot Testing)
            * Selenium
            * Cypress
    * SPAs
        * Angular
            * Testing
                * Cypress (e2e testing)
                    * test entire page (component interaction)
                * Jasmine
                    * beforeEach
                    > Describe("MyTest", () => {
                    >   it('should return a value' () => {
                    >  })
                    >})
                    * spyOn
                    * HttpClientTestingModule
                    * Components
                        * compileComponents
                        * ComponentFixture
              * .spec.ts
            * RxJS
                * EventEmitter<T>
            * Benefits
                * Full featured CLI, Testing, RxJS, HttpClient
            * Cli
                * Scaffolding
                * Building
                * Testing
            * Directives
                * Components
                    * ShadowDom
                    * Forms
                      * Reactive
                        * One way data.  No binding
                        * Easier Unit Testing
                      * Template
                        * 2 way databinding
                    * Lifecycle
                        * ngOnInit()
                        * ngOnChanges()
                        * ngDoCheck()
                        * ngAfterContentInit()
                        * ngAfterContentChecked()
                        * ngAfterViewInit()
                        * ngAfterViewChecked()
                        * NgOnDestroy()
                    * Communication
                        * ChildParent
                            * @Input() parent to child
                            * @Output() child to parent
                    * Databinding
                        * Property Binding
                        * Event Binding
                        * Inputs and Outputs
                        * 1 way
                            * Property to Target
                            * <input [src] = "url">
                        * 2 way
                            * Combines Property/Event Binding
                            * Components can share data
                            * <input [(src)] = "url">

                * Attribute
                    * NgClass
                * Structural
                  * NgIf
            * Services
                * Service Injection
                * Singleton
                  * Set the providedIn property of the @Injectable() to "root".
                  * Include the service in the AppModule or in a module that is only imported by the AppModule
            * Pipes
              * AsyncPipe
            * Async
            * Modules
                * Lazy Loading
            * Redux patterns
            * Dependency Injection
              * Injectable
            * Best practices
                * Lazy Load Modules
        * Redux
            * Immutable
            * Single direction data flow
* CSS
    * SASS/LESS
    * Flexbox