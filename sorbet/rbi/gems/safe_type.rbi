# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strong
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/safe_type/all/safe_type.rbi
#
# safe_type-1.1.1
module SafeType
  def self.coerce!(input, rule); end
  def self.coerce(input, rule, coerce_key = nil); end
end
class SafeType::Converter
  def self.to_bool(input); end
  def self.to_date(input); end
  def self.to_date_time(input); end
  def self.to_false(input); end
  def self.to_float(input); end
  def self.to_int(input); end
  def self.to_time(input); end
  def self.to_true(input); end
  def self.to_type(input, type); end
end
class SafeType::CoercionError < StandardError
  def desired_type; end
  def initialize(value, desired_type, key = nil); end
  def key; end
  def value; end
end
class SafeType::ValidationError < StandardError
  def desired_type; end
  def initialize(value, desired_type, key = nil); end
  def key; end
  def value; end
end
class SafeType::EmptyValueError < StandardError
  def desired_type; end
  def initialize(desired_type, key = nil); end
  def key; end
end
class SafeType::InvalidRuleError < ArgumentError
  def initialize; end
end
class SafeType::Rule
  def after(input); end
  def before(input); end
  def coerce(input, key = nil); end
  def initialize(type:, default: nil, required: nil, **args); end
  def is_valid?(input); end
  def self.coerce(input); end
  def self.default; end
  def self.strict; end
end
module SafeType::BooleanMixin
end
class TrueClass
  include SafeType::BooleanMixin
end
class FalseClass
  include SafeType::BooleanMixin
end
class SafeType::Boolean < SafeType::Rule
  def initialize(type: nil, **args); end
  def self.default(value = nil); end
end
class SafeType::Date < SafeType::Rule
  def initialize(type: nil, from: nil, to: nil, **args); end
  def is_valid?(input); end
  def self.default(value = nil, from: nil, to: nil); end
  def self.strict(from: nil, to: nil); end
end
class SafeType::DateTime < SafeType::Rule
  def initialize(type: nil, from: nil, to: nil, **args); end
  def is_valid?(input); end
  def self.default(value = nil, from: nil, to: nil); end
  def self.strict(from: nil, to: nil); end
end
class SafeType::Float < SafeType::Rule
  def initialize(type: nil, min: nil, max: nil, **args); end
  def is_valid?(input); end
  def self.default(value = nil, min: nil, max: nil); end
  def self.strict(min: nil, max: nil); end
end
class SafeType::Integer < SafeType::Rule
  def initialize(type: nil, min: nil, max: nil, **args); end
  def is_valid?(input); end
  def self.default(value = nil, min: nil, max: nil); end
  def self.strict(min: nil, max: nil); end
end
class SafeType::String < SafeType::Rule
  def after(input); end
  def initialize(type: nil, min_length: nil, max_length: nil, **args); end
  def is_valid?(input); end
  def self.default(value = nil, min_length: nil, max_length: nil); end
  def self.strict(min_length: nil, max_length: nil); end
end
class SafeType::Symbol < SafeType::Rule
  def after(input); end
  def initialize(type: nil, min_length: nil, max_length: nil, **args); end
  def is_valid?(input); end
  def self.default(value = nil, min_length: nil, max_length: nil); end
  def self.strict(min_length: nil, max_length: nil); end
end
class SafeType::Time < SafeType::Rule
  def initialize(type: nil, from: nil, to: nil, **args); end
  def is_valid?(input); end
  def self.default(value = nil, from: nil, to: nil); end
  def self.strict(from: nil, to: nil); end
end
