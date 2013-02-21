# encoding: utf-8

(1..50).to_a.each do |i|
  suffix = i % 2 == 0 ? "子" : "男"
  name = "#{i}#{suffix}"
  age = i / 2 + 20
  p = Parent.where(name: name).first_or_create(name: name, age: age)
  ["太郎","花子","二郎"].each do |cn|
    Child.where(name: name).first_or_create(name: cn, age: i, parent_id: p.id)
  end
end
