class UsersController < ApplicationController

  def new
  end

  def show
  end

  def create
    @user = User.new()
    @user.minutes = 0
    random = generate_name
    @user.name = random
    # @user.save
    # session[:user_id] = @user.id
    # redirect_to '/'

  # respond_to do |format|
  #   if @user.save
  #     session[:user_id] = @user.id
  #     format.html { redirect_to root_url }
  #     format.json { render json: @user, status: :created, location: @user }
  #   else
  #     format.html { render action: "new" }
  #     format.json { render json: @user.errors, status: :unprocessable_entity }
  #   end
  # end

  if @user.save
    session[:user_id] = @user.id
    redirect_to root_url
  else
    render "new"
  end

  end

  def show
    @user = User.find(current_user.id)
  end

  def update
    user = User.find(current_user.id)
    user.name = generate_name
    user.save
    redirect_to '/'
  end

  private
  def generate_name
    rnd = Random.rand(2000)

    "#{adjectives[rnd%adjectives.length]} #{nouns[rnd%nouns.length]}"
  end

  def adjectives
    [
      "Autumn", "Hidden", "Bitter", "Misty", "Silent", "Empty", "Dry", "Dark",
      "Summer", "Icy", "Delicate", "Quiet", "White", "Cool", "Spring", "Winter",
      "Patient", "Twilight", "Dawn", "Crimson", "Wispy", "Weathered", "Blue",
      "Billowing", "Broken", "Cold", "Damp", "Falling", "Frosty", "Green",
      "Long", "Late", "Bold", "Little", "Morning", "Muddy",
      "Red", "Rough", "Still", "Small", "Sparkling", "Shy",
      "Wandering", "Withered", "Wild", "Black", "Young", "Holy", "Solitary",
      "Fragrant", "Aged", "Snowy", "Proud", "Floral", "Restless",
      "Polished", "Purple", "Lively",
    ]
  end

  def nouns
         [
"Abbey", "Abbot", "Abel Smith", "Aberporth", "Abingdon", "Acacia", "Acer", "Acorn", "Acre Dyke", "Adam", "Addison", "Adelaide", "Admiral", "Aima", "Aisne", "Akeman", "Akrotiri", "Alabala", "Albany", "Albert", "Albion", "Alconbury", "Alder", "Aldergrove", "Aldermans", "Aldernay", "Aldreth", "Alexander", "Alexandra", "Alford Mill", "Alfred", "All Saints", "Allandale", "Allen", "Allison", "Allwood", "Alma Martin", "Almond", "Alness", "Alpine", "Altham", "Althea", "Alvis", "Amble", "Ambleside", "Ancaster", "Ancholme", "Anderby", "Anderson", "Andover", "Anson", "Antrim", "Anyans", "Anzio", "Apley", "Apple", "Apple Tree", "Arabis", "Arboretum", "Archer", "Arden Moor", "Arlington", "Arras", "Arthur", "Arthur Taylor", "Ascot", "Ash", "Ashby", "Ashdale", "Ashfield", "Ashing", "Ashlin", "Ashtons", "Ashtree", "Ashworth", "Aspen", "Aster", "Asterby", "Aston", "Astral", "Astwick", "Atwater", "Aubourn", "Auckland", "Auden", "Austen", "Avenue", "Avocet", "Avon", "Avondale", "Ayam", "Aylesby", "Aynsley", "Azalea", "Back", "Badgers", "Baggholme", "Baildon", "Bain", "Bakehouse", "Baker", "Bakers", "Bakewell", "Bamford", "Bangor", "Bank", "Bar", "Bardney", "Barff", "Barkston", "Barley", "Barleyfield", "Barlings", "Barnes", "Barnes Wallis", "Barratts", "Barrett", "Bartholomew", "Bassingham", "Bath", "Bathurst", "Battersby", "Bawtry", "Baxter", "Bayfield", "Baywood", "Beaufort", "Beaumont", "Beaver", "Beck", "Becke", "Becket", "Beckingham", "Bede", "Bedford", "Beech", "Beevor", "Belgrave", "Belgravia", "Bell", "Belle Vue", "Bellflower", "Bells", "Bellwood", "Belmont", "Belton", "Belton Park", "Belvoir", "Bennington", "Benson", "Bentinck", "Bentley", "Beresford", "Berkeley", "Bernard", "Besthorpe", "Beswick", "Betula", "Beverley", "Billinghay", "Bilsby", "Binbrook", "Birch", "Birchwood", "Birds Holt", "Birkdale", "Bishop King", "Bittern", "Blackbourn", "Blackmoor", "Blacks", "Blacksmith", "Blacksmiths", "Blackthorn", "Blankney", "Blenheim", "Blind", "Bloxholm", "Bloxholme", "Bluebell", "Blyton", "Bodmin Moor", "Bolton", "Bona", "Boscombe", "Boswell", "Bottesford", "Boultham", "Boultham Park", "Boundary", "Bourne", "Bowden", "Bracken", "Bradbury", "Braemar", "Brakes", "Bramble", "Bramley", "Brancaster", "Branston", "Brant", "Brattleby", "Brayford Wharf", "Breedon", "Brent", "Brewery", "Briar", "Brickyard", "Bridge", "Bridle", "Brigg", "Brills", "Brinkhall", "Brisbane", "Bristol", "Broad Dale", "Broadholme", "Broadway", "Brocklebank", "Brook", "Brookfield", "Brooklands", "Broom", "Brough", "Broughton", "Browning", "Brownlow", "Broxburn Caravan", "Broxholme", "Bruce", "Brumby", "Brunswick", "Buchanan", "Buckfast", "Bucknall", "Buddleia", "Bullingham", "Cabourne", "Cade", "Cadwell", "Caenby", "Caistor", "Calder", "Cambridge", "Camdon", "Campus", "Camwood", "Canada", "Canberra", "Cannon", "Canterbury", "Canwick", "Capps", "Cardinal", "Cardyke", "Carholme", "Carisbrooke", "Carline", "Carlisle", "Carlton", "Carlyle", "Carn", "Caroline", "Carr", "Carral", "Carres", "Carrington", "Carron", "Carrwood", "Cassia", "Cast Metal", "Castle Dyke", "Castle", "Cathedral", "Cathedral View", "Cavalry", "Cavendish", "Cecil", "Cedar", "Centurion", "Century", "Chalgrove", "Chamberlains", "Chancery", "Changi", "Chapel", "Chaplin", "Charles", "Charles Street", "Charlesworth", "Chatsworth", "Chatterton", "Chaucer", "Chedburgh", "Chedworth", "Cheetham", "Chelmer", "Chelmsford", "Chelsea", "Cheriton", "Cherry", "Cherry Tree", "Cherrytree", "Cheshire", "Chesney", "Chester", "Chestnut", "Cheviot", "Chichester", "Chieftain", "Chiltern", "Chippendale", "Chivenor", "Christs Hospital", "Church", "Church End Fulbeck", "Church View", "Churchill", "Clara", "Clare", "Claremont", "Clarendon", "Clarina", "Clarke", "Clay", "Clematis", "Clement", "Cleveland", "Cliff", "Clifton", "Clint", "Clinton", "Clive", "Clover", "Clumber", "Coalport", "Cobb Hall", "Cockburn", "Coldham", "Coleby", "Colegrave", "Colenso", "Coleraine", "Coleridge", "College", "Collingham", "Colne", "Common", "Coningsby", "Coniston", "Connaught", "Constable", "Constance", "Conway", "Cooke", "Coopers", "Coopers Holt", "Corn", "Cornus", "Cornwall", "Cornwallis", "Coronation", "Corporation", "Correen", "Cosford", "Cosgrove", "Cotman", "Cotswold", "Cottage", "Cottesford", "Cottesmore", "Cottingham", "Cotton-smith", "Coulson", "Coult", "Council", "Courtfield", "Cow", "Cowper", "Cows", "Cranbourn", "Crane", "Cranwell", "Craven", "Craypool", "Crescent", "Cresta", "Croft", "Crofton", "Cromer", "Cromwell", "Crosby", "Cross Keys", "Cross", "Cross O'cliff", "Crossfield", "Crow", "Crowland", "Croxton", "Cullin", "Cumberland", "Curle", "Curtis", "Curtois", "Curzon", "Cydonia", "D'aincourt", "Dalderby", "Dale", "Dane", "Danes", "Daniel", "Daphne", "Dart", "Darwin", "Daubeney", "David", "Davy's", "Dawson", "Dawsons", "De Wint", "Deane", "Deepdale", "Dellfield", "Deloraine", "Delph", "Denby Dale", "Dene", "Denzlingen", "Derby", "Derwent", "Devon", "Devonshire", "Digby", "Dixon", "Doddington", "Dogdyke", "Doncaster", "Dore", "Dorothy", "Dorset", "Doughty's", "Doulton", "Dove", "Dovecote", "Dowding", "Drake", "Drill", "Drury", "Dryden", "Dunham", "Dunholme", "Dunkirk", "Dunlop", "Dunmore", "Dunston", "Durham", "Dycote", "Eagle", "Earls", "Earlsfield", "East", "East Mill", "Eastbourne", "Eastbrook", "Eastcliff", "Eastern", "Eastfield", "Eastgate", "Eastleigh", "Ebony", "Eddystone", "Edendale", "Edinburgh", "Edlington", "Edna", "Edward Barker", "Edward", "Egerton", "Egret", "Elder", "Eleanor", "Elizabeth", "Ellesmere", "Ellison", "Elm", "Elmdene", "Elmwood", "Elsham", "Elvin", "Elvington", "Ely", "Enderby", "Ennerdale", "Epsom", "Epworth", "Ermine", "Ernest", "Escombe", "Esk", "Estwaite", "Eton", "Euston", "Eve", "Ewart", "Exchange", "Exchequer", "Exeter", "Exmoor", "Eyam", "Fairfax", "Fairfield", "Falcon", "Faldingworth", "Falklands", "Far", "Farrier", "Farriers", "Farrington", "Farrows", "Favell", "Fawsley", "Fayid", "Feathers", "Fen", "Fenton", "Fern", "Fernleigh", "Ferry", "Ferryside", "Field", "Field Farm", "Filey", "Finch", "Finney", "Finningley", "Fir Tree", "First", "First Hurn", "Fiskerton", "Fitzwilliam", "Five Mile", "Fleet", "Fleets", "Flinders", "Flintham", "Florence", "Folkingham", "Folly", "Fontwell", "Forsythia", "Fortescue", "Foss", "Fossdyke", "Fosse", "Foster", "Fosters", "Fourth", "Fox", "Foxfield", "Foxglove", "Foyle", "Francis", "Frank", "Frank Wright", "Franklin", "Frederick", "Freslon", "Friars", "Frome", "Front", "Fulmar", "Furndown", "Furrow", "Furze", "Gail", "Gainsborough", "Garden", "Garfield", "Garmston", "Garratt", "Garrick", "Gas", "Gaunt", "Gayle", "Gayton", "Geneva", "George", "Geralds", "Gerrard", "Gibbeson", "Gibraltar", "Gibson", "Gildesburgh", "Glebe", "Glenarm", "Glenbank", "Glendon", "Gleneagles", "Glentham", "Glenwood", "Gloucester", "Glynn", "Godber", "Goldcrest", "Goldfinch", "Goldsmith", "Good", "Gordon", "Gorehall", "Gorse Hill", "Gospel", "Gothic", "Goxhill", "Grace", "Grafton", "Grainsby", "Granary", "Grange", "Granson", "Grantham", "Grasmere", "Grassmoor", "Gravel", "Graveley", "Gray", "Grayson", "Great Northern", "Grebe", "Green", "Green Man", "Greenbank", "Greenfield", "Greenholme", "Greenock", "Greenwood", "Greestone", "Greetwell", "Gregg Hall", "Gresham", "Gresley", "Greyling", "Grinter", "Grosvenor", "Guildford", "Guildhall", "Gunby", "Gynewell", "Habbaniya", "Hackthorn", "Haddington", "Haddon", "Hadfield", "Hadleigh", "Haffenden", "Hainton", "Hale", "Hales", "Halfway", "Halifax", "Hall", "Hall Orchard", "Hallam", "Hallams", "Halls", "Halton", "Hamilton", "Hampden", "Hampton", "Hannah", "Harby", "Hardwick", "Harewood", "Harlaxton", "Harmston", "Harmston Park", "Harpswell", "Harrier", "Harrington", "Harris", "Harrison", "Harrow", "Harrowby", "Hartland", "Hartley", "Harts", "Hartsholme", "Harvard", "Harvest", "Harvey Kent", "Harvey", "Harwich", "Hatcliffe", "Hathersage", "Hatton", "Haven", "Hawkshead", "Hawksmoor", "Hawthorn", "Haydor", "Hayes", "Haze", "Hazel", "Hazelwood", "Headland", "Heath", "Heathcote", "Heathfield", "Hebden Moor", "Heighington", "Helsby", "Hemswell", "Henley", "Henlow", "Henry", "Henson", "Hereward", "Heritage", "Hermit", "Heron", "Herrington", "Hewson", "Heysham", "Hibaldstow", "Hickory", "Higgins", "High", "Highfield", "Higson", "Hill", "Hillman", "Hillside", "Hilltop", "Hives", "Hodson", "Holdenby", "Holly", "Hollywell", "Holme", "Holmes", "Holt", "Home", "Honeyholes", "Honeysuckle", "Honington", "Hood", "Hope", "Hoplands", "Horncastle", "Horner", "Horton", "Hospital", "Howard", "Hudson", "Hughes Ford", "Hughson", "Hundle House", "Hunt Lea", "Hunters", "Huntlea", "Hurn Bridge", "Hurn", "Hurstwood", "Hutson", "Hyde Park", "Hykeham", "Industrial", "Ingham", "Ingleby", "Inns", "Ivy", "Jacobean", "Jaguar", "James", "Jasmin", "Jason", "Jellicoe", "Jensen", "Jermyn", "Jerusalem", "Jesmond", "Jessop", "John", "Johns", "Johnson", "Johnsons", "Jubilee", "Julia", "Juniper", "Karsons", "Keadby", "Keats", "Keddington", "Keeble", "Keepers", "Kells", "Kelsey", "Kelstern", "Kemble", "Kendall", "Kenilworth", "Kennedy", "Kennel", "Kenner", "Kenneth", "Kennington", "Kent", "Kenyon", "Kerrison", "Kershaw", "Kesteven", "Kestrel", "Kettlethorpe", "Kexby Mill", "Khormaksar", "Kilburn", "Kinder", "King", "Kingfisher", "Kings", "Kingsdown", "Kingsley", "Kinloss", "Kipling", "Kirkby", "Kirmington", "Kirton", "Knight", "Labour In Vain", "Laburnum", "Laceby", "Lacy", "Ladds Mill", "Lady Bower", "Lady Meers", "Lafford", "Lagonda", "Laing", "Lake View", "Lamb", "Lancaster", "Lancewood", "Lancia", "Landmere", "Laney", "Langdale", "Langer", "Langley", "Langrick", "Langworth", "Lannimore", "Lansdowne", "Lapwing", "Larch", "Larchwood", "Lark", "Larkin", "Larkspur", "Larne", "Larners", "Laughton", "Laughton Way", "Laurel", "Lavender", "Lavenham", "Lawley", "Lawn", "Lawrence", "Laythorpe", "Le Grand Luce", "Lea", "Lechler", "Leconfield", "Lee", "Leeming", "Legbourne", "Leicester", "Leighton", "Lenton", "Lewis", "Leyburn", "Lichfield", "Lilac", "Lilford", "Lillicrap", "Lilys", "Lime", "Lime Tree", "Lincoln", "Lincoln Road", "Linden", "Lindholme", "Lindrick", "Lindum", "Linga", "Lingfield", "Linghall", "Linnet", "Lintin", "Linton", "Linwood", "Lisburn", "Lissett", "Lissington", "Little Bargate", "Little", "Little London Leisure", "Little Thorpe", "Liverpool", "Locking", "Lodge Caravan", "Lodge", "Londesborough", "London", "Long", "Long Leys", "Longdales", "Longstongs", "Longwood", "Lonsdale", "Lotus", "Low Moor", "Low", "Lower Church", "Lower High", "Ludford", "Lumley", "Lurgan", "Luton", "Lydd", "Lyneham", "Lynmouth", "Lytham", "Macaulay", "Macmillan", "Magnolia", "Magpie", "Maidenwell", "Main", "Mainwaring", "Malham", "Mallard", "Mallory", "Maltkiln", "Malton", "Malus", "Malvern", "Manby", "Manchester", "Manor", "Manor Farm", "Manor Leas", "Manse", "Mansford", "Manton", "Maple", "Mareham", "Marham", "Marigold", "Marina", "Marjorie", "Market", "Market Rasen", "Marlborough", "Marlowe", "Marmion", "Marne", "Marsh", "Martin", "Marton", "Massey", "Matlock", "Maxwell", "May", "Mayall", "Mayfair", "Mays", "Mcinnes", "Mead", "Meadow Bank", "Meadow", "Meadow Farm Caravan", "Meadowlake", "Medway", "Meeting House", "Megs", "Melbourne", "Mellows", "Melville", "Memorial Hall", "Mendip", "Merchant", "Mere", "Merrycock", "Metheringham", "Metheringham Heath", "Meynell", "Middle Fen", "Middle", "Middlebrook", "Middletons", "Midville", "Midway", "Mildenhall", "Mildmay", "Mill", "Mill Farm", "Mill Mere", "Millbeck", "Millbrook", "Millers", "Millfield", "Millmoor", "Millstream", "Milman", "Milson", "Milton", "Minster", "Mint", "Minting", "Mitchell", "Moat", "Monce", "Monckton", "Monks Leys", "Monks Manor", "Monks", "Mons", "Monsal", "Monson", "Montagu", "Montague", "Montaigne", "Montrose", "Moor", "Moorby", "Moorland", "Moorside", "Morden", "Morris", "Morton", "Motherby", "Mount", "Mourn", "Moxons", "Mulberry", "Murdock", "Musgraves", "Naam", "Napier", "Natal", "Navenby", "Neale", "Neile", "Nelson", "Nelthorpe", "Nene", "Nettleham", "Nettleton", "Neustadt", "Nevile", "New", "New York", "Newark", "Newfield", "Newham", "Newhaven", "Newland Street", "Newport", "Newstead", "Newsums", "Newton", "Nightingale", "No Mans", "Nocton", "Norbeck", "Norfolk", "Norman", "Normanby", "Norris", "North", "North Kyme", "Northfield", "Northing", "Northorpe", "Northumberland", "Norton Disney", "Norton", "Norwich", "Nottingham", "Nursery", "Nurses", "Oak", "Oakdene", "Oakfield", "Oakland", "Oakleigh", "Oakwood", "Occupation", "Old Boston", "Old Brick Kiln", "Old Chapel", "Old Fen", "Old Four", "Old Mulberry", "Old Oak", "Old Pond", "Old School", "Old Smithy", "Old Vicarage", "Old", "Old Wood", "Olive", "Orchard", "Orchid", "Osbourne", "Osprey", "Otter", "Otters", "Oulton", "Oundle", "Outer Circle", "Oval", "Overton", "Oxen Park", "Oxeney", "Oxford", "Pacey", "Paddock", "Painshall", "Park", "Park View", "Parker", "Parksgate", "Parsons", "Patch", "Pateley Moor", "Peak", "Pear Tree", "Peddars", "Peel", "Pelham", "Pendine", "Pendred", "Penfold", "Pennell", "Pennycress", "Penrose", "Pentland", "Peppercorn", "Percy", "Perney", "Philip", "Philips", "Photinia", "Pieter Maritz", "Pine", "Pinfold", "Pingle", "Pioneer", "Pitts", "Playgarth", "Pleasant", "Plough", "Plover", "Poachers", "Polyplatt", "Pond", "Pony", "Poplar", "Portland", "Post Office", "Pottergate", "Potterhanworth", "Pound", "Prebend", "Prenton", "Prestwick", "Prial", "Primrose", "Princes", "Princess Margaret", "Princess Royal", "Princess", "Prior", "Priory", "Providence", "Pullan", "Pullman", "Pynder", "Quakers", "Queen Elizabeth", "Queen Mary", "Queen", "Queens", "Queensbury", "Queensland", "Queensway", "Quintin", "Quorn", "Railway", "Railway Park", "Rasen", "Rauceby", "Ravendale", "Ravensmoor", "Raynton", "Read", "Reading", "Rectory", "Redbourne", "Redcar", "Redcote", "Redhall", "Redwing", "Redwood", "Reedham", "Reepham", "Regent", "Regents Park", "Reid", "Remigius", "Renault", "Renfrew", "Repton", "Retief", "Revesby", "Reynolds", "Richards", "Richmond", "Ridge", "Ridgeview", "Ridgewell", "Rigsmoor", "Riley", "Ringmoor", "Ringwood", "Ripley", "Ripon", "Risby", "Riseholme", "Rivehall", "River", "Rivermead", "Rivermede", "Riverton", "Robert Tressell", "Robertson", "Robey", "Robin", "Robinson", "Rochester", "Rolleston", "Roman", "Romney", "Rookery", "Rose Cottage", "Rosebery", "Rosedale", "Rosehill", "Roselea", "Rosemary", "Roseum", "Rosewood", "Rossington", "Rostrop", "Rothwell", "Roughton", "Rowan", "Roxborough", "Roxby", "Royal Oak", "Roydon", "Ruckland", "Rudgard", "Rufford", "Runcorn", "Runswick", "Ruskin", "Ruskington", "Rusland", "Russell", "Rutland", "Rydal", "Ryland", "St Martins", "St Marys", "St Matthews", "St Michaels", "St Nicholas", "St Pauls", "St Peter At", "St Peters", "St Rumbold", "St Simons", "St Wilfrids", "Staffordshire", "Stainton", "Stamp", "Stanley", "Stanthaket", "Stapleford", "Staples", "Station", "Staunton", "Staverton", "Steamer Point", "Steep", "Steeping", "Stenigot", "Stenner", "Stevenson", "Stewards", "Stirling", "Stone", "Stone Moor", "Stonecliff", "Stonefield", "Stonelea", "Stoney", "Stow", "Stow Park", "Stoyles", "Strahane", "Stretton", "Strubby", "Sturgate", "Sturton", "Sudbeck", "Sudbrooke", "Sudbury", "Suffolk", "Summers", "Sunbeam", "Sunderland", "Sunfield", "Sunningdale", "Sussex", "Sutton", "Swaby", "Swallow", "Swallowbeck", "Swan", "Swanholme", "Swans", "Swayne", "Swaythling", "Swift", "Swinderby", "Swynford", "Sycamore", "Syd Wilson", "Sykes", "Sympson", "Syringa", "Syston", "Sywell", "Saddlers", "Salisbury", "Salix", "Sallie Bank", "Sand", "Sanders", "Sandra", "Sands", "Sandtoft", "Sandwell", "Sandy", "Sandy Bank", "Sansford", "Sargent", "Satinwood", "Satterley", "Sausthorpe", "Saville", "Saxilby", "Saxon", "Scampton", "Scanlan", "Scarborough", "Scargate", "Scarle", "Scawby", "School", "Scopwick", "Scorer", "Scothern", "Scott", "Scotton", "Searby", "Second", "Sedgebrook", "Sedgemoor", "Seely", "Selby", "Sempers", "Severn", "Sewell", "Sewells", "Shaftesbury", "Shakespeare", "Shamrock", "Shannon", "Shant", "Shaw", "Shawbury", "Shays", "Shearwater", "Sheepwash", "Shelley", "Shepherds", "Sheppard", "Sheppards", "Sheraton", "Sherbrooke", "Sheridan", "Sherwood", "Shirley", "Short", "Shropshire", "Shuttleworth", "Sibthorp", "Sibthorpe", "Sidlaw", "Sidney", "Silver", "Simon's", "Sincil", "Sinclairs", "Sixfield", "Skayman", "Skellingthorpe", "Skerries", "Skinners", "Skipwith", "Skirbeck", "Skirth", "Sleaford", "Slessor", "Smith", "Smooting", "Snaith", "Snetterton", "Snowberry", "Snowdon", "Soggin", "Somersby", "Somerset", "Somerton Gate", "Somerton", "Somerville", "Sorrel", "South", "South Hykeham", "South Scarle", "Southland", "Southmoor", "Southwell", "Spa", "Spalford", "Spanby", "Spencer", "Spennymoor", "Sperrin", "Spilsby", "Spinney", "Spirea", "Spital", "Spring", "Springfield", "Sprite", "Spruce", "Squires", "St Aidens", "St Albans", "St Andrews", "St Annes", "St Aubins", "St Benedicts", "St Botolphs", "St", "St Catherines", "St Claires", "St Clements", "St Crispins", "St Davids", "St Edwards", "St Faiths", "St Francis", "St Georges", "St Giles", "St Helens", "St Hilarys", "St Hughs", "St Johns", "St Leonards", "St Lukes", "St Margarets", "St Mark", "St Marks", "Talbot", "Tamar", "Tangshan", "Tattershall Bridge", "Tattershall", "Teal", "Tealby", "Tedder", "Teesdale", "Tempest", "Temple", "Tennyson", "Tenter", "Tentercroft", "Tetney", "Thackers", "Theodore", "Thesiger", "Third", "Thirlmere", "Thirsk", "Thistle", "Thomas", "Thompsons", "Thonock", "Thoresby", "Thoresway", "Thornton", "Thorpe", "Thurlby", "Thurlow", "Tillbridge", "Timberland", "Timms", "Tinkermere", "Tinkers", "Tobruk", "Tom Otters", "Tomlinson", "Torgate", "Torksey", "Toronto", "Torrington", "Tothill", "Tower", "Toynton", "Trafalgar", "Trelawney", "Trenchard", "Trent", "Trevose", "Tritton", "Trollope", "Troon", "Troutbeck", "Truro", "Tudor", "Tulipwood", "Tumby", "Turnberry", "Turnbury", "Turner", "Tyne", "Uffington", "Uldale", "Ullswater", "Union", "Upper", "Upper Lindum", "Upper Long Leys", "Upper Saxon", "Urban", "Usher", "Vacherie", "Valiant", "Valley", "Vanwall", "Vasey", "Vauxhall", "Ventnor", "Verdun", "Vere", "Vernon", "Veronica", "Vicarage", "Vicars", "Victor", "Victoria", "Viking", "Villa", "Village Farm", "Vine", "Vulcan", "Waddingworth", "Wain Well", "Wainer", "Wake", "Walbury", "Walcot", "Walcott", "Waldeck", "Waldo", "Walford", "Wallis", "Walmer", "Walnut", "Waltham", "Warwick", "Wasdale", "Washdyke", "Washingborough", "Washington", "Water", "Waterford", "Waterloo", "Watermill", "Waterside", "Waterwheel", "Watery", "Wath", "Waverley", "Webb", "Webster", "Wedgewood", "Wegberg", "Weir Farm", "Weir", "Welbeck", "Welbourn", "Well", "Welland", "Wellhead", "Wellingore", "Wellington", "Wells", "Welton", "Welton Low", "Wentworth", "Wesley", "Wesselow", "West", "West End", "West Mill", "Westbourne", "Westbrooke", "Westcliffe", "Westcroft", "Western", "Westfield", "Westhall", "Westholm", "Westmoor", "Westmoreland", "Westward", "Westwick", "Westwood", "Wetherby", "Weymouth", "Wharfedale", "Wheatfield", "Wheatley", "Whisby", "White House", "Whitehall", "Whitethorn", "Whitley", "Wickenby", "Widows", "Wigsley", "Wildmore", "William", "Williamson", "Williamsons", "Willingham", "Willis", "Willoughby", "Willow", "Willow Tree", "Willowfield", "Willowmere", "Willows", "Wilson", "Winchester", "Windermere", "Windmill", "Windsor", "Windsor Park", "Wingrave", "Winn", "Winniffe", "Winnowsty", "Winster", "Winthorpe", "Winton", "Wiseholme", "Wisteria", "Witchford", "Witham", "Wittering", "Woburn", "Wold", "Wolsey", "Wood", "Woodburn", "Woodfield", "Woodgate", "Woodhall", "Woodland", "Woodpecker", "Woodrush", "Woodstock", "Woodvale", "Woolley", "Worcester", "Wordsworth", "Wragby", "Wragby Road", "Wroxham", "Wyatt", "Wyton", "Wyville", "Yale", "Yarborough", "York"    
      ]
  end

end
