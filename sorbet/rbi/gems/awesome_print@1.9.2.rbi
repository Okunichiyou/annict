# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `awesome_print` gem.
# Please instead update this file by running `bin/tapioca gem awesome_print`.


class ActionView::Base
  include ::ActiveSupport::Benchmarkable
  include ::ActionView::Helpers::ActiveModelHelper
  include ::ActionView::Helpers::AssetUrlHelper
  include ::ActionView::Helpers::CaptureHelper
  include ::ActionView::Helpers::OutputSafetyHelper
  include ::ActionView::Helpers::TagHelper
  include ::ActionView::Helpers::AssetTagHelper
  include ::ActionView::Helpers::AtomFeedHelper
  include ::ActionView::Helpers::CacheHelper
  include ::ActionView::Helpers::ControllerHelper
  include ::ActionView::Helpers::CspHelper
  include ::ActionView::Helpers::CsrfHelper
  include ::ActionView::Helpers::DateHelper
  include ::ActionView::Helpers::DebugHelper
  include ::ActionView::ModelNaming
  include ::ActionView::RecordIdentifier
  include ::ActionView::Helpers::FormOptionsHelper
  include ::ActionView::Helpers::JavaScriptHelper
  include ::ActionView::Helpers::NumberHelper
  include ::ActionView::Helpers::RenderingHelper
  include ::AwesomePrint::ActionView
  include ::Kaminari::Helpers::UrlHelper
end

# source://awesome_print//lib/awesome_print/core_ext/awesome_method_array.rb#15
module AwesomeMethodArray
  # source://awesome_print//lib/awesome_print/core_ext/awesome_method_array.rb#23
  def &(_other_ary); end

  # source://awesome_print//lib/awesome_print/core_ext/awesome_method_array.rb#17
  def -(_other_ary); end

  # Intercepting Array#grep needs a special treatment since grep accepts
  # an optional block.
  #
  # source://awesome_print//lib/awesome_print/core_ext/awesome_method_array.rb#33
  def grep(pattern, &blk); end
end

# source://awesome_print//lib/awesome_print/custom_defaults.rb#1
module AwesomePrint
  class << self
    # @return [Boolean]
    #
    # source://awesome_print//lib/awesome_print/custom_defaults.rb#12
    def console?; end

    # Returns the value of attribute defaults.
    #
    # source://awesome_print//lib/awesome_print/custom_defaults.rb#3
    def defaults; end

    # Sets the attribute defaults
    #
    # @param value the value to set the attribute defaults to.
    #
    # source://awesome_print//lib/awesome_print/custom_defaults.rb#3
    def defaults=(_arg0); end

    # source://awesome_print//lib/awesome_print/custom_defaults.rb#20
    def diet_rb; end

    # Returns the value of attribute force_colors.
    #
    # source://awesome_print//lib/awesome_print/custom_defaults.rb#3
    def force_colors; end

    # Class accessor to force colorized output (ex. forked subprocess where TERM
    # might be dumb).
    # ---------------------------------------------------------------------------
    #
    # source://awesome_print//lib/awesome_print/custom_defaults.rb#8
    def force_colors!(value = T.unsafe(nil)); end

    # Sets the attribute force_colors
    #
    # @param value the value to set the attribute force_colors to.
    #
    # source://awesome_print//lib/awesome_print/custom_defaults.rb#3
    def force_colors=(_arg0); end

    # source://awesome_print//lib/awesome_print/custom_defaults.rb#38
    def irb!; end

    # source://awesome_print//lib/awesome_print/custom_defaults.rb#44
    def pry!; end

    # @return [Boolean]
    #
    # source://awesome_print//lib/awesome_print/custom_defaults.rb#16
    def rails_console?; end

    # source://awesome_print//lib/awesome_print/custom_defaults.rb#28
    def usual_rb; end

    # source://awesome_print//lib/awesome_print/version.rb#7
    def version; end

    private

    # Takes a value and returns true unless it is false or nil
    # This is an alternative to the less readable !!(value)
    # https://github.com/bbatsov/ruby-style-guide#no-bang-bang
    #
    # source://awesome_print//lib/awesome_print/custom_defaults.rb#53
    def boolean(value); end
  end
end

