collection @proposals
attributes :header, :number, :body
child(:authors) { attributes :name }
child(:decision_points) { attributes :text }
