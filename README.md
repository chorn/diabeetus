# Usage:

Diabeetus will help you check to see if your object has **the diabeetus.**

Is your instance collecting needless, unwanted methods?  Not only do you want to test for them, you want to be able to get rid of them.

<pre>
class MyClass
  include Diabeetus::Tester
end

derp = MyClass.new

if derp.diabeetus?
 derp.insulin_shot
 # Everything is back to normal
end
</pre>

