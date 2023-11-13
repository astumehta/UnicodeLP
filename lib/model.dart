class Autogenerated {
  int? status;
  Null? msg;
  Results? results;

  Autogenerated({this.status, this.msg, this.results});

  Autogenerated.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    msg = json['msg'];
    results =
        json['results'] != null ? Results.fromJson(json['results']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['status'] = this.status;
    data['msg'] = this.msg;
    if (this.results != null) {
      data['results'] = this.results!.toJson();
    }
    return data;
  }
}

class Results {
  List<Data>? data;
  Paging? paging;

  Results({this.data, this.paging});

  Results.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
    paging =
        json['paging'] != null ? Paging.fromJson(json['paging']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    if (this.paging != null) {
      data['paging'] = this.paging!.toJson();
    }
    return data;
  }
}

class Data {
  String? locationId;
  String? name;
  String? latitude;
  String? longitude;
  String? numReviews;
  String? timezone;
  String? locationString;
  Photo? photo;
  String? apiDetailUrl;
  List<Null>? awards;
  String? doubleclickZone;
  String? preferredMapEngine;
  String? rawRanking;
  String? rankingGeo;
  String? rankingGeoId;
  String? rankingPosition;
  String? rankingDenominator;
  String? rankingCategory;
  String? ranking;
  String? subcategoryType;
  String? subcategoryTypeLabel;
  Null? distance;
  Null? distanceString;
  Null? bearing;
  String? rating;
  bool? isClosed;
  String? openNowText;
  bool? isLongClosed;
  String? priceLevel;
  String? price;
  List<NeighborhoodInfo>? neighborhoodInfo;
  String? hotelClass;
  String? hotelClassAttribution;
  BusinessListings? businessListings;
  SpecialOffers? specialOffers;
  String? description;
  String? webUrl;
  String? writeReview;
  List<Ancestors>? ancestors;
  Subcategory? category;
  List<Subcategory>? subcategory;
  String? parentDisplayName;
  bool? isJfyEnabled;
  List<Null>? nearestMetroStation;
  String? phone;
  String? website;
  AddressObj? addressObj;
  String? address;
  bool? isCandidateForContactInfoSuppression;
  List<Null>? amenities;
  String? ownerWebsite;
  String? email;

  Data(
      {this.locationId,
      this.name,
      this.latitude,
      this.longitude,
      this.numReviews,
      this.timezone,
      this.locationString,
      this.photo,
      this.apiDetailUrl,
      this.awards,
      this.doubleclickZone,
      this.preferredMapEngine,
      this.rawRanking,
      this.rankingGeo,
      this.rankingGeoId,
      this.rankingPosition,
      this.rankingDenominator,
      this.rankingCategory,
      this.ranking,
      this.subcategoryType,
      this.subcategoryTypeLabel,
      this.distance,
      this.distanceString,
      this.bearing,
      this.rating,
      this.isClosed,
      this.openNowText,
      this.isLongClosed,
      this.priceLevel,
      this.price,
      this.neighborhoodInfo,
      this.hotelClass,
      this.hotelClassAttribution,
      this.businessListings,
      this.specialOffers,
      this.description,
      this.webUrl,
      this.writeReview,
      this.ancestors,
      this.category,
      this.subcategory,
      this.parentDisplayName,
      this.isJfyEnabled,
      this.nearestMetroStation,
      this.phone,
      this.website,
      this.addressObj,
      this.address,
      this.isCandidateForContactInfoSuppression,
      this.amenities,
      this.ownerWebsite,
      this.email});

