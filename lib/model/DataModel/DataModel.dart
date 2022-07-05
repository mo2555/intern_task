class DataModel {
  DataModel({
      this.id, 
      this.title, 
      this.content, 
      this.slug, 
      this.date, 
      this.type, 
      this.featured, 
      this.featuredImage, 
      this.galleryImage, 
      this.price, 
      this.status, 
      this.location, 
      this.address, 
      this.contactName, 
      this.contactEmail, 
      this.contactPhone, 
      this.views, 
      this.size, 
      this.bedrooms, 
      this.bathrooms, 
      this.prefix, 
      this.meta,});

  DataModel.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    content = json['content'];
    slug = json['slug'];
    date = json['date'];
    type = json['type'] != null ? Type.fromJson(json['type']) : null;
    featured = json['featured'];
    featuredImage = json['featured_image'] != null ? FeaturedImage.fromJson(json['featured_image']) : null;
    galleryImage = json['gallery_image'] != null ? json['gallery_image'].cast<String>() : [];
    price = json['price'];
    status = json['status'];
    location = json['location'] != null ? Location.fromJson(json['location']) : null;
    address = json['address'];
    contactName = json['contact_name'];
    contactEmail = json['contact_email'];
    contactPhone = json['contact_phone'];
    views = json['views'];
    size = json['size'];
    bedrooms = json['bedrooms'];
    bathrooms = json['bathrooms'];
    prefix = json['prefix'];
    meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
  }
  int? id;
  String? title;
  String? content;
  String? slug;
  String? date;
  Type? type;
  bool? featured;
  FeaturedImage? featuredImage;
  List<String>? galleryImage;
  String? price;
  String? status;
  Location? location;
  String? address;
  String? contactName;
  String? contactEmail;
  String? contactPhone;
  String? views;
  String? size;
  String? bedrooms;
  String? bathrooms;
  String? prefix;
  Meta? meta;


}

class Meta {
  Meta({
      this.realEstatePropertyFeatured, 
      this.realEstatePropertyPriceOnCall, 
      this.realEstatePropertyPriceUnit, 
      this.realEstatePropertyPriceShort, 
      this.realEstatePropertyPrice, 
      this.realEstatePropertyPricePostfix, 
      this.realEstatePropertySize, 
      this.realEstatePropertyLand, 
      this.realEstatePropertyRooms, 
      this.realEstatePropertyBedrooms, 
      this.realEstatePropertyBathrooms, 
      this.realEstatePropertyGarage, 
      this.realEstatePropertyGarageSize, 
      this.realEstatePropertyYear, 
      this.realEstatePropertyVideoUrl, 
      this.realEstatePropertyIdentity, 
      this.realEstatePropertyImages, 
      this.thumbnailId, 
      this.realEstateFloorsEnable, 
      this.realEstateFloors, 
      this.realEstateAgentDisplayOption, 
      this.realEstatePropertyAuthor, 
      this.realEstatePropertyAddress, 
      this.realEstatePropertyLocation, 
      this.realEstatePropertyCountry, 
      this.realEstatePrivateNote, 
      this.wpmlLocationMigrationDone, 
      this.realEstatePropertyViewsCount,});

