<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script src="../js/app.js"></script>    
<section class="my-5">
      <div class="container">
          <h3 class="text-uppercase mb-5 text-center" >{{mydata[0].CategoryName}}</h3>
        <div class="row">
          <!-- product-->
          <div class="col-lg-3 col-md-4 col-6" ng-repeat="d in mydata">
            <div class="product">
              <div class="product-image">
                <img class="img-fluid" src="./images/{{d.image}}" alt="{{d.image}}"/>
                <div class="product-hover-overlay"><a class="product-hover-overlay-link"></a>
                    <div class="product-hover-overlay-buttons" ><a class="btn btn-dark btn-buy" href="#detail/{{d.productid}}"><i class="fa-search fa"></i><span class="btn-buy-label ms-2">View</span></a>
                  </div>
                </div>
              </div>
              <div class="py-2 " >
                  <p class="text-muted text-sm mb-1"    >{{d.CategoryName}}</p>
                  <h2 class="text-uppercase mb-1" style="font-size:1.4rem;"><a class="text-dark" href ="#detail/{{d.productid}}}">{{d.ProductName}}</a></h2>
                  <div class="d-flex justify-content-between">
                  <span class="text-muted" style="font-size: 1.2rem">₹{{d.ProductPrice}}</span>
                      <button ng-if="d.inwishlist" id="fav" data-like="false"  style="background: none; border: none; "  data-product-id="{{d.productid}}" onclick="removefromwishlist(this)">
                          <i class="bi bi-heart-fill" style="font-size: 19px; color:#5252ed"></i>
                    </button>
                    <button ng-if="!d.inwishlist" id="fav" data-like="false"  style="background: none; border: none; "  data-product-id="{{d.productid}}"  data-category-id="{{d.id}}" onclick="addtowishlist(this)">
                          <i class="bi bi-heart" style="font-size: 19px; color:#5252ed"></i>
                    </button>          
                  </div>
              </div>
            </div>
          </div>
          <!-- /product-->
        </div>
      </div>
    </section>