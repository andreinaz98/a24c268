using {ServiceCatalog as call} from '../service';

annotate call.ProductsSet with {
    ImageUrl     @title: 'Image';
    Products     @Title: 'Product';
    Description  @Title: 'Descripcion'  @UI.MultiLineText;
    Category     @Title: 'Category';
    SubCategory  @Title: 'Sub-Category';
    Availability @Title: 'Availability';
    Rating       @Title: 'Average Rating';
    Price        @Title: 'Price per Unit';
    Supplier     @Title: 'Supplier'; //No me quita el Supplier_ID de la etiqueta
};


annotate call.ProductsSet with @(
    UI.SelectionFields: [
        Supplier_ID,
        Category
    ],
    //para hacer el titulo con el conteo
    UI.HeaderInfo     : {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : 'Product',
        TypeNamePlural: 'Products',
    },

    UI.LineItem       : [
        {
            $Type                : 'UI.DataField',
            Value                : ImageUrl,
            ![@HTML5.CssDefaults]: {
                $Type: 'HTML5.CssDefaultsType',
                width: '6rem',
            },
        },
        {
            $Type: 'UI.DataField',
            Value: Products
        },
        {
            $Type: 'UI.DataField',
            Value: Category
        },
        {
            $Type: 'UI.DataField',
            Value: SubCategory
        },
        {
            $Type                : 'UI.DataField',
            Value                : Availability,
            ![@HTML5.CssDefaults]: {
                $Type: 'HTML5.CssDefaultsType',
                width: '8rem',
            }
        },
        {
            $Type                : 'UI.DataFieldForAnnotation',
            Target               : '@UI.DataPoint',
            ![@HTML5.CssDefaults]: {
                $Type: 'HTML5.CssDefaultsType',
                width: '8rem',
            }
        },
        {
            $Type: 'UI.DataField',
            Value: Price
        },

    ],
    UI.DataPoint      : {
        $Type        : 'UI.DataPointType',
        Value        : Rating,
        Visualization: #Rating
    }

);