# source://awesome_print//lib/awesome_print/ext/action_view.rb#7
module AwesomePrint::ActionView
  # Use HTML colors and add default "debug_dump" class to the resulting HTML.
  #
  # source://awesome_print//lib/awesome_print/ext/action_view.rb#9
  def ap(object, options = T.unsafe(nil)); end

  # Use HTML colors and add default "debug_dump" class to the resulting HTML.
  #
  # source://awesome_print//lib/awesome_print/ext/action_view.rb#9
  def ap_debug(object, options = T.unsafe(nil)); end
end

# source://awesome_print//lib/awesome_print/ext/active_record.rb#7
module AwesomePrint::ActiveRecord
  # Add ActiveRecord class names to the dispatcher pipeline.
  # ------------------------------------------------------------------------------
  #
  # source://awesome_print//lib/awesome_print/ext/active_record.rb#16
  def cast_with_active_record(object, type); end

  private

  # Format ActiveModel error object.
  # ------------------------------------------------------------------------------
  #
  # source://awesome_print//lib/awesome_print/ext/active_record.rb#80
  def awesome_active_model_error(object); end

  # Format ActiveRecord class object.
  # ------------------------------------------------------------------------------
  #
  # source://awesome_print//lib/awesome_print/ext/active_record.rb#63
  def awesome_active_record_class(object); end

  # Format ActiveRecord instance object.
  #
  # NOTE: by default only instance attributes (i.e. columns) are shown. To format
  # ActiveRecord instance as regular object showing its instance variables and
  # accessors use :raw => true option:
  #
  # ap record, :raw => true
  #
  # ------------------------------------------------------------------------------
  #
  # source://awesome_print//lib/awesome_print/ext/active_record.rb#43
  def awesome_active_record_instance(object); end

  class << self
    # @private
    #
    # source://awesome_print//lib/awesome_print/ext/active_record.rb#9
    def included(base); end
  end
end

# source://awesome_print//lib/awesome_print/ext/active_support.rb#7
module AwesomePrint::ActiveSupport
  # Format ActiveSupport::TimeWithZone as standard Time.
  # ------------------------------------------------------------------------------
  #
  # source://awesome_print//lib/awesome_print/ext/active_support.rb#28
  def awesome_active_support_time(object); end

  # Format HashWithIndifferentAccess as standard Hash.
  # ------------------------------------------------------------------------------
  #
  # source://awesome_print//lib/awesome_print/ext/active_support.rb#34
  def awesome_hash_with_indifferent_access(object); end

  # source://awesome_print//lib/awesome_print/ext/active_support.rb#14
  def cast_with_active_support(object, type); end

  class << self
    # @private
    #
    # source://awesome_print//lib/awesome_print/ext/active_support.rb#9
    def included(base); end
  end
end

# source://awesome_print//lib/awesome_print/colorize.rb#4
module AwesomePrint::Colorize
  # Pick the color and apply it to the given string as necessary.
  # ------------------------------------------------------------------------------
  #
  # source://awesome_print//lib/awesome_print/colorize.rb#8
  def colorize(str, type); end
end

