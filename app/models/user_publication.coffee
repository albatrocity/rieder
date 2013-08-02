Model = require 'models/base/model'

module.exports = class UserPublication extends Model
  # attributes:
    # user_id
    # publication_id
    # current_position
    # ownership
  defaults:
    ownership: 0

