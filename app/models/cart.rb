class Cart < ActiveRecord::Base
  has_many :line_items, dependent: :destroy




  def add_item(p)
    line_item=line_items.where(product_id:p.id).first
    unless line_item
      line_item=self.line_items.build(product: p,quanitem:0,price:p.price)
    end
    line_item.quanitem+=1;
    line_item.save
  end
end
