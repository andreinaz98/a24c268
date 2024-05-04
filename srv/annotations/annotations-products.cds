using {ServiceCatalog as call} from '../service';

annotate call.ProductsSet with {
    Products      @Title : 'Product';
    Description  @Title : 'Descripcion' @UI.MultiLineText;
    Category     @Title : 'Category';
    SubCategory  @Title : 'Sub-Category';
    Availability @Title : 'Availability';
    Rating       @Title : 'Average Rating';
    Price        @Title : 'Price per Unit';
    Supplier     @Title : 'Supplier';
};


annotate call.ProductsSet with @(
    UI.SelectionFields: [
       Supplier_ID, 
       Category
    ],
    UI.LineItem: [
       // {
         //   $Type   :   'UI.DataField',
         //   Value   : ImagenUrl
       // },
        {
            $Type   :   'UI.DataField',
            Value   : Products
        },
        {
            $Type   :   'UI.DataField',
            Value   : Category
        },
        {
            $Type   :   'UI.DataField',
            Value   : SubCategory
        },
        {
            $Type   :   'UI.DataField',
            Value   : Availability
        },
        {
            $Type   :   'UI.DataField',
            Value   : Rating
        },
        {
            $Type   :   'UI.DataField',
            Value   : Price
        },

    ]

);