json.families do
  json.array!(@parents) do |parent|
    json.(parent, :name, :age)
    json.children do
      json.array!(parent.children) do |child|
        json.(child, :name, :age)
      end
    end
  end
end
