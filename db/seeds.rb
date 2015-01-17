maps = []

dataJSON = '{"par":2,"ballLoc":{"x":78,"y":429},"holeLoc":{"x":421,"y":75},"traps":[],"waters":[],"walls":[{"start":{"x":5,"y":5},"end":{"x":500,"y":5}},{"start":{"x":5,"y":5},"end":{"x":5,"y":500}},{"start":{"x":495,"y":5},"end":{"x":495,"y":495}},{"start":{"x":5,"y":495},"end":{"x":500,"y":495}}]}'
par = 2
maps << { dataJSON: dataJSON, par: par, name: 'Easy Straight Shot'}

dataJSON = '{"par":2,"ballLoc":{"x":68,"y":455},"holeLoc":{"x":130,"y":460},"traps":[],"waters":[],"walls":[{"start":{"x":5,"y":5},"end":{"x":500,"y":5}},{"start":{"x":5,"y":5},"end":{"x":5,"y":500}},{"start":{"x":495,"y":5},"end":{"x":495,"y":495}},{"start":{"x":5,"y":495},"end":{"x":500,"y":495}},{"start":{"x":90,"y":499},"end":{"x":129,"y":117}},{"start":{"x":250,"y":269},"end":{"x":389,"y":367}}]}'
par = 2
maps << { dataJSON: dataJSON, par: par, name: 'Into to walls'}
dataJSON = '{"par":3,"ballLoc":{"x":67,"y":61},"holeLoc":{"x":289,"y":373},"traps":[{"topLeft":{"x":66,"y":294},"bottomRight":{"x":154,"y":460}},{"topLeft":{"x":369,"y":324},"bottomRight":{"x":459,"y":442}},{"topLeft":{"x":227,"y":419},"bottomRight":{"x":285,"y":439}}],"waters":[],"walls":[{"start":{"x":5,"y":5},"end":{"x":500,"y":5}},{"start":{"x":5,"y":5},"end":{"x":5,"y":500}},{"start":{"x":495,"y":5},"end":{"x":495,"y":495}},{"start":{"x":5,"y":495},"end":{"x":500,"y":495}},{"start":{"x":113,"y":260},"end":{"x":433,"y":262}}]}'
par = 3
maps << { dataJSON: dataJSON, par: par, name: "Don't fear the sand"}

dataJSON = '{"par":2,"ballLoc":{"x":448,"y":439},"holeLoc":{"x":326,"y":440},"traps":[{"topLeft":{"x":128,"y":201},"bottomRight":{"x":274,"y":362}}],"waters":[{"topLeft":{"x":358,"y":345},"bottomRight":{"x":407,"y":498}}],"walls":[{"start":{"x":5,"y":5},"end":{"x":500,"y":5}},{"start":{"x":5,"y":5},"end":{"x":5,"y":500}},{"start":{"x":495,"y":5},"end":{"x":495,"y":495}},{"start":{"x":5,"y":495},"end":{"x":500,"y":495}},{"start":{"x":319,"y":318},"end":{"x":434,"y":318}}]}'
par = 2
maps << { dataJSON: dataJSON, par: par, name: "Water, sand, and a wall"}

