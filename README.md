lokka-pygmentize
================

Sexy Syntax highlighter for Lokka

## Installation

```sh
cd $LOKKA_ROOT/public/plugin
git clone git://github.com/morygonzalez/lokka-pygmentize.git
```

## How to use

Write html just like below.

```html
<pre class="ruby">
  <code>
    class Model
      before_validation :method_one
      before_create :method_two

      def method_one
        ...
      end

      def mothod_two
        Model.reset_callbacks(:validation)
        Model.reset_callbacks(:create)

        @model = Model.new
        @model.save
      end
    end
  </code>
</pre>
```

All you have to do is just add language name of code you want it to be highlighted. In this case "ruby" is the language name. So the class attribute of pre tag should be set "ruby". And the output will be below.

![3ffa79841d2670404535ca4ce49815f2.png (905×253)](http://dl.dropbox.com/u/2611378/gyazo/3ffa79841d2670404535ca4ce49815f2.png "3ffa79841d2670404535ca4ce49815f2.png (905×253)")
