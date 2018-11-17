if Gem.loaded_specs['spree_core'].version >= Gem::Version.create('3.5.0')
  Deface::Override.new(
    virtual_path: 'spree/orders/edit',
    name: 'add_google_begin_checkout_to_orders_edit',
    insert_top: '[data-hook="cart_container"]',
    partial: 'spree/shared/trackers/google/google_begin_checkout'
  )
end