dataJSON = '{"par":3,"ballLoc":{"x":463,"y":476},"holeLoc":{"x":367,"y":474},"traps":[{"topLeft":{"x":256,"y":143},"bottomRight":{"x":494,"y":206}},{"topLeft":{"x":178,"y":256},"bottomRight":{"x":229,"y":338}}],"waters":[{"topLeft":{"x":385,"y":308},"bottomRight":{"x":439,"y":487}},{"topLeft":{"x":55,"y":187},"bottomRight":{"x":147,"y":433}}],"walls":[{"start":{"x":5,"y":5},"end":{"x":500,"y":5}},{"start":{"x":5,"y":5},"end":{"x":5,"y":500}},{"start":{"x":495,"y":5},"end":{"x":495,"y":495}},{"start":{"x":5,"y":495},"end":{"x":500,"y":495}},{"start":{"x":457,"y":303},"end":{"x":330,"y":303}},{"start":{"x":57,"y":120},"end":{"x":423,"y":55}},{"start":{"x":123,"y":33},"end":{"x":299,"y":93}}]}'
par = 3
maps << { dataJSON: dataJSON, par: par, name: "Water, sand, and walls. No shortcut"}
dataJSON = '{"par":3,"ballLoc":{"x":200,"y":400},"holeLoc":{"x":351,"y":158},"traps":[{"topLeft":{"x":243,"y":84},"bottomRight":{"x":448,"y":234}},{"topLeft":{"x":112,"y":331},"bottomRight":{"x":252,"y":438}}],"waters":[{"topLeft":{"x":280,"y":266},"bottomRight":{"x":305,"y":296}},{"topLeft":{"x":97,"y":63},"bottomRight":{"x":153,"y":133}},{"topLeft":{"x":435,"y":387},"bottomRight":{"x":472,"y":434}}],"walls":[{"start":{"x":5,"y":5},"end":{"x":500,"y":5}},{"start":{"x":5,"y":5},"end":{"x":5,"y":500}},{"start":{"x":495,"y":5},"end":{"x":495,"y":495}},{"start":{"x":5,"y":495},"end":{"x":500,"y":495}},{"start":{"x":39,"y":223},"end":{"x":76,"y":154}},{"start":{"x":174,"y":147},"end":{"x":205,"y":190}},{"start":{"x":361,"y":360},"end":{"x":421,"y":388}},{"start":{"x":354,"y":458},"end":{"x":401,"y":438}}]}'
par = 3
maps << { dataJSON: dataJSON, par: par, name: "Sand to sand"}

dataJSON = '{"par":5,"ballLoc":{"x":191,"y":475},"holeLoc":{"x":256,"y":477},"traps":[{"topLeft":{"x":7,"y":236},"bottomRight":{"x":214,"y":286}},{"topLeft":{"x":11,"y":101},"bottomRight":{"x":492,"y":110}}],"waters":[{"topLeft":{"x":213,"y":66},"bottomRight":{"x":237,"y":492}},{"topLeft":{"x":299,"y":204},"bottomRight":{"x":450,"y":222}},{"topLeft":{"x":235,"y":303},"bottomRight":{"x":308,"y":341}},{"topLeft":{"x":442,"y":291},"bottomRight":{"x":497,"y":346}},{"topLeft":{"x":50,"y":29},"bottomRight":{"x":127,"y":37}}],"walls":[{"start":{"x":5,"y":5},"end":{"x":500,"y":5}},{"start":{"x":5,"y":5},"end":{"x":5,"y":500}},{"start":{"x":495,"y":5},"end":{"x":495,"y":495}},{"start":{"x":5,"y":495},"end":{"x":500,"y":495}},{"start":{"x":152,"y":259},"end":{"x":212,"y":261}},{"start":{"x":77,"y":257},"end":{"x":15,"y":246}}]}'
par = 5
maps << { dataJSON: dataJSON, par: par, name: "Sand bands and water"}