# source://awesome_print//lib/awesome_print/formatter.rb#9
class AwesomePrint::Formatter
  include ::AwesomePrint::Colorize
  include ::AwesomePrint::ActiveRecord
  include ::AwesomePrint::ActiveSupport
  include ::AwesomePrint::Nokogiri
  include ::AwesomePrint::OpenStruct

  # @return [Formatter] a new instance of Formatter
  #
  # source://awesome_print//lib/awesome_print/formatter.rb#16
  def initialize(inspector); end

  # Hook this when adding custom formatters. Check out lib/awesome_print/ext
  # directory for custom formatters that ship with awesome_print.
  # ------------------------------------------------------------------------------
  #
  # source://awesome_print//lib/awesome_print/ext/ostruct.rb#13
  def cast(object, type); end

  # source://awesome_print//lib/awesome_print/formatter.rb#36
  def cast_without_active_record(object, type); end

  # source://awesome_print//lib/awesome_print/ext/active_record.rb#16
  def cast_without_active_support(object, type); end

  # source://awesome_print//lib/awesome_print/ext/active_support.rb#14
  def cast_without_nokogiri(object, type); end

  # source://awesome_print//lib/awesome_print/ext/nokogiri.rb#16
  def cast_without_ostruct(object, type); end

  # Main entry point to format an object.
  # ------------------------------------------------------------------------------
  #
  # source://awesome_print//lib/awesome_print/formatter.rb#23
  def format(object, type = T.unsafe(nil)); end

  # Returns the value of attribute inspector.
  #
  # source://awesome_print//lib/awesome_print/formatter.rb#12
  def inspector; end

  # Returns the value of attribute options.
  #
  # source://awesome_print//lib/awesome_print/formatter.rb#12
  def options; end

  private

  # source://awesome_print//lib/awesome_print/formatter.rb#70
  def awesome_array(a); end

  # source://awesome_print//lib/awesome_print/formatter.rb#54
  def awesome_bigdecimal(n); end

  # source://awesome_print//lib/awesome_print/formatter.rb#95
  def awesome_class(c); end

  # source://awesome_print//lib/awesome_print/formatter.rb#103
  def awesome_dir(d); end

  # source://awesome_print//lib/awesome_print/formatter.rb#99
  def awesome_file(f); end

  # source://awesome_print//lib/awesome_print/formatter.rb#78
  def awesome_hash(h); end

  # source://awesome_print//lib/awesome_print/formatter.rb#90
  def awesome_method(m); end

  # source://awesome_print//lib/awesome_print/formatter.rb#82
  def awesome_object(o); end

  # source://awesome_print//lib/awesome_print/formatter.rb#60
  def awesome_rational(n); end

  # Catch all method to format an arbitrary object.
  # ------------------------------------------------------------------------------
  #
  # source://awesome_print//lib/awesome_print/formatter.rb#44
  def awesome_self(object, type); end

  # source://awesome_print//lib/awesome_print/formatter.rb#74
  def awesome_set(s); end

  # source://awesome_print//lib/awesome_print/formatter.rb#66
  def awesome_simple(o, type, inspector = T.unsafe(nil)); end

  # source://awesome_print//lib/awesome_print/formatter.rb#86
  def awesome_struct(s); end

  # source://awesome_print//lib/awesome_print/formatter.rb#90
  def awesome_unboundmethod(m); end

  # source://awesome_print//lib/awesome_print/formatter.rb#119
  def convert_to_hash(object); end

  # A class (ex. `Net::HTTP.Get`) might have `attr_reader :method` accessor
  # which causes `object.method(:to_hash)` throw `ArgumentError (wrong number
  # of arguments (given 1, expected 0))`. The following tries to avoid that.
  #
  # @return [Boolean]
  #
  # source://awesome_print//lib/awesome_print/formatter.rb#113
  def has_method_accessor?(object); end
end

# source://awesome_print//lib/awesome_print/formatter.rb#14
AwesomePrint::Formatter::CORE_FORMATTERS = T.let(T.unsafe(nil), Array)

# source://awesome_print//lib/awesome_print/formatters.rb#2
module AwesomePrint::Formatters; end

# source://awesome_print//lib/awesome_print/formatters/array_formatter.rb#5
class AwesomePrint::Formatters::ArrayFormatter < ::AwesomePrint::Formatters::BaseFormatter
  # @return [ArrayFormatter] a new instance of ArrayFormatter
  #
  # source://awesome_print//lib/awesome_print/formatters/array_formatter.rb#8
  def initialize(array, inspector); end

  # Returns the value of attribute array.
  #
  # source://awesome_print//lib/awesome_print/formatters/array_formatter.rb#6
  def array; end

  # source://awesome_print//lib/awesome_print/formatters/array_formatter.rb#14
  def format; end

  # Returns the value of attribute inspector.
  #
  # source://awesome_print//lib/awesome_print/formatters/array_formatter.rb#6
  def inspector; end

  # Returns the value of attribute options.
  #
  # source://awesome_print//lib/awesome_print/formatters/array_formatter.rb#6
  def options; end

  private

  # source://awesome_print//lib/awesome_print/formatters/array_formatter.rb#56
  def array_prefix(iteration, width); end

  # source://awesome_print//lib/awesome_print/formatters/array_formatter.rb#110
  def find_method(name); end

  # source://awesome_print//lib/awesome_print/formatters/array_formatter.rb#48
  def generate_printable_array; end

  # source://awesome_print//lib/awesome_print/formatters/array_formatter.rb#68
  def generate_printable_tuples; end

  # source://awesome_print//lib/awesome_print/formatters/array_formatter.rb#101
  def generate_tuple(name); end

  # source://awesome_print//lib/awesome_print/formatters/array_formatter.rb#126
  def generic_prefix(iteration, width, padding = T.unsafe(nil)); end

  # source://awesome_print//lib/awesome_print/formatters/array_formatter.rb#60
  def methods_array; end

  # @return [Boolean]
  #
  # source://awesome_print//lib/awesome_print/formatters/array_formatter.rb#26
  def methods_array?; end

  # source://awesome_print//lib/awesome_print/formatters/array_formatter.rb#38
  def multiline_array; end

  # source://awesome_print//lib/awesome_print/formatters/array_formatter.rb#91
  def name_and_args_width; end

  # source://awesome_print//lib/awesome_print/formatters/array_formatter.rb#30
  def simple_array; end

  # source://awesome_print//lib/awesome_print/formatters/array_formatter.rb#97
  def tuple_prefix(iteration, width); end

  # source://awesome_print//lib/awesome_print/formatters/array_formatter.rb#76
  def tuple_template(item); end

  # source://awesome_print//lib/awesome_print/formatters/array_formatter.rb#87
  def tuples; end

  # source://awesome_print//lib/awesome_print/formatters/array_formatter.rb#134
  def width(items); end