  Meta.fromJson(dynamic json) {
    realEstatePropertyFeatured = json['real_estate_property_featured'] != null ? json['real_estate_property_featured'].cast<String>() : [];
    realEstatePropertyPriceOnCall = json['real_estate_property_price_on_call'] != null ? json['real_estate_property_price_on_call'].cast<String>() : [];
    realEstatePropertyPriceUnit = json['real_estate_property_price_unit'] != null ? json['real_estate_property_price_unit'].cast<String>() : [];
    realEstatePropertyPriceShort = json['real_estate_property_price_short'] != null ? json['real_estate_property_price_short'].cast<String>() : [];
    realEstatePropertyPrice = json['real_estate_property_price'] != null ? json['real_estate_property_price'].cast<String>() : [];
    realEstatePropertyPricePostfix = json['real_estate_property_price_postfix'] != null ? json['real_estate_property_price_postfix'].cast<String>() : [];
    realEstatePropertySize = json['real_estate_property_size'] != null ? json['real_estate_property_size'].cast<String>() : [];
    realEstatePropertyLand = json['real_estate_property_land'] != null ? json['real_estate_property_land'].cast<String>() : [];
    realEstatePropertyRooms = json['real_estate_property_rooms'] != null ? json['real_estate_property_rooms'].cast<String>() : [];
    realEstatePropertyBedrooms = json['real_estate_property_bedrooms'] != null ? json['real_estate_property_bedrooms'].cast<String>() : [];
    realEstatePropertyBathrooms = json['real_estate_property_bathrooms'] != null ? json['real_estate_property_bathrooms'].cast<String>() : [];
    realEstatePropertyGarage = json['real_estate_property_garage'] != null ? json['real_estate_property_garage'].cast<String>() : [];
    realEstatePropertyGarageSize = json['real_estate_property_garage_size'] != null ? json['real_estate_property_garage_size'].cast<String>() : [];
    realEstatePropertyYear = json['real_estate_property_year'] != null ? json['real_estate_property_year'].cast<String>() : [];
    realEstatePropertyVideoUrl = json['real_estate_property_video_url'] != null ? json['real_estate_property_video_url'].cast<String>() : [];
    realEstatePropertyIdentity = json['real_estate_property_identity'] != null ? json['real_estate_property_identity'].cast<String>() : [];
    realEstatePropertyImages = json['real_estate_property_images'] != null ? json['real_estate_property_images'].cast<String>() : [];
    thumbnailId = json['_thumbnail_id'] != null ? json['_thumbnail_id'].cast<String>() : [];
    realEstateFloorsEnable = json['real_estate_floors_enable'] != null ? json['real_estate_floors_enable'].cast<String>() : [];
    realEstateFloors = json['real_estate_floors'] != null ? json['real_estate_floors'].cast<String>() : [];
    realEstateAgentDisplayOption = json['real_estate_agent_display_option'] != null ? json['real_estate_agent_display_option'].cast<String>() : [];
    realEstatePropertyAuthor = json['real_estate_property_author'] != null ? json['real_estate_property_author'].cast<String>() : [];
    realEstatePropertyAddress = json['real_estate_property_address'] != null ? json['real_estate_property_address'].cast<String>() : [];
    realEstatePropertyLocation = json['real_estate_property_location'] != null ? json['real_estate_property_location'].cast<String>() : [];
    realEstatePropertyCountry = json['real_estate_property_country'] != null ? json['real_estate_property_country'].cast<String>() : [];
    realEstatePrivateNote = json['real_estate_private_note'] != null ? json['real_estate_private_note'].cast<String>() : [];
    wpmlLocationMigrationDone = json['_wpml_location_migration_done'] != null ? json['_wpml_location_migration_done'].cast<String>() : [];
    realEstatePropertyViewsCount = json['real_estate_property_views_count'] != null ? json['real_estate_property_views_count'].cast<String>() : [];
  }
  List<String>? realEstatePropertyFeatured;
  List<String>? realEstatePropertyPriceOnCall;
  List<String>? realEstatePropertyPriceUnit;
  List<String>? realEstatePropertyPriceShort;
  List<String>? realEstatePropertyPrice;
  List<String>? realEstatePropertyPricePostfix;
  List<String>? realEstatePropertySize;
  List<String>? realEstatePropertyLand;
  List<String>? realEstatePropertyRooms;
  List<String>? realEstatePropertyBedrooms;
  List<String>? realEstatePropertyBathrooms;
  List<String>? realEstatePropertyGarage;
  List<String>? realEstatePropertyGarageSize;
  List<String>? realEstatePropertyYear;
  List<String>? realEstatePropertyVideoUrl;
  List<String>? realEstatePropertyIdentity;
  List<String>? realEstatePropertyImages;
  List<String>? thumbnailId;
  List<String>? realEstateFloorsEnable;
  List<String>? realEstateFloors;
  List<String>? realEstateAgentDisplayOption;
  List<String>? realEstatePropertyAuthor;
  List<String>? realEstatePropertyAddress;
  List<String>? realEstatePropertyLocation;
  List<String>? realEstatePropertyCountry;
  List<String>? realEstatePrivateNote;
  List<String>? wpmlLocationMigrationDone;
  List<String>? realEstatePropertyViewsCount;


}

class Location {
  Location({
      this.lat, 
      this.long,});

  Location.fromJson(dynamic json) {
    lat = json['lat'];
    long = json['long'];
  }
  String? lat;
  String? long;


}

class FeaturedImage {
  FeaturedImage({
      this.thumbnail, 
      this.medium, 
      this.large,});

  FeaturedImage.fromJson(dynamic json) {
    thumbnail = json['thumbnail'];
    medium = json['medium'];
    large = json['large'];
  }
  String? thumbnail;
  String? medium;
  String? large;



}

class Type {
  Type({
      this.name, 
      this.id,});

  Type.fromJson(dynamic json) {
    name = json['name'];
    id = json['id'];
  }
  String? name;
  int? id;



}