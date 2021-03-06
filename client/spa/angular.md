
# Overview
    * Full featured CLI, Testing, RxJS, HttpClient
!["overview"](https://angular.io/generated/images/guide/architecture/overview2.png)

# Modules
> NgModules are containers for a cohesive block of code dedicated to an application domain, a workflow, or a closely related set of capabilities.

* Lazy Loading - component tree not loaded into memory until needed

# Cli
* Scaffolding
* Building
* Testing

# Testing
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

# Change Detection
> addEventListener sets isChanged property to 'true'
* Default
    * All browser clicks
    * setTimeout, setInterval
    * Ajax responses
* OnPush
    * Immutable (watches references)
    * consider immutable.js
* Change Detection Loops
    * incorrectly using lifecycle events
* Manual Change Detection  
    `constructor(private ref: ChangeDetectorRef) {  
        ref.detach();  
        setInterval(() => {  
        this.ref.detectChanges();  
        }, 5000);  
    }`
  
# Directives
> Attributes used to tell angular to generate HTML
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
        * NgOnDestroy()`
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

## Services
* Injected 
* Singleton
    * Set the providedIn property of the @Injectable() to "root".
    * Include the service in the AppModule or in a module that is only imported by the AppModule

## Pipes
    * AsyncPipe


# RxJS
**Observables (Lazy push collections)**
>library for composing asynchronous and event-based programs by using observable sequences. 
## Satellite types (Observer, Schedulers, Subjects) and 
## Observable
- invokable collection of future values or events
## Observer
- collection of callbacks that listen to observable
## Subscription
- Execution of Observable.  primarily used for canceling execution
## Subject 
-  Observable that allows multicasting to many Observers
-  EventEmitter in Angular

## Schedulers
- Centralized dispatchers to control concurrency
- setTimeout, requestAnimationFrame (examples)

## Operators 
- map
- filter
- reduce
- every 
* Dependency Injection
    * Injectable

# Best practices
## Security
### Sanitation
- all values are untrusted and sanitized by angular.
- Can be marked as Trusted if needed
### Content security policy
    - Used to prevent XSS
    - Enabled by returing appropriate Content-Security-Policy HTTP header

### Trusted Types
    - Used to secure from XSS attacks
    - configure web server to emit HTTP headers with policies
      - angular
      - angular#unsafe-bypass
      - angular#unsafe-jit

## Lazy Load Modules