end

# source://awesome_print//lib/awesome_print/formatters/base_formatter.rb#5
class AwesomePrint::Formatters::BaseFormatter
  include ::AwesomePrint::Colorize

  # source://awesome_print//lib/awesome_print/formatters/base_formatter.rb#124
  def align(value, width); end

  # source://awesome_print//lib/awesome_print/formatters/base_formatter.rb#34
  def get_limit_size; end

  # source://awesome_print//lib/awesome_print/formatters/base_formatter.rb#116
  def indent; end

  # Indentation related methods
  # -----------------------------------------
  #
  # source://awesome_print//lib/awesome_print/formatters/base_formatter.rb#108
  def indentation; end

  # source://awesome_print//lib/awesome_print/formatters/base_formatter.rb#112
  def indented(&block); end

  # source://awesome_print//lib/awesome_print/formatters/base_formatter.rb#43
  def limited(data, width, is_hash = T.unsafe(nil)); end

  # source://awesome_print//lib/awesome_print/formatters/base_formatter.rb#66
  def method_tuple(method); end

  # source://awesome_print//lib/awesome_print/formatters/base_formatter.rb#120
  def outdent; end

  # To support limited output, for example:
  #
  # ap ('a'..'z').to_a, :limit => 3
  # [
  #     [ 0] "a",
  #     [ 1] .. [24],
  #     [25] "z"
  # ]
  #
  # ap (1..100).to_a, :limit => true # Default limit is 7.
  # [
  #     [ 0] 1,
  #     [ 1] 2,
  #     [ 2] 3,
  #     [ 3] .. [96],
  #     [97] 98,
  #     [98] 99,
  #     [99] 100
  # ]
  # ------------------------------------------------------------------------------
  #
  # @return [Boolean]
  #
  # source://awesome_print//lib/awesome_print/formatters/base_formatter.rb#30
  def should_be_limited?; end
end

# source://awesome_print//lib/awesome_print/formatters/base_formatter.rb#8
AwesomePrint::Formatters::BaseFormatter::DEFAULT_LIMIT_SIZE = T.let(T.unsafe(nil), Integer)

# source://awesome_print//lib/awesome_print/formatters/class_formatter.rb#5
class AwesomePrint::Formatters::ClassFormatter < ::AwesomePrint::Formatters::BaseFormatter
  # @return [ClassFormatter] a new instance of ClassFormatter
  #
  # source://awesome_print//lib/awesome_print/formatters/class_formatter.rb#9
  def initialize(klass, inspector); end

  # source://awesome_print//lib/awesome_print/formatters/class_formatter.rb#15
  def format; end

  # Returns the value of attribute inspector.
  #
  # source://awesome_print//lib/awesome_print/formatters/class_formatter.rb#7
  def inspector; end

  # Returns the value of attribute klass.
  #
  # source://awesome_print//lib/awesome_print/formatters/class_formatter.rb#7
  def klass; end

  # Returns the value of attribute options.
  #
  # source://awesome_print//lib/awesome_print/formatters/class_formatter.rb#7
  def options; end
end

