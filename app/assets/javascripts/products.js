(function(){
    var app = angular.module('store-directives', []);

    app.directive("productDescription", function() {
      return {
        restrict: 'E',
        templateUrl: "/gemStore/product-description.html.erb"
      };
    });

    app.directive("productReviews", function() {
      return {
        restrict: 'E',
        templateUrl: "/gemStore/product-reviews.html.erb"
      };
    });

    app.directive("productSpecs", function() {
      return {
        restrict:"A",
        templateUrl: "/gemStore/product-specs.html.erb"
      };
    });

    app.directive("productTabs", function() {
      return {
        restrict: "E",
        templateUrl: "/gemStore/product-tabs.html.erb",
        controller: function() {
          this.tab = 1;

          this.isSet = function(checkTab) {
            return this.tab === checkTab;
          };

          this.setTab = function(activeTab) {
            this.tab = activeTab;
          };
        },
        controllerAs: "tab"
      };
    });

    app.directive("productGallery", function() {
      return {
        restrict: "E",
        templateUrl: "/gemStore/product-gallery.html.erb",
        controller: function() {
          this.current = 0;
          this.setCurrent = function(imageNumber){
            this.current = imageNumber || 0;
          };
        },
        controllerAs: "gallery"
      };
    });
  })();
