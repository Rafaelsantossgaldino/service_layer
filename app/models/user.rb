class User < ApplicationRecord
  has_many :permissons

  def activate!(reason)
    update(reason: reason, active: true)
  end

  def desactivate!(reason)
    update(reason: reason, active: false)
  end

  def set_permission(permission_name)
    permission_name.create(name: permission_name)
  end

  def remove_permission(permission_name)
    permissions.find_by(name: permission_name).delete
  end
end