# source://awesome_print//lib/awesome_print/formatters/dir_formatter.rb#6
class AwesomePrint::Formatters::DirFormatter < ::AwesomePrint::Formatters::BaseFormatter
  # @return [DirFormatter] a new instance of DirFormatter
  #
  # source://awesome_print//lib/awesome_print/formatters/dir_formatter.rb#10
  def initialize(dir, inspector); end

  # Returns the value of attribute dir.
  #
  # source://awesome_print//lib/awesome_print/formatters/dir_formatter.rb#8
  def dir; end

  # source://awesome_print//lib/awesome_print/formatters/dir_formatter.rb#16
  def format; end

  # Returns the value of attribute inspector.
  #
  # source://awesome_print//lib/awesome_print/formatters/dir_formatter.rb#8
  def inspector; end

  # Returns the value of attribute options.
  #
  # source://awesome_print//lib/awesome_print/formatters/dir_formatter.rb#8
  def options; end
end

# source://awesome_print//lib/awesome_print/formatters/file_formatter.rb#6
class AwesomePrint::Formatters::FileFormatter < ::AwesomePrint::Formatters::BaseFormatter
  # @return [FileFormatter] a new instance of FileFormatter
  #
  # source://awesome_print//lib/awesome_print/formatters/file_formatter.rb#10
  def initialize(file, inspector); end

  # Returns the value of attribute file.
  #
  # source://awesome_print//lib/awesome_print/formatters/file_formatter.rb#8
  def file; end

  # source://awesome_print//lib/awesome_print/formatters/file_formatter.rb#16
  def format; end

  # Returns the value of attribute inspector.
  #
  # source://awesome_print//lib/awesome_print/formatters/file_formatter.rb#8
  def inspector; end

  # Returns the value of attribute options.
  #
  # source://awesome_print//lib/awesome_print/formatters/file_formatter.rb#8
  def options; end
end

# source://awesome_print//lib/awesome_print/formatters/hash_formatter.rb#5
class AwesomePrint::Formatters::HashFormatter < ::AwesomePrint::Formatters::BaseFormatter
  # @return [HashFormatter] a new instance of HashFormatter
  #
  # source://awesome_print//lib/awesome_print/formatters/hash_formatter.rb#8
  def initialize(hash, inspector); end

  # source://awesome_print//lib/awesome_print/formatters/hash_formatter.rb#14
  def format; end

  # Returns the value of attribute hash.
  #
  # source://awesome_print//lib/awesome_print/formatters/hash_formatter.rb#6
  def hash; end

  # Returns the value of attribute inspector.
  #
  # source://awesome_print//lib/awesome_print/formatters/hash_formatter.rb#6
  def inspector; end

  # Returns the value of attribute options.
  #
  # source://awesome_print//lib/awesome_print/formatters/hash_formatter.rb#6
  def options; end

  private

  # source://awesome_print//lib/awesome_print/formatters/hash_formatter.rb#26
  def empty_hash; end

  # source://awesome_print//lib/awesome_print/formatters/hash_formatter.rb#59
  def left_width(keys); end

  # source://awesome_print//lib/awesome_print/formatters/hash_formatter.rb#65
  def max_key_width(keys); end

  # source://awesome_print//lib/awesome_print/formatters/hash_formatter.rb#34
  def multiline_hash; end

  # @return [Boolean]
  #
  # source://awesome_print//lib/awesome_print/formatters/hash_formatter.rb#30
  def multiline_hash?; end

  # source://awesome_print//lib/awesome_print/formatters/hash_formatter.rb#94
  def plain_single_line; end

  # source://awesome_print//lib/awesome_print/formatters/hash_formatter.rb#90
  def pre_ruby19_syntax(key, value, width); end

  # source://awesome_print//lib/awesome_print/formatters/hash_formatter.rb#42
  def printable_hash; end

  # source://awesome_print//lib/awesome_print/formatters/hash_formatter.rb#69
  def printable_keys; end

  # source://awesome_print//lib/awesome_print/formatters/hash_formatter.rb#85
  def ruby19_syntax(key, value, width); end

  # source://awesome_print//lib/awesome_print/formatters/hash_formatter.rb#38
  def simple_hash; end

  # @return [Boolean]
  #
  # source://awesome_print//lib/awesome_print/formatters/hash_formatter.rb#81
  def symbol?(key); end
end

