class ProductsController < ApplicationController
  def index
     @products = Product.all
     flag = false


     interim_category = @products
     #Category Filtration
     if filter_is_on?
      if !current_filter.all
        if current_filter.outdoors
          if !flag
            flag = true
            interim_category = Product.where(category: "outdoors")
          end
        end
        if current_filter.underwear
          if !flag
            flag = true
            interim_category = Product.where(category: "underwear")
          else
            interim_category = interim_category.or(Product.where(category: "underwear"))
          end
        end
        if current_filter.formal
          if !flag
            flag = true
            interim_category = Product.where(category: "formal")
          else
            interim_category = interim_category.or(Product.where(category: "formal"))
          end
        end
        if current_filter.summer
          if !flag
            flag = true
            interim_category= Product.where(category: "summer")
          else
            interim_category = interim_category.or(Product.where(category: "summer"))
          end
        end
        if current_filter.indoors
          if !flag
            flag = true
            interim_category = Product.where(category: "indoors")
          else
            interim_category =interim_category.or(Product.where(category: "indoors"))
          end
        end
      end
      
      interim_colour = interim_category
      colour_flag = false

      #Colour Filtration
      if current_filter.grey
        if !colour_flag
          colour_flag = true
          interim_colour = Product.where(colour: "grey")
        end
      end
      if current_filter.red
        if !colour_flag
          colour_flag = true
          interim_colour = Product.where(colour: "red")
        else
          interim_colour =interim_colour.or(Product.where(colour: "red"))
        end
      end
      if current_filter.brown
        if !colour_flag
          colour_flag = true
          interim_colour = Product.where(colour: "brown")
        else
          interim_colour =interim_colour.or(Product.where(colour: "brown"))
        end
      end
      if current_filter.blue
        if !colour_flag
          colour_flag = true
          interim_colour = Product.where(colour: "blue")
        else
          interim_colour =interim_colour.or(Product.where(colour: "blue"))
        end
      end
      if current_filter.green
        if !colour_flag
          colour_flag = true
          interim_colour = Product.where(colour: "green")
        else
          interim_colour =interim_colour.or(Product.where(colour: "green"))
        end
      end 
      if current_filter.black
        if !colour_flag
          colour_flag = true
          interim_colour = Product.where(colour: "black")
        else
          interim_colour =interim_colour.or(Product.where(colour: "black"))
        end
      end
      if current_filter.white
        if !colour_flag
          colour_flag = true
          interim_colour = Product.where(colour: "white")
        else
          interim_colour =interim_colour.or(Product.where(colour: "white"))
        end
      end

      interim_final = interim_colour
      #Size Filtration
      if current_filter.size != nil
        interim_final = interim_final.where(size: current_filter.size)
      end

      @products = interim_final
     end
  end

  def details
    @product = Product.find(params[:id])
    @order_item = current_order.order_items.new
    @customer = current_customer
  end

  def women
    @products = Product.where(collection_type: "women")

    interim_category = @products
     #Category Filtration
     if filter_is_on?
      if !current_filter.all
        if current_filter.outdoors
          if !flag
            flag = true
            interim_category = Product.where(category: "outdoors")
          end
        end
        if current_filter.underwear
          if !flag
            flag = true
            interim_category = Product.where(category: "underwear")
          else
            interim_category = interim_category.or(Product.where(category: "underwear"))
          end
        end
        if current_filter.formal
          if !flag
            flag = true
            interim_category = Product.where(category: "formal")
          else
            interim_category = interim_category.or(Product.where(category: "formal"))
          end
        end
        if current_filter.summer
          if !flag
            flag = true
            interim_category= Product.where(category: "summer")
          else
            interim_category = interim_category.or(Product.where(category: "summer"))
          end
        end
        if current_filter.indoors
          if !flag
            flag = true
            interim_category = Product.where(category: "indoors")
          else
            interim_category =interim_category.or(Product.where(category: "indoors"))
          end
        end
      end
      
      interim_colour = interim_category
      colour_flag = false

      #Colour Filtration
      if current_filter.grey
        if !colour_flag
          colour_flag = true
          interim_colour = Product.where(colour: "grey")
        end
      end
      if current_filter.red
        if !colour_flag
          colour_flag = true
          interim_colour = Product.where(colour: "red")
        else
          interim_colour =interim_colour.or(Product.where(colour: "red"))
        end
      end
      if current_filter.brown
        if !colour_flag
          colour_flag = true
          interim_colour = Product.where(colour: "brown")
        else
          interim_colour =interim_colour.or(Product.where(colour: "brown"))
        end
      end
      if current_filter.blue
        if !colour_flag
          colour_flag = true
          interim_colour = Product.where(colour: "blue")
        else
          interim_colour =interim_colour.or(Product.where(colour: "blue"))
        end
      end
      if current_filter.green
        if !colour_flag
          colour_flag = true
          interim_colour = Product.where(colour: "green")
        else
          interim_colour =interim_colour.or(Product.where(colour: "green"))
        end
      end 
      if current_filter.black
        if !colour_flag
          colour_flag = true
          interim_colour = Product.where(colour: "black")
        else
          interim_colour =interim_colour.or(Product.where(colour: "black"))
        end
      end
      if current_filter.white
        if !colour_flag
          colour_flag = true
          interim_colour = Product.where(colour: "white")
        else
          interim_colour =interim_colour.or(Product.where(colour: "white"))
        end
      end

      interim_final = interim_colour
      #Size Filtration
      if current_filter.size != nil
        interim_final = interim_final.where(size: current_filter.size)
      end

      women_products = Product.where(collection_type: "women")
      @products = interim_final & women_products
     end
  end

  def men
    @products = Product.where(collection_type: "men")

    interim_category = @products
     #Category Filtration
     if filter_is_on?
      if !current_filter.all
        if current_filter.outdoors
          if !flag
            flag = true
            interim_category = Product.where(category: "outdoors")
          end
        end
        if current_filter.underwear
          if !flag
            flag = true
            interim_category = Product.where(category: "underwear")
          else
            interim_category = interim_category.or(Product.where(category: "underwear"))
          end
        end
        if current_filter.formal
          if !flag
            flag = true
            interim_category = Product.where(category: "formal")
          else
            interim_category = interim_category.or(Product.where(category: "formal"))
          end
        end
        if current_filter.summer
          if !flag
            flag = true
            interim_category= Product.where(category: "summer")
          else
            interim_category = interim_category.or(Product.where(category: "summer"))
          end
        end
        if current_filter.indoors
          if !flag
            flag = true
            interim_category = Product.where(category: "indoors")
          else
            interim_category =interim_category.or(Product.where(category: "indoors"))
          end
        end
      end
      
      interim_colour = interim_category
      colour_flag = false

      #Colour Filtration
      if current_filter.grey
        if !colour_flag
          colour_flag = true
          interim_colour = Product.where(colour: "grey")
        end
      end
      if current_filter.red
        if !colour_flag
          colour_flag = true
          interim_colour = Product.where(colour: "red")
        else
          interim_colour =interim_colour.or(Product.where(colour: "red"))
        end
      end
      if current_filter.brown
        if !colour_flag
          colour_flag = true
          interim_colour = Product.where(colour: "brown")
        else
          interim_colour =interim_colour.or(Product.where(colour: "brown"))
        end
      end
      if current_filter.blue
        if !colour_flag
          colour_flag = true
          interim_colour = Product.where(colour: "blue")
        else
          interim_colour =interim_colour.or(Product.where(colour: "blue"))
        end
      end
      if current_filter.green
        if !colour_flag
          colour_flag = true
          interim_colour = Product.where(colour: "green")
        else
          interim_colour =interim_colour.or(Product.where(colour: "green"))
        end
      end 
      if current_filter.black
        if !colour_flag
          colour_flag = true
          interim_colour = Product.where(colour: "black")
        else
          interim_colour =interim_colour.or(Product.where(colour: "black"))
        end
      end
      if current_filter.white
        if !colour_flag
          colour_flag = true
          interim_colour = Product.where(colour: "white")
        else
          interim_colour =interim_colour.or(Product.where(colour: "white"))
        end
      end

      interim_final = interim_colour
      #Size Filtration
      if current_filter.size != nil
        interim_final = interim_final.where(size: current_filter.size)
      end

      men_products = Product.where(collection_type: "men")
      @products = interim_final & men_products
     end
  end

  def kids
     @products = Product.where(collection_type: "kids")

     interim_category = @products
     #Category Filtration
     if filter_is_on?
      if !current_filter.all
        if current_filter.outdoors
          if !flag
            flag = true
            interim_category = Product.where(category: "outdoors")
          end
        end
        if current_filter.underwear
          if !flag
            flag = true
            interim_category = Product.where(category: "underwear")
          else
            interim_category = interim_category.or(Product.where(category: "underwear"))
          end
        end
        if current_filter.formal
          if !flag
            flag = true
            interim_category = Product.where(category: "formal")
          else
            interim_category = interim_category.or(Product.where(category: "formal"))
          end
        end
        if current_filter.summer
          if !flag
            flag = true
            interim_category= Product.where(category: "summer")
          else
            interim_category = interim_category.or(Product.where(category: "summer"))
          end
        end
        if current_filter.indoors
          if !flag
            flag = true
            interim_category = Product.where(category: "indoors")
          else
            interim_category =interim_category.or(Product.where(category: "indoors"))
          end
        end
      end
      
      interim_colour = interim_category
      colour_flag = false

      #Colour Filtration
      if current_filter.grey
        if !colour_flag
          colour_flag = true
          interim_colour = Product.where(colour: "grey")
        end
      end
      if current_filter.red
        if !colour_flag
          colour_flag = true
          interim_colour = Product.where(colour: "red")
        else
          interim_colour =interim_colour.or(Product.where(colour: "red"))
        end
      end
      if current_filter.brown
        if !colour_flag
          colour_flag = true
          interim_colour = Product.where(colour: "brown")
        else
          interim_colour =interim_colour.or(Product.where(colour: "brown"))
        end
      end
      if current_filter.blue
        if !colour_flag
          colour_flag = true
          interim_colour = Product.where(colour: "blue")
        else
          interim_colour =interim_colour.or(Product.where(colour: "blue"))
        end
      end
      if current_filter.green
        if !colour_flag
          colour_flag = true
          interim_colour = Product.where(colour: "green")
        else
          interim_colour =interim_colour.or(Product.where(colour: "green"))
        end
      end 
      if current_filter.black
        if !colour_flag
          colour_flag = true
          interim_colour = Product.where(colour: "black")
        else
          interim_colour =interim_colour.or(Product.where(colour: "black"))
        end
      end
      if current_filter.white
        if !colour_flag
          colour_flag = true
          interim_colour = Product.where(colour: "white")
        else
          interim_colour =interim_colour.or(Product.where(colour: "white"))
        end
      end

      interim_final = interim_colour
      #Size Filtration
      if current_filter.size != nil
        interim_final = interim_final.where(size: current_filter.size)
      end

      kids_products = Product.where(collection_type: "kids")
      @products = interim_final & kids_products
     end
  end

  def newins
    @products = Product.where(collection_type: "new-ins")
    interim_category = @products
     #Category Filtration
     if filter_is_on?
      if !current_filter.all
        if current_filter.outdoors
          if !flag
            flag = true
            interim_category = Product.where(category: "outdoors")
          end
        end
        if current_filter.underwear
          if !flag
            flag = true
            interim_category = Product.where(category: "underwear")
          else
            interim_category = interim_category.or(Product.where(category: "underwear"))
          end
        end
        if current_filter.formal
          if !flag
            flag = true
            interim_category = Product.where(category: "formal")
          else
            interim_category = interim_category.or(Product.where(category: "formal"))
          end
        end
        if current_filter.summer
          if !flag
            flag = true
            interim_category= Product.where(category: "summer")
          else
            interim_category = interim_category.or(Product.where(category: "summer"))
          end
        end
        if current_filter.indoors
          if !flag
            flag = true
            interim_category = Product.where(category: "indoors")
          else
            interim_category =interim_category.or(Product.where(category: "indoors"))
          end
        end
      end
      
      interim_colour = interim_category
      colour_flag = false

      #Colour Filtration
      if current_filter.grey
        if !colour_flag
          colour_flag = true
          interim_colour = Product.where(colour: "grey")
        end
      end
      if current_filter.red
        if !colour_flag
          colour_flag = true
          interim_colour = Product.where(colour: "red")
        else
          interim_colour =interim_colour.or(Product.where(colour: "red"))
        end
      end
      if current_filter.brown
        if !colour_flag
          colour_flag = true
          interim_colour = Product.where(colour: "brown")
        else
          interim_colour =interim_colour.or(Product.where(colour: "brown"))
        end
      end
      if current_filter.blue
        if !colour_flag
          colour_flag = true
          interim_colour = Product.where(colour: "blue")
        else
          interim_colour =interim_colour.or(Product.where(colour: "blue"))
        end
      end
      if current_filter.green
        if !colour_flag
          colour_flag = true
          interim_colour = Product.where(colour: "green")
        else
          interim_colour =interim_colour.or(Product.where(colour: "green"))
        end
      end 
      if current_filter.black
        if !colour_flag
          colour_flag = true
          interim_colour = Product.where(colour: "black")
        else
          interim_colour =interim_colour.or(Product.where(colour: "black"))
        end
      end
      if current_filter.white
        if !colour_flag
          colour_flag = true
          interim_colour = Product.where(colour: "white")
        else
          interim_colour =interim_colour.or(Product.where(colour: "white"))
        end
      end

      interim_final = interim_colour
      #Size Filtration
      if current_filter.size != nil
        interim_final = interim_final.where(size: current_filter.size)
      end

      newins_products = Product.where(collection_type: "newins")
      @products = interim_final & newins_products
     end
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end
end
