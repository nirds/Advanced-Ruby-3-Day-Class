DSL Example:
https://github.com/ultrasaurus/pie
http://www.slideshare.net/sarah.allen/the-making-of-pie

Katas:
http://katas.softwarecraftsmanship.org/
http://codekata.com/kata/kata06-anagrams/
https://projecteuler.net/problem=1

### Ruby_Call_Chain_and_Method_Missing
- from instance all the way up to BasicObject
- The changing face of `self`
  - class vs instance methods
  - the scope of `self`
- How methods are called dynamically
  - the magic of MethodMissing
- Inheritance
- structure
- method dispatch
- public, protected, private
  - breaking the rules with .send
- delegation patterns in Ruby
  - MethodMissing
  - StdLib: Forwardable
- method call chains

### Inheritance
- Monster Academy
  - build a small menagerie of creatures that inherit from 2 or 3 base classes

### Modules

### Ducks_and_Monkeys

### Blocks
Blocks, Closures, Lambdas, Procs
- Ruby's syntax and implementation
- blocks as closures
- .yield
- self.yield
- .tap
- Symbol#to_proc (`&:name`)

### Enumerable
- re-implement Enumerable

### DSL

### Meta_Programming
- Object lifestyle methods
  - methods_added
  - methods_removed
  - methods_undefined
- Decoupling code using inherited to keep track of subclasses
- Using `method_missing` to create magic methods
- Applying `const_missing` in both global and localized situations
- Common mistakes to avoid when metaprogramming (best practices)

### Concurrency_and_MultiThreading
- A brief introduction to the available VMs
  - MRI, JRuby, Rubinius
  - Migrating between VMs - advantages and pitfalls
- Primitives - Threads and Mutexes and Fibers
- Advanced models via concurrent-ruby gem

### Development_Practice
- Ruby best practices
  - idioms
  - Ruby and the SOLID principles of Object-Oriented Design

### Instrumentation
- When it all goes sideways
  - Benchmark
  - pry
  - deep debugging and profiling
- code style
    - Rubocop
  - code metrics tools
    - Flog, Flay, Turbulence, Reek, SimpleCov, etc

### Ruby_Ecosystem
- Continuous Integration & Deployment
  - Jenkins workflow
  - Capistrano
- Rubygems, bundler, and how to avoid shifting dependencies
  - How to tell if you can rely on a given Ruby gem
- Ruby-specific features and extensions for Sublime Text and Ruby Mine