# source://awesome_print//lib/awesome_print/formatters/method_formatter.rb#5
class AwesomePrint::Formatters::MethodFormatter < ::AwesomePrint::Formatters::BaseFormatter
  # @return [MethodFormatter] a new instance of MethodFormatter
  #
  # source://awesome_print//lib/awesome_print/formatters/method_formatter.rb#9
  def initialize(method, inspector); end

  # source://awesome_print//lib/awesome_print/formatters/method_formatter.rb#15
  def format; end

  # Returns the value of attribute inspector.
  #
  # source://awesome_print//lib/awesome_print/formatters/method_formatter.rb#7
  def inspector; end

  # Returns the value of attribute method.
  #
  # source://awesome_print//lib/awesome_print/formatters/method_formatter.rb#7
  def method; end

  # Returns the value of attribute options.
  #
  # source://awesome_print//lib/awesome_print/formatters/method_formatter.rb#7
  def options; end
end

# source://awesome_print//lib/awesome_print/formatters/object_formatter.rb#5
class AwesomePrint::Formatters::ObjectFormatter < ::AwesomePrint::Formatters::BaseFormatter
  # @return [ObjectFormatter] a new instance of ObjectFormatter
  #
  # source://awesome_print//lib/awesome_print/formatters/object_formatter.rb#9
  def initialize(object, inspector); end

  # source://awesome_print//lib/awesome_print/formatters/object_formatter.rb#16
  def format; end

  # Returns the value of attribute inspector.
  #
  # source://awesome_print//lib/awesome_print/formatters/object_formatter.rb#7
  def inspector; end

  # Returns the value of attribute object.
  #
  # source://awesome_print//lib/awesome_print/formatters/object_formatter.rb#7
  def object; end

  # Returns the value of attribute options.
  #
  # source://awesome_print//lib/awesome_print/formatters/object_formatter.rb#7
  def options; end

  # Returns the value of attribute variables.
  #
  # source://awesome_print//lib/awesome_print/formatters/object_formatter.rb#7
  def variables; end

  private

  # source://awesome_print//lib/awesome_print/formatters/object_formatter.rb#62
  def awesome_instance; end

  # source://awesome_print//lib/awesome_print/formatters/object_formatter.rb#69
  def left_aligned; end

  # @return [Boolean]
  #
  # source://awesome_print//lib/awesome_print/formatters/object_formatter.rb#58
  def valid_instance_var?(variable_name); end
end

# source://awesome_print//lib/awesome_print/formatters/simple_formatter.rb#5
class AwesomePrint::Formatters::SimpleFormatter < ::AwesomePrint::Formatters::BaseFormatter
  # @return [SimpleFormatter] a new instance of SimpleFormatter
  #
  # source://awesome_print//lib/awesome_print/formatters/simple_formatter.rb#9
  def initialize(string, type, inspector); end

  # source://awesome_print//lib/awesome_print/formatters/simple_formatter.rb#16
  def format; end

  # Returns the value of attribute inspector.
  #
  # source://awesome_print//lib/awesome_print/formatters/simple_formatter.rb#7
  def inspector; end

  # Returns the value of attribute options.
  #
  # source://awesome_print//lib/awesome_print/formatters/simple_formatter.rb#7
  def options; end

  # Returns the value of attribute string.
  #
  # source://awesome_print//lib/awesome_print/formatters/simple_formatter.rb#7
  def string; end

  # Returns the value of attribute type.
  #
  # source://awesome_print//lib/awesome_print/formatters/simple_formatter.rb#7
  def type; end
end

# source://awesome_print//lib/awesome_print/formatters/struct_formatter.rb#5
class AwesomePrint::Formatters::StructFormatter < ::AwesomePrint::Formatters::BaseFormatter
  # @return [StructFormatter] a new instance of StructFormatter
  #
  # source://awesome_print//lib/awesome_print/formatters/struct_formatter.rb#9
  def initialize(struct, inspector); end

  # source://awesome_print//lib/awesome_print/formatters/struct_formatter.rb#16
  def format; end

  # Returns the value of attribute inspector.
  #
  # source://awesome_print//lib/awesome_print/formatters/struct_formatter.rb#7
  def inspector; end

  # Returns the value of attribute options.
  #
  # source://awesome_print//lib/awesome_print/formatters/struct_formatter.rb#7
  def options; end

  # Returns the value of attribute struct.
  #
  # source://awesome_print//lib/awesome_print/formatters/struct_formatter.rb#7
  def struct; end

  # Returns the value of attribute variables.
  #
  # source://awesome_print//lib/awesome_print/formatters/struct_formatter.rb#7
  def variables; end

  private

  # source://awesome_print//lib/awesome_print/formatters/struct_formatter.rb#58
  def awesome_instance; end

  # source://awesome_print//lib/awesome_print/formatters/struct_formatter.rb#62
  def left_aligned; end