dataJSON = '{"par":5,"ballLoc":{"x":200,"y":400},"holeLoc":{"x":46,"y":53},"traps":[{"topLeft":{"x":20,"y":427},"bottomRight":{"x":33,"y":452}},{"topLeft":{"x":303,"y":288},"bottomRight":{"x":326,"y":491}},{"topLeft":{"x":334,"y":228},"bottomRight":{"x":497,"y":238}},{"topLeft":{"x":286,"y":10},"bottomRight":{"x":323,"y":204}},{"topLeft":{"x":391,"y":175},"bottomRight":{"x":427,"y":276}}],"waters":[{"topLeft":{"x":6,"y":65},"bottomRight":{"x":33,"y":410}},{"topLeft":{"x":58,"y":71},"bottomRight":{"x":81,"y":406}},{"topLeft":{"x":58,"y":443},"bottomRight":{"x":81,"y":494}},{"topLeft":{"x":75,"y":208},"bottomRight":{"x":332,"y":285}},{"topLeft":{"x":62,"y":431},"bottomRight":{"x":80,"y":449}},{"topLeft":{"x":5,"y":386},"bottomRight":{"x":35,"y":497}},{"topLeft":{"x":56,"y":217},"bottomRight":{"x":74,"y":251}}],"walls":[{"start":{"x":5,"y":5},"end":{"x":500,"y":5}},{"start":{"x":5,"y":5},"end":{"x":5,"y":500}},{"start":{"x":495,"y":5},"end":{"x":495,"y":495}},{"start":{"x":5,"y":495},"end":{"x":500,"y":495}},{"start":{"x":82,"y":291},"end":{"x":336,"y":289}},{"start":{"x":337,"y":292},"end":{"x":338,"y":202}},{"start":{"x":340,"y":206},"end":{"x":87,"y":204}},{"start":{"x":90,"y":206},"end":{"x":88,"y":69}},{"start":{"x":59,"y":70},"end":{"x":89,"y":69}},{"start":{"x":381,"y":321},"end":{"x":457,"y":407}},{"start":{"x":374,"y":152},"end":{"x":450,"y":60}},{"start":{"x":246,"y":158},"end":{"x":156,"y":67}},{"start":{"x":138,"y":51},"end":{"x":183,"y":10}}]}'
par = 5
maps << { dataJSON: dataJSON, par: par, name: "You know you're taking the shortcut"}

dataJSON = '{"par":5,"ballLoc":{"x":240,"y":467},"holeLoc":{"x":252,"y":36},"traps":[{"topLeft":{"x":119,"y":372},"bottomRight":{"x":351,"y":488}},{"topLeft":{"x":345,"y":108},"bottomRight":{"x":401,"y":271}},{"topLeft":{"x":58,"y":49},"bottomRight":{"x":132,"y":203}},{"topLeft":{"x":203,"y":158},"bottomRight":{"x":292,"y":197}}],"waters":[{"topLeft":{"x":149,"y":404},"bottomRight":{"x":177,"y":438}},{"topLeft":{"x":300,"y":402},"bottomRight":{"x":323,"y":433}},{"topLeft":{"x":153,"y":5},"bottomRight":{"x":339,"y":23}},{"topLeft":{"x":7,"y":316},"bottomRight":{"x":91,"y":495}},{"topLeft":{"x":398,"y":329},"bottomRight":{"x":491,"y":494}},{"topLeft":{"x":158,"y":26},"bottomRight":{"x":222,"y":48}},{"topLeft":{"x":282,"y":28},"bottomRight":{"x":328,"y":47}}],"walls":[{"start":{"x":5,"y":5},"end":{"x":500,"y":5}},{"start":{"x":5,"y":5},"end":{"x":5,"y":500}},{"start":{"x":495,"y":5},"end":{"x":495,"y":495}},{"start":{"x":5,"y":495},"end":{"x":500,"y":495}},{"start":{"x":183,"y":427},"end":{"x":295,"y":423}}]}'
par = 5
maps << { dataJSON: dataJSON, par: par, name: "Sandy shores to hole island"}
maps.each {|data| Map.create!(data: JSON.parse(data[:dataJSON]), par: data[:par], name: data[:name]) }
Course.create!(name: 'Classics', maps: Map.last(9))
Course.create!(name: 'Classics Jr.', maps: Map.first(3))
Course.create!(name: 'Just the Hard Ones', maps: Map.last(3))
Course.first.high_scores.create(:name => 'Jeff', :score => 27)
Course.first.high_scores.create(:name => 'Ryan', :score => 27)
Course.first.high_scores.create(:name => 'matt', :score => 26)
Course.first.high_scores.create(:name => 'shawnasty', :score => 34)
Course.first.high_scores.create(:name => 'Ryan', :score => 23)
# Course.all.each do |course|
#   (2 + (rand * 20).floor).times do 
#     name = Faker::Name.first_name
#     score = (rand * 50).floor + course.par
#     course.high_scores.create(:name => name, :score => score);
#   end
# end
