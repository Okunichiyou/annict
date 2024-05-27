# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `descendants_tracker` gem.
# Please instead update this file by running `bin/tapioca gem descendants_tracker`.


# Module that adds descendant tracking to a class
#
# source://descendants_tracker//lib/descendants_tracker.rb#6
module DescendantsTracker
  # Add the descendant to this class and the superclass
  #
  # @api private
  # @param descendant [Class]
  # @return [self]
  #
  # source://descendants_tracker//lib/descendants_tracker.rb#41
  def add_descendant(descendant); end

  # Return the descendants of this class
  #
  # @api public
  # @example
  #   descendants = ParentClass.descendants
  # @return [Array<Class<DescendantsTracker>>]
  #
  # source://descendants_tracker//lib/descendants_tracker.rb#16
  def descendants; end

  private

  # Hook called when class is inherited
  #
  # @api private
  # @param descendant [Class]
  # @return [self]
  #
  # source://descendants_tracker//lib/descendants_tracker.rb#59
  def inherited(descendant); end

  class << self
    # Setup the class for descendant tracking
    #
    # @api private
    # @param descendant [Class<DescendantsTracker>]
    # @return [undefined]
    #
    # source://descendants_tracker//lib/descendants_tracker.rb#25
    def setup(descendant); end

    private

    # Setup the class for descendant tracking
    #
    # @api private
    # @param descendant [Class<DescendantsTracker>]
    # @return [undefined]
    #
    # source://descendants_tracker//lib/descendants_tracker.rb#25
    def extended(descendant); end
  end
end