end

# source://awesome_print//lib/awesome_print/indentator.rb#2
class AwesomePrint::Indentator
  # @return [Indentator] a new instance of Indentator
  #
  # source://awesome_print//lib/awesome_print/indentator.rb#6
  def initialize(indentation); end

  # source://awesome_print//lib/awesome_print/indentator.rb#11
  def indent; end

  # Returns the value of attribute indentation.
  #
  # source://awesome_print//lib/awesome_print/indentator.rb#4
  def indentation; end

  # Returns the value of attribute shift_width.
  #
  # source://awesome_print//lib/awesome_print/indentator.rb#4
  def shift_width; end
end

# source://awesome_print//lib/awesome_print/inspector.rb#9
class AwesomePrint::Inspector
  # @return [Inspector] a new instance of Inspector
  #
  # source://awesome_print//lib/awesome_print/inspector.rb#14
  def initialize(options = T.unsafe(nil)); end

  # Dispatcher that detects data nesting and invokes object-aware formatter.
  # ---------------------------------------------------------------------------
  #
  # source://awesome_print//lib/awesome_print/inspector.rb#71
  def awesome(object); end

  # Return true if we are to colorize the output.
  # ---------------------------------------------------------------------------
  #
  # @return [Boolean]
  #
  # source://awesome_print//lib/awesome_print/inspector.rb#86
  def colorize?; end

  # source://awesome_print//lib/awesome_print/inspector.rb#61
  def current_indentation; end

  # source://awesome_print//lib/awesome_print/inspector.rb#65
  def increase_indentation(&block); end

  # Returns the value of attribute indentator.
  #
  # source://awesome_print//lib/awesome_print/inspector.rb#10
  def indentator; end

  # Sets the attribute indentator
  #
  # @param value the value to set the attribute indentator to.
  #
  # source://awesome_print//lib/awesome_print/inspector.rb#10
  def indentator=(_arg0); end

  # Returns the value of attribute options.
  #
  # source://awesome_print//lib/awesome_print/inspector.rb#10
  def options; end

  # Sets the attribute options
  #
  # @param value the value to set the attribute options to.
  #
  # source://awesome_print//lib/awesome_print/inspector.rb#10
  def options=(_arg0); end

  private

  # @return [Boolean]
  #
  # source://awesome_print//lib/awesome_print/inspector.rb#152
  def dotfile_readable?(dotfile); end

  # This method needs to be mocked during testing so that it always loads
  # predictable values
  # ---------------------------------------------------------------------------
  #
  # source://awesome_print//lib/awesome_print/inspector.rb#147
  def load_dotfile; end

  # Load ~/.aprc file with custom defaults that override default options.
  # ---------------------------------------------------------------------------
  #
  # source://awesome_print//lib/awesome_print/inspector.rb#162
  def merge_custom_defaults!; end

  # Update @options by first merging the :color hash and then the remaining
  # keys.
  # ---------------------------------------------------------------------------
  #
  # source://awesome_print//lib/awesome_print/inspector.rb#139
  def merge_options!(options = T.unsafe(nil)); end

  # Format nested data, for example:
  #   arr = [1, 2]; arr << arr
  #   => [1,2, [...]]
  #   hash = { :a => 1 }; hash[:b] = hash
  #   => { :a => 1, :b => {...} }
  # ---------------------------------------------------------------------------
  #
  # source://awesome_print//lib/awesome_print/inspector.rb#107
  def nested(object); end

  # Turn class name into symbol, ex: Hello::World => :hello_world. Classes
  # that inherit from Array, Hash, File, Dir, and Struct are treated as the
  # base class.
  # ---------------------------------------------------------------------------
  #
  # source://awesome_print//lib/awesome_print/inspector.rb#125
  def printable(object); end

  # ---------------------------------------------------------------------------
  #
  # source://awesome_print//lib/awesome_print/inspector.rb#117
  def unnested(object); end
end

# source://awesome_print//lib/awesome_print/inspector.rb#12
AwesomePrint::Inspector::AP = T.let(T.unsafe(nil), Symbol)

