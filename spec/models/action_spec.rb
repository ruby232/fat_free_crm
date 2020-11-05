# frozen_string_literal: true

# Copyright (c) 2008-2013 Michael Dvorkin and contributors.
#
# Fat Free CRM is freely distributable under the terms of MIT license.
# See MIT-LICENSE file or http://www.opensource.org/licenses/mit-license.php
#------------------------------------------------------------------------------
# == Schema Information
#
# Table name: imported_files
#
#  id              :integer         not null, primary key
#  type            :integer         default(0) not null
#  name            :string          default(""), not null
#

require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

RSpec.describe Action, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