  Data.fromJson(Map<String, dynamic> json) {
    locationId = json['location_id'];
    name = json['name'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    numReviews = json['num_reviews'];
    timezone = json['timezone'];
    locationString = json['location_string'];
    photo = json['photo'] != null ? Photo.fromJson(json['photo']) : null;
    apiDetailUrl = json['api_detail_url'];
    if (json['awards'] != null) {
      awards = <Null>[];
      json['awards'].forEach((v) {
  
      });
    }
    doubleclickZone = json['doubleclick_zone'];
    preferredMapEngine = json['preferred_map_engine'];
    rawRanking = json['raw_ranking'];
    rankingGeo = json['ranking_geo'];
    rankingGeoId = json['ranking_geo_id'];
    rankingPosition = json['ranking_position'];
    rankingDenominator = json['ranking_denominator'];
    rankingCategory = json['ranking_category'];
    ranking = json['ranking'];
    subcategoryType = json['subcategory_type'];
    subcategoryTypeLabel = json['subcategory_type_label'];
    distance = json['distance'];
    distanceString = json['distance_string'];
    bearing = json['bearing'];
    rating = json['rating'];
    isClosed = json['is_closed'];
    openNowText = json['open_now_text'];
    isLongClosed = json['is_long_closed'];
    priceLevel = json['price_level'];
    price = json['price'];
    if (json['neighborhood_info'] != null) {
      neighborhoodInfo = <NeighborhoodInfo>[];
      json['neighborhood_info'].forEach((v) {
        neighborhoodInfo!.add(NeighborhoodInfo.fromJson(v));
      });
    }
    hotelClass = json['hotel_class'];
    hotelClassAttribution = json['hotel_class_attribution'];
    businessListings = json['business_listings'] != null
        ? BusinessListings.fromJson(json['business_listings'])
        : null;
    specialOffers = json['special_offers'] != null
        ? SpecialOffers.fromJson(json['special_offers'])
        : null;
    description = json['description'];
    webUrl = json['web_url'];
    writeReview = json['write_review'];
    if (json['ancestors'] != null) {
      ancestors = <Ancestors>[];
      json['ancestors'].forEach((v) {
        ancestors!.add(Ancestors.fromJson(v));
      });
    }
    category = json['category'] != null
        ? Subcategory.fromJson(json['category'])
        : null;
    if (json['subcategory'] != null) {
      subcategory = <Subcategory>[];
      json['subcategory'].forEach((v) {
        subcategory!.add(Subcategory.fromJson(v));
      });
    }
    parentDisplayName = json['parent_display_name'];
    isJfyEnabled = json['is_jfy_enabled'];
    if (json['nearest_metro_station'] != null) {
      nearestMetroStation = <Null>[];
      json['nearest_metro_station'].forEach((v) {
      
      });
    }
    phone = json['phone'];
    website = json['website'];
    addressObj = json['address_obj'] != null
        ? AddressObj.fromJson(json['address_obj'])
        : null;
    address = json['address'];
    isCandidateForContactInfoSuppression =
        json['is_candidate_for_contact_info_suppression'];
    if (json['amenities'] != null) {
      amenities = <Null>[];
      json['amenities'].forEach((v) {
        
      });
    }
    ownerWebsite = json['owner_website'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['location_id'] = this.locationId;
    data['name'] = this.name;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['num_reviews'] = this.numReviews;
    data['timezone'] = this.timezone;
    data['location_string'] = this.locationString;
    if (this.photo != null) {
      data['photo'] = this.photo!.toJson();
    }
    data['api_detail_url'] = this.apiDetailUrl;
    if (this.awards != null) {
    }
    data['doubleclick_zone'] = this.doubleclickZone;
    data['preferred_map_engine'] = this.preferredMapEngine;
    data['raw_ranking'] = this.rawRanking;
    data['ranking_geo'] = this.rankingGeo;
    data['ranking_geo_id'] = this.rankingGeoId;
    data['ranking_position'] = this.rankingPosition;
    data['ranking_denominator'] = this.rankingDenominator;
    data['ranking_category'] = this.rankingCategory;
    data['ranking'] = this.ranking;
    data['subcategory_type'] = this.subcategoryType;
    data['subcategory_type_label'] = this.subcategoryTypeLabel;
    data['distance'] = this.distance;
    data['distance_string'] = this.distanceString;
    data['bearing'] = this.bearing;
    data['rating'] = this.rating;
    data['is_closed'] = this.isClosed;
    data['open_now_text'] = this.openNowText;
    data['is_long_closed'] = this.isLongClosed;
    data['price_level'] = this.priceLevel;
    data['price'] = this.price;
    if (this.neighborhoodInfo != null) {
      data['neighborhood_info'] =
          this.neighborhoodInfo!.map((v) => v.toJson()).toList();
    }
    data['hotel_class'] = this.hotelClass;
    data['hotel_class_attribution'] = this.hotelClassAttribution;
    if (this.businessListings != null) {
      data['business_listings'] = this.businessListings!.toJson();
    }
    if (this.specialOffers != null) {
      data['special_offers'] = this.specialOffers!.toJson();
    }
    data['description'] = this.description;
    data['web_url'] = this.webUrl;
    data['write_review'] = this.writeReview;
    if (this.ancestors != null) {
      data['ancestors'] = this.ancestors!.map((v) => v.toJson()).toList();
    }
    if (this.category != null) {
      data['category'] = this.category!.toJson();
    }
    if (this.subcategory != null) {
      data['subcategory'] = this.subcategory!.map((v) => v.toJson()).toList();
    }
    data['parent_display_name'] = this.parentDisplayName;
    data['is_jfy_enabled'] = this.isJfyEnabled;
    if (this.nearestMetroStation != null) {
      
    }
    data['phone'] = this.phone;
    data['website'] = this.website;
    if (this.addressObj != null) {
      data['address_obj'] = this.addressObj!.toJson();
    }
    data['address'] = this.address;
    data['is_candidate_for_contact_info_suppression'] =
        this.isCandidateForContactInfoSuppression;
    if (this.amenities != null) {
      
    }
    data['owner_website'] = this.ownerWebsite;
    data['email'] = this.email;
    return data;
  }
}

class Photo {
  Images? images;
  bool? isBlessed;
  String? uploadedDate;
  String? caption;
  String? id;
  String? helpfulVotes;
  String? publishedDate;
  User? user;

  Photo(
      {this.images,
      this.isBlessed,
      this.uploadedDate,
      this.caption,
      this.id,
      this.helpfulVotes,
      this.publishedDate,
      this.user});

  Photo.fromJson(Map<String, dynamic> json) {
    images =
        json['images'] != null ? Images.fromJson(json['images']) : null;
    isBlessed = json['is_blessed'];
    uploadedDate = json['uploaded_date'];
    caption = json['caption'];
    id = json['id'];
    helpfulVotes = json['helpful_votes'];
    publishedDate = json['published_date'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.images != null) {
      data['images'] = this.images!.toJson();
    }
    data['is_blessed'] = this.isBlessed;
    data['uploaded_date'] = this.uploadedDate;
    data['caption'] = this.caption;
    data['id'] = this.id;
    data['helpful_votes'] = this.helpfulVotes;
    data['published_date'] = this.publishedDate;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class Images {
  Small? small;
  Small? thumbnail;
  Small? original;
  Small? large;
  Small? medium;

  Images({this.small, this.thumbnail, this.original, this.large, this.medium});

  Images.fromJson(Map<String, dynamic> json) {
    small = json['small'] != null ? Small.fromJson(json['small']) : null;
    thumbnail = json['thumbnail'] != null
        ? Small.fromJson(json['thumbnail'])
        : null;
    original =
        json['original'] != null ? Small.fromJson(json['original']) : null;
    large = json['large'] != null ? Small.fromJson(json['large']) : null;
    medium = json['medium'] != null ? Small.fromJson(json['medium']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.small != null) {
      data['small'] = this.small!.toJson();
    }
    if (this.thumbnail != null) {
      data['thumbnail'] = this.thumbnail!.toJson();
    }
    if (this.original != null) {
      data['original'] = this.original!.toJson();
    }
    if (this.large != null) {
      data['large'] = this.large!.toJson();
    }
    if (this.medium != null) {
      data['medium'] = this.medium!.toJson();
    }
    return data;
  }
}

class Small {
  String? width;
  String? url;
  String? height;

  Small({this.width, this.url, this.height});

  Small.fromJson(Map<String, dynamic> json) {
    width = json['width'];
    url = json['url'];
    height = json['height'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['width'] = this.width;
    data['url'] = this.url;
    data['height'] = this.height;
    return data;
  }
}

class User {
  Null? userId;
  String? memberId;
  String? type;

  User({this.userId, this.memberId, this.type});

  User.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    memberId = json['member_id'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['member_id'] = this.memberId;
    data['type'] = this.type;
    return data;
  }
}

class NeighborhoodInfo {
  String? locationId;
  String? name;

  NeighborhoodInfo({this.locationId, this.name});

  NeighborhoodInfo.fromJson(Map<String, dynamic> json) {
    locationId = json['location_id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['location_id'] = this.locationId;
    data['name'] = this.name;
    return data;
  }
}

class BusinessListings {
  List<Null>? desktopContacts;
  List<MobileContacts>? mobileContacts;

  BusinessListings({this.desktopContacts, this.mobileContacts});

  BusinessListings.fromJson(Map<String, dynamic> json) {
    if (json['desktop_contacts'] != null) {
      desktopContacts = <Null>[];
      json['desktop_contacts'].forEach((v) {
        
      });
    }
    if (json['mobile_contacts'] != null) {
      mobileContacts = <MobileContacts>[];
      json['mobile_contacts'].forEach((v) {
        mobileContacts!.add(MobileContacts.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.desktopContacts != null) {
      
    }
    if (this.mobileContacts != null) {
      data['mobile_contacts'] =
          this.mobileContacts!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class MobileContacts {
  String? value;
  String? label;
  String? type;
  String? offerlessCommerceTrackUrl;

  MobileContacts(
      {this.value, this.label, this.type, this.offerlessCommerceTrackUrl});

  MobileContacts.fromJson(Map<String, dynamic> json) {
    value = json['value'];
    label = json['label'];
    type = json['type'];
    offerlessCommerceTrackUrl = json['offerless_commerce_track_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['value'] = this.value;
    data['label'] = this.label;
    data['type'] = this.type;
    data['offerless_commerce_track_url'] = this.offerlessCommerceTrackUrl;
    return data;
  }
}

class SpecialOffers {
  List<Null>? desktop;
  List<Mobile>? mobile;

  SpecialOffers({this.desktop, this.mobile});

  SpecialOffers.fromJson(Map<String, dynamic> json) {
    if (json['desktop'] != null) {
      desktop = <Null>[];
      json['desktop'].forEach((v) {
       
      });
    }
    if (json['mobile'] != null) {
      mobile = <Mobile>[];
      json['mobile'].forEach((v) {
        mobile!.add(Mobile.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.desktop != null) {
      
    }
    if (this.mobile != null) {
      data['mobile'] = this.mobile!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Mobile {
  String? headline;
  String? url;
  String? offerlessClickTrackingUrl;

  Mobile({this.headline, this.url, this.offerlessClickTrackingUrl});

  Mobile.fromJson(Map<String, dynamic> json) {
    headline = json['headline'];
    url = json['url'];
    offerlessClickTrackingUrl = json['offerless_click_tracking_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['headline'] = this.headline;
    data['url'] = this.url;
    data['offerless_click_tracking_url'] = this.offerlessClickTrackingUrl;
    return data;
  }
}

class Ancestors {
  List<Subcategory>? subcategory;
  String? name;
  String? abbrv;
  String? locationId;

  Ancestors({this.subcategory, this.name, this.abbrv, this.locationId});

  Ancestors.fromJson(Map<String, dynamic> json) {
    if (json['subcategory'] != null) {
      subcategory = <Subcategory>[];
      json['subcategory'].forEach((v) {
        subcategory!.add(Subcategory.fromJson(v));
      });
    }
    name = json['name'];
    abbrv = json['abbrv'];
    locationId = json['location_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.subcategory != null) {
      data['subcategory'] = this.subcategory!.map((v) => v.toJson()).toList();
    }
    data['name'] = this.name;
    data['abbrv'] = this.abbrv;
    data['location_id'] = this.locationId;
    return data;
  }
}

class Subcategory {
  String? key;
  String? name;

  Subcategory({this.key, this.name});

  Subcategory.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['key'] = this.key;
    data['name'] = this.name;
    return data;
  }
}

class AddressObj {
  String? street1;
  String? street2;
  String? city;
  String? state;
  String? country;
  String? postalcode;

  AddressObj(
      {this.street1,
      this.street2,
      this.city,
      this.state,
      this.country,
      this.postalcode});

  AddressObj.fromJson(Map<String, dynamic> json) {
    street1 = json['street1'];
    street2 = json['street2'];
    city = json['city'];
    state = json['state'];
    country = json['country'];
    postalcode = json['postalcode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['street1'] = this.street1;
    data['street2'] = this.street2;
    data['city'] = this.city;
    data['state'] = this.state;
    data['country'] = this.country;
    data['postalcode'] = this.postalcode;
    return data;
  }
}

class Paging {
  Null? previous;
  String? next;
  String? skipped;
  String? results;
  String? totalResults;

  Paging(
      {this.previous,
      this.next,
      this.skipped,
      this.results,
      this.totalResults});

  Paging.fromJson(Map<String, dynamic> json) {
    previous = json['previous'];
    next = json['next'];
    skipped = json['skipped'];
    results = json['results'];
    totalResults = json['total_results'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['previous'] = this.previous;
    data['next'] = this.next;
    data['skipped'] = this.skipped;
    data['results'] = this.results;
    data['total_results'] = this.totalResults;
    return data;
  }
}