# source://awesome_print//lib/awesome_print/core_ext/logger.rb#7
module AwesomePrint::Logger
  # Add ap method to logger
  # ------------------------------------------------------------------------------
  #
  # source://awesome_print//lib/awesome_print/core_ext/logger.rb#11
  def ap(object, level = T.unsafe(nil)); end
end

# source://awesome_print//lib/awesome_print/ext/nokogiri.rb#7
module AwesomePrint::Nokogiri
  # ------------------------------------------------------------------------------
  #
  # source://awesome_print//lib/awesome_print/ext/nokogiri.rb#26
  def awesome_nokogiri_xml_node(object); end

  # Add Nokogiri XML Node and NodeSet names to the dispatcher pipeline.
  # ------------------------------------------------------------------------------
  #
  # source://awesome_print//lib/awesome_print/ext/nokogiri.rb#16
  def cast_with_nokogiri(object, type); end

  class << self
    # @private
    #
    # source://awesome_print//lib/awesome_print/ext/nokogiri.rb#9
    def included(base); end
  end
end

# source://awesome_print//lib/awesome_print/ext/ostruct.rb#7
module AwesomePrint::OpenStruct
  # source://awesome_print//lib/awesome_print/ext/ostruct.rb#21
  def awesome_open_struct_instance(object); end

  # source://awesome_print//lib/awesome_print/ext/ostruct.rb#13
  def cast_with_ostruct(object, type); end

  class << self
    # @private
    #
    # source://awesome_print//lib/awesome_print/ext/ostruct.rb#8
    def included(base); end
  end
end

# source://awesome_print//lib/awesome_print/core_ext/kernel.rb#6
module Kernel
  # source://awesome_print//lib/awesome_print/core_ext/kernel.rb#8
  def ai(options = T.unsafe(nil)); end

  # source://awesome_print//lib/awesome_print/core_ext/kernel.rb#8
  def awesome_inspect(options = T.unsafe(nil)); end

  # source://awesome_print//lib/awesome_print/core_ext/kernel.rb#19
  def awesome_print(object, options = T.unsafe(nil)); end

  private

  # source://awesome_print//lib/awesome_print/core_ext/kernel.rb#19
  def ap(object, options = T.unsafe(nil)); end

  class << self
    # source://awesome_print//lib/awesome_print/core_ext/kernel.rb#19
    def ap(object, options = T.unsafe(nil)); end
  end
end

class Logger
  include ::AwesomePrint::Logger
end

# source://awesome_print//lib/awesome_print/core_ext/string.rb#6
class String
  include ::Comparable

  # source://awesome_print//lib/awesome_print/core_ext/string.rb#23
  def black(*html); end

  # source://awesome_print//lib/awesome_print/core_ext/string.rb#19
  def blue(*html); end

  # source://awesome_print//lib/awesome_print/core_ext/string.rb#23
  def blueish(*html); end

  # source://awesome_print//lib/awesome_print/core_ext/string.rb#19
  def cyan(*html); end

  # source://awesome_print//lib/awesome_print/core_ext/string.rb#23
  def cyanish(*html); end

  # source://awesome_print//lib/awesome_print/core_ext/string.rb#19
  def gray(*html); end

  # source://awesome_print//lib/awesome_print/core_ext/string.rb#23
  def grayish(*html); end

  # source://awesome_print//lib/awesome_print/core_ext/string.rb#19
  def green(*html); end

  # source://awesome_print//lib/awesome_print/core_ext/string.rb#23
  def greenish(*html); end

  # source://awesome_print//lib/awesome_print/core_ext/string.rb#23
  def pale(*html); end

  # source://awesome_print//lib/awesome_print/core_ext/string.rb#19
  def purple(*html); end

  # source://awesome_print//lib/awesome_print/core_ext/string.rb#23
  def purpleish(*html); end

  # source://awesome_print//lib/awesome_print/core_ext/string.rb#19
  def red(*html); end

  # source://awesome_print//lib/awesome_print/core_ext/string.rb#23
  def redish(*html); end

  # source://awesome_print//lib/awesome_print/core_ext/string.rb#19
  def white(*html); end

  # source://awesome_print//lib/awesome_print/core_ext/string.rb#23
  def whiteish(*html); end

  # source://awesome_print//lib/awesome_print/core_ext/string.rb#19
  def yellow(*html); end

  # source://awesome_print//lib/awesome_print/core_ext/string.rb#23
  def yellowish(*html); end
end
