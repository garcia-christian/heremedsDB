toc.dat                                                                                             0000600 0004000 0002000 00000207511 14373217507 0014456 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       $                    {            railway    13.2    15.1 ?    2           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         3           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         4           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         5           1262    17471    railway    DATABASE     r   CREATE DATABASE railway WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE railway;
                postgres    false                     2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false         6           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    5         7           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    5         ?            1259    17480    tbl_administrator    TABLE     ?   CREATE TABLE public.tbl_administrator (
    admin_id integer NOT NULL,
    admin_name character varying NOT NULL,
    admin_email character varying NOT NULL,
    admin_password character varying NOT NULL
);
 %   DROP TABLE public.tbl_administrator;
       public         heap    postgres    false    5         ?            1259    17486    tbl_administrator_admin_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tbl_administrator_admin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.tbl_administrator_admin_id_seq;
       public          postgres    false    247    5         8           0    0    tbl_administrator_admin_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.tbl_administrator_admin_id_seq OWNED BY public.tbl_administrator.admin_id;
          public          postgres    false    248         ?            1259    17488    tbl_classification    TABLE     u   CREATE TABLE public.tbl_classification (
    class_id integer NOT NULL,
    class_desc character varying NOT NULL
);
 &   DROP TABLE public.tbl_classification;
       public         heap    postgres    false    5         ?            1259    17494    tbl_classification_class_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tbl_classification_class_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.tbl_classification_class_id_seq;
       public          postgres    false    249    5         9           0    0    tbl_classification_class_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.tbl_classification_class_id_seq OWNED BY public.tbl_classification.class_id;
          public          postgres    false    250         ?            1259    17496    tbl_custMed    TABLE     ?   CREATE TABLE public."tbl_custMed" (
    custmed_id integer NOT NULL,
    prod_id integer NOT NULL,
    med_quantity integer NOT NULL,
    med_name character varying
);
 !   DROP TABLE public."tbl_custMed";
       public         heap    postgres    false    5         ?            1259    17502    tbl_custMed_custmed_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."tbl_custMed_custmed_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."tbl_custMed_custmed_id_seq";
       public          postgres    false    5    251         :           0    0    tbl_custMed_custmed_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."tbl_custMed_custmed_id_seq" OWNED BY public."tbl_custMed".custmed_id;
          public          postgres    false    252         ?            1259    17504    tbl_customer    TABLE     c  CREATE TABLE public.tbl_customer (
    customer_id integer NOT NULL,
    username character varying NOT NULL,
    password character varying NOT NULL,
    email character varying NOT NULL,
    firstname character varying,
    lastname character varying,
    sex character varying,
    age character varying,
    datecreated timestamp without time zone
);
     DROP TABLE public.tbl_customer;
       public         heap    postgres    false    5         ?            1259    17510    tbl_customer_customer_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tbl_customer_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.tbl_customer_customer_id_seq;
       public          postgres    false    5    253         ;           0    0    tbl_customer_customer_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.tbl_customer_customer_id_seq OWNED BY public.tbl_customer.customer_id;
          public          postgres    false    254         .           1259    17853    tbl_customer_med    TABLE     ?   CREATE TABLE public.tbl_customer_med (
    c_med_id integer NOT NULL,
    customer integer NOT NULL,
    global_med integer NOT NULL,
    qty integer
);
 $   DROP TABLE public.tbl_customer_med;
       public         heap    postgres    false    5         -           1259    17851    tbl_customer_med_c_med_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tbl_customer_med_c_med_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.tbl_customer_med_c_med_id_seq;
       public          postgres    false    302    5         <           0    0    tbl_customer_med_c_med_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.tbl_customer_med_c_med_id_seq OWNED BY public.tbl_customer_med.c_med_id;
          public          postgres    false    301         ?            1259    17512    tbl_discount    TABLE     ?   CREATE TABLE public.tbl_discount (
    discount_id integer NOT NULL,
    discount_desc character varying NOT NULL,
    discount_cost numeric NOT NULL,
    pharmacy_id integer
);
     DROP TABLE public.tbl_discount;
       public         heap    postgres    false    5                     1259    17518    tbl_discount_discount_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tbl_discount_discount_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.tbl_discount_discount_id_seq;
       public          postgres    false    5    255         =           0    0    tbl_discount_discount_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.tbl_discount_discount_id_seq OWNED BY public.tbl_discount.discount_id;
          public          postgres    false    256                    1259    17520 
   tbl_dosage    TABLE     o   CREATE TABLE public.tbl_dosage (
    dosage_id integer NOT NULL,
    dosage_desc character varying NOT NULL
);
    DROP TABLE public.tbl_dosage;
       public         heap    postgres    false    5                    1259    17526    tbl_dosage_dosage_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tbl_dosage_dosage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.tbl_dosage_dosage_id_seq;
       public          postgres    false    257    5         >           0    0    tbl_dosage_dosage_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.tbl_dosage_dosage_id_seq OWNED BY public.tbl_dosage.dosage_id;
          public          postgres    false    258                    1259    17528    tbl_global_med    TABLE     ?  CREATE TABLE public.tbl_global_med (
    global_med_id integer NOT NULL,
    global_brand character varying,
    global_brand_name character varying NOT NULL,
    global_generic_name character varying NOT NULL,
    global_med_category integer NOT NULL,
    global_classification integer,
    image character varying
);
 "   DROP TABLE public.tbl_global_med;
       public         heap    postgres    false    5                    1259    17534     tbl_global_med_global_med_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tbl_global_med_global_med_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.tbl_global_med_global_med_id_seq;
       public          postgres    false    259    5         ?           0    0     tbl_global_med_global_med_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.tbl_global_med_global_med_id_seq OWNED BY public.tbl_global_med.global_med_id;
          public          postgres    false    260                    1259    17536    tbl_local_medicine    TABLE     9  CREATE TABLE public.tbl_local_medicine (
    med_id integer NOT NULL,
    pharmacy_id integer NOT NULL,
    global_med_id integer NOT NULL,
    med_price numeric NOT NULL,
    med_storage character varying,
    med_notes character varying,
    med_qty numeric,
    warning_threshold integer DEFAULT 0 NOT NULL
);
 &   DROP TABLE public.tbl_local_medicine;
       public         heap    postgres    false    5                    1259    17543    tbl_local_medicine_med_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tbl_local_medicine_med_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.tbl_local_medicine_med_id_seq;
       public          postgres    false    261    5         @           0    0    tbl_local_medicine_med_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.tbl_local_medicine_med_id_seq OWNED BY public.tbl_local_medicine.med_id;
          public          postgres    false    262                    1259    17545    tbl_med_category    TABLE     w   CREATE TABLE public.tbl_med_category (
    med_cat_id integer NOT NULL,
    med_cat_desc character varying NOT NULL
);
 $   DROP TABLE public.tbl_med_category;
       public         heap    postgres    false    5                    1259    17551    tbl_med_category_med_cat_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tbl_med_category_med_cat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.tbl_med_category_med_cat_id_seq;
       public          postgres    false    263    5         A           0    0    tbl_med_category_med_cat_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.tbl_med_category_med_cat_id_seq OWNED BY public.tbl_med_category.med_cat_id;
          public          postgres    false    264         	           1259    17553    tbl_missing_med    TABLE       CREATE TABLE public.tbl_missing_med (
    missing_id integer NOT NULL,
    med_id integer NOT NULL,
    quantity integer NOT NULL,
    current_item_price numeric NOT NULL,
    report_date timestamp without time zone NOT NULL,
    pharma_id integer NOT NULL
);
 #   DROP TABLE public.tbl_missing_med;
       public         heap    postgres    false    5         
           1259    17559    tbl_missing_med_missing_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tbl_missing_med_missing_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.tbl_missing_med_missing_id_seq;
       public          postgres    false    5    265         B           0    0    tbl_missing_med_missing_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.tbl_missing_med_missing_id_seq OWNED BY public.tbl_missing_med.missing_id;
          public          postgres    false    266                    1259    17561    tbl_mobile_cart    TABLE     ?   CREATE TABLE public.tbl_mobile_cart (
    cart_id integer NOT NULL,
    cart_med_id integer NOT NULL,
    cart_global_med_id integer NOT NULL,
    cart_pharmacy_id integer NOT NULL,
    cart_quantity integer NOT NULL,
    "userID" integer NOT NULL
);
 #   DROP TABLE public.tbl_mobile_cart;
       public         heap    postgres    false    5                    1259    17564    tbl_mobile_cart_cart_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tbl_mobile_cart_cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.tbl_mobile_cart_cart_id_seq;
       public          postgres    false    5    267         C           0    0    tbl_mobile_cart_cart_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.tbl_mobile_cart_cart_id_seq OWNED BY public.tbl_mobile_cart.cart_id;
          public          postgres    false    268                    1259    17566    tbl_onPurchaseInvoice    TABLE     g  CREATE TABLE public."tbl_onPurchaseInvoice" (
    "onPurhcaseInv_id" integer NOT NULL,
    med_id integer NOT NULL,
    "purchaseInvoice_id" integer NOT NULL,
    quantity integer NOT NULL,
    listing_price numeric NOT NULL,
    retail_price numeric NOT NULL,
    expiry_date timestamp without time zone,
    "manufactureDate" timestamp without time zone
);
 +   DROP TABLE public."tbl_onPurchaseInvoice";
       public         heap    postgres    false    5                    1259    17572 *   tbl_onPurchaseInvoice_onPurhcaseInv_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."tbl_onPurchaseInvoice_onPurhcaseInv_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public."tbl_onPurchaseInvoice_onPurhcaseInv_id_seq";
       public          postgres    false    269    5         D           0    0 *   tbl_onPurchaseInvoice_onPurhcaseInv_id_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public."tbl_onPurchaseInvoice_onPurhcaseInv_id_seq" OWNED BY public."tbl_onPurchaseInvoice"."onPurhcaseInv_id";
          public          postgres    false    270                    1259    17574    tbl_onSalesInvoice    TABLE     ?   CREATE TABLE public."tbl_onSalesInvoice" (
    sales_qty_id integer NOT NULL,
    sales_id integer NOT NULL,
    qty_purchased integer NOT NULL,
    total_price numeric NOT NULL,
    med_id integer
);
 (   DROP TABLE public."tbl_onSalesInvoice";
       public         heap    postgres    false    5                    1259    17580    tbl_order_items    TABLE     ?   CREATE TABLE public.tbl_order_items (
    "orderItem_id" integer NOT NULL,
    order_id integer NOT NULL,
    med_id integer NOT NULL,
    quantity integer NOT NULL
);
 #   DROP TABLE public.tbl_order_items;
       public         heap    postgres    false    5                    1259    17583     tbl_order_items_orderItem_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."tbl_order_items_orderItem_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."tbl_order_items_orderItem_id_seq";
       public          postgres    false    5    272         E           0    0     tbl_order_items_orderItem_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."tbl_order_items_orderItem_id_seq" OWNED BY public.tbl_order_items."orderItem_id";
          public          postgres    false    273                    1259    17585    tbl_order_status    TABLE     {   CREATE TABLE public.tbl_order_status (
    order_status_id integer NOT NULL,
    status_desc character varying NOT NULL
);
 $   DROP TABLE public.tbl_order_status;
       public         heap    postgres    false    5                    1259    17591 $   tbl_order_status_order_status_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tbl_order_status_order_status_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.tbl_order_status_order_status_id_seq;
       public          postgres    false    274    5         F           0    0 $   tbl_order_status_order_status_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.tbl_order_status_order_status_id_seq OWNED BY public.tbl_order_status.order_status_id;
          public          postgres    false    275                    1259    17593 
   tbl_orders    TABLE     ?  CREATE TABLE public.tbl_orders (
    order_id integer NOT NULL,
    customer_id integer NOT NULL,
    pharmacy_id integer NOT NULL,
    order_totalprice numeric NOT NULL,
    order_created timestamp without time zone NOT NULL,
    order_status integer,
    order_sales_id integer,
    order_finished timestamp without time zone,
    discount_type integer,
    discount_cost numeric,
    subtotal numeric
);
    DROP TABLE public.tbl_orders;
       public         heap    postgres    false    5                    1259    17599    tbl_orders_order_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tbl_orders_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.tbl_orders_order_id_seq;
       public          postgres    false    276    5         G           0    0    tbl_orders_order_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.tbl_orders_order_id_seq OWNED BY public.tbl_orders.order_id;
          public          postgres    false    277                    1259    17601    tbl_paymentType    TABLE     ?   CREATE TABLE public."tbl_paymentType" (
    "paymenType_id" integer NOT NULL,
    "paymentType_desc" character varying NOT NULL
);
 %   DROP TABLE public."tbl_paymentType";
       public         heap    postgres    false    5                    1259    17607 !   tbl_paymentType_paymenType_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."tbl_paymentType_paymenType_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public."tbl_paymentType_paymenType_id_seq";
       public          postgres    false    278    5         H           0    0 !   tbl_paymentType_paymenType_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public."tbl_paymentType_paymenType_id_seq" OWNED BY public."tbl_paymentType"."paymenType_id";
          public          postgres    false    279                    1259    17609    tbl_pharmaAdmin    TABLE     S  CREATE TABLE public."tbl_pharmaAdmin" (
    pa_id integer NOT NULL,
    pharmacy_id integer NOT NULL,
    admin_id integer NOT NULL,
    pos boolean,
    inventory boolean,
    orders boolean,
    purchased boolean,
    settings boolean,
    sales boolean,
    "roleDesc" character varying,
    "primary" boolean DEFAULT false NOT NULL
);
 %   DROP TABLE public."tbl_pharmaAdmin";
       public         heap    postgres    false    5                    1259    17616    tbl_pharmaAdmin_pa_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."tbl_pharmaAdmin_pa_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."tbl_pharmaAdmin_pa_id_seq";
       public          postgres    false    5    280         I           0    0    tbl_pharmaAdmin_pa_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."tbl_pharmaAdmin_pa_id_seq" OWNED BY public."tbl_pharmaAdmin".pa_id;
          public          postgres    false    281                    1259    17618    tbl_pharmacy    TABLE     ?  CREATE TABLE public.tbl_pharmacy (
    pharmacy_id integer NOT NULL,
    pharmacy_name character varying NOT NULL,
    pharmacy_location character varying NOT NULL,
    pharmacy_lat character varying,
    pharmacy_lng character varying,
    pharmacy_status boolean,
    pharamcy_closingtime character varying,
    pharmacy_timelimit character varying,
    pharamcy_openingtime character varying,
    logo character varying
);
     DROP TABLE public.tbl_pharmacy;
       public         heap    postgres    false    5                    1259    17624    tbl_pharmacy_pharmacy_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tbl_pharmacy_pharmacy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.tbl_pharmacy_pharmacy_id_seq;
       public          postgres    false    282    5         J           0    0    tbl_pharmacy_pharmacy_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.tbl_pharmacy_pharmacy_id_seq OWNED BY public.tbl_pharmacy.pharmacy_id;
          public          postgres    false    283                    1259    17626    tbl_purchase_invoice    TABLE     ?   CREATE TABLE public.tbl_purchase_invoice (
    "purchaseInvoice_id" integer NOT NULL,
    admin_id integer NOT NULL,
    pharmacy_id integer NOT NULL,
    supplier_id integer NOT NULL,
    "Date" timestamp without time zone,
    total_price numeric
);
 (   DROP TABLE public.tbl_purchase_invoice;
       public         heap    postgres    false    5                    1259    17632 +   tbl_purchase_invoice_purchaseInvoice_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."tbl_purchase_invoice_purchaseInvoice_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public."tbl_purchase_invoice_purchaseInvoice_id_seq";
       public          postgres    false    5    284         K           0    0 +   tbl_purchase_invoice_purchaseInvoice_id_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public."tbl_purchase_invoice_purchaseInvoice_id_seq" OWNED BY public.tbl_purchase_invoice."purchaseInvoice_id";
          public          postgres    false    285                    1259    17634    tbl_rem    TABLE     V  CREATE TABLE public.tbl_rem (
    rem_id integer NOT NULL,
    med_id integer NOT NULL,
    mon boolean,
    tue boolean,
    wed boolean,
    thu boolean,
    fri boolean,
    sat boolean,
    sun boolean,
    notes character varying,
    active boolean,
    updatetime timestamp without time zone,
    dose integer,
    customer integer
);
    DROP TABLE public.tbl_rem;
       public         heap    postgres    false    5                    1259    17640 
   tbl_remLog    TABLE     7  CREATE TABLE public."tbl_remLog" (
    log_id integer NOT NULL,
    rem_id integer NOT NULL,
    med_id integer NOT NULL,
    time_id integer NOT NULL,
    datecreated timestamp without time zone NOT NULL,
    datetaken timestamp without time zone,
    day character varying,
    timetaken character varying
);
     DROP TABLE public."tbl_remLog";
       public         heap    postgres    false    5                     1259    17646    tbl_remLog_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."tbl_remLog_log_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."tbl_remLog_log_id_seq";
       public          postgres    false    287    5         L           0    0    tbl_remLog_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."tbl_remLog_log_id_seq" OWNED BY public."tbl_remLog".log_id;
          public          postgres    false    288         !           1259    17648    tbl_rem_rem_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tbl_rem_rem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.tbl_rem_rem_id_seq;
       public          postgres    false    5    286         M           0    0    tbl_rem_rem_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.tbl_rem_rem_id_seq OWNED BY public.tbl_rem.rem_id;
          public          postgres    false    289         "           1259    17650    tbl_sales_invoice    TABLE     g  CREATE TABLE public.tbl_sales_invoice (
    salesinvoice_id integer NOT NULL,
    admin_id integer NOT NULL,
    pharmacy_id integer NOT NULL,
    "Date" timestamp without time zone NOT NULL,
    total_price numeric NOT NULL,
    discount numeric NOT NULL,
    payed_ammount numeric NOT NULL,
    change numeric NOT NULL,
    payment_type integer NOT NULL
);
 %   DROP TABLE public.tbl_sales_invoice;
       public         heap    postgres    false    5         #           1259    17656 %   tbl_sales_invoice_salesinvoice_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tbl_sales_invoice_salesinvoice_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.tbl_sales_invoice_salesinvoice_id_seq;
       public          postgres    false    5    290         N           0    0 %   tbl_sales_invoice_salesinvoice_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.tbl_sales_invoice_salesinvoice_id_seq OWNED BY public.tbl_sales_invoice.salesinvoice_id;
          public          postgres    false    291         $           1259    17661    tbl_sales_qty_sales_qty_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tbl_sales_qty_sales_qty_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.tbl_sales_qty_sales_qty_id_seq;
       public          postgres    false    271    5         O           0    0    tbl_sales_qty_sales_qty_id_seq    SEQUENCE OWNED BY     h   ALTER SEQUENCE public.tbl_sales_qty_sales_qty_id_seq OWNED BY public."tbl_onSalesInvoice".sales_qty_id;
          public          postgres    false    292         %           1259    17665    tbl_socketIO    TABLE     ?   CREATE TABLE public."tbl_socketIO" (
    "socketIO_id" integer NOT NULL,
    socket character varying NOT NULL,
    pharmacy_id integer NOT NULL,
    "timestamp" timestamp without time zone NOT NULL
);
 "   DROP TABLE public."tbl_socketIO";
       public         heap    postgres    false    5         &           1259    17671    tbl_socketIO_socketIO_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."tbl_socketIO_socketIO_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public."tbl_socketIO_socketIO_id_seq";
       public          postgres    false    5    293         P           0    0    tbl_socketIO_socketIO_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."tbl_socketIO_socketIO_id_seq" OWNED BY public."tbl_socketIO"."socketIO_id";
          public          postgres    false    294         '           1259    17673    tbl_supplier    TABLE     ?   CREATE TABLE public.tbl_supplier (
    supplier_id integer NOT NULL,
    "companyName" character varying NOT NULL,
    contact character varying,
    email character varying,
    address character varying,
    pharmacy_id integer NOT NULL
);
     DROP TABLE public.tbl_supplier;
       public         heap    postgres    false    5         (           1259    17679    tbl_supplier_supplier_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tbl_supplier_supplier_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.tbl_supplier_supplier_id_seq;
       public          postgres    false    295    5         Q           0    0    tbl_supplier_supplier_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.tbl_supplier_supplier_id_seq OWNED BY public.tbl_supplier.supplier_id;
          public          postgres    false    296         )           1259    17681    tbl_time    TABLE     ?   CREATE TABLE public.tbl_time (
    time_id integer NOT NULL,
    rem_id integer NOT NULL,
    timeupdated timestamp without time zone,
    "time" character varying NOT NULL
);
    DROP TABLE public.tbl_time;
       public         heap    postgres    false    5         *           1259    17687    tbl_time_time_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tbl_time_time_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.tbl_time_time_id_seq;
       public          postgres    false    5    297         R           0    0    tbl_time_time_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.tbl_time_time_id_seq OWNED BY public.tbl_time.time_id;
          public          postgres    false    298         +           1259    17689 
   tbl_tokens    TABLE     ?   CREATE TABLE public.tbl_tokens (
    token_id integer NOT NULL,
    token character varying NOT NULL,
    "dateCreated" timestamp without time zone NOT NULL,
    "dateExpired" timestamp without time zone NOT NULL
);
    DROP TABLE public.tbl_tokens;
       public         heap    postgres    false    5         ,           1259    17695    tbl_tokens_token_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tbl_tokens_token_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.tbl_tokens_token_id_seq;
       public          postgres    false    5    299         S           0    0    tbl_tokens_token_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.tbl_tokens_token_id_seq OWNED BY public.tbl_tokens.token_id;
          public          postgres    false    300                    2604    17697    tbl_administrator admin_id    DEFAULT     ?   ALTER TABLE ONLY public.tbl_administrator ALTER COLUMN admin_id SET DEFAULT nextval('public.tbl_administrator_admin_id_seq'::regclass);
 I   ALTER TABLE public.tbl_administrator ALTER COLUMN admin_id DROP DEFAULT;
       public          postgres    false    248    247                    2604    17698    tbl_classification class_id    DEFAULT     ?   ALTER TABLE ONLY public.tbl_classification ALTER COLUMN class_id SET DEFAULT nextval('public.tbl_classification_class_id_seq'::regclass);
 J   ALTER TABLE public.tbl_classification ALTER COLUMN class_id DROP DEFAULT;
       public          postgres    false    250    249                    2604    17699    tbl_custMed custmed_id    DEFAULT     ?   ALTER TABLE ONLY public."tbl_custMed" ALTER COLUMN custmed_id SET DEFAULT nextval('public."tbl_custMed_custmed_id_seq"'::regclass);
 G   ALTER TABLE public."tbl_custMed" ALTER COLUMN custmed_id DROP DEFAULT;
       public          postgres    false    252    251                    2604    17700    tbl_customer customer_id    DEFAULT     ?   ALTER TABLE ONLY public.tbl_customer ALTER COLUMN customer_id SET DEFAULT nextval('public.tbl_customer_customer_id_seq'::regclass);
 G   ALTER TABLE public.tbl_customer ALTER COLUMN customer_id DROP DEFAULT;
       public          postgres    false    254    253         *           2604    17856    tbl_customer_med c_med_id    DEFAULT     ?   ALTER TABLE ONLY public.tbl_customer_med ALTER COLUMN c_med_id SET DEFAULT nextval('public.tbl_customer_med_c_med_id_seq'::regclass);
 H   ALTER TABLE public.tbl_customer_med ALTER COLUMN c_med_id DROP DEFAULT;
       public          postgres    false    301    302    302                    2604    17701    tbl_discount discount_id    DEFAULT     ?   ALTER TABLE ONLY public.tbl_discount ALTER COLUMN discount_id SET DEFAULT nextval('public.tbl_discount_discount_id_seq'::regclass);
 G   ALTER TABLE public.tbl_discount ALTER COLUMN discount_id DROP DEFAULT;
       public          postgres    false    256    255                    2604    17702    tbl_dosage dosage_id    DEFAULT     |   ALTER TABLE ONLY public.tbl_dosage ALTER COLUMN dosage_id SET DEFAULT nextval('public.tbl_dosage_dosage_id_seq'::regclass);
 C   ALTER TABLE public.tbl_dosage ALTER COLUMN dosage_id DROP DEFAULT;
       public          postgres    false    258    257                    2604    17703    tbl_global_med global_med_id    DEFAULT     ?   ALTER TABLE ONLY public.tbl_global_med ALTER COLUMN global_med_id SET DEFAULT nextval('public.tbl_global_med_global_med_id_seq'::regclass);
 K   ALTER TABLE public.tbl_global_med ALTER COLUMN global_med_id DROP DEFAULT;
       public          postgres    false    260    259                    2604    17704    tbl_local_medicine med_id    DEFAULT     ?   ALTER TABLE ONLY public.tbl_local_medicine ALTER COLUMN med_id SET DEFAULT nextval('public.tbl_local_medicine_med_id_seq'::regclass);
 H   ALTER TABLE public.tbl_local_medicine ALTER COLUMN med_id DROP DEFAULT;
       public          postgres    false    262    261                    2604    17705    tbl_med_category med_cat_id    DEFAULT     ?   ALTER TABLE ONLY public.tbl_med_category ALTER COLUMN med_cat_id SET DEFAULT nextval('public.tbl_med_category_med_cat_id_seq'::regclass);
 J   ALTER TABLE public.tbl_med_category ALTER COLUMN med_cat_id DROP DEFAULT;
       public          postgres    false    264    263                    2604    17706    tbl_missing_med missing_id    DEFAULT     ?   ALTER TABLE ONLY public.tbl_missing_med ALTER COLUMN missing_id SET DEFAULT nextval('public.tbl_missing_med_missing_id_seq'::regclass);
 I   ALTER TABLE public.tbl_missing_med ALTER COLUMN missing_id DROP DEFAULT;
       public          postgres    false    266    265                    2604    17707    tbl_mobile_cart cart_id    DEFAULT     ?   ALTER TABLE ONLY public.tbl_mobile_cart ALTER COLUMN cart_id SET DEFAULT nextval('public.tbl_mobile_cart_cart_id_seq'::regclass);
 F   ALTER TABLE public.tbl_mobile_cart ALTER COLUMN cart_id DROP DEFAULT;
       public          postgres    false    268    267                    2604    17708 &   tbl_onPurchaseInvoice onPurhcaseInv_id    DEFAULT     ?   ALTER TABLE ONLY public."tbl_onPurchaseInvoice" ALTER COLUMN "onPurhcaseInv_id" SET DEFAULT nextval('public."tbl_onPurchaseInvoice_onPurhcaseInv_id_seq"'::regclass);
 Y   ALTER TABLE public."tbl_onPurchaseInvoice" ALTER COLUMN "onPurhcaseInv_id" DROP DEFAULT;
       public          postgres    false    270    269                    2604    17709    tbl_onSalesInvoice sales_qty_id    DEFAULT     ?   ALTER TABLE ONLY public."tbl_onSalesInvoice" ALTER COLUMN sales_qty_id SET DEFAULT nextval('public.tbl_sales_qty_sales_qty_id_seq'::regclass);
 P   ALTER TABLE public."tbl_onSalesInvoice" ALTER COLUMN sales_qty_id DROP DEFAULT;
       public          postgres    false    292    271                    2604    17710    tbl_order_items orderItem_id    DEFAULT     ?   ALTER TABLE ONLY public.tbl_order_items ALTER COLUMN "orderItem_id" SET DEFAULT nextval('public."tbl_order_items_orderItem_id_seq"'::regclass);
 M   ALTER TABLE public.tbl_order_items ALTER COLUMN "orderItem_id" DROP DEFAULT;
       public          postgres    false    273    272                    2604    17711     tbl_order_status order_status_id    DEFAULT     ?   ALTER TABLE ONLY public.tbl_order_status ALTER COLUMN order_status_id SET DEFAULT nextval('public.tbl_order_status_order_status_id_seq'::regclass);
 O   ALTER TABLE public.tbl_order_status ALTER COLUMN order_status_id DROP DEFAULT;
       public          postgres    false    275    274                    2604    17712    tbl_orders order_id    DEFAULT     z   ALTER TABLE ONLY public.tbl_orders ALTER COLUMN order_id SET DEFAULT nextval('public.tbl_orders_order_id_seq'::regclass);
 B   ALTER TABLE public.tbl_orders ALTER COLUMN order_id DROP DEFAULT;
       public          postgres    false    277    276                    2604    17713    tbl_paymentType paymenType_id    DEFAULT     ?   ALTER TABLE ONLY public."tbl_paymentType" ALTER COLUMN "paymenType_id" SET DEFAULT nextval('public."tbl_paymentType_paymenType_id_seq"'::regclass);
 P   ALTER TABLE public."tbl_paymentType" ALTER COLUMN "paymenType_id" DROP DEFAULT;
       public          postgres    false    279    278                    2604    17714    tbl_pharmaAdmin pa_id    DEFAULT     ?   ALTER TABLE ONLY public."tbl_pharmaAdmin" ALTER COLUMN pa_id SET DEFAULT nextval('public."tbl_pharmaAdmin_pa_id_seq"'::regclass);
 F   ALTER TABLE public."tbl_pharmaAdmin" ALTER COLUMN pa_id DROP DEFAULT;
       public          postgres    false    281    280         !           2604    17715    tbl_pharmacy pharmacy_id    DEFAULT     ?   ALTER TABLE ONLY public.tbl_pharmacy ALTER COLUMN pharmacy_id SET DEFAULT nextval('public.tbl_pharmacy_pharmacy_id_seq'::regclass);
 G   ALTER TABLE public.tbl_pharmacy ALTER COLUMN pharmacy_id DROP DEFAULT;
       public          postgres    false    283    282         "           2604    17716 '   tbl_purchase_invoice purchaseInvoice_id    DEFAULT     ?   ALTER TABLE ONLY public.tbl_purchase_invoice ALTER COLUMN "purchaseInvoice_id" SET DEFAULT nextval('public."tbl_purchase_invoice_purchaseInvoice_id_seq"'::regclass);
 X   ALTER TABLE public.tbl_purchase_invoice ALTER COLUMN "purchaseInvoice_id" DROP DEFAULT;
       public          postgres    false    285    284         #           2604    17717    tbl_rem rem_id    DEFAULT     p   ALTER TABLE ONLY public.tbl_rem ALTER COLUMN rem_id SET DEFAULT nextval('public.tbl_rem_rem_id_seq'::regclass);
 =   ALTER TABLE public.tbl_rem ALTER COLUMN rem_id DROP DEFAULT;
       public          postgres    false    289    286         $           2604    17718    tbl_remLog log_id    DEFAULT     z   ALTER TABLE ONLY public."tbl_remLog" ALTER COLUMN log_id SET DEFAULT nextval('public."tbl_remLog_log_id_seq"'::regclass);
 B   ALTER TABLE public."tbl_remLog" ALTER COLUMN log_id DROP DEFAULT;
       public          postgres    false    288    287         %           2604    17719 !   tbl_sales_invoice salesinvoice_id    DEFAULT     ?   ALTER TABLE ONLY public.tbl_sales_invoice ALTER COLUMN salesinvoice_id SET DEFAULT nextval('public.tbl_sales_invoice_salesinvoice_id_seq'::regclass);
 P   ALTER TABLE public.tbl_sales_invoice ALTER COLUMN salesinvoice_id DROP DEFAULT;
       public          postgres    false    291    290         &           2604    17720    tbl_socketIO socketIO_id    DEFAULT     ?   ALTER TABLE ONLY public."tbl_socketIO" ALTER COLUMN "socketIO_id" SET DEFAULT nextval('public."tbl_socketIO_socketIO_id_seq"'::regclass);
 K   ALTER TABLE public."tbl_socketIO" ALTER COLUMN "socketIO_id" DROP DEFAULT;
       public          postgres    false    294    293         '           2604    17721    tbl_supplier supplier_id    DEFAULT     ?   ALTER TABLE ONLY public.tbl_supplier ALTER COLUMN supplier_id SET DEFAULT nextval('public.tbl_supplier_supplier_id_seq'::regclass);
 G   ALTER TABLE public.tbl_supplier ALTER COLUMN supplier_id DROP DEFAULT;
       public          postgres    false    296    295         (           2604    17722    tbl_time time_id    DEFAULT     t   ALTER TABLE ONLY public.tbl_time ALTER COLUMN time_id SET DEFAULT nextval('public.tbl_time_time_id_seq'::regclass);
 ?   ALTER TABLE public.tbl_time ALTER COLUMN time_id DROP DEFAULT;
       public          postgres    false    298    297         )           2604    17723    tbl_tokens token_id    DEFAULT     z   ALTER TABLE ONLY public.tbl_tokens ALTER COLUMN token_id SET DEFAULT nextval('public.tbl_tokens_token_id_seq'::regclass);
 B   ALTER TABLE public.tbl_tokens ALTER COLUMN token_id DROP DEFAULT;
       public          postgres    false    300    299         ?          0    17480    tbl_administrator 
   TABLE DATA           ^   COPY public.tbl_administrator (admin_id, admin_name, admin_email, admin_password) FROM stdin;
    public          postgres    false    247       3576.dat ?          0    17488    tbl_classification 
   TABLE DATA           B   COPY public.tbl_classification (class_id, class_desc) FROM stdin;
    public          postgres    false    249       3578.dat ?          0    17496    tbl_custMed 
   TABLE DATA           T   COPY public."tbl_custMed" (custmed_id, prod_id, med_quantity, med_name) FROM stdin;
    public          postgres    false    251       3580.dat ?          0    17504    tbl_customer 
   TABLE DATA           z   COPY public.tbl_customer (customer_id, username, password, email, firstname, lastname, sex, age, datecreated) FROM stdin;
    public          postgres    false    253       3582.dat /          0    17853    tbl_customer_med 
   TABLE DATA           O   COPY public.tbl_customer_med (c_med_id, customer, global_med, qty) FROM stdin;
    public          postgres    false    302       3631.dat            0    17512    tbl_discount 
   TABLE DATA           ^   COPY public.tbl_discount (discount_id, discount_desc, discount_cost, pharmacy_id) FROM stdin;
    public          postgres    false    255       3584.dat           0    17520 
   tbl_dosage 
   TABLE DATA           <   COPY public.tbl_dosage (dosage_id, dosage_desc) FROM stdin;
    public          postgres    false    257       3586.dat           0    17528    tbl_global_med 
   TABLE DATA           ?   COPY public.tbl_global_med (global_med_id, global_brand, global_brand_name, global_generic_name, global_med_category, global_classification, image) FROM stdin;
    public          postgres    false    259       3588.dat           0    17536    tbl_local_medicine 
   TABLE DATA           ?   COPY public.tbl_local_medicine (med_id, pharmacy_id, global_med_id, med_price, med_storage, med_notes, med_qty, warning_threshold) FROM stdin;
    public          postgres    false    261       3590.dat           0    17545    tbl_med_category 
   TABLE DATA           D   COPY public.tbl_med_category (med_cat_id, med_cat_desc) FROM stdin;
    public          postgres    false    263       3592.dat 
          0    17553    tbl_missing_med 
   TABLE DATA           s   COPY public.tbl_missing_med (missing_id, med_id, quantity, current_item_price, report_date, pharma_id) FROM stdin;
    public          postgres    false    265       3594.dat           0    17561    tbl_mobile_cart 
   TABLE DATA           ~   COPY public.tbl_mobile_cart (cart_id, cart_med_id, cart_global_med_id, cart_pharmacy_id, cart_quantity, "userID") FROM stdin;
    public          postgres    false    267       3596.dat           0    17566    tbl_onPurchaseInvoice 
   TABLE DATA           ?   COPY public."tbl_onPurchaseInvoice" ("onPurhcaseInv_id", med_id, "purchaseInvoice_id", quantity, listing_price, retail_price, expiry_date, "manufactureDate") FROM stdin;
    public          postgres    false    269       3598.dat           0    17574    tbl_onSalesInvoice 
   TABLE DATA           j   COPY public."tbl_onSalesInvoice" (sales_qty_id, sales_id, qty_purchased, total_price, med_id) FROM stdin;
    public          postgres    false    271       3600.dat           0    17580    tbl_order_items 
   TABLE DATA           U   COPY public.tbl_order_items ("orderItem_id", order_id, med_id, quantity) FROM stdin;
    public          postgres    false    272       3601.dat           0    17585    tbl_order_status 
   TABLE DATA           H   COPY public.tbl_order_status (order_status_id, status_desc) FROM stdin;
    public          postgres    false    274       3603.dat           0    17593 
   tbl_orders 
   TABLE DATA           ?   COPY public.tbl_orders (order_id, customer_id, pharmacy_id, order_totalprice, order_created, order_status, order_sales_id, order_finished, discount_type, discount_cost, subtotal) FROM stdin;
    public          postgres    false    276       3605.dat           0    17601    tbl_paymentType 
   TABLE DATA           P   COPY public."tbl_paymentType" ("paymenType_id", "paymentType_desc") FROM stdin;
    public          postgres    false    278       3607.dat           0    17609    tbl_pharmaAdmin 
   TABLE DATA           ?   COPY public."tbl_pharmaAdmin" (pa_id, pharmacy_id, admin_id, pos, inventory, orders, purchased, settings, sales, "roleDesc", "primary") FROM stdin;
    public          postgres    false    280       3609.dat           0    17618    tbl_pharmacy 
   TABLE DATA           ?   COPY public.tbl_pharmacy (pharmacy_id, pharmacy_name, pharmacy_location, pharmacy_lat, pharmacy_lng, pharmacy_status, pharamcy_closingtime, pharmacy_timelimit, pharamcy_openingtime, logo) FROM stdin;
    public          postgres    false    282       3611.dat           0    17626    tbl_purchase_invoice 
   TABLE DATA           }   COPY public.tbl_purchase_invoice ("purchaseInvoice_id", admin_id, pharmacy_id, supplier_id, "Date", total_price) FROM stdin;
    public          postgres    false    284       3613.dat           0    17634    tbl_rem 
   TABLE DATA              COPY public.tbl_rem (rem_id, med_id, mon, tue, wed, thu, fri, sat, sun, notes, active, updatetime, dose, customer) FROM stdin;
    public          postgres    false    286       3615.dat            0    17640 
   tbl_remLog 
   TABLE DATA           o   COPY public."tbl_remLog" (log_id, rem_id, med_id, time_id, datecreated, datetaken, day, timetaken) FROM stdin;
    public          postgres    false    287       3616.dat #          0    17650    tbl_sales_invoice 
   TABLE DATA           ?   COPY public.tbl_sales_invoice (salesinvoice_id, admin_id, pharmacy_id, "Date", total_price, discount, payed_ammount, change, payment_type) FROM stdin;
    public          postgres    false    290       3619.dat &          0    17665    tbl_socketIO 
   TABLE DATA           Y   COPY public."tbl_socketIO" ("socketIO_id", socket, pharmacy_id, "timestamp") FROM stdin;
    public          postgres    false    293       3622.dat (          0    17673    tbl_supplier 
   TABLE DATA           h   COPY public.tbl_supplier (supplier_id, "companyName", contact, email, address, pharmacy_id) FROM stdin;
    public          postgres    false    295       3624.dat *          0    17681    tbl_time 
   TABLE DATA           H   COPY public.tbl_time (time_id, rem_id, timeupdated, "time") FROM stdin;
    public          postgres    false    297       3626.dat ,          0    17689 
   tbl_tokens 
   TABLE DATA           S   COPY public.tbl_tokens (token_id, token, "dateCreated", "dateExpired") FROM stdin;
    public          postgres    false    299       3628.dat T           0    0    tbl_administrator_admin_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.tbl_administrator_admin_id_seq', 70, true);
          public          postgres    false    248         U           0    0    tbl_classification_class_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.tbl_classification_class_id_seq', 4, true);
          public          postgres    false    250         V           0    0    tbl_custMed_custmed_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."tbl_custMed_custmed_id_seq"', 1, true);
          public          postgres    false    252         W           0    0    tbl_customer_customer_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.tbl_customer_customer_id_seq', 40, true);
          public          postgres    false    254         X           0    0    tbl_customer_med_c_med_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.tbl_customer_med_c_med_id_seq', 13, true);
          public          postgres    false    301         Y           0    0    tbl_discount_discount_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.tbl_discount_discount_id_seq', 15, true);
          public          postgres    false    256         Z           0    0    tbl_dosage_dosage_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.tbl_dosage_dosage_id_seq', 1, false);
          public          postgres    false    258         [           0    0     tbl_global_med_global_med_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.tbl_global_med_global_med_id_seq', 9, true);
          public          postgres    false    260         \           0    0    tbl_local_medicine_med_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.tbl_local_medicine_med_id_seq', 70, true);
          public          postgres    false    262         ]           0    0    tbl_med_category_med_cat_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.tbl_med_category_med_cat_id_seq', 2, true);
          public          postgres    false    264         ^           0    0    tbl_missing_med_missing_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.tbl_missing_med_missing_id_seq', 10, true);
          public          postgres    false    266         _           0    0    tbl_mobile_cart_cart_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.tbl_mobile_cart_cart_id_seq', 351, true);
          public          postgres    false    268         `           0    0 *   tbl_onPurchaseInvoice_onPurhcaseInv_id_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public."tbl_onPurchaseInvoice_onPurhcaseInv_id_seq"', 73, true);
          public          postgres    false    270         a           0    0     tbl_order_items_orderItem_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public."tbl_order_items_orderItem_id_seq"', 244, true);
          public          postgres    false    273         b           0    0 $   tbl_order_status_order_status_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.tbl_order_status_order_status_id_seq', 3, true);
          public          postgres    false    275         c           0    0    tbl_orders_order_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.tbl_orders_order_id_seq', 204, true);
          public          postgres    false    277         d           0    0 !   tbl_paymentType_paymenType_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."tbl_paymentType_paymenType_id_seq"', 2, true);
          public          postgres    false    279         e           0    0    tbl_pharmaAdmin_pa_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."tbl_pharmaAdmin_pa_id_seq"', 25, true);
          public          postgres    false    281         f           0    0    tbl_pharmacy_pharmacy_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.tbl_pharmacy_pharmacy_id_seq', 14, true);
          public          postgres    false    283         g           0    0 +   tbl_purchase_invoice_purchaseInvoice_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public."tbl_purchase_invoice_purchaseInvoice_id_seq"', 65, true);
          public          postgres    false    285         h           0    0    tbl_remLog_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."tbl_remLog_log_id_seq"', 1, false);
          public          postgres    false    288         i           0    0    tbl_rem_rem_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.tbl_rem_rem_id_seq', 9, true);
          public          postgres    false    289         j           0    0 %   tbl_sales_invoice_salesinvoice_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.tbl_sales_invoice_salesinvoice_id_seq', 288, true);
          public          postgres    false    291         k           0    0    tbl_sales_qty_sales_qty_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.tbl_sales_qty_sales_qty_id_seq', 374, true);
          public          postgres    false    292         l           0    0    tbl_socketIO_socketIO_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."tbl_socketIO_socketIO_id_seq"', 5144, true);
          public          postgres    false    294         m           0    0    tbl_supplier_supplier_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.tbl_supplier_supplier_id_seq', 23, true);
          public          postgres    false    296         n           0    0    tbl_time_time_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tbl_time_time_id_seq', 26, true);
          public          postgres    false    298         o           0    0    tbl_tokens_token_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.tbl_tokens_token_id_seq', 1018, true);
          public          postgres    false    300         +           2606    17726    tbl_local_medicine qty_limit    CHECK CONSTRAINT     p   ALTER TABLE public.tbl_local_medicine
    ADD CONSTRAINT qty_limit CHECK ((med_qty >= (0)::numeric)) NOT VALID;
 A   ALTER TABLE public.tbl_local_medicine DROP CONSTRAINT qty_limit;
       public          postgres    false    261    261         -           2606    17728 (   tbl_administrator tbl_administrator_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.tbl_administrator
    ADD CONSTRAINT tbl_administrator_pkey PRIMARY KEY (admin_id);
 R   ALTER TABLE ONLY public.tbl_administrator DROP CONSTRAINT tbl_administrator_pkey;
       public            postgres    false    247         /           2606    17730 *   tbl_classification tbl_classification_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.tbl_classification
    ADD CONSTRAINT tbl_classification_pkey PRIMARY KEY (class_id);
 T   ALTER TABLE ONLY public.tbl_classification DROP CONSTRAINT tbl_classification_pkey;
       public            postgres    false    249         1           2606    17732    tbl_custMed tbl_custMed_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."tbl_custMed"
    ADD CONSTRAINT "tbl_custMed_pkey" PRIMARY KEY (custmed_id);
 J   ALTER TABLE ONLY public."tbl_custMed" DROP CONSTRAINT "tbl_custMed_pkey";
       public            postgres    false    251         3           2606    17734    tbl_customer tbl_customer_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.tbl_customer
    ADD CONSTRAINT tbl_customer_pkey PRIMARY KEY (customer_id);
 H   ALTER TABLE ONLY public.tbl_customer DROP CONSTRAINT tbl_customer_pkey;
       public            postgres    false    253         5           2606    17736    tbl_discount tbl_discount_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.tbl_discount
    ADD CONSTRAINT tbl_discount_pkey PRIMARY KEY (discount_id);
 H   ALTER TABLE ONLY public.tbl_discount DROP CONSTRAINT tbl_discount_pkey;
       public            postgres    false    255         7           2606    17738    tbl_dosage tbl_dosage_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.tbl_dosage
    ADD CONSTRAINT tbl_dosage_pkey PRIMARY KEY (dosage_id);
 D   ALTER TABLE ONLY public.tbl_dosage DROP CONSTRAINT tbl_dosage_pkey;
       public            postgres    false    257         9           2606    17740 "   tbl_global_med tbl_global_med_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.tbl_global_med
    ADD CONSTRAINT tbl_global_med_pkey PRIMARY KEY (global_med_id);
 L   ALTER TABLE ONLY public.tbl_global_med DROP CONSTRAINT tbl_global_med_pkey;
       public            postgres    false    259         ;           2606    17742 *   tbl_local_medicine tbl_local_medicine_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.tbl_local_medicine
    ADD CONSTRAINT tbl_local_medicine_pkey PRIMARY KEY (med_id);
 T   ALTER TABLE ONLY public.tbl_local_medicine DROP CONSTRAINT tbl_local_medicine_pkey;
       public            postgres    false    261         =           2606    17744 &   tbl_med_category tbl_med_category_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.tbl_med_category
    ADD CONSTRAINT tbl_med_category_pkey PRIMARY KEY (med_cat_id);
 P   ALTER TABLE ONLY public.tbl_med_category DROP CONSTRAINT tbl_med_category_pkey;
       public            postgres    false    263         ?           2606    17746 $   tbl_missing_med tbl_missing_med_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.tbl_missing_med
    ADD CONSTRAINT tbl_missing_med_pkey PRIMARY KEY (missing_id);
 N   ALTER TABLE ONLY public.tbl_missing_med DROP CONSTRAINT tbl_missing_med_pkey;
       public            postgres    false    265         A           2606    17752 $   tbl_mobile_cart tbl_mobile_cart_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.tbl_mobile_cart
    ADD CONSTRAINT tbl_mobile_cart_pkey PRIMARY KEY (cart_id);
 N   ALTER TABLE ONLY public.tbl_mobile_cart DROP CONSTRAINT tbl_mobile_cart_pkey;
       public            postgres    false    267         C           2606    17754 0   tbl_onPurchaseInvoice tbl_onPurchaseInvoice_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public."tbl_onPurchaseInvoice"
    ADD CONSTRAINT "tbl_onPurchaseInvoice_pkey" PRIMARY KEY ("onPurhcaseInv_id");
 ^   ALTER TABLE ONLY public."tbl_onPurchaseInvoice" DROP CONSTRAINT "tbl_onPurchaseInvoice_pkey";
       public            postgres    false    269         G           2606    17756 $   tbl_order_items tbl_order_items_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.tbl_order_items
    ADD CONSTRAINT tbl_order_items_pkey PRIMARY KEY ("orderItem_id");
 N   ALTER TABLE ONLY public.tbl_order_items DROP CONSTRAINT tbl_order_items_pkey;
       public            postgres    false    272         I           2606    17758 &   tbl_order_status tbl_order_status_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.tbl_order_status
    ADD CONSTRAINT tbl_order_status_pkey PRIMARY KEY (order_status_id);
 P   ALTER TABLE ONLY public.tbl_order_status DROP CONSTRAINT tbl_order_status_pkey;
       public            postgres    false    274         K           2606    17760    tbl_orders tbl_orders_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.tbl_orders
    ADD CONSTRAINT tbl_orders_pkey PRIMARY KEY (order_id);
 D   ALTER TABLE ONLY public.tbl_orders DROP CONSTRAINT tbl_orders_pkey;
       public            postgres    false    276         M           2606    17762 $   tbl_paymentType tbl_paymentType_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public."tbl_paymentType"
    ADD CONSTRAINT "tbl_paymentType_pkey" PRIMARY KEY ("paymenType_id");
 R   ALTER TABLE ONLY public."tbl_paymentType" DROP CONSTRAINT "tbl_paymentType_pkey";
       public            postgres    false    278         O           2606    17764 $   tbl_pharmaAdmin tbl_pharmaAdmin_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public."tbl_pharmaAdmin"
    ADD CONSTRAINT "tbl_pharmaAdmin_pkey" PRIMARY KEY (pa_id);
 R   ALTER TABLE ONLY public."tbl_pharmaAdmin" DROP CONSTRAINT "tbl_pharmaAdmin_pkey";
       public            postgres    false    280         Q           2606    17766    tbl_pharmacy tbl_pharmacy_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.tbl_pharmacy
    ADD CONSTRAINT tbl_pharmacy_pkey PRIMARY KEY (pharmacy_id);
 H   ALTER TABLE ONLY public.tbl_pharmacy DROP CONSTRAINT tbl_pharmacy_pkey;
       public            postgres    false    282         S           2606    17768 .   tbl_purchase_invoice tbl_purchase_invoice_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.tbl_purchase_invoice
    ADD CONSTRAINT tbl_purchase_invoice_pkey PRIMARY KEY ("purchaseInvoice_id");
 X   ALTER TABLE ONLY public.tbl_purchase_invoice DROP CONSTRAINT tbl_purchase_invoice_pkey;
       public            postgres    false    284         W           2606    17770    tbl_remLog tbl_remLog_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."tbl_remLog"
    ADD CONSTRAINT "tbl_remLog_pkey" PRIMARY KEY (log_id);
 H   ALTER TABLE ONLY public."tbl_remLog" DROP CONSTRAINT "tbl_remLog_pkey";
       public            postgres    false    287         U           2606    17772    tbl_rem tbl_rem_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.tbl_rem
    ADD CONSTRAINT tbl_rem_pkey PRIMARY KEY (rem_id);
 >   ALTER TABLE ONLY public.tbl_rem DROP CONSTRAINT tbl_rem_pkey;
       public            postgres    false    286         Y           2606    17774 (   tbl_sales_invoice tbl_sales_invoice_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.tbl_sales_invoice
    ADD CONSTRAINT tbl_sales_invoice_pkey PRIMARY KEY (salesinvoice_id);
 R   ALTER TABLE ONLY public.tbl_sales_invoice DROP CONSTRAINT tbl_sales_invoice_pkey;
       public            postgres    false    290         E           2606    17776 %   tbl_onSalesInvoice tbl_sales_qty_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public."tbl_onSalesInvoice"
    ADD CONSTRAINT tbl_sales_qty_pkey PRIMARY KEY (sales_qty_id);
 Q   ALTER TABLE ONLY public."tbl_onSalesInvoice" DROP CONSTRAINT tbl_sales_qty_pkey;
       public            postgres    false    271         [           2606    17778    tbl_socketIO tbl_socketIO_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public."tbl_socketIO"
    ADD CONSTRAINT "tbl_socketIO_pkey" PRIMARY KEY ("socketIO_id");
 L   ALTER TABLE ONLY public."tbl_socketIO" DROP CONSTRAINT "tbl_socketIO_pkey";
       public            postgres    false    293         ]           2606    17780    tbl_supplier tbl_supplier_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.tbl_supplier
    ADD CONSTRAINT tbl_supplier_pkey PRIMARY KEY (supplier_id);
 H   ALTER TABLE ONLY public.tbl_supplier DROP CONSTRAINT tbl_supplier_pkey;
       public            postgres    false    295         h           2606    17781    tbl_purchase_invoice Admin    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tbl_purchase_invoice
    ADD CONSTRAINT "Admin" FOREIGN KEY (admin_id) REFERENCES public.tbl_administrator(admin_id) NOT VALID;
 F   ALTER TABLE ONLY public.tbl_purchase_invoice DROP CONSTRAINT "Admin";
       public          postgres    false    3373    284    247         `           2606    17786    tbl_local_medicine Global Med    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tbl_local_medicine
    ADD CONSTRAINT "Global Med" FOREIGN KEY (global_med_id) REFERENCES public.tbl_global_med(global_med_id) NOT VALID;
 I   ALTER TABLE ONLY public.tbl_local_medicine DROP CONSTRAINT "Global Med";
       public          postgres    false    259    3385    261         _           2606    17791    tbl_global_med MedCategory    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tbl_global_med
    ADD CONSTRAINT "MedCategory" FOREIGN KEY (global_med_category) REFERENCES public.tbl_med_category(med_cat_id);
 F   ALTER TABLE ONLY public.tbl_global_med DROP CONSTRAINT "MedCategory";
       public          postgres    false    259    263    3389         b           2606    17796    tbl_onPurchaseInvoice Medicine    FK CONSTRAINT     ?   ALTER TABLE ONLY public."tbl_onPurchaseInvoice"
    ADD CONSTRAINT "Medicine" FOREIGN KEY (med_id) REFERENCES public.tbl_local_medicine(med_id) NOT VALID;
 L   ALTER TABLE ONLY public."tbl_onPurchaseInvoice" DROP CONSTRAINT "Medicine";
       public          postgres    false    3387    269    261         d           2606    17801    tbl_onSalesInvoice Medicine    FK CONSTRAINT     ?   ALTER TABLE ONLY public."tbl_onSalesInvoice"
    ADD CONSTRAINT "Medicine" FOREIGN KEY (med_id) REFERENCES public.tbl_local_medicine(med_id) NOT VALID;
 I   ALTER TABLE ONLY public."tbl_onSalesInvoice" DROP CONSTRAINT "Medicine";
       public          postgres    false    271    261    3387         a           2606    17806    tbl_local_medicine Pharmacy    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tbl_local_medicine
    ADD CONSTRAINT "Pharmacy" FOREIGN KEY (pharmacy_id) REFERENCES public.tbl_pharmacy(pharmacy_id) NOT VALID;
 G   ALTER TABLE ONLY public.tbl_local_medicine DROP CONSTRAINT "Pharmacy";
       public          postgres    false    3409    282    261         ^           2606    17811    tbl_discount Pharmacy    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tbl_discount
    ADD CONSTRAINT "Pharmacy" FOREIGN KEY (pharmacy_id) REFERENCES public.tbl_pharmacy(pharmacy_id) NOT VALID;
 A   ALTER TABLE ONLY public.tbl_discount DROP CONSTRAINT "Pharmacy";
       public          postgres    false    282    3409    255         i           2606    17816    tbl_purchase_invoice Pharmacy    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tbl_purchase_invoice
    ADD CONSTRAINT "Pharmacy" FOREIGN KEY (pharmacy_id) REFERENCES public.tbl_pharmacy(pharmacy_id) NOT VALID;
 I   ALTER TABLE ONLY public.tbl_purchase_invoice DROP CONSTRAINT "Pharmacy";
       public          postgres    false    3409    284    282         k           2606    17821    tbl_supplier Pharmacy    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tbl_supplier
    ADD CONSTRAINT "Pharmacy" FOREIGN KEY (pharmacy_id) REFERENCES public.tbl_pharmacy(pharmacy_id) NOT VALID;
 A   ALTER TABLE ONLY public.tbl_supplier DROP CONSTRAINT "Pharmacy";
       public          postgres    false    295    3409    282         c           2606    17826 &   tbl_onPurchaseInvoice Purchase Invoice    FK CONSTRAINT     ?   ALTER TABLE ONLY public."tbl_onPurchaseInvoice"
    ADD CONSTRAINT "Purchase Invoice" FOREIGN KEY ("purchaseInvoice_id") REFERENCES public.tbl_purchase_invoice("purchaseInvoice_id") NOT VALID;
 T   ALTER TABLE ONLY public."tbl_onPurchaseInvoice" DROP CONSTRAINT "Purchase Invoice";
       public          postgres    false    269    3411    284         e           2606    17831    tbl_onSalesInvoice Sales    FK CONSTRAINT     ?   ALTER TABLE ONLY public."tbl_onSalesInvoice"
    ADD CONSTRAINT "Sales" FOREIGN KEY (sales_id) REFERENCES public.tbl_sales_invoice(salesinvoice_id) NOT VALID;
 F   ALTER TABLE ONLY public."tbl_onSalesInvoice" DROP CONSTRAINT "Sales";
       public          postgres    false    3417    290    271         j           2606    17836    tbl_purchase_invoice Supplier    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tbl_purchase_invoice
    ADD CONSTRAINT "Supplier" FOREIGN KEY (supplier_id) REFERENCES public.tbl_supplier(supplier_id) NOT VALID;
 I   ALTER TABLE ONLY public.tbl_purchase_invoice DROP CONSTRAINT "Supplier";
       public          postgres    false    295    3421    284         f           2606    17841    tbl_pharmaAdmin admin    FK CONSTRAINT     ?   ALTER TABLE ONLY public."tbl_pharmaAdmin"
    ADD CONSTRAINT admin FOREIGN KEY (admin_id) REFERENCES public.tbl_administrator(admin_id) NOT VALID;
 A   ALTER TABLE ONLY public."tbl_pharmaAdmin" DROP CONSTRAINT admin;
       public          postgres    false    247    3373    280         g           2606    17846    tbl_pharmaAdmin pharma    FK CONSTRAINT     ?   ALTER TABLE ONLY public."tbl_pharmaAdmin"
    ADD CONSTRAINT pharma FOREIGN KEY (pharmacy_id) REFERENCES public.tbl_pharmacy(pharmacy_id) NOT VALID;
 B   ALTER TABLE ONLY public."tbl_pharmaAdmin" DROP CONSTRAINT pharma;
       public          postgres    false    282    3409    280                                                                                                                                                                                               3576.dat                                                                                            0000600 0004000 0002000 00000002564 14373217507 0014276 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        48	franners	ffdiang_190000001206@google.com	$2b$10$VUeKAprTsnTxb8Yfu5LoPOdTXGiWCStQV0Q7TK0dOO9AoPiAxlVju
50	Lawrence	lcamile@gmail.com	$2b$10$ATsPtfniJoxImgXmzPeJGeX9VayFgSPtAMYAa1EhR0nEgx1dUh7..
51	Asuncion	fdiang@gmail.com	$2b$10$WcOua645YoxSsiG7oEcBJuN0UtmsgZtfOMLk6s2kf0QJ72nvzHIdG
52	Jiro	lcamile_190000000641@uic.edu.ph	$2b$10$TGRxgblCCLzlKWPZ1ZkxK.SZKP9xsDE/560qEa0Po4mTZj.xTnFaC
53	tianeyy	dummy45@gmail.com	$2b$10$osKzahCo9b39KRO54jK1MOwYvyQXUexAH8O7S0RRh5INsKIRhe7Iy
54	tianeyy	dummy46@gmail.com	$2b$10$u7.4vICPqhnTFwpqbaQ8l.1ILZidEXXpT.prF/gyM3WFFVwvWTUle
55	tianeyy	dummy47@gmail.com	$2b$10$Z4qxIySP.hPHLBDS3GJpQezjvjnOFSRVVysiuSo6Hz/oGART8NfP.
56	Jiro	lcamile_190000000642@uic.edu.ph	$2b$10$yvCBWd8pxRK4MqH1Nj7qEOun45Zz7c5YxbH2ms5k9rVh.Lk.WuFOC
57	Jiro	lcamile_19000000064@uic.edu.ph	$2b$10$3AOpduFnt5gyjPv34sH7ie1Yprz80fd.SitA35jMMkCiUY3rAOad6
62	tiantian	tianeyy123@vp.com	$2b$10$.CXNw0EvFPfQVBUTmUYVHuHIdypEPFuHcYfLtfe/jMl.hWGxEs/3K
49	FranFran	ffdiang@gmail.com	$2b$10$UOJLWHina9F1SL3YiFmoMuUlOPPFsgqjTHO.BArZLO1qFjCNoDw1.
65	rjbadiang	rj@vp.com	$2b$10$VnbUv6OGWpFevsFFaTNeYeOKxUPbUQYxVOUORzoOhrxbv7VUmEJ3i
66	Fran2	frn@gmail.com	$2b$10$wrBTzuCKwdMLH2U5ZC3i6OBxixIa6NJxnGFB49NBEE7Sdbim32tV6
69	lawrence	lawlawlaw@gmail.com	$2b$10$jEXRfunRDMAomHJ8AE7gK.r16B9Z6Mvk/Vjfx6Y5IQbfkTIOoGFSC
70	lawrence	lawlaw@gmail.com	$2b$10$yOu51pq7bIgggm.t/VsLL.pRguw2ucvtgyhKIiJ8oEPe58bUY2Zui
\.


                                                                                                                                            3578.dat                                                                                            0000600 0004000 0002000 00000000105 14373217507 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	House Remedy
2	 Over-the-Counter
3	Prescription Drug
4	Others
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                           3580.dat                                                                                            0000600 0004000 0002000 00000000023 14373217507 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	12	Bioflu
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             3582.dat                                                                                            0000600 0004000 0002000 00000010520 14373217507 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	tianey	tiantian	tian.garcia395@gmail.com	Christian	Garcia	M	21	\N
6	lawr	$2b$10$JKR1.B1pGiy4um/v73koau0XsQSitwIOLjVcVhS2cAGn71GCc4jLG	dummy46@gmail.com	\N	\N	\N	\N	2022-11-10 02:36:49.380585
7	fran	$2b$10$AsVz7HNQNPGPMfJHuhX8WeugzG71qZi9J0F6vCKLHW.eqDvZXAMdO	dummy46@gmail.com	\N	\N	\N	\N	2022-11-10 02:36:53.550882
8	dummyuser	$2b$10$02g01nejFiqkzA67X22YROWnkHFqQlSctmFTEDmR/YX7RYRhfNfBm	dummy47@gmail.com	\N	\N	\N	\N	2022-11-10 02:39:26.762012
9	dummyusers	$2b$10$PBSW6iqoudWI6HFcsDHF/uH7tOgs15VNpc.hGLltl2GScPpXnEiIO	dummy48@gmail.com	\N	\N	\N	\N	2022-11-10 03:06:49.808949
11	tian2	$2b$10$sZaNbNlPVLpeDM6XvoWfeurhYAlCviOz493v1YsYkcwsQwzm1EyU2	tian2@gmail.com	\N	\N	\N	\N	2022-11-12 06:16:00.234583
12	Tian3	$2b$10$xTS1OdGCTG6JaAa7nHQ3Vuu/rF6t4N06/qagtHIW37u2g9UEvwBEO	tian3@gmail.com	\N	\N	\N	\N	2022-11-12 06:18:04.649161
13	tiantian2	$2b$10$by4dvIh/fw1t1Wh9zB1FVOtIPVMUA3jo2WwRBBcX9j5Pu8DbrIPta	tiantian2@gmail.com	\N	\N	\N	\N	2022-11-12 07:10:51.0466
14	tianx3	$2b$10$kPjpnTyhDmI7LfPhLI1w9Ofgnd1cY39ufyqy4v4nn47g1CibdzDx2	tiantiantian3@gmail.com	\N	\N	\N	\N	2022-11-12 07:13:58.88427
15	tianx4	$2b$10$Pxuzpn0gXQoArd5Wti9BCeQYknrhTQqFjDRB0BXubbvhx4.0cFhJy	tianx4@gmail.com	\N	\N	\N	\N	2022-11-12 07:16:12.977036
10	tiantian	$2b$10$fVl8LwijtiiUOMyTZ6mPvOgrBkNi9D9s9IwpMWaGk/5oClGzoSVEu	tiantian@gmail.com	chrsitian	garcia	M	21	2022-11-12 06:07:23.061946
16	tianeyy	$2b$10$hiksbNLV5jodBfJ9s9TpluTDzOb8K37.17eBiq8Ez5MCF2NM0dmrm	tiantian.garcia@gmail.com	Christian Philip	Garcia	M	21	2022-11-12 07:20:28.564865
17	sdsdsds	$2b$10$lNq123AjCm5Cz7WaBEton.V.8Pe5g8q73vbwv2NpSlfe9Hnb/zhNS	fdfd@gmail.com	\N	\N	\N	\N	2022-11-12 08:25:02.485075
21	alenabordadora	$2b$10$gRIn698MjWt3Al6yuEX5wunFyg6B4L7MOMuy6E6z2mcenGrC9NLEe	alenajoybordadora@gmail.com	Alena	Bordadora 	F	22	2022-11-12 08:33:06.299411
22	lawrence	$2b$10$i8RY7yTdHoX13HSgYj/ruexua0Qwr407lwLqNXcYV0N1ZP8EM.urK	lccamile@gmail.com	lawrence	camile	M	23	2022-12-12 08:13:31.541494
23	nesty	$2b$10$66sdRXLkj5vrXksFlmmBbOoT8Dxn/GqSINqFFWMi6E/qtSJ6yjI96	nestyanne.dagohoy@gmail.com	Nesty Anne 	Dagohoy 	F	23	2022-12-12 15:30:59.833254
24	yani	$2b$10$F.srlwxHCV94g6piLpMSPuvOEKxJWewxDzYkQCG/.Jq7Mk.IMDI9.	forprojectpurposesonly92@gmail.com	Yani	Test	M	22	2022-12-12 16:01:46.1187
25	chnnychn	$2b$10$AxOGb.eYDmdSOcdQqiWXQ.XtFZswVGGb4jexyazah65.4QkUU9i5C	ca@gmail.com	Rowel	Navarro	M	22	2022-12-12 16:31:13.836425
26	jann	$2b$10$RhPL9REgMjlOYQrc.5NZ5.6I6uNeDT0dI0clEJhsc.SvUCfmNJ1Lm	Jann@test.com	jann	orine	F	23	2022-12-13 08:37:02.264503
27	lawlawlaw	$2b$10$IYylhUn8KU/HLC9iw32BkuDYqVBrZG8DzRgZGQI97hc8XXNhj/wQi	jsh@gmail.com	lawreence	camilee	M	23	2022-12-13 13:48:15.441723
28	nehemstrd 	$2b$10$0ItsuroeW60.T2qMDJaHrex5e5Vsj5EDV.FT8V3vkM65qahDzS72m	ndagohoy@gmail.com	Nehemiah 	Dagohoy	F	22	2022-12-13 16:48:19.437771
29	nehem	$2b$10$9UjPwKJ388AcmT0OqS3MGu.y4VwQIAPAPoCFx3AzCN9IoL7m4Aaq.	nehem@gmail.com	Miah	Dagohoy 	F	22	2022-12-14 01:20:14.740148
30	camilee	$2b$10$ODKJTR2/62fUkgXOwlYmOuZEsjTe1d9S9/Vn94/UP0aAgmKXzUFM2	lawrlawr@gmail.com	Lawrence	Camile	M	23	2022-12-15 04:08:51.15096
31	camileee	$2b$10$P4GRJlKyLoGjZTx4Pk2a4O.i5hl4wOaIr5fOO0/vabTZgu6uAoQiG	lawrrlawrr@gmail.com	Lawrence	Camile	M	22	2022-12-15 04:14:18.702703
32	camileeee	$2b$10$STlCoLfgGgADd0g0RC1feO7OQg11eJBReqWteLrqn0wJXCf38l0bm	lawrrrlawrr@gmail.com	Lawrence	Jose	M	22	2022-12-15 04:27:59.048188
33	cmanero	$2b$10$8rHtioyMZzhU1rtn3FB5Y.zuaEm/20mOpSyHlFR1oFIb.Usty5ou2	crisjohn.manero@gmail.com	Cris John David	Manero	M	29	2022-12-15 05:38:13.649531
34	test	$2b$10$/pcUjRrG9RtYan9eYJQ07u4r60eOPjVZEJVMncYi0ypyaVl7kkLAm	sample@gmail.com	test	test	M	25	2022-12-15 05:40:44.228603
35	saryo	$2b$10$YDTCqVP.8dmESATGJulzO.aKyWdcrW2F032lGiYuyz8OKRc7Sm1g2	ceasarian.benablo@gmail.com	Ceasar Ian	Benablo	M	16	2022-12-15 05:44:51.332268
36	tian2x	$2b$10$LFBljg3TYxUW.HHzht9cgusOI8BOif2Q8OyfjlhyM/syxI0JwPouW	tian2x@gmail.com	\N	\N	\N	\N	2023-01-09 12:23:18.129967
37	franfran	$2b$10$1yWFetckUUROTXLGw2RxJOqgcAoVFl0t6YUtVWsEC4vqxlucFnRF6	franfrandiang@gmail.com	Franfran	Diang	M	23	2023-01-13 16:37:46.976273
38	blackpink	$2b$10$UuMEAxQvfnDqn04GBDOOMuHCzgsHP7BMR2JEGPYKgh/OhmsqgwP2S	jann@tezt.com	blackpink	blqckpink	F	23	2023-02-06 05:03:09.590528
39	jcaranas	$2b$10$SrOe8reLHEt9jC9ioGx1v.F.A.PKnu.nPzXGClEtPNwcHK12T4oNe	carloaranas00@gmail.com	Carlo	Aranas	M	22	2023-02-14 01:21:23.66355
40	123	$2b$10$ZtD1myCn3ld991h9SUsIPetQ/RhjH7FuutwYWD66uT1Sk5lsx/NWW	ff@gmail.com	\N	\N	\N	\N	2023-02-14 05:10:01.48199
\.


                                                                                                                                                                                3631.dat                                                                                            0000600 0004000 0002000 00000000162 14373217510 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	10	34	1
6	22	4	5
5	10	11	4
1	10	2	22
7	34	7	2
8	10	18	1
9	10	33	1
10	10	10	1
11	10	4	6
12	16	4	2
13	10	1	5
\.


                                                                                                                                                                                                                                                                                                                                                                                                              3584.dat                                                                                            0000600 0004000 0002000 00000000126 14373217510 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        6	Senior	0.3	13
11	Bulk buyer	0.05	11
14	Senior Citizen	0.2	12
15	Student	0.1	13
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                          3586.dat                                                                                            0000600 0004000 0002000 00000001465 14373217510 0014270 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Sodium Acorbate, Others
2	Drops, Tincture
3	Solutions(Inhalation, Injection, Infusion)
4	Powder
5	Inhaler/Inhalation
6	Pads, Tea/Tea Bag
7	Water, Fluid
8	Suspension
9	Aerosol/Spray
10	Alcohol
11	Ampoules
12	Antibacterial (Fluoroquinolone)
13	Antiviral
14	Oral Hypoglycemic
15	Caplet
16	Capsule
17	Jelly, Gel
18	Cone
19	Syringe, Infusion, Injection- I.V|I.M
20	Tube, Vaginal Douche/Insert, Vial, GIB
21	Tablet
22	Strips, Plaster
23	Ointment, Cream, Balm
24	Deep S.C./I.M. Single Use
25	Paste
26	Methy Salicylate/Mineral - Oil
27	Granules
28	Elixir
29	Drafee, DRC
30	Embrocation
31	Syrup
32	Suppository
33	Rotacap 
34	Lotion, Surgical Scrub
35	Shampoo, Skin Cleanser, Skin Wipe, Soap
36	Stick, Stick Liniment/Liniment
37	Implant, Protectant 
38	Patch
39	Oxygen, Gas, Liquid, Liter Minute
40	Gums, Lozenges, Pastille
\.


                                                                                                                                                                                                           3588.dat                                                                                            0000600 0004000 0002000 00000011350 14373217510 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Medirich Pharma Distribution Corp	Glucostop	Metformin Hydrochloride	21	3	/images/file/Glucostop.png
2	Jacklen Pharma, Inc.	Desartan-100	Losartan Potassium	21	3	/images/file/Desartan-100.png
3	Brymar Pharmaceuticals	Maroxil	Amoxicillin Trihydrate	16	3	/images/file/Maroxil.png
4	Hexagon Pharmaceuticals	Rheuxan	Ibuprofen	21	2	/images/file/Rheuxan.png
5	Ollen Pharma Trading Inc.	Saphciferol-5000	Vitamin D3 (Cholecalciferol)	34	3	/images/file/Saphciferol-5000.png
6	Hei Gruppo Pharmaceutica, Inc.	Histazine	Cetirizine Dihydrochloride	3	3	/images/file/Histazine.png
7	Amb Hk Enterprises Inc.	Sanceph-500 Cap	Cephalexin	16	2	/images/file/Sanceph-500 Cap.png
8	Zeutica, Inc.	Asplex 80	Aspirin	21	3	/images/file/Asplex 80.png
9	Penta Labs Australia (Philippines)	Holpril-10	Lisinopril (As Dihydrate)	21	2	/images/file/Holpril-10.png
10	Sydenham Pharmaceuticals, Inc.	Sylergy	Loratadine	21	2	/images/file/Sylergy.png
11	Cassandras Care Pharmaceutical Distributor	Ingafol	Folic Acid	21	3	/images/file/Infagol.png
12	Bridgemark Marketing	Bosec	Omeprazole (As Sodium)	3	3	/images/file/Bosec.png
13	Johnson & Johnson (Philippines), Inc.	Tylenol	Paracetamol	23	2	/images/file/Tylenol.png
14	United Laboratories, Inc.	Tuseran Forte	Dextromethorphan Hydrobromide + Phenylephrine Hydrochloride + Paracetamol	16	2	/images/file/Tuseran Forte.png
15	Sanimed Pharmaceuticals Inc	Salusan	Salbutamol (as Sulfate)	3	3	/images/file/Salusan.png
16	Amb Hk Enterprises Inc.	Sanceph-500 Cap	Cephalexin	16	2	/images/file/Sanceph-500 Cap.png
17	Hexagon Pharmaceuticals	Rapidol	Paracetamol	21	2	/images/file/Rapidol.png
18	Meedpharma Medical Supplies & Equipment Distributor	Anzal-500	Azithromycin (As Dihydrate)	21	2	/images/file/Anzal-500.png
19	Lejal Laboratories Inc.	Contylan	Aluminum Hydroxide + Magnesium Trisilicate + Calcium Carbonate	16	2	/images/file/Contylan.png
20	Detoxicare Philippines, Inc.	Hydrodex	Hydrocortisone (as sodium succinate)	4	3	/images/file/Hydrodex.png
21	Sanofi Aventis Philippines, Inc.	Lasix	Furosemide	21	3	/images/file/Lasix.png
22	Xolvemed Pharma Incorporated	Xolvpro	Escitalopram (As Oxalate)	21	3	/images/file/Xolvpro.png
23	Medchoice Pharma Inc.	Glipdin	Glipizide	21	3	/images/file/Glipdin.png
24	Endure Medical Inc.	Glargilin	Insulin Glargine (Recombinant DNA)	3	3	/images/file/Glargilin.png
25	Torrent Pharma Philippines, Inc.	Serenata	Sertraline (as hydrochloride)	21	3	/images/file/Serenata.png
26	Philgen Pharmaceuticals, Inc.	Ranvast	Atorvastatin(As Calcium)	21	3	/images/file/Ranvast.png
27	Croma Medic, Inc.	Valstad Plus	Valsartan + Hydrochlorothiazide	21	3	/images/file/Valstad Plus.png
28	Glaxosmithkline Philippines, Inc.	Salbutamol (As Sulfate)	Ventolin	33	3	/images/file/Salbutamol (As Sulfate).png
29	Vivilon Pharmaceuticals, Inc.	Exforge	Amlodipine (as Besilate) + Valsartan	4	3	/images/file/Exforge.png
30	Euro Generics International Phils., Inc.	Aviden	Gabapentin	21	3	/images/file/Aviden.png
31	Euro Generics International Phils., Inc.	Eurolev	Levothyroxine Sodium	21	3	/images/file/Eurolev.png
32	Macropharma Corporation	Dopam	Dopamine Hydrochloride	3	3	/images/file/Dopam.png
33	First Global Trading Corporation	Adrenalin	Epinephrine (as hydrochloride)	3	3	/images/file/Adrenalin.png
34	Endure Medical, Inc.	Epsium	Magnesium Sulfate	3	3	/images/file/Epsium.png
35	Pharmastar Int'L. Trading Corp.	Tropin	Atropine (as Sulfate)	3	3	/images/file/Tropin.png
36	Pharma-Surrey International, Inc.	Hyperzine	Hydralazine Hydrochloride	3	3	/images/file/Hyperzine.png
37	Tgp Pharma Inc.	Fensin	Guaifenesin	16	2	/images/file/Fensin.png
38	Genace Pharma Distributor	Irofas	Iron + Folic Acid + Ascorbic Acid	31	3	/images/file/Irofas.png
39	Zuellig Pharma Corporation	Nizoral	Ketoconazole	4	1	/images/file/Nizoral.png
40	Glenmark Philippines, Inc.	Flusort	Fluticasone Propionate	8	3	/images/file/Flusort.png
41	United Laboratories, Inc.	Tuseran Forte	Dextromethorphan Hydrobromide + Phenylephrine Hydrochloride + Paracetamol	16	2	/images/file/Tuseran Forte.png
42	Konzept Convenience And Drug Store Corp.	Neokol	Paracetamol + Phenylpropanolamine Hydrochloride + Chlorpheniramine Maleate	16	2	/images/file/Neokol.png
43	Ritemed Phils., Inc.	Conlax-5	Bisacodyl	32	2	/images/file/Conlax-5.png
44	Westmont Pharmaceuticals, Inc.	Dolfenal	Mefenamic Acid	21	3	/images/file/Dolfenal.png
45	Medethix, Inc.	Pocym 250	Mycophenolate Mofetil	16	3	/images/file/Pocym 250.png
46	Xeno Pharmaceutical Phils. Inc.	Xentor	Atorvastatin (as calcium)	21	2	/images/file/Xentor.png
47	Zuellig Pharma Corporation	Humira	Adalimumab	3	3	/images/file/Humira.png
48	Unilab, Inc.	Rythma	Amiodarone Hydrochloride	21	3	/images/file/Rythma.png
49	Rilem Pharma Corp.	Solbropen	Phenylephrine Hydrochloride+Brompheniramine Maleate	31	3	/images/file/Solbropen.png
50	Detoxicare Philippines Inc.	Deslorastal	Desloratadine	21	3	/images/file/Deslorastal.png
\.


                                                                                                                                                                                                                                                                                        3590.dat                                                                                            0000600 0004000 0002000 00000001166 14373217510 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        64	10	8	20	N/A	N/A	10	30
43	13	3	50			0	30
44	10	5	32	noine	sdsd	279	30
47	13	14	5			0	30
48	10	14	27			0	30
49	10	13	41			30	30
56	11	49	30			0	30
59	11	40	5			0	30
61	13	27	30	sds	dsds	0	30
46	10	7	42			0	4
40	13	1	10			0	30
42	10	1	21	90-23	temperature above 24	3	30
65	11	2	7			0	30
66	11	9	10			0	15
41	13	2	11			2	20
70	13	38	20			0	30
51	12	18	20			117	30
54	12	33	50			128	30
58	11	18	60			0	30
52	12	7	30			109	115
67	12	10	20			58	10
69	12	17	20			96	10
60	13	11	10	Shelf 4-A	Store in cold	502	30
50	12	4	10			112	30
55	11	1	15			131	30
57	11	20	45			0	30
45	13	34	30			0	30
53	12	35	40			128	30
68	12	12	50			0	10
\.


                                                                                                                                                                                                                                                                                                                                                                                                          3592.dat                                                                                            0000600 0004000 0002000 00000001465 14373217510 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Sodium Acorbate, Others
2	Drops, Tincture
3	Solutions(Inhalation, Injection, Infusion)
4	Powder
5	Inhaler/Inhalation
6	Pads, Tea/Tea Bag
7	Water, Fluid
8	Suspension
9	Aerosol/Spray
10	Alcohol
11	Ampoules
12	Antibacterial (Fluoroquinolone)
13	Antiviral
14	Oral Hypoglycemic
15	Caplet
16	Capsule
17	Jelly, Gel
18	Cone
19	Syringe, Infusion, Injection- I.V|I.M
20	Tube, Vaginal Douche/Insert, Vial, GIB
21	Tablet
22	Strips, Plaster
23	Ointment, Cream, Balm
24	Deep S.C./I.M. Single Use
25	Paste
26	Methy Salicylate/Mineral - Oil
27	Granules
28	Elixir
29	Drafee, DRC
30	Embrocation
31	Syrup
32	Suppository
33	Rotacap 
34	Lotion, Surgical Scrub
35	Shampoo, Skin Cleanser, Skin Wipe, Soap
36	Stick, Stick Liniment/Liniment
37	Implant, Protectant 
38	Patch
39	Oxygen, Gas, Liquid, Liter Minute
40	Gums, Lozenges, Pastille
\.


                                                                                                                                                                                                           3594.dat                                                                                            0000600 0004000 0002000 00000000626 14373217511 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	60	5	15	2022-12-06 15:03:51.407908	13
2	60	6	15	2022-12-06 15:51:17.909621	13
3	60	6	15	2022-12-06 18:23:51.092828	13
4	60	6	15	2022-12-06 18:24:16.426584	13
5	60	8	15	2022-12-09 05:27:15.071732	13
6	57	1	45	2022-12-14 11:06:40.187206	11
7	52	2	30	2022-12-15 00:07:46.759529	12
8	52	3	30	2022-12-15 03:04:00.344884	12
9	52	3	30	2022-12-15 03:15:20.537251	12
10	41	1	11	2022-12-15 05:56:15.945377	13
\.


                                                                                                          3596.dat                                                                                            0000600 0004000 0002000 00000000425 14373217511 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        201	44	5	10	5	2
203	49	13	10	10	3
204	44	5	10	10	3
205	49	13	10	1	3
213	40	1	13	1	7
218	44	5	10	1	21
219	44	5	10	1	21
220	44	5	10	1	21
350	55	1	11	2	10
351	40	1	13	2	40
287	55	1	11	1	23
297	45	34	13	3	27
302	55	1	11	1	29
296	41	2	13	4	27
338	41	2	13	2	22
347	42	1	10	3	28
\.


                                                                                                                                                                                                                                           3598.dat                                                                                            0000600 0004000 0002000 00000004341 14373217511 0014270 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        35	40	39	100	5	10	2022-10-15 00:00:00	2022-09-25 00:00:00
36	43	40	50	15	50	2022-09-25 00:00:00	2022-10-29 00:00:00
37	47	41	80	2	5	2022-09-25 00:00:00	2022-10-22 00:00:00
38	41	42	150	5	10	2022-10-02 00:00:00	2022-11-05 00:00:00
39	45	43	200	25	30	2022-09-25 00:00:00	2022-11-05 00:00:00
40	43	44	90	45	50	2022-09-25 00:00:00	2022-11-05 00:00:00
41	42	45	100	31	21	2022-12-15 00:00:00	2022-09-01 00:00:00
42	46	45	50	56	42	2023-02-16 00:00:00	2022-10-14 00:00:00
43	49	45	100	51	41	2023-02-14 00:00:00	2022-09-29 00:00:00
44	44	45	100	45	30	2022-11-25 00:00:00	2022-08-18 00:00:00
45	44	46	40	21	30	2023-01-12 00:00:00	2022-08-23 00:00:00
46	44	46	60	21	30	2023-02-24 00:00:00	2022-08-30 00:00:00
47	44	47	100	21	30	2023-01-19 00:00:00	2022-07-31 00:00:00
48	44	47	70	17	30	2023-02-13 00:00:00	2022-08-01 00:00:00
49	44	48	30	15	30	2023-02-13 00:00:00	2022-06-14 00:00:00
50	49	49	50	32	41	2023-02-03 00:00:00	2022-08-01 00:00:00
51	42	49	100	11	21	2023-03-29 00:00:00	2022-07-06 00:00:00
52	60	50	100	10	15	2024-02-29 00:00:00	2022-10-01 00:00:00
53	41	50	100	5	10	2023-09-28 00:00:00	2022-10-01 00:00:00
54	55	51	100	10	15	2022-10-07 00:00:00	2022-10-14 00:00:00
55	58	52	5	50	60	2022-10-29 00:00:00	2022-10-12 00:00:00
56	57	53	3	40	45	2022-10-13 00:00:00	2022-11-10 00:00:00
57	42	54	4	20	21	2022-12-30 00:00:00	2022-11-30 00:00:00
58	64	55	10	20	20	2022-11-12 00:00:00	2022-11-01 00:00:00
59	55	56	100	20	15	2022-12-09 00:00:00	2023-01-07 00:00:00
60	55	57	35	10	15	2022-12-31 00:00:00	2022-12-01 00:00:00
61	55	58	100	10	15	2022-12-31 00:00:00	2022-12-01 00:00:00
62	50	59	200	10	10	2022-12-31 00:00:00	2022-12-01 00:00:00
63	54	59	200	12	50	2022-12-31 00:00:00	2022-12-01 00:00:00
64	51	59	200	7	20	2022-12-31 00:00:00	2022-12-01 00:00:00
65	53	59	200	8	40	2022-12-31 00:00:00	2022-12-01 00:00:00
66	52	59	200	15	30	2022-12-31 00:00:00	2022-12-01 00:00:00
67	55	60	5	10	15	2022-12-31 00:00:00	2022-12-01 00:00:00
68	67	61	10	15	20	2023-01-12 00:00:00	2022-11-17 00:00:00
69	68	62	1	45	50	2023-01-17 00:00:00	2022-11-16 00:00:00
70	67	63	50	15	20	2023-01-13 00:00:00	2022-11-15 00:00:00
71	69	63	100	15	20	2023-01-20 00:00:00	2022-11-09 00:00:00
72	60	64	500	8	10	2023-04-22 00:00:00	2022-12-01 00:00:00
73	52	65	2	44	30	2022-12-15 00:00:00	2022-12-15 00:00:00
\.


                                                                                                                                                                                                                                                                                               3600.dat                                                                                            0000600 0004000 0002000 00000011230 14373217511 0014243 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        83	60	5	50	40
84	61	10	50	47
85	62	120	6000	43
86	63	50	250	47
87	64	10	300	45
88	65	20	600	45
89	66	20	200	41
90	67	5	50	41
91	68	13	130	41
92	69	15	150	40
93	70	91	3731	49
94	71	8	240	45
95	72	5	690	40
96	72	5	690	43
97	72	13	690	45
98	73	4	414	44
99	73	7	414	46
100	74	8	80	41
101	75	15	450	45
102	76	3	15	47
103	77	16	480	45
104	78	8	601	49
105	78	4	601	46
106	78	5	601	42
107	79	2	10	47
108	80	8	240	45
109	81	16	160	41
110	82	14	140	41
111	83	7	350	43
112	84	10	100	40
113	85	7	692	44
114	85	7	692	46
115	85	1	692	49
116	85	7	692	42
117	86	9	90	41
118	87	23	690	45
119	88	12	120	41
120	89	11	896	44
121	89	1	896	49
122	89	13	896	42
123	89	6	896	46
124	90	6	126	42
125	91	12	120	41
126	92	5	105	42
127	93	5	150	45
128	94	8	80	41
129	95	3	15	47
130	96	5	50	40
131	97	15	450	45
132	98	11	231	42
133	99	25	750	45
134	100	20	200	40
135	101	5	528	44
136	101	9	528	46
137	102	15	450	45
138	103	2	20	41
139	104	9	394	42
140	104	5	394	49
141	105	4	84	42
142	106	5	105	42
143	107	9	189	42
144	108	9	189	42
145	109	8	168	42
146	110	5	105	42
147	111	25	525	42
148	112	18	540	44
149	113	12	504	46
150	114	17	714	46
151	115	8	450	44
152	115	5	450	46
153	116	19	399	42
154	117	17	357	42
155	118	18	378	42
156	119	22	462	42
157	120	23	690	44
158	121	3	63	42
159	122	21	630	44
160	123	20	300	60
166	129	7	70	41
167	131	1	55	40
168	131	1	55	41
169	131	1	55	45
170	131	1	55	47
171	132	16	480	45
172	133	10	710	44
173	133	10	710	49
174	134	4	120	44
175	135	4	40	41
176	136	5	205	49
177	137	10	300	44
178	138	12	120	41
179	139	1	9	40
180	140	5	35	40
181	141	5	35	40
182	142	22	198	41
183	143	17	220.5	60
184	143	6	220.5	41
185	144	23	388	41
186	144	17	388	60
187	145	21	315	55
188	146	13	210	41
189	146	10	210	60
190	146	2	210	40
191	147	1	10	40
192	148	1	10	41
193	149	1	10	40
194	150	1	10	40
195	151	1	10	40
196	152	1	10	40
197	153	1	10	40
198	154	1	10	40
199	155	1	30	41
200	155	2	30	40
201	156	1	10	41
203	157	1	25	41
202	157	1	25	60
204	158	1	15	55
205	159	1	15	55
206	160	1	21	42
207	161	1	7	41
208	162	1	10	41
209	163	2	20	41
210	164	1	10	41
211	165	1	10	41
212	166	1	10	41
213	168	1	7	41
214	170	1	10	41
215	171	5	105	45
216	172	100	1500	55
217	173	77	1097.25	55
218	174	1	60	58
219	175	5	71.25	55
220	176	4	84	45
221	177	1	120	58
222	177	1	120	57
223	177	1	120	55
224	178	2	156.75	58
225	178	1	156.75	57
226	179	1	60	58
227	180	2	90	57
228	181	5	50	50
229	182	7	280	53
230	183	7	140	51
231	184	2	100	54
232	185	3	60	51
233	186	5	200	53
234	187	3	90	52
235	188	4	80	51
236	189	2	40	51
237	190	4	120	52
238	191	3	30	50
239	192	4	200	54
240	193	2	40	51
241	194	5	50	50
242	195	2	20	50
243	196	3	30	50
244	197	5	400	54
245	197	5	400	52
246	198	3	150	54
247	199	5	150	52
248	200	2	100	54
249	201	2	90	51
250	201	1	90	54
251	202	10	400	53
252	203	2	40	51
253	204	3	150	54
254	206	7	210	52
255	205	4	160	53
256	207	1	10	50
257	208	6	300	54
258	209	4	200	54
259	210	4	40	50
260	211	3	60	51
261	212	5	250	54
262	213	4	120	52
263	214	4	120	52
264	215	3	120	53
265	216	3	140	52
266	216	1	140	54
267	217	8	160	51
268	218	2	70	52
269	218	1	70	50
270	219	5	50	50
271	220	1	60	50
272	220	1	60	51
273	220	1	60	52
274	221	6	240	53
275	222	1	30	50
276	222	1	30	51
277	223	10	100	50
278	224	1	70	54
279	224	1	70	51
280	225	8	320	53
281	226	2	100	51
282	226	2	100	52
284	227	1	50	51
283	227	1	50	52
285	228	6	300	54
286	229	2	80	53
287	230	2	60	52
288	231	9	180	51
289	232	1	50	52
290	232	1	50	51
291	233	1	70	54
292	233	1	70	51
293	234	3	30	50
294	235	4	160	53
295	236	2	60	52
296	237	5	250	54
297	238	2	90	52
298	238	1	90	50
299	238	1	90	51
300	239	10	100	50
301	240	1	70	51
302	240	1	70	52
303	240	2	70	50
304	241	10	500	54
305	242	5	200	53
306	243	5	150	52
307	244	2	100	54
308	245	4	80	51
309	246	1	30	50
310	246	1	30	51
311	247	1	40	52
312	247	1	40	50
313	248	4	80	51
314	249	6	120	51
315	250	5	200	53
316	251	1	50	52
317	251	2	50	50
318	252	5	150	52
319	253	7	210	52
320	254	3	120	53
321	255	1	60	51
322	255	1	60	52
323	255	1	60	50
324	256	3	60	51
325	257	10	100	50
326	258	2	80	51
327	258	1	80	53
328	259	6	300	54
329	260	4	80	51
330	261	7	280	53
331	262	2	70	50
332	262	1	70	51
333	262	1	70	52
334	263	4	200	54
335	264	1	71	41
336	264	2	71	45
337	265	1	41	41
338	265	1	41	45
339	266	1	11	41
340	267	1	30	45
341	268	1	41	41
342	268	1	41	45
343	269	3	43	41
344	269	1	43	60
345	270	1	21	60
346	270	1	21	41
347	271	5	55	41
348	272	12	153	60
349	272	3	153	41
350	273	11	121	41
351	274	1	50	50
352	274	2	50	51
353	275	1	90	50
354	275	2	90	53
355	276	1	50	68
356	277	5	190	52
357	277	2	190	51
358	278	5	150	52
359	279	5	50	50
360	280	3	44.1	60
361	280	3	44.1	41
362	281	4	30.8	41
363	282	3	33	41
364	283	2	48	52
365	284	1	150	51
366	284	1	150	54
367	284	1	150	67
368	284	6	150	50
369	285	3	152	52
370	285	1	152	67
371	285	4	152	69
372	286	6	54	60
373	287	1	10	50
374	288	5	75	55
\.


                                                                                                                                                                                                                                                                                                                                                                        3601.dat                                                                                            0000600 0004000 0002000 00000004351 14373217511 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        66	80	41	6
67	81	40	1
68	82	40	3
69	82	43	5
70	83	40	4
71	83	43	4
72	83	45	4
73	83	41	1
74	83	47	5
75	84	40	1
76	84	47	5
77	84	45	5
78	85	40	1
79	86	40	1
80	86	41	4
81	86	43	1
82	87	43	4
83	87	45	1
84	87	47	1
85	88	41	1
86	88	45	1
87	89	40	1
88	89	45	1
89	90	40	1
90	90	41	1
91	90	45	1
92	90	47	1
93	91	44	5
94	91	49	5
95	92	40	5
96	92	41	2
97	92	45	1
98	93	40	4
99	94	55	2
100	95	55	1
101	96	55	5
102	97	55	1
103	98	55	5
104	99	55	1
105	100	55	2
106	101	40	3
107	101	60	5
108	102	40	3
109	102	60	5
110	103	40	7
111	103	41	4
112	103	60	3
113	104	40	7
114	104	41	4
115	104	60	3
116	105	40	4
117	105	60	4
118	106	55	3
119	107	55	11
120	108	41	4
121	108	60	4
122	109	40	1
123	110	40	5
124	111	55	10
125	112	55	1
126	113	55	8
127	114	45	16
128	115	55	7
129	115	58	4
65	79	40	5
130	116	55	5
131	117	44	5
132	118	41	1
133	118	45	1
134	119	44	10
135	119	49	10
136	120	44	10
137	120	49	11
138	121	40	1
139	121	41	7
140	122	40	1
141	123	40	4
142	124	44	1
143	125	44	3
144	126	44	1
145	127	44	1
146	128	44	2
147	129	44	3
148	130	44	4
149	131	40	11
150	131	41	10
151	132	45	1
152	133	40	1
153	134	41	1
154	135	40	1
155	136	40	1
156	137	40	1
157	138	40	1
158	139	40	1
159	140	40	1
160	141	41	1
161	141	40	2
162	142	41	1
163	143	41	1
164	143	60	1
165	144	55	1
166	145	55	1
167	146	42	1
168	147	41	1
169	148	45	1
170	149	41	1
171	150	41	1
172	151	41	1
173	152	41	1
174	153	41	2
175	154	41	1
176	155	41	1
177	156	41	1
178	157	41	5
179	158	41	4
180	159	41	5
181	160	41	1
182	161	41	1
183	162	41	1
184	163	41	1
185	164	41	1
186	165	41	1
187	166	58	1
188	167	58	1
189	168	58	1
190	169	41	7
191	170	45	4
192	171	41	3
193	172	60	4
194	173	58	1
195	173	55	1
196	173	57	1
197	174	55	2
198	175	57	2
199	176	55	3
200	177	55	5
201	177	55	5
202	178	55	5
203	177	55	5
204	178	55	5
205	179	55	5
206	180	41	1
207	180	45	2
208	181	41	1
209	181	45	1
210	182	41	1
211	183	45	1
212	184	41	1
213	184	45	1
214	185	41	3
215	185	60	1
216	186	41	1
217	186	60	1
218	187	41	5
219	188	41	3
220	188	60	12
221	189	41	11
222	190	50	1
223	190	51	2
224	191	50	1
225	191	53	2
226	192	50	1
227	193	50	5
228	194	60	3
229	194	41	3
230	195	50	2
231	196	54	8
232	196	67	5
233	197	60	4
234	197	41	6
235	198	41	2
236	199	41	3
237	200	52	2
238	201	60	1
239	202	51	1
240	202	67	1
241	202	54	1
242	202	50	6
243	203	50	1
244	204	55	5
\.


                                                                                                                                                                                                                                                                                       3603.dat                                                                                            0000600 0004000 0002000 00000000062 14373217511 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        0	Pending
1	Confirmed
2	Canceled
3	Purchased
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3605.dat                                                                                            0000600 0004000 0002000 00000007332 14373217512 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        154	10	13	10	2022-12-08 18:27:19.072972	3	164	2022-12-08 18:27:51.976945	1	0	10
155	10	13	10	2022-12-08 18:28:45.46999	3	165	2022-12-08 18:28:58.739642	1	0	10
156	10	13	10	2022-12-08 18:29:32.965701	3	166	2022-12-08 18:29:45.349832	1	0	10
157	10	13	35	2022-12-08 19:12:37.128633	2	0	2022-12-08 19:20:56.881902	6	0.3	50
158	10	13	40	2022-12-08 19:21:49.35366	2	0	2022-12-08 19:23:40.055172	1	0	40
159	10	13	50	2022-12-08 19:25:14.615252	2	0	2022-12-08 19:29:54.634711	1	0	50
160	10	13	10	2022-12-09 05:32:01.698051	2	0	2022-12-09 05:32:17.990693	1	0	10
161	10	13	7	2022-12-09 05:32:35.471749	3	0	2022-12-09 05:32:59.871483	6	0.3	10
162	10	13	10	2022-12-09 05:36:35.318903	2	0	2022-12-09 05:36:59.810438	1	0	10
163	10	13	7	2022-12-09 05:37:22.086558	3	168	2022-12-09 05:37:55.565267	6	0.3	10
164	10	13	10	2022-12-09 05:38:46.110614	3	0	2022-12-09 05:39:41.079	1	0	10
165	10	13	10	2022-12-09 05:41:05.331333	3	170	2022-12-09 05:41:16.239316	1	0	10
200	34	12	48	2022-12-15 05:58:52.134825	3	283	2022-12-15 06:01:32.987037	14	0.2	60
166	10	11	60	2022-12-09 15:14:43.007146	3	174	2022-12-09 15:15:28.154029	1	0	60
186	10	13	21	2022-12-14 22:17:13.767573	3	270	2022-12-14 22:17:37.415442	1	0	21
167	10	11	60	2022-12-09 16:03:32.856394	2	0	2022-12-10 03:25:04.338676	1	0	60
169	16	13	77	2022-12-12 07:53:19.842336	2	0	\N	1	0	77
170	22	13	84	2022-12-12 08:14:47.358233	3	176	2022-12-12 08:15:19.76675	6	0.3	120
187	10	13	55	2022-12-14 22:19:00.854124	3	271	2022-12-14 22:19:16.848279	1	0	55
173	24	11	120	2022-12-12 16:31:12.538089	3	177	2022-12-12 16:34:40.299623	1	0	120
168	10	11	60	2022-12-10 18:01:21.958678	3	179	2022-12-13 00:14:44.520528	1	0	60
202	10	12	150	2022-12-15 06:10:57.926295	3	284	2022-12-15 06:12:09.426844	1	0	150
188	10	13	153	2022-12-14 22:23:35.897017	3	272	2022-12-14 22:23:52.416773	1	0	153
172	24	13	40	2022-12-12 16:11:02.339439	2	0	2022-12-13 16:45:59.594829	1	0	40
171	22	13	23.1	2022-12-12 09:40:55.592365	2	0	\N	6	0.3	33
196	31	12	400	2022-12-15 04:22:16.938637	2	0	\N	14	0.2	500
175	28	11	90	2022-12-13 17:32:31.772451	3	180	2022-12-14 01:17:41.528123	1	0	90
189	10	13	121	2022-12-14 22:26:15.967994	3	273	2022-12-14 22:26:36.794334	1	0	121
174	28	11	30	2022-12-13 17:06:19.265379	2	0	2022-12-14 01:17:50.754495	1	0	30
179	22	11	75	2022-12-14 08:43:02.899311	2	0	\N	1	0	75
178	22	11	75	2022-12-14 08:43:02.493225	2	0	\N	1	0	75
176	10	11	45	2022-12-14 02:42:32.062454	2	0	\N	1	0	45
177	22	11	75	2022-12-14 08:43:02.266191	2	0	\N	1	0	75
201	33	13	7	2022-12-15 06:10:33.921287	2	0	\N	6	0.3	10
180	10	13	71	2022-12-14 21:38:41.564519	3	264	2022-12-14 21:38:58.98607	1	0	71
195	22	12	20	2022-12-15 03:57:03.536751	2	0	2023-01-09 19:51:58.409624	1	0	20
190	22	12	50	2022-12-15 02:10:35.907603	3	274	2022-12-15 02:13:23.397673	1	0	50
181	10	13	41	2022-12-14 21:48:21.992076	3	265	2022-12-14 21:48:41.016867	1	0	41
182	10	13	11	2022-12-14 21:51:44.206225	3	266	2022-12-14 21:52:04.886538	1	0	11
191	22	12	90	2022-12-15 02:13:40.02443	3	275	2022-12-15 02:18:36.671353	1	0	90
183	10	13	30	2022-12-14 21:54:24.920803	3	267	2022-12-14 21:54:36.55168	1	0	30
192	22	12	10	2022-12-15 03:04:43.869463	2	0	\N	1	0	10
184	10	13	41	2022-12-14 21:57:30.936354	3	268	2022-12-14 21:57:53.430449	1	0	41
185	10	13	43	2022-12-14 22:08:41.454025	3	269	2022-12-14 22:08:57.381543	1	0	43
203	16	12	10	2023-01-09 19:53:35.355736	3	287	2023-01-09 19:53:49.231818	1	0	10
193	22	12	50	2022-12-15 03:17:30.661888	3	279	2022-12-15 03:18:47.484268	1	0	50
194	10	13	44.1	2022-12-15 03:38:11.123092	3	280	2022-12-15 03:38:47.447529	6	0.3	63
197	32	13	106	2022-12-15 04:35:22.893633	2	0	\N	1	0	106
198	34	13	22	2022-12-15 05:49:10.013726	2	0	\N	1	0	22
204	10	11	75	2023-02-10 16:11:54.327761	3	288	2023-02-10 16:12:28.721857	1	0	75
199	10	13	33	2022-12-15 05:57:05.825486	3	282	2022-12-15 05:58:29.521891	1	0	33
\.


                                                                                                                                                                                                                                                                                                      3607.dat                                                                                            0000600 0004000 0002000 00000000025 14373217512 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Cash
2	G cash
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3609.dat                                                                                            0000600 0004000 0002000 00000000534 14373217512 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        8	10	48	t	t	t	t	t	t	Administrator	t
10	12	50	t	t	t	t	t	t	Administrator	t
11	13	51	t	t	t	t	t	t	Administrator	t
12	14	52	t	t	t	t	t	t	Administrator	t
17	13	62	t	t	t	f	f	f	Cashier	f
9	11	49	t	t	t	t	t	t	Administrator	t
20	13	65	f	t	f	f	f	f	Inventorer	f
21	11	66	t	f	f	f	f	f	Cashier	f
24	12	69	t	f	f	f	f	f	cashier	f
25	13	70	t	t	f	f	f	t	water boy	f
\.


                                                                                                                                                                    3611.dat                                                                                            0000600 0004000 0002000 00000001043 14373217512 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        14	Bankerohan Pharmacy	Bankerohan DC	7.067995940935274	125.60222384814159	t	\N	3	\N	\N
10	La Forteza Pharmacy	Bankerohan DC	7.097178651094138	125.61970523632168	t	21:00	3	08:30	/images/file/laforteza.png
11	Botikang Pinoy Pharmacy	JP Laurel DC	7.097319402462428	125.62050496824443	t	\N	3	\N	/images/file/botikpinoy.png
13	Value Plus Pharmacy	Somewhere DC	7.067866842334606	125.60201396529091	t	\N	4	\N	/images/file/valueplus.png
12	Golden Drugs Pharmacy	Buhangin DC	6.501919793599812	124.84453105547024	t	\N	3	\N	/images/file/golden_drug.png
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             3613.dat                                                                                            0000600 0004000 0002000 00000002220 14373217512 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        39	51	13	8	2022-10-14 01:45:07.451475	500
40	51	13	10	2022-10-14 01:45:51.011907	750
41	51	13	14	2022-10-14 01:48:00.350356	160
42	51	13	13	2022-10-14 01:48:34.64512	750
43	51	13	8	2022-10-14 01:49:07.474021	5000
44	51	13	8	2022-10-14 01:50:24.547246	4050
45	48	10	7	2022-10-14 01:55:58.394446	15500
46	48	10	15	2022-10-14 02:02:15.662231	2100
47	48	10	9	2022-10-14 02:21:44.914367	3290
48	48	10	11	2022-10-14 02:23:42.597695	450
49	48	10	12	2022-10-14 02:28:48.503677	2700
50	51	13	6	2022-10-22 10:28:53.134161	1500
51	49	11	17	2022-10-30 18:04:46.058095	1000
52	49	11	17	2022-10-30 18:37:34.079358	250
53	49	11	17	2022-11-18 02:50:46.74404	120
54	48	10	12	2022-11-18 02:55:13.963564	80
55	48	10	9	2022-11-20 02:58:58.912863	200
56	49	11	18	2022-12-09 15:07:47.100406	2000
57	49	11	17	2022-12-10 04:00:22.095455	350
58	49	11	17	2022-12-13 00:34:14.799523	1000
59	50	12	16	2022-12-14 05:02:46.008159	10400
60	49	11	17	2022-12-14 22:42:23.410963	50
61	50	12	16	2022-12-15 02:23:15.282665	150
62	50	12	16	2022-12-15 02:24:41.974686	45
63	50	12	16	2022-12-15 03:26:36.168541	2250
64	51	13	22	2022-12-15 06:01:59.671795	4000
65	50	12	16	2022-12-15 06:04:15.697503	88
\.


                                                                                                                                                                                                                                                                                                                                                                                3615.dat                                                                                            0000600 0004000 0002000 00000000741 14373217512 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	t	t	t	t	t	t	t		t	2022-12-15 01:03:34.386242	1	10
2	2	f	t	t	t	t	t	t		t	2022-12-15 01:42:02.576399	1	10
3	1	t	t	t	t	t	t	t		t	2022-12-15 01:48:35.90458	1	10
4	2	t	t	t	t	t	t	t		t	2022-12-15 01:53:10.92756	1	10
5	1	t	t	t	t	t	t	t		t	2022-12-15 02:07:46.190106	1	10
6	5	t	t	t	t	t	t	t		t	2022-12-15 02:14:16.04503	1	10
7	6	t	t	t	t	t	t	t		t	2022-12-15 03:59:38.522037	12	22
8	6	t	t	t	t	t	t	t		t	2022-12-15 03:59:53.235841	12	22
9	9	t	t	t	t	t	t	t		t	2022-12-15 06:14:03.750845	1	10
\.


                               3616.dat                                                                                            0000600 0004000 0002000 00000000005 14373217513 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3619.dat                                                                                            0000600 0004000 0002000 00000024660 14373217513 0014272 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        75	51	13	2022-10-14 02:06:01.895758	450	1	450	0	1
61	51	13	2022-10-02 01:56:06.731219	50	1	100	50	1
60	51	13	2022-10-01 01:53:13.935921	50	1	500	450	1
62	51	13	2022-10-03 01:58:32.715508	6000	1	6000.25	0	1
69	51	13	2022-10-10 02:03:55.409037	150	1	150	0	1
70	48	10	2022-10-10 02:03:59.344888	3731	1	3800	69	1
71	51	13	2022-10-11 02:04:11.913724	240	1	240	0	1
72	51	13	2022-10-11 02:04:45.385586	690	1	690	0	1
73	48	10	2022-10-12 02:04:52.356548	414	1	500	86	1
74	51	13	2022-10-13 02:05:39.662172	80	1	80	0	1
148	51	13	2022-12-06 22:11:04.671896	10	1	20	10	1
149	51	13	2022-12-06 22:11:42.861826	10	1	20	10	1
150	51	13	2022-12-07 03:28:08.071843	10	1	100	90	1
79	51	13	2022-10-16 02:07:27.538763	10	1	10	0	1
80	51	13	2022-10-17 02:07:43.281533	240	1	240	0	1
81	51	13	2022-10-18 02:08:04.756327	160	1	160	0	1
82	51	13	2022-10-19 02:08:23.075377	140	1	140	0	1
83	51	13	2022-10-20 02:08:39.954387	350	1	350	0	1
84	51	13	2022-10-21 02:08:57.833481	100	1	100	0	1
85	48	10	2022-10-21 02:09:03.97011	692	1	1000	308	1
86	51	13	2022-10-21 02:09:33.474353	90	1	90	0	1
87	51	13	2022-10-22 02:09:49.555258	690	1	690	0	1
88	51	13	2022-10-22 02:10:03.057761	120	1	120	0	1
89	48	10	2022-10-23 02:10:23.971136	896	1	900	4	1
90	48	10	2022-10-24 02:11:57.478225	126	1	200	74	1
91	51	13	2022-10-25 02:11:58.970514	120	1	120	0	1
92	48	10	2022-10-25 02:12:43.570767	105	1	200	95	1
93	51	13	2022-10-25 02:12:45.558343	150	1	150	0	1
63	51	13	2022-10-04 02:00:24.485059	250	1	260	10	1
64	51	13	2022-10-05 02:01:47.553951	300	1	300	0	1
65	51	13	2022-10-06 02:02:11.890026	600	1	600	0	1
66	51	13	2022-10-07 02:02:45.946517	200	1	200	0	1
67	51	13	2022-10-08 02:03:30.537913	50	1	50	0	1
68	51	13	2022-10-09 02:03:42.761342	130	1	130	0	1
94	51	13	2022-10-26 02:12:59.977785	80	1	80	0	1
95	51	13	2022-10-26 02:13:10.851402	15	1	15	0	1
96	51	13	2022-10-26 02:13:22.149716	50	1	50	0	1
97	51	13	2022-10-27 02:13:37.81001	450	1	450	0	1
98	48	10	2022-10-28 02:13:44.481343	231	1	250	19	1
99	51	13	2022-10-29 02:14:03.745707	750	1	750	0	1
100	51	13	2022-10-30 02:14:15.457249	200	1	200	0	1
101	48	10	2022-10-30 02:14:24.03556	528	1	1000	472	1
102	51	13	2022-10-31 02:14:31.667621	450	1	450	0	1
103	51	13	2022-10-31 02:16:28.145836	20	1	20	0	1
129	51	13	2022-10-30 01:45:03.573304	70	1	100	30	1
131	51	13	2022-10-30 01:52:48.392156	55	1	100	45	1
132	51	13	2022-10-30 18:58:35.060784	480	1	500	20	1
104	48	10	2022-09-29 02:30:44.282368	394	1	400	6	1
133	48	10	2022-10-30 20:00:45.593172	710	1	720	10	1
134	48	10	2022-11-12 22:04:59.853143	120	1	200	80	1
135	51	13	2022-11-15 05:51:21.458548	40	1	100	60	1
136	48	10	2022-11-15 05:52:20.734925	205	1	205	0	1
109	48	10	2022-09-26 02:46:04.077495	168	1	170	2	1
110	48	10	2022-09-25 02:46:57.009937	105	1	105	0	1
105	48	10	2022-09-28 02:43:44.383444	84	1	100	16	1
106	48	10	2022-09-27 02:44:24.377808	105	1	120	15	1
107	48	10	2022-09-27 02:44:43.766357	189	1	200	11	1
108	48	10	2022-09-26 02:45:46.563375	189	1	200	11	1
111	48	10	2022-09-24 03:00:02.752102	525	1	1000	475	1
112	48	10	2022-09-23 03:00:23.248877	540	1	600	60	1
113	48	10	2022-09-23 03:00:47.540616	504	1	600	96	1
114	48	10	2022-09-22 03:01:08.01615	714	1	800	86	1
115	48	10	2022-09-21 03:01:31.410472	450	1	500	50	1
116	48	10	2022-09-21 03:01:58.166883	399	1	399	0	1
117	48	10	2022-09-20 03:02:14.952131	357	1	400	43	1
118	48	10	2022-09-20 03:02:43.951373	378	1	400	22	1
119	48	10	2022-09-19 03:03:48.41531	462	1	500	38	1
120	48	10	2022-09-19 03:04:09.993915	690	1	700	10	1
121	48	10	2022-09-18 03:07:32.119227	63	1	63	0	1
122	48	10	2022-09-17 03:07:58.892813	630	1	700	70	1
123	51	13	2022-10-22 10:29:45.023223	300	1	500	200	1
151	51	13	2022-12-07 03:29:55.129816	10	1	20	10	1
78	48	10	2022-10-15 02:06:45.397131	601	1	1000	399	1
152	51	13	2022-12-07 03:31:30.062552	10	1	20	10	1
153	51	13	2022-12-07 03:33:38.352767	10	1	20	10	1
76	51	13	2022-10-15 02:06:18.609055	100	1	15	0	1
77	51	13	2022-10-16 02:06:33.401266	480	1	480	0	1
137	48	10	2022-11-16 02:26:53.108214	300	1	300	0	1
138	51	13	2022-11-16 07:50:18.668085	120	1	222	102	1
139	51	13	2022-11-29 10:36:04.266142	9	9	10	1	1
140	51	13	2022-11-29 10:41:29.894698	35	6	50	15	1
141	51	13	2022-11-29 10:44:16.909874	35	6	50	15	1
142	51	13	2022-11-29 18:14:50.126545	198	7	200	2	1
143	51	13	2022-11-29 18:16:35.43945	220.5	6	300	79.5	1
144	51	13	2022-11-29 18:17:36.02256	388	10	501	113	1
145	49	11	2022-11-30 09:01:01.636124	315	1	345	30	1
146	51	13	2022-12-01 06:02:29.374515	210	6	1000	790	1
147	51	13	2022-12-06 22:08:36.703213	10	1	20	10	1
154	51	13	2022-12-07 03:37:39.81276	10	1	20	10	1
155	51	13	2022-12-07 03:43:13.339489	30	1	30	0	1
156	51	13	2022-12-07 03:46:15.90406	10	1	20	10	1
157	51	13	2022-12-07 13:33:20.620829	25	1	200	175	1
158	49	11	2022-12-07 13:53:18.573035	15	1	20	5	1
159	49	11	2022-12-07 13:54:19.133933	15	1	20	5	1
160	48	10	2022-12-08 01:18:48.531694	21	1	30	9	1
161	51	13	2022-12-08 18:21:25.625375	7	1	10	3	1
162	51	13	2022-12-08 18:23:54.525467	10	1	10	0	1
163	51	13	2022-12-08 18:24:28.554331	20	1	20	0	1
164	51	13	2022-12-08 18:27:51.97788	10	1	100	90	1
165	51	13	2022-12-08 18:28:58.740369	10	1	20	10	1
166	51	13	2022-12-08 18:29:45.350389	10	1	20	10	1
168	51	13	2022-12-09 05:37:55.567539	7	6	10	3	1
170	51	13	2022-12-09 05:41:16.239765	10	1	10	0	1
171	51	13	2022-12-09 12:09:37.515485	105	6	200	95	1
172	49	11	2022-12-09 15:08:43.235641	1500	1	2000	500	1
173	49	11	2022-12-09 15:10:24.787385	1097.25	11	1100	2.75	1
174	49	11	2022-12-09 15:15:28.163279	60	1	100	40	1
175	49	11	2022-12-10 04:03:05.545267	71.25	11	100	28.75	1
176	51	13	2022-12-12 08:15:19.736864	84	6	100	16	1
177	49	11	2022-12-12 16:34:40.30854	120	1	120	0	1
178	49	11	2022-12-13 00:03:28.857959	156.75	11	160	3.25	1
179	49	11	2022-12-13 00:14:44.520155	60	1	100	40	1
180	49	11	2022-12-14 01:17:41.547916	90	1	100	10	1
262	50	12	2022-12-13 13:17:34	70	1	123	53	1
261	50	12	2022-12-12 13:17:34	280	1	280	0	1
181	50	12	2022-10-14 13:03:20	50	1	50	0	1
182	50	12	2022-10-15 13:03:44	280	1	300	20	1
260	50	12	2022-12-11 13:17:26	80	1	123	43	1
183	50	12	2022-10-16 13:03:57	140	1	140	0	1
263	50	12	2022-12-10 13:17:47	200	1	200	0	1
184	50	12	2022-10-16 13:04:11	100	1	100	0	1
259	50	12	2022-12-09 13:17:23	300	1	300	0	1
185	50	12	2022-10-16 13:05:26	60	1	60	0	1
258	50	12	2022-12-08 13:17:18	80	1	123	43	1
186	50	12	2022-10-17 13:05:38	200	1	200	0	1
257	50	12	2022-12-07 13:17:13	100	1	100	0	1
187	50	12	2022-10-18 13:05:43	90	1	100	10	1
256	50	12	2022-12-06 13:17:09	60	1	123	63	1
188	50	12	2022-10-18 13:05:50	80	1	80	0	1
255	50	12	2022-12-05 13:17:03	60	1	123	63	1
189	50	12	2022-10-19 13:06:05	40	1	50	10	1
254	50	12	2022-12-04 13:16:45	120	1	120	0	1
190	50	12	2022-10-20 13:06:12	120	1	120	0	1
252	50	12	2022-12-03 13:15:57	150	1	150	0	1
191	50	12	2022-10-20 13:06:21	30	1	122	92	1
251	50	12	2022-12-02 13:15:49	50	1	123	73	1
192	50	12	2022-10-21 13:06:30	200	1	200	0	1
193	50	12	2022-10-22 13:06:33	40	1	43	3	1
248	50	12	2022-12-01 13:15:27	80	1	123	43	1
194	50	12	2022-10-22 13:06:42	50	1	50	0	1
195	50	12	2022-10-23 13:06:45	20	1	24	4	1
250	50	12	2022-11-30 13:15:47	200	1	200	0	1
196	50	12	2022-10-26 13:06:57	30	1	36	6	1
249	50	12	2022-11-29 13:15:38	120	1	132	12	1
247	50	12	2022-11-28 13:15:19	40	1	123	83	1
197	50	12	2022-10-27 13:07:07	400	1	400	0	1
198	50	12	2022-10-27 13:07:19	150	1	200	50	1
246	50	12	2022-11-27 13:15:12	30	1	123	93	1
199	50	12	2022-10-27 13:07:33	150	1	150	0	1
200	50	12	2022-10-28 13:07:33	100	1	123	23	1
253	50	12	2022-11-26 13:16:08	210	1	210	0	1
201	50	12	2022-10-29 13:07:48	90	1	111	21	1
243	50	12	2022-11-25 13:14:50	150	1	150	0	1
244	50	12	2022-11-24 13:14:51	100	1	122	22	1
202	50	12	2022-10-30 13:07:48	400	1	400	0	1
241	50	12	2022-11-23 13:14:27	500	1	500	0	1
203	50	12	2022-10-30 13:08:01	40	1	50	10	1
245	50	12	2022-11-22 13:15:01	80	1	111	31	1
204	50	12	2022-11-01 13:08:01	150	1	150	0	1
205	50	12	2022-11-01 13:08:14	160	1	190	30	1
237	50	12	2022-11-21 13:14:00	250	1	250	0	1
206	50	12	2022-11-01 13:08:14	210	1	210	0	1
235	50	12	2022-11-20 13:13:45	160	1	175	15	1
207	50	12	2022-11-02 13:08:23	10	1	23	13	1
208	50	12	2022-11-03 13:08:28	300	1	300	0	1
209	50	12	2022-11-03 13:08:38	200	1	230	30	1
240	50	12	2022-11-19 13:14:13	70	1	555	485	1
210	50	12	2022-11-04 13:08:45	40	1	40	0	1
211	50	12	2022-11-04 13:09:00	60	1	65	5	1
236	50	12	2022-11-18 13:13:54	60	1	123	63	1
212	50	12	2022-11-04 13:09:12	250	1	500	250	1
233	50	12	2022-11-17 13:13:17	70	1	122	52	1
238	50	12	2022-11-16 13:14:02	90	1	111	21	1
213	50	12	2022-11-05 13:09:21	120	1	123	3	1
232	50	12	2022-11-15 13:13:10	50	1	111	61	1
239	50	12	2022-11-14 13:14:10	100	1	100	0	1
214	50	12	2022-11-06 13:09:34	120	1	123	3	1
215	50	12	2022-11-06 13:09:47	120	1	130	10	1
227	50	12	2022-11-13 13:12:11	50	1	60	10	1
216	50	12	2022-11-06 13:10:51	140	1	150	10	1
226	50	12	2022-11-12 13:12:03	100	1	200	100	1
217	50	12	2022-11-06 13:11:17	160	1	160	0	1
228	50	12	2022-11-11 13:12:15	300	1	300	0	1
218	50	12	2022-11-06 13:11:18	70	1	80	10	1
230	50	12	2022-11-10 13:12:31	60	1	70	10	1
219	50	12	2022-11-07 13:11:26	50	1	50	0	1
220	50	12	2022-11-07 13:11:27	60	1	70	10	1
222	50	12	2022-11-09 13:11:38	30	1	40	10	1
221	50	12	2022-11-09 13:11:36	240	1	240	0	1
223	50	12	2022-11-09 13:11:45	100	1	100	0	1
224	50	12	2022-11-10 13:11:49	70	1	80	10	1
225	50	12	2022-11-10 13:12:01	320	1	320	0	1
229	50	12	2022-11-10 13:12:20	80	1	100	20	1
231	50	12	2022-11-11 13:12:31	180	1	180	0	1
234	50	12	2022-11-11 13:13:26	30	1	123	93	1
242	50	12	2022-11-11 13:14:40	200	1	200	0	1
264	51	13	2022-12-14 21:38:58.997504	71	1	100	29	1
265	51	13	2022-12-14 21:48:41.022601	41	1	100	59	1
266	51	13	2022-12-14 21:52:04.886908	11	1	90	79	1
267	51	13	2022-12-14 21:54:36.555375	30	1	100	70	1
268	51	13	2022-12-14 21:57:53.436121	41	1	100	59	1
269	51	13	2022-12-14 22:08:57.383931	43	1	100	57	1
270	51	13	2022-12-14 22:17:37.418458	21	1	900	879	1
271	51	13	2022-12-14 22:19:16.847971	55	1	200	145	1
272	51	13	2022-12-14 22:23:52.418826	153	1	200	47	1
273	51	13	2022-12-14 22:26:36.796009	121	1	200	79	1
274	50	12	2022-12-15 02:13:23.407281	50	1	50	0	1
275	50	12	2022-12-15 02:18:36.683374	90	1	90	0	1
276	50	12	2022-12-15 02:25:44.238408	50	1	56	6	1
277	50	12	2022-12-15 03:01:44.471741	190	1	200	10	1
278	50	12	2022-12-15 03:13:10.461321	150	1	200	50	1
279	50	12	2022-12-15 03:18:47.483904	50	1	50	0	1
280	51	13	2022-12-15 03:38:47.448265	44.1	6	100	55.9	1
281	51	13	2022-12-15 05:55:17.502847	30.8	6	100	69.2	1
282	51	13	2022-12-15 05:58:29.532052	33	1	100	67	1
283	50	12	2022-12-15 06:01:32.995406	48	14	100	52	1
284	50	12	2022-12-15 06:12:09.455064	150	1	200	50	1
285	50	12	2022-12-15 06:56:34.675446	152	14	200	48	1
286	51	13	2023-01-08 12:19:21.45412	54	15	100	46	1
287	50	12	2023-01-09 19:53:49.230364	10	1	120	110	1
288	49	11	2023-02-10 16:12:28.733283	75	1	100	25	1
\.


                                                                                3622.dat                                                                                            0000600 0004000 0002000 00000000252 14373217513 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2769	iG34V33AxzyzP0f8AAAD	1	2022-11-09 18:35:46.821966
4566	DVbSLK1rcZPqY_6sAAFo	28	2022-12-15 07:28:06.169051
4568	xq8s5qPQ99CbEqhrAAAR	22	2022-12-15 07:30:01.7632
\.


                                                                                                                                                                                                                                                                                                                                                      3624.dat                                                                                            0000600 0004000 0002000 00000002121 14373217513 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        6	Medicinal Bucket	09777007599	frandiang@gmail.com	#20 Datu Bago St. Davao City.	13
7	Meds PH	09163123029	Medsph@gmail.com	Davao City	10
8	Meds PH	09123456789	medsph@gmail.com	JP Laurel St. Davao City	13
9	Medicinal Bucket	09123123029	Medicinalbucket@gmail.com	Davao City	10
10	Hope Hill	09777000791	hopeful@yahoo.com	Diversion Road, Maa Davao City	13
12	Precision Healthcare Group	09122039706	PHG@gmail.com	Davao City	10
13	Precision Healthcare Group	09123456789	PHG@yahoo.com	Santa Maria Davao City	13
14	Advanced Integrated Medical	09777007599	AIM@gmail.com	Bankerohan Davao City	13
15	 Hope hill	09123029851	Hopehill@gmail.com	Davao City	10
16	Hope Hill	09777007599	HH@gmail.com	Bankerohan Davao City	12
17	Meds PH	09777007599	MedsPH@gmail.com	Maa Davao City	11
11	Advanced Integrated Medical	091230262029	customer.service@aimed.com	Davao City	10
18	Doreen Pandi	091111111111	pandi@gmail.com	Calinan	11
19	Rigel	09999999	Rigel@gmail.com	Maa	11
20	Dummy	 0909	dummy@gmail	Davao	13
21	dor	09163123029	sdfsdf@yahoo.com	Davao city	11
22	UIC Pharama	090909	uicuic@edu.ph	davao city	13
23	Sample				12
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                               3626.dat                                                                                            0000600 0004000 0002000 00000002057 14373217513 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	4	2022-10-04 06:19:52.19516	12:00:AM
2	5	2022-10-06 00:03:37.513389	11:56:PM
3	6	2022-10-06 00:53:14.521524	04:00:AM
4	7	2022-10-13 23:19:36.233647	01:00:am
5	8	2022-10-13 23:20:40.336831	01:00:am
6	9	2022-11-12 07:54:11.793426	12:00:AM
7	10	2022-12-14 03:25:43.730887	07:00:PM
8	10	2022-12-14 03:25:43.739497	12:00:PM
9	19	2022-12-14 03:28:10.193182	12:00:PM
10	19	2022-12-14 03:28:10.198519	01:00:PM
11	20	2022-12-14 06:58:24.840745	03:00:PM
12	21	2022-12-14 07:03:52.662976	03:05:PM
13	22	2022-12-14 07:21:11.466325	03:22:PM
14	23	2022-12-14 07:22:51.922769	03:26:PM
15	24	2022-12-14 10:10:27.049732	01:00:am
16	25	2022-12-14 23:10:36.024234	12:00:AM
17	1	2022-12-15 01:03:34.672841	10:55:AM
18	2	2022-12-15 01:42:02.912874	10:00:AM
19	3	2022-12-15 01:48:36.375694	09:49:AM
20	4	2022-12-15 01:53:11.486554	09:53:AM
21	5	2022-12-15 02:07:46.561586	10:09:PM
22	6	2022-12-15 02:14:16.377996	10:15:AM
23	8	2022-12-15 03:59:54.094731	12:07:AM
24	8	2022-12-15 03:59:54.114008	12:00:AM
25	9	2022-12-15 06:14:04.610353	12:00:AM
26	9	2022-12-15 06:14:04.628139	07:00:PM
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 3628.dat                                                                                            0000600 0004000 0002000 00000566213 14373217513 0014277 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE2NjAzMzk4NTIsImV4cCI6MTY2MDM0MzQ1Mn0.SYOINBksf31etx9bnTks-81rRFOtN7mP5jihKPG0qgU	2022-08-13 05:30:52.041852	2022-08-13 05:30:52.04
2	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE2NjAzNDA2NDgsImV4cCI6MTY2MDk0NTQ0OH0.MX0B3y94qguN8MYMbUMJytJMnErHAdKg-ScnIBNAAfM	2022-08-13 05:44:08.928429	2022-08-19 21:44:08
3	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE2NjAzNDA3NzksImV4cCI6MTY2MDk0NTU3OX0.2QTSLSSTkCp1VE01klz0Z4umYZzlX4GA5yKfdKKjS-M	2022-08-13 05:46:19.256239	2022-08-19 21:46:19
4	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE2NjAzNDA4MTcsImV4cCI6MTY2MjkzMjgxN30.AOaCoGbW2OkYkklkbyQv7JsA-OOhWU7EhRgAHm2XD-k	2022-08-13 05:46:57.522058	2022-09-11 21:46:57
5	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE2NjAzNDEwNTUsImV4cCI6MTY2MjkzMzA1NX0.cCDZErwk37cnlS3AwJ_CmY39dIHourlI0p-UuJwfims	2022-08-13 05:50:55.701814	2022-09-11 21:50:55
6	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE2NjA5NzYxNTMsImV4cCI6MTY2MzU2ODE1M30.O9uO79_QXgQMHLyeAK75yiflte5WPeBWGdMHHveL-OA	2022-08-20 14:15:53.112832	2022-09-19 06:15:53
7	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE2NjA5Nzc5NTksImV4cCI6MTY2MzU2OTk1OX0.-b8qQ9Bv8pIqPt0aUi_W6FYzCRcNpEW-V0CDOXt642E	2022-08-20 14:45:59.476943	2022-09-19 06:45:59
8	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE2NjA5Nzk1MDAsImV4cCI6MTY2MzU3MTUwMH0.8wz-23iPF4E8o53bacrT7dTxDqXoRliinZzpp_ICBCg	2022-08-20 15:11:40.583054	2022-09-19 07:11:40
9	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE2NjA5ODEzMTYsImV4cCI6MTY2MzU3MzMxNn0.vAUeSo4qwzjGAyltA8rX3lQdV5uSQ99TF0wTbV2nSp0	2022-08-20 15:41:56.364736	2022-09-19 07:41:56
10	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo0NCwiaWF0IjoxNjYwOTgxNDQzLCJleHAiOjE2NjM1NzM0NDN9.GIQ7eTz5KDWiLKSwLMQD7NjNRvL8YJ_uJycCG7D0LRU	2022-08-20 15:44:03.634453	2022-09-19 07:44:03
12	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTIyNDc1MCwiZXhwIjoxNjYzODE2NzUwfQ.FlJ9ZVs7B0JXBjHMC7kSQTWS0gPcbwv-5tB5klPngKU	2022-08-23 11:19:10.296932	2022-09-22 03:19:10
13	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTIyNDc1MiwiZXhwIjoxNjYzODE2NzUyfQ.pMv6drvnjwlhJAC5u8PqxvjZZIy5-OL0OPR3TyF5fvY	2022-08-23 11:19:12.820099	2022-09-22 03:19:12
14	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTIyNTA2OSwiZXhwIjoxNjYzODE3MDY5fQ.IjgJz-2VjqrBgO_iUVzGZctvmCYatYMsb3w3EyP6dC4	2022-08-23 11:24:29.040058	2022-09-22 03:24:29
15	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTIyNTEzMywiZXhwIjoxNjYzODE3MTMzfQ.QAWgzUtHg_wIfUYJ0SbUjRuJbMcYftjXZzoTT7ev9Io	2022-08-23 11:25:33.682426	2022-09-22 03:25:33
16	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTIyNTY2MSwiZXhwIjoxNjYzODE3NjYxfQ.9J016IQagUg0FqvC4hQFbEtAWDgI2mzPnRugE7SoFO8	2022-08-23 11:34:21.704534	2022-09-22 03:34:21
17	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTIyNTY4NSwiZXhwIjoxNjYzODE3Njg1fQ.Xl5slNmfVlEJv5gG7UqABoHLFbL_5Bo4BU8HFKH0QXs	2022-08-23 11:34:45.894807	2022-09-22 03:34:45
18	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTIyNjAyNiwiZXhwIjoxNjYzODE4MDI2fQ.rxxEuI_qV1mOAGzLf-_z5BHsy36OJXKLvgf42tAzNm0	2022-08-23 11:40:26.654387	2022-09-22 03:40:26
19	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTIyNjA0NywiZXhwIjoxNjYzODE4MDQ3fQ.cEDBNjv-4qEXJD3w3pf4SWqIiVfnUz0o_X6af3tW_2g	2022-08-23 11:40:47.211651	2022-09-22 03:40:47
20	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTIyNjA2NiwiZXhwIjoxNjYzODE4MDY2fQ.Ot6TGcxKmspPLzyndCh5KGXeL8C4iDVKUaMfbgnkPi4	2022-08-23 11:41:06.140173	2022-09-22 03:41:06
21	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTIyNjI1NywiZXhwIjoxNjYzODE4MjU3fQ.AWN7hrT5zCoNsKgGn8TTkBCn5IurK01TzLQXONCwqWM	2022-08-23 11:44:17.41437	2022-09-22 03:44:17
22	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTI0NTQ5MywiZXhwIjoxNjYzODM3NDkzfQ.pyLPMtITRQTQSek3_kjrDbO-D09HTniDJZr9Ga6dT_k	2022-08-23 17:04:53.317244	2022-09-22 09:04:53
23	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTI1MzM1NiwiZXhwIjoxNjYzODQ1MzU2fQ.Q3jLqUvApNgcfi1dXKdDoRlvNdI2UCjGsVJqPZCSk-s	2022-08-23 19:15:56.445223	2022-09-22 11:15:56
24	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTI1MzM4MCwiZXhwIjoxNjYzODQ1MzgwfQ.h11Tp6o8LrhIofFXufpRMAvcRcdNG1HBdQ6_LaMrTmU	2022-08-23 19:16:20.647849	2022-09-22 11:16:20
25	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTI5NTE4MiwiZXhwIjoxNjYzODg3MTgyfQ.7QwxuPPn3nWUxnxw5QxtBssuG1Ta3mWpQKofAfrVin0	2022-08-24 06:53:02.674903	2022-09-22 22:53:02
26	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTI5OTYwOSwiZXhwIjoxNjYzODkxNjA5fQ.lEFgTJgX1bkljeYTovJqOGPd-M2pWhAd3pKWCgk0574	2022-08-24 08:06:49.937328	2022-09-23 00:06:49
27	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTMwNDEyNCwiZXhwIjoxNjYzODk2MTI0fQ.MEnA7sOVNsOyRJ6EzqYqwdkxosB_M9MVOoevu0vVe5M	2022-08-24 09:22:04.085156	2022-09-23 01:22:04
28	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTMxMTMzNSwiZXhwIjoxNjYzOTAzMzM1fQ.qgpaseDSEoa8hjYu8nxhtuNA4Cj8H01N4yem_vaUNNs	2022-08-24 11:22:15.876302	2022-09-23 03:22:15
29	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTMxMTUzMywiZXhwIjoxNjYzOTAzNTMzfQ.Q2ahJFXVnztPadA8WjRFJQSwYhVONWSWoz5soQY4OHk	2022-08-24 11:25:33.547435	2022-09-23 03:25:33
30	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTMxMTUzNywiZXhwIjoxNjYzOTAzNTM3fQ._3oiwY_50xlMJbNauJorZNWRXDgKSV8sbzUyG9AjroU	2022-08-24 11:25:37.273894	2022-09-23 03:25:37
31	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTMxMTU0NiwiZXhwIjoxNjYzOTAzNTQ2fQ.Tlh9A3e2UJ6i4SU4bAZJVqIjDG5tO55GtUMPxO9hGzc	2022-08-24 11:25:46.94208	2022-09-23 03:25:46
32	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTMxMTU0NywiZXhwIjoxNjYzOTAzNTQ3fQ.-7gLvfBUaaJeGrnu1-OmUcTjW7CT2XEg-Bqfb5c-uwk	2022-08-24 11:25:47.814043	2022-09-23 03:25:47
33	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTMxMTU0OSwiZXhwIjoxNjYzOTAzNTQ5fQ.MPzMZ_-Qo_OpC-w-18S5boKfF-tgRb6eiZD47v740to	2022-08-24 11:25:49.558637	2022-09-23 03:25:49
34	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTMxMTc3MiwiZXhwIjoxNjYzOTAzNzcyfQ.rf3048-b7lijxyoL8VQE4Y69Z20pBC8RWlBPc3F7-EU	2022-08-24 11:29:32.762989	2022-09-23 03:29:32
35	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTMxMTc4OSwiZXhwIjoxNjYzOTAzNzg5fQ.1SoGYVKiu0m-ggEljTLBEUBlU1U4fKhChCoRmQTuEKU	2022-08-24 11:29:49.300228	2022-09-23 03:29:49
36	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTMxMTg5MSwiZXhwIjoxNjYzOTAzODkxfQ.GVR4wSmYh9pCPKbQNbNp0DzHYZs30ylklyaPwZi_uv0	2022-08-24 11:31:31.96327	2022-09-23 03:31:31
37	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTMxMjAyMiwiZXhwIjoxNjYzOTA0MDIyfQ.AvZ6hddlHqLwCGgZHCdXsUO4TRgCAKF41SJH7ePJ7wg	2022-08-24 11:33:42.296223	2022-09-23 03:33:42
38	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTMxMjAzMCwiZXhwIjoxNjYzOTA0MDMwfQ.lDOmMgoSMkJAj1sdmTDuaJzvo0FyNpnteNnwMPXQ8hM	2022-08-24 11:33:50.402651	2022-09-23 03:33:50
39	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTMxMjA0MCwiZXhwIjoxNjYzOTA0MDQwfQ.9bokKWXJVOvfUkfl6HVQul-pAQiGprmFT2SVUQbJxdk	2022-08-24 11:34:00.397451	2022-09-23 03:34:00
40	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTMxMjA0MSwiZXhwIjoxNjYzOTA0MDQxfQ.e4eVBJMzAJp2Vjqwzt_ZuimFHHKN7u06hv7jfOGD5sw	2022-08-24 11:34:01.800619	2022-09-23 03:34:01
41	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTMxMjA3OCwiZXhwIjoxNjYzOTA0MDc4fQ.2uooJLVqrpGrBFA8OGvCC3PIvZmymvmJvpv7fNPEqcM	2022-08-24 11:34:38.701575	2022-09-23 03:34:38
42	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTMxMjIwNCwiZXhwIjoxNjYzOTA0MjA0fQ.uke8BdMpC9IED22vSpjVmnjkUmRo_KAYlDa02UDjSSc	2022-08-24 11:36:44.314276	2022-09-23 03:36:44
125	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MjE1ODgyNSwiZXhwIjoxNjY0NzUwODI1fQ.88RR0uMgZcXaqUGh7rIwBP86_p0uxy0nKm8fQ89LJa4	2022-09-03 06:47:05.021875	2022-10-02 22:47:05
43	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTMxMjQ1NiwiZXhwIjoxNjYzOTA0NDU2fQ.wI9__q7ZQ2aRYGbYwPoMMyFCm67XPFzttQKTPlQi70M	2022-08-24 11:40:56.860462	2022-09-23 03:40:56
44	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTMxMjQ2NSwiZXhwIjoxNjYzOTA0NDY1fQ._tWDUgEgk2hunTfrjw9-e8sNIFrRKWjlZp4oFlSmV1g	2022-08-24 11:41:05.216069	2022-09-23 03:41:05
45	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTMxMjU3NSwiZXhwIjoxNjYzOTA0NTc1fQ.Zrp2q6p-Yb7E32DsA2vM_4EaYKL28h3pQHc4QowAcAo	2022-08-24 11:42:55.398945	2022-09-23 03:42:55
46	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTMxMjg2NCwiZXhwIjoxNjYzOTA0ODY0fQ._Gs7-e7rDkupfooQrkkgRxDcpth1eLuktAI-qtqALn8	2022-08-24 11:47:44.659141	2022-09-23 03:47:44
47	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTMyODY2MCwiZXhwIjoxNjYzOTIwNjYwfQ.U1ROq6FtnYs7Vzp0J4eIREMTLsYfkUEBZmNkIKq6ZcM	2022-08-24 16:11:00.4022	2022-09-23 08:11:00
48	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTMyODc0OCwiZXhwIjoxNjYzOTIwNzQ4fQ.r-26u_6_I0cNLF2hbRBjCJTlzsHWjLUCbthPfep6PiI	2022-08-24 16:12:28.904049	2022-09-23 08:12:28
49	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTMyODk1MCwiZXhwIjoxNjYzOTIwOTUwfQ.VwqkwQWzpMs3GVdlzBw2djFdDAEEWXkCBnFi6BYlWhw	2022-08-24 16:15:50.974882	2022-09-23 08:15:50
50	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTMyOTUyMywiZXhwIjoxNjYzOTIxNTIzfQ.6bs56hu1uJOJFm08BuwCJklGaBaQSmABYEhBHofVphU	2022-08-24 16:25:23.187243	2022-09-23 08:25:23
51	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTMyOTcwOSwiZXhwIjoxNjYzOTIxNzA5fQ.4MNVE7vhenXWNbQIqz8Axl6Yuh1AlFyGeapz1uP3YXA	2022-08-24 16:28:29.726401	2022-09-23 08:28:29
52	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTMyOTczOCwiZXhwIjoxNjYzOTIxNzM4fQ.pTATFkoNERRATrYDhhtwk49H-iJNyq9Y1aNtjXEuS2o	2022-08-24 16:28:58.183323	2022-09-23 08:28:58
53	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTMzMDc5MywiZXhwIjoxNjYzOTIyNzkzfQ.b5tT7sT3oxUrOutgMPDSJ2HGqY64v6iJw2ZSzB9wO-M	2022-08-24 16:46:33.940918	2022-09-23 08:46:33
54	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTM0MzI2NiwiZXhwIjoxNjYzOTM1MjY2fQ.GDknDMIjSeNbwweuXnsDuJXvBb25pTBOre4wiM6s7hM	2022-08-24 20:14:26.274185	2022-09-23 12:14:26
55	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTM0MzY5MywiZXhwIjoxNjYzOTM1NjkzfQ.9rLyp1GEEV1UkMYJ0B_clyKHciDlOaUEU84UuOBPp5I	2022-08-24 20:21:33.060863	2022-09-23 12:21:33
56	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTM0Mzc4MSwiZXhwIjoxNjYzOTM1NzgxfQ.XFUYyP6nfHYyMTQoBY_KRt5iGx7A-Dc9gWa687XWpjo	2022-08-24 20:23:01.305292	2022-09-23 12:23:01
57	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTM4NDQ3MSwiZXhwIjoxNjYzOTc2NDcxfQ.bBVFTi1P0xBIi0JxWbRzmjGeosfhSI1yiLxkXc6hqFA	2022-08-25 07:41:11.966983	2022-09-23 23:41:11
58	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTM4NjU5NywiZXhwIjoxNjYzOTc4NTk3fQ.HCbSRMp8KKSuzBNQXzZCT9ajE17U7Zzh6FoVHHsNfms	2022-08-25 08:16:37.284948	2022-09-24 00:16:37
59	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTQwNzQyOCwiZXhwIjoxNjYzOTk5NDI4fQ._dukopHi8i0jSoAmP-iEv8KTha4ufVImsTQKT6li6m8	2022-08-25 14:03:48.665006	2022-09-24 06:03:48
60	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTQwNzY1MywiZXhwIjoxNjYzOTk5NjUzfQ.LJbgRaGjmaMBIj4WRsKk8AtG4k33mUSS_qOQ1ePWI3E	2022-08-25 14:07:33.5066	2022-09-24 06:07:33
61	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTQwNzk0MywiZXhwIjoxNjYzOTk5OTQzfQ.ZpVktBk8wE-5qgBrzz8-DUunpMrtPt4kW2MGdD4eKp8	2022-08-25 14:12:23.164694	2022-09-24 06:12:23
62	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTQxMDg5MSwiZXhwIjoxNjY0MDAyODkxfQ.anM7esRTj8u8J8IzX-CL0fEBN3q0SfNA8RN7-ticHXM	2022-08-25 15:01:31.904614	2022-09-24 07:01:31
63	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTQxNTAxMywiZXhwIjoxNjY0MDA3MDEzfQ.VNoGJrkIPrFiTZd5MOXjx4OKKvWQoYfI8fKgeKTvNok	2022-08-25 16:10:13.643589	2022-09-24 08:10:13
64	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTQyNDYzMywiZXhwIjoxNjY0MDE2NjMzfQ.tqj-6nH8RS3b5cAgzWzvsuBY79QS0R1dJdRtJZe_iLw	2022-08-25 18:50:33.234281	2022-09-24 10:50:33
65	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTQyNDc3MCwiZXhwIjoxNjY0MDE2NzcwfQ.CZR182HqtTJFwaZFbKZJdWsi1eYXXh33jA3hhHagVwU	2022-08-25 18:52:50.928317	2022-09-24 10:52:50
66	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTQyNjc3MCwiZXhwIjoxNjY0MDE4NzcwfQ.YAxVfsgv3a7W-KDix0ECO1PQ7-CkVzKkqa4ueA-pRVA	2022-08-25 19:26:10.718535	2022-09-24 11:26:10
67	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTQ4MTc4MCwiZXhwIjoxNjY0MDczNzgwfQ.2sqGe9OJD4ln5SOV9mPiwf7FEPEZGZgv9jWk6wiQc-k	2022-08-26 10:43:00.098409	2022-09-25 02:43:00
68	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTQ4NTc1MSwiZXhwIjoxNjY0MDc3NzUxfQ.zlTzT1uKTBwb0nT2Rxxu1PexDrSgb1WdE9XiRXJb3XM	2022-08-26 11:49:11.707903	2022-09-25 03:49:11
69	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTQ4NTk1NywiZXhwIjoxNjY0MDc3OTU3fQ.0nboim4sNOWi62lff2kV4rVmbyb8HZTZbIrHcix_t68	2022-08-26 11:52:37.722249	2022-09-25 03:52:37
70	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTQ4NjEwMiwiZXhwIjoxNjY0MDc4MTAyfQ.osW7qVCwf9fp0Zk8HLOQ-kVa-ZINCUTI4AovNxS67e0	2022-08-26 11:55:02.695443	2022-09-25 03:55:02
71	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTQ4NjI3OCwiZXhwIjoxNjY0MDc4Mjc4fQ.9jrcmId-Pl1vEw1KGoW1510l8XJs2yZhWnmm5-fWCEk	2022-08-26 11:57:58.777089	2022-09-25 03:57:58
72	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTQ5NTQxMCwiZXhwIjoxNjY0MDg3NDEwfQ.6wAQ4el51ZC904aQi0bGHCgCKFmqBBcrtUrkOD0nSls	2022-08-26 14:30:10.537181	2022-09-25 06:30:10
73	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTQ5NTgwNCwiZXhwIjoxNjY0MDg3ODA0fQ.6rvtl6aAgokV3QlKFgRnPSNeNsB4pJEHsaM6yI9CbfY	2022-08-26 14:36:44.044621	2022-09-25 06:36:44
74	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTQ5NzM4NSwiZXhwIjoxNjY0MDg5Mzg1fQ.78lhl--5m3BFucgqauXA9tTjEAm1G8MFo7ZwIkgdSWY	2022-08-26 15:03:05.967867	2022-09-25 07:03:05
75	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTQ5NzM5NCwiZXhwIjoxNjY0MDg5Mzk0fQ.oc3uVsgQiY-sCwv4DPMstfBAj4lRcZxs7c3-4NlhMFM	2022-08-26 15:03:14.764718	2022-09-25 07:03:14
76	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTQ5ODI2MywiZXhwIjoxNjY0MDkwMjYzfQ.E0euRB2pl1Qd0Sh_sw49i8ejJNJ0dGoP3V75O9FGLoI	2022-08-26 15:17:43.79041	2022-09-25 07:17:43
77	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTQ5ODI4MywiZXhwIjoxNjY0MDkwMjgzfQ.Y-hIat20qRzxwVEHmng-8Z6zVLDCK_MxZ7Kxos1uzho	2022-08-26 15:18:03.840695	2022-09-25 07:18:03
78	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTQ5OTEzMiwiZXhwIjoxNjY0MDkxMTMyfQ.50o1HKhJLVRk2s_fzZMeaYZ1tp--vfobWwvVe928-ac	2022-08-26 15:32:12.378928	2022-09-25 07:32:12
79	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTUwMDM4OCwiZXhwIjoxNjY0MDkyMzg4fQ.-u63lxGsdLRmviMOo-Rl-HNfw9YzEJ_s-C2Za5dfLU8	2022-08-26 15:53:08.79789	2022-09-25 07:53:08
80	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTUwMDU3NCwiZXhwIjoxNjY0MDkyNTc0fQ.H7czdCaFVFh2G8db4Rst4yLYkdLMpZgCg2QX_2ZKbrw	2022-08-26 15:56:14.510108	2022-09-25 07:56:14
81	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTUwMDcxNCwiZXhwIjoxNjY0MDkyNzE0fQ.8x4vW-LgZt3Y-_ylI6_Go8Kl2BGnUIE3NmCZcPEgCns	2022-08-26 15:58:34.858964	2022-09-25 07:58:34
82	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTUwMDgxNiwiZXhwIjoxNjY0MDkyODE2fQ.9iOa2ZUC3H7zpIrTeyGCpnDUVgK9LQzcI4qVBnz_uKQ	2022-08-26 16:00:16.723672	2022-09-25 08:00:16
83	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTUwMTM4MCwiZXhwIjoxNjY0MDkzMzgwfQ.jBfgMLzpfvtdxPNtfrfCfIzay3OQJoG5stpeJC_Hwjs	2022-08-26 16:09:40.800317	2022-09-25 08:09:40
84	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTUwMjQzNSwiZXhwIjoxNjY0MDk0NDM1fQ.Mg15Kg7f8rUiRVmCNriBWWr28YBLpw5jqjSTM5TYsmw	2022-08-26 16:27:15.562465	2022-09-25 08:27:15
85	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTUwMjU1OSwiZXhwIjoxNjY0MDk0NTU5fQ.HCxXE_C-aZp7P5l-YrrucFrysIX0wH85SXiUweiQNXQ	2022-08-26 16:29:19.840313	2022-09-25 08:29:19
86	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTUxNTA3OSwiZXhwIjoxNjY0MTA3MDc5fQ.55xcjkYJA1eyKoNuEtLgCC7z5Paxu_urhUWBcfO0fCE	2022-08-26 19:57:59.585712	2022-09-25 11:57:59
87	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTUxNTEzNiwiZXhwIjoxNjY0MTA3MTM2fQ.ZjDRMHiOP7J5yvjK1SorchDLHPVahNo0LPML7XhWeNQ	2022-08-26 19:58:56.962738	2022-09-25 11:58:56
88	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTUxNTI4MywiZXhwIjoxNjY0MTA3MjgzfQ.5PBwLcKo8kpbfxsAuSZPLiN-9iDHr66fCvTuVJW6yxw	2022-08-26 20:01:23.278839	2022-09-25 12:01:23
89	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDMsImlhdCI6MTY2MTUxNTI5NCwiZXhwIjoxNjY0MTA3Mjk0fQ.crNHiD0pESBr0kqubWz7Itdb3B1VULCKdvKW3gu6Zgc	2022-08-26 20:01:34.314338	2022-09-25 12:01:34
90	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTUxNTMyMiwiZXhwIjoxNjY0MTA3MzIyfQ.R9Ay4mrhCj-apr5jyQbm_oX9C213vD2o1gNA8mtlbJU	2022-08-26 20:02:02.616159	2022-09-25 12:02:02
91	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTUxNTkxNSwiZXhwIjoxNjY0MTA3OTE1fQ.Ugh6QTYcgAnf4W9AKLouAHG7jTANn0u8lO2exmJ0xQQ	2022-08-26 20:11:55.594828	2022-09-25 12:11:55
92	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTUyMjA4OSwiZXhwIjoxNjY0MTE0MDg5fQ.x4aq4iduypWUAO3y_nwAds0XngcyCeKJTv5Irc3Rj2U	2022-08-26 21:54:49.742414	2022-09-25 13:54:49
93	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTUyMzk1MywiZXhwIjoxNjY0MTE1OTUzfQ.QGoFK267rs9Pem2gvQoVxUEMYM_UN3RDZHZvBRbSxvg	2022-08-26 22:25:53.720516	2022-09-25 14:25:53
94	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTUyNTAxNCwiZXhwIjoxNjY0MTE3MDE0fQ.-D9qDey63Yi94GpbnmTbYWPiwqC95PFsanA-2AbFZmw	2022-08-26 22:43:34.806069	2022-09-25 14:43:34
95	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTUyNjgyMSwiZXhwIjoxNjY0MTE4ODIxfQ.osrNQquh3Qx9wBmxrjh7XyCxJQdbnGWf_QTHZI1zcy0	2022-08-26 23:13:41.621377	2022-09-25 15:13:41
96	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTUyOTg1OCwiZXhwIjoxNjY0MTIxODU4fQ.A-urWdNOr-UWdBEFGNMGikaaxcKVeG3fqz33Y9mQrAA	2022-08-27 00:04:18.007877	2022-09-25 16:04:18
97	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTUzMTIwNSwiZXhwIjoxNjY0MTIzMjA1fQ.9ZuzLQGc0Xu0EI_IdwXHV99w0Mh7fFnpmjYTdKx78as	2022-08-27 00:26:45.70591	2022-09-25 16:26:45
98	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTUyODU3MywiZXhwIjoxNjY0MTIwNTczfQ.bsMFqK8OhGPoH7i-ERnqJFdq7DQup13DX2sKMkaFaOk	2022-08-26 23:42:53.000725	2022-09-25 15:42:53
99	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTUyOTExNywiZXhwIjoxNjY0MTIxMTE3fQ.HdeLvjdR-5COIPxDnttw3DeCnKT4a74C0cedapTGUjw	2022-08-26 23:51:57.357365	2022-09-25 15:51:57
100	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTUzOTE4NCwiZXhwIjoxNjY0MTMxMTg0fQ.XvgJAodM2Lo-cQkfMntcM_sSkE-s_4hGYp2BscSWMdg	2022-08-27 02:39:44.332372	2022-09-25 18:39:44
101	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTY5MTk4MCwiZXhwIjoxNjY0MjgzOTgwfQ.tutrtnzmbb9SDWLa2vdekeAdMmwR_7hC7yUNWNJC4VM	2022-08-28 21:06:20.17834	2022-09-27 13:06:20
102	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTY5NjE4NywiZXhwIjoxNjY0Mjg4MTg3fQ.Hl4jxmUolnB__zca0x8Q1zcUuXMI7Clw90TdIsEJoIY	2022-08-28 22:16:27.635382	2022-09-27 14:16:27
103	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTg3MDU3MSwiZXhwIjoxNjY0NDYyNTcxfQ.9bsvb68qCPKXDA0lDN4v6HkzIllYuNC4ocGkrqtdFnI	2022-08-30 22:42:51.815301	2022-09-29 14:42:51
104	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTg3NDI0MywiZXhwIjoxNjY0NDY2MjQzfQ._iT3y36VOfUYJmscOZOi8jzNBomUipFo4bnhf5ZgUGc	2022-08-30 23:44:03.602915	2022-09-29 15:44:03
105	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTkwNDM5NiwiZXhwIjoxNjY0NDk2Mzk2fQ.wHVPKudPPbCyCSEAoDs94CUVaRgI0j5ucCVD2fRVGs8	2022-08-31 08:06:36.224803	2022-09-30 00:06:36
106	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTkwODcwMSwiZXhwIjoxNjY0NTAwNzAxfQ.me393Pu05h4FV7yJ6D7Ow02W9kIZp0EuHeaqDOL3Iso	2022-08-31 09:18:21.190154	2022-09-30 01:18:21
107	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTkxMjU1OSwiZXhwIjoxNjY0NTA0NTU5fQ.CB9gIUNFFsHkJ72_7P3lbm-PJn-V7q_8Qu8Dh0Vbb_E	2022-08-31 10:22:39.356057	2022-09-30 02:22:39
108	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTkxOTQyNSwiZXhwIjoxNjY0NTExNDI1fQ.nl9bA2eZGjSZ3ED6nUmFV6azg7cI3R7PdrijEmdYEpM	2022-08-31 12:17:05.914868	2022-09-30 04:17:05
109	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTkyMzI1NSwiZXhwIjoxNjY0NTE1MjU1fQ.l7HUILAFyKxMEJv1uFVIO70aw1udttduvkei5u9dZiY	2022-08-31 13:20:55.359592	2022-09-30 05:20:55
110	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTkyMzk0MSwiZXhwIjoxNjY0NTE1OTQxfQ.Jsxb73-accGYqhz07Xg7fnx3UJQ55WR2aZHWwvDPoeU	2022-08-31 13:32:21.392774	2022-09-30 05:32:21
111	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTk0NzY3MiwiZXhwIjoxNjY0NTM5NjcyfQ.4C50aEJ79Js2ogm6LR2687tcUas_oE0g1heaUwD3IDI	2022-08-31 20:07:52.077739	2022-09-30 12:07:52
112	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTk5MDYyNSwiZXhwIjoxNjY0NTgyNjI1fQ.tki6h3M6fIhJnbb5VNRRTi0nSNCnbD36DVTnR6MDsvc	2022-09-01 08:03:45.499154	2022-10-01 00:03:45
113	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MTk5NDcxNiwiZXhwIjoxNjY0NTg2NzE2fQ.d1uCYyVtUcEt2bsGVtLy0gc7ylM6R1SHgXzDLkVdN7Y	2022-09-01 09:11:56.030236	2022-10-01 01:11:56
114	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MjAwMDkzOCwiZXhwIjoxNjY0NTkyOTM4fQ.xF0-IdeFtfuITO6ErpLPhDVqlKfLMCT0ANoaX6xZaek	2022-09-01 10:55:38.751563	2022-10-01 02:55:38
115	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MjAxNjcyNywiZXhwIjoxNjY0NjA4NzI3fQ.JVTNhrIeOqCAPJBV-D1RlUaNEBtU7sLnjmgrjICSsFY	2022-09-01 15:18:47.598972	2022-10-01 07:18:47
116	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MjAxOTg2OSwiZXhwIjoxNjY0NjExODY5fQ.BSKavAjxCebYHs3poynhnRFkPRSLdBwk_Lwpume7--4	2022-09-01 16:11:09.188828	2022-10-01 08:11:09
117	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MjAzMjMwNSwiZXhwIjoxNjY0NjI0MzA1fQ.I_OjH8zHFnuPiNOIOTXUy1ymKhLh38PZONN7yLpcIKo	2022-09-01 19:38:25.891067	2022-10-01 11:38:25
118	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MjE0MzE3MiwiZXhwIjoxNjY0NzM1MTcyfQ.iRI94gSsA5SwrbG6QKpFL1ssOzCPoi5pjOB777-6TY4	2022-09-03 02:26:12.969706	2022-10-02 18:26:12
119	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MjE0NDI2OCwiZXhwIjoxNjY0NzM2MjY4fQ.KJ77YpV16I92VdQ60pD7fEhy-77sSqCag1hxGxh03CY	2022-09-03 02:44:28.253858	2022-10-02 18:44:28
120	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MjE0NTM1MCwiZXhwIjoxNjY0NzM3MzUwfQ.rjSTO4FSm8MUKzGZ1Dt1dOQwlWuSV6IsoyAM-eRc8Cw	2022-09-03 03:02:30.689882	2022-10-02 19:02:30
121	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MjE0NjA4NSwiZXhwIjoxNjY0NzM4MDg1fQ.aXNqXAXSTiYpBRfVsRVKromfW9e5TdYdCm2sNbAmHy0	2022-09-03 03:14:45.352959	2022-10-02 19:14:45
122	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MjE0NjA4NiwiZXhwIjoxNjY0NzM4MDg2fQ.wnvKeRMsjGRt5lp8UP-yfEzVrkZwrYaA5roUvhMxkj4	2022-09-03 03:14:46.691955	2022-10-02 19:14:46
123	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MjE1NzI0NiwiZXhwIjoxNjY0NzQ5MjQ2fQ.JLV5MSvRiEgn3m8wNPWcSsBwxOgQyLDesAiVQC7-tvk	2022-09-03 06:20:46.658383	2022-10-02 22:20:46
124	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MjE1NzQ1OSwiZXhwIjoxNjY0NzQ5NDU5fQ.Yasj_XsXmFbYP2QJq08lGYf8zYl4Cd1kw5ipn67KbMA	2022-09-03 06:24:19.429088	2022-10-02 22:24:19
126	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MjI4MDgzNiwiZXhwIjoxNjY0ODcyODM2fQ.9uXdzV1WjW1EsEhZvFIMzh5RiJaOf6A1qxHOjXcBtzM	2022-09-04 16:40:36.159867	2022-10-04 08:40:36
127	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MjI5ODc0OCwiZXhwIjoxNjY0ODkwNzQ4fQ.sX6ArGsSdIQwdkT2pAQ8E3TNvCb6bf8_8PmBhEYJk78	2022-09-04 21:39:08.531135	2022-10-04 13:39:08
128	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MjMwODIxOCwiZXhwIjoxNjY0OTAwMjE4fQ.xrpGMZTy5slnW2wdZUlN_hjr4TAeGwuImW4cl8d6oe0	2022-09-05 00:16:58.036342	2022-10-04 16:16:58
129	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MjMxMzUxMiwiZXhwIjoxNjY0OTA1NTEyfQ.rGdBzkbBDxffS0MvkQSoPdUlll2aVFYHPyLU2rmSEzE	2022-09-05 01:45:12.792318	2022-10-04 17:45:12
130	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MjMxNDgxOSwiZXhwIjoxNjY0OTA2ODE5fQ.gG5BQP4Gq5nCfdixxrhQiUMiT9FLyWzjlyUC3drnTTg	2022-09-05 02:06:59.148238	2022-10-04 18:06:59
131	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MjMxNDkyOSwiZXhwIjoxNjY0OTA2OTI5fQ.eCHe2uuy_PIddg3TtILLYCPz93foMXMY6cXonxeO8hk	2022-09-05 02:08:49.125462	2022-10-04 18:08:49
132	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MjM1Mjg1NiwiZXhwIjoxNjY0OTQ0ODU2fQ.DAAdNQ6FaZzvdZ69jXy-WGde1cKsE5D_704woi2SB6s	2022-09-05 12:40:56.536427	2022-10-05 04:40:56
133	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MjM1ODk1OCwiZXhwIjoxNjY0OTUwOTU4fQ._8x5O18K30desNe4NN8TBm0xT7Kh7PTuHFWKCLqij74	2022-09-05 14:22:38.098986	2022-10-05 06:22:38
134	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MjM1OTUwMCwiZXhwIjoxNjY0OTUxNTAwfQ.13zlRPUsOaV2nRtJor6vtLtlf1hSugpFK2IdFH-PpL4	2022-09-05 14:31:40.754139	2022-10-05 06:31:40
135	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MjM3MTQyMiwiZXhwIjoxNjY0OTYzNDIyfQ.1M0jRa84LUXxFPuMD9kh6RBuLyh3Nl6pL5Z3kTExUj0	2022-09-05 17:50:22.683547	2022-10-05 09:50:22
136	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MjM3OTE1NywiZXhwIjoxNjY0OTcxMTU3fQ.KFtsSt6SXAcCI4NsnJmZOkXN1gvwO07_UafBEZdNia0	2022-09-05 19:59:17.190921	2022-10-05 11:59:17
137	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MjQwMDc2NCwiZXhwIjoxNjY0OTkyNzY0fQ.Js0VeDwClisagf1Ncqit-ih4czuNi8hu9I8yuClIz4s	2022-09-06 01:59:24.647348	2022-10-05 17:59:24
170	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MjQ3NDUyMiwiZXhwIjoxNjY1MDY2NTIyfQ._RKSedNdFIm21iEPDP3EpwtoDT9KtSjEEAPfTvzH_fo	2022-09-06 22:28:42.694078	2022-10-06 14:28:42
171	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MjUyMjg5MywiZXhwIjoxNjY1MTE0ODkzfQ.a5AQ0nflYYF5N1j9P7GiXTR1C-zxLyxWvbFN2bqpS04	2022-09-07 11:54:53.785669	2022-10-07 03:54:53
172	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MjUyOTUwNSwiZXhwIjoxNjY1MTIxNTA1fQ.9s5u161U31Go4gThcAXT8ltNSDws6zsApMOZU4SSLM8	2022-09-07 13:45:05.176309	2022-10-07 05:45:05
173	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MjYyMTQ1MSwiZXhwIjoxNjY1MjEzNDUxfQ.kf24NolvN9tLPfNGr7705c-CeleVTwmw5GF806ZWeI4	2022-09-08 15:17:31.663386	2022-10-08 07:17:31
174	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MjY4MTczMiwiZXhwIjoxNjY1MjczNzMyfQ.kQ-no3feIk8X8bkG8ZCF9dgnGjtfruLaRQE6amiQQ0A	2022-09-09 08:02:12.852223	2022-10-09 00:02:12
175	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2Mjc3OTQ2MywiZXhwIjoxNjY1MzcxNDYzfQ.UHbKqVNVuWDJrxtRY3xvwB3SIsd-yHhxBbO-GR7bEFI	2022-09-10 11:11:03.37908	2022-10-10 03:11:03
176	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2Mjc5ODEyOCwiZXhwIjoxNjY1MzkwMTI4fQ.GcGqAsOzZ7l3VF8DqxTPrPyDF6W8vx-3iCl4AhlcdHo	2022-09-10 16:22:08.954501	2022-10-10 08:22:08
177	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MjgwMTgyNSwiZXhwIjoxNjY1MzkzODI1fQ.HA0vtSaacMKX-tTZ7hJsRV0qSRPz8JoGGS4eWF-PS7w	2022-09-10 17:23:45.126056	2022-10-10 09:23:45
178	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MjgzMzU4NSwiZXhwIjoxNjY1NDI1NTg1fQ.RYIiug05nauXrw6zsKAk28tct4Z-LPPmvHVTfgxgunw	2022-09-11 02:13:05.604117	2022-10-10 18:13:05
179	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MjgzNzg5MCwiZXhwIjoxNjY1NDI5ODkwfQ.nlRLTD3SMfbCAFzgGGQIYcjmYHNjod_uBX1vVbNgIA4	2022-09-11 03:24:50.947657	2022-10-10 19:24:50
180	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2Mjg0MTUwOSwiZXhwIjoxNjY1NDMzNTA5fQ.GbCJjq6hGWxwl_PjnEaro68bdyTg-11lpPRKkYXhg7w	2022-09-11 04:25:09.358581	2022-10-10 20:25:09
181	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2Mjg2Mzk2NSwiZXhwIjoxNjY1NDU1OTY1fQ.CWQry8XzQikNPoxovKNvjR9Q_7vsxqfjYtjrYeW1Q9Y	2022-09-11 10:39:25.853544	2022-10-11 02:39:25
182	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2Mjg2Nzc3MCwiZXhwIjoxNjY1NDU5NzcwfQ.q0KugKBVTLnbXYsDIodz_RMIJsAV5QnAo-py9MeX5V8	2022-09-11 11:42:50.80563	2022-10-11 03:42:50
183	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2Mjg3NjI1MSwiZXhwIjoxNjY1NDY4MjUxfQ.CSW8rY_KqqRCRu6zXSz6DrMw8dttQn9atjv4G1Br3O8	2022-09-11 14:04:11.417829	2022-10-11 06:04:11
184	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2Mjg3OTg1OSwiZXhwIjoxNjY1NDcxODU5fQ.htCTdeTOFRHbLIMqk2ncufgatet4tW-J4e-eMR9AMcg	2022-09-11 15:04:19.931272	2022-10-11 07:04:19
185	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2Mjg4MzQ3MCwiZXhwIjoxNjY1NDc1NDcwfQ.P8DLVSCgITwNgvF9dYPkEx2IObXTgZeDX3La606ahoQ	2022-09-11 16:04:30.078746	2022-10-11 08:04:30
186	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2Mjg4ODA4OCwiZXhwIjoxNjY1NDgwMDg4fQ.mP2V-IWu_4tqXxOiz-3atpjEtSn7wZeaR3EaGqabH60	2022-09-11 17:21:28.832496	2022-10-11 09:21:28
187	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2Mjg5MTcxOSwiZXhwIjoxNjY1NDgzNzE5fQ.wdVQa-fnagQvITmmDnQxjg5GgzpfphfmJH_lnQG_sWA	2022-09-11 18:21:59.300492	2022-10-11 10:21:59
188	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MjkwNDQxOSwiZXhwIjoxNjY1NDk2NDE5fQ.VJjiX3BpmIceUgMM0hPUKJkGE7uY4P6q_oDwJqftYaU	2022-09-11 21:53:39.975022	2022-10-11 13:53:39
189	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MjkwODcxNCwiZXhwIjoxNjY1NTAwNzE0fQ.Fg11OHa5G6lDKnzgXPPAVMHwL_cS4znFodnFeh_uzHw	2022-09-11 23:05:14.371044	2022-10-11 15:05:14
190	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MjkxMzAzMSwiZXhwIjoxNjY1NTA1MDMxfQ.Ie871gu4AH1-poeNi6dodQkO7Sm5lbuCUAEcjnfCx7A	2022-09-12 00:17:11.52088	2022-10-11 16:17:11
191	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MjkxNjkyMCwiZXhwIjoxNjY1NTA4OTIwfQ.0wJ3Nq6p5XEGVk-2bOpGqh3J2kAajEvWinYokm0JVUQ	2022-09-12 01:22:00.919999	2022-10-11 17:22:00
192	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MjkyMDY3OSwiZXhwIjoxNjY1NTEyNjc5fQ.dkzaRwyYmLMLzn_NNrZ6XBxFaWYGwqtLE-0okyWUJos	2022-09-12 02:24:39.840463	2022-10-11 18:24:39
193	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MjkyNDgzMiwiZXhwIjoxNjY1NTE2ODMyfQ.Tz3PL6XBvDXgJSfTQlEU56mzRRDiMff0N-8f1oCG1gg	2022-09-12 03:33:52.931616	2022-10-11 19:33:52
194	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MjkyODUzOCwiZXhwIjoxNjY1NTIwNTM4fQ.owUjpKEJ9UyP_sl5inL-9gAnNUcejJ4W3x_rF9KkBUw	2022-09-12 04:35:38.512781	2022-10-11 20:35:38
195	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2Mjk0ODk3MywiZXhwIjoxNjY1NTQwOTczfQ.ZO6o6nl0ilOhw0DRT_RerZOTG8NecB1JQ-3SbKUaRkI	2022-09-12 10:16:13.751014	2022-10-12 02:16:13
196	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2Mjk4MjIxMCwiZXhwIjoxNjY1NTc0MjEwfQ.exwttQ-B1yJqBbyc8ZLC0PwBOkPjqDEY5Fb1fpGnkrI	2022-09-12 19:30:10.4321	2022-10-12 11:30:10
197	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2Mjk4Njg3OCwiZXhwIjoxNjY1NTc4ODc4fQ.B_-7yr3lveJ7HgfdhQOofZUJQUcNRYN7rr4FP4JvvKc	2022-09-12 20:47:58.751917	2022-10-12 12:47:58
198	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2Mjk4ODAzNSwiZXhwIjoxNjY1NTgwMDM1fQ.UIULwQrPuDeo73XbqMC5pt-k5nCG63h7Q8zOlDbKFc4	2022-09-12 21:07:15.997993	2022-10-12 13:07:15
199	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzA5NzAwOSwiZXhwIjoxNjY1Njg5MDA5fQ.WdIytcYm1mQ-MdVg86cVTTwKoZoCfs08NUrEXfGU4zk	2022-09-14 03:23:29.245584	2022-10-13 19:23:29
200	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzA5NzU2MSwiZXhwIjoxNjY1Njg5NTYxfQ.Jc7aHXCO_qn2ZxZIoZn8iwbHOn4_u7FqvxHEMNBVtCQ	2022-09-14 03:32:41.253451	2022-10-13 19:32:41
201	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzEwMzAzMCwiZXhwIjoxNjY1Njk1MDMwfQ.RRTNn1yhjoBo1WpWk5juX8_1xlPGMxNEnYt8Y5x1O_0	2022-09-14 05:03:50.753157	2022-10-13 21:03:50
202	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzEwNjA1NCwiZXhwIjoxNjY1Njk4MDU0fQ.5K0bJ2oixqKoIeWIo-9oHpwQ7HCkoB9F9F50uZsXcyQ	2022-09-14 05:54:14.138697	2022-10-13 21:54:14
203	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzExMTYzMiwiZXhwIjoxNjY1NzAzNjMyfQ.-sYVlwlMFqP3Ky9WmKW_hQCBCaULWw1gGw2OM-XSbAw	2022-09-14 07:27:12.71922	2022-10-13 23:27:12
204	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzExNjI5NCwiZXhwIjoxNjY1NzA4Mjk0fQ.oPQJLoiwrwcKWSCAB3GD-8GUJ3lJdAfS_IFYO_Ng51Y	2022-09-14 08:44:54.807312	2022-10-14 00:44:54
205	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzEzOTgwNSwiZXhwIjoxNjY1NzMxODA1fQ.2Ryphuc38bN7Ymwd5Hxi7vBxjU0vSqsWhJYSas4Qeng	2022-09-14 15:16:45.722633	2022-10-14 07:16:45
206	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzE1MDQzMCwiZXhwIjoxNjY1NzQyNDMwfQ.-i8_sWZqseSSQB2ghg3N4XeIrEP2CzaIBcMiltTGNGE	2022-09-14 18:13:50.021309	2022-10-14 10:13:50
207	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzE3MzkwMywiZXhwIjoxNjY1NzY1OTAzfQ.nwLmv69JmNWjB_xUKHh_YGiiZUEk4RTT-QwvH03BTNQ	2022-09-15 00:45:03.701609	2022-10-14 16:45:03
208	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzE4MDE4NSwiZXhwIjoxNjY1NzcyMTg1fQ.UCOVXYzpAV8etDxeEfOW_bUtV4TH883vI8YHABbFU7Q	2022-09-15 02:29:45.691163	2022-10-14 18:29:45
209	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzE4NzM1NCwiZXhwIjoxNjY1Nzc5MzU0fQ.PAhAKlDs5P1DyPVQEBpTfuC5s07jPOHFDaM2AP2yGfo	2022-09-15 04:29:14.686526	2022-10-14 20:29:14
210	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzIxNTc2NiwiZXhwIjoxNjY1ODA3NzY2fQ.tM6UBkOfedBKt4BhJRz4WPDGT3inZyw7-NBGLS1FIys	2022-09-15 12:22:46.293935	2022-10-15 04:22:46
211	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzIyNzE2NiwiZXhwIjoxNjY1ODE5MTY2fQ.0xRmu8W46E9WDYv-1NdjaEusFwk98e-PrZnkMcoPg1M	2022-09-15 15:32:46.893748	2022-10-15 07:32:46
212	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzIzMTA1MywiZXhwIjoxNjY1ODIzMDUzfQ.aUsNFVCp8eQ7FMxs2rKcH9XSXyPtYet58ZS1VmcYrNg	2022-09-15 16:37:33.410517	2022-10-15 08:37:33
213	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzIzNTM1MCwiZXhwIjoxNjY1ODI3MzUwfQ.dYopx0K2Fq7rVxBl_XaiRylDmgls84CkOWIy_7BDTcw	2022-09-15 17:49:10.428326	2022-10-15 09:49:10
214	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzMyNzEyNiwiZXhwIjoxNjY1OTE5MTI2fQ.5o3fSL8orZP33hL7HW8Z7WMR49P0toSj2vwl-sXCpRs	2022-09-16 19:18:46.630493	2022-10-16 11:18:46
215	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzMzMTAyMywiZXhwIjoxNjY1OTIzMDIzfQ.akdjBHv7aXjnVtIBbX_ynJFAUzyy4t4BEQctmd-iW3Q	2022-09-16 20:23:43.053498	2022-10-16 12:23:43
216	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzMzMzE2MSwiZXhwIjoxNjY1OTI1MTYxfQ.knDKeYgR_neYu2xcHPMAcTyAJ0_0c5gVBRxfA9T4R5Q	2022-09-16 20:59:21.280697	2022-10-16 12:59:21
217	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzM0MzM2OCwiZXhwIjoxNjY1OTM1MzY4fQ.FFulHspOdYe1cYhnIWvmOTrqbrsVjrSmkk2yCC1GQmE	2022-09-16 23:49:28.966778	2022-10-16 15:49:28
218	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzM1MzE2NSwiZXhwIjoxNjY1OTQ1MTY1fQ.MxCnWJlhqe5nF9UZlDChF5rTfodrsMkgdKFfMDB9PhY	2022-09-17 02:32:45.397007	2022-10-16 18:32:45
219	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzM2MjcxNywiZXhwIjoxNjY1OTU0NzE3fQ.ut5LuvdAIZMkO1Qmk7_r1l0OrcpOY0oR1e0--XygpXk	2022-09-17 05:11:57.307158	2022-10-16 21:11:57
220	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzM5NDM1NywiZXhwIjoxNjY1OTg2MzU3fQ.DtgcHYxonwY8qABPdN39xI1Garg_G39sQVVc-Yunoi0	2022-09-17 13:59:17.437101	2022-10-17 05:59:17
221	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzM5OTE4OCwiZXhwIjoxNjY1OTkxMTg4fQ.jK20NLE49f-PMXgyfbl_rXbH_iK8a1tL6o4VvjRWCuE	2022-09-17 15:19:48.656867	2022-10-17 07:19:48
222	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzQwMzk5MywiZXhwIjoxNjY1OTk1OTkzfQ.EUpYQ1XT5lu25oflf9rzGxxlxirgfbKQwrYWCOe3rVg	2022-09-17 16:39:53.002487	2022-10-17 08:39:53
223	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzQwNDAxNiwiZXhwIjoxNjY1OTk2MDE2fQ.TNkYrVZX2TVtNQrwRtvoOUc4zV4rStdr15cQEN7QNt4	2022-09-17 16:40:16.073348	2022-10-17 08:40:16
224	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzQwNTI3MCwiZXhwIjoxNjY1OTk3MjcwfQ.G4C3QGATjs4tM60cunBbB_j8zqRixgqykMYpK3--_JQ	2022-09-17 17:01:10.867604	2022-10-17 09:01:10
225	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzQxNDIyOSwiZXhwIjoxNjY2MDA2MjI5fQ.hC6zgu3sTGDeBMSgXB619FVlLlAqk0N0mRbuGR1b-Og	2022-09-17 19:30:29.577502	2022-10-17 11:30:29
226	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzQxODY3MCwiZXhwIjoxNjY2MDEwNjcwfQ.d1JJclWElRzIeCP_E3h_x25QDXrawg-JyFZ_vJbNCB8	2022-09-17 20:44:30.096395	2022-10-17 12:44:30
227	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzQyMzIwOSwiZXhwIjoxNjY2MDE1MjA5fQ.6MqCWaK_B5MGkLdSif5xGQNuphvJ5PLbaMhNYdnIf_E	2022-09-17 22:00:09.748502	2022-10-17 14:00:09
228	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzQyNjk4OCwiZXhwIjoxNjY2MDE4OTg4fQ.SACXYUdOyf1Jpz5QIEzXhqsvLRAmWqOr54Q3XAB1E_g	2022-09-17 23:03:08.701452	2022-10-17 15:03:08
229	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzQzMDc4MCwiZXhwIjoxNjY2MDIyNzgwfQ.9Ltm27koRi2ulcoLkZUxKhH77nqFqyB7sWwTO-0-_IY	2022-09-18 00:06:20.079918	2022-10-17 16:06:20
230	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzQ5ODkyMCwiZXhwIjoxNjY2MDkwOTIwfQ.1zPDvkmcc-9WRYuOS3uWdStixG7CpVwSQ87naV8NjPU	2022-09-18 19:02:00.19118	2022-10-18 11:02:00
231	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzUwMzM3OCwiZXhwIjoxNjY2MDk1Mzc4fQ.QiktgNfOA7CHCKh_P_EQFfLSdZ6Lsn1G2h-1v9N64ZE	2022-09-18 20:16:18.139759	2022-10-18 12:16:18
232	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzUwNzAwNSwiZXhwIjoxNjY2MDk5MDA1fQ.tNSmkv_ByjpLqt-SkVz7mMUbwcf5TOir2bvmyVteQYE	2022-09-18 21:16:45.489102	2022-10-18 13:16:45
233	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzUxMjYxMCwiZXhwIjoxNjY2MTA0NjEwfQ.Asg0wkVRhq2csYk0jVoBEyeQ3wBFtZMciLc9_K7DK4k	2022-09-18 22:50:10.393302	2022-10-18 14:50:10
234	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzUxNjg5NiwiZXhwIjoxNjY2MTA4ODk2fQ.1qm-hsC_HXG4tkIHiLhPfLUz0tn6AquZ7apq5AQ9ImQ	2022-09-19 00:01:36.062787	2022-10-18 16:01:36
235	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzUyMjg5MCwiZXhwIjoxNjY2MTE0ODkwfQ.fySQs4fcK4G9M0rplOAEpapx4TjeYS0dhZro54mS5zI	2022-09-19 01:41:30.891684	2022-10-18 17:41:30
236	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzUyNzYwMywiZXhwIjoxNjY2MTE5NjAzfQ.hiL6wcDybdL19hhecHZ3GMfH-QbKY4XkWNMEcx4imJ0	2022-09-19 03:00:03.250508	2022-10-18 19:00:03
237	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzUzMTMxMCwiZXhwIjoxNjY2MTIzMzEwfQ.47uT6UumbhxZVC_hFMA7nJQNZtIDOS6Ta08ZmOmgors	2022-09-19 04:01:50.724635	2022-10-18 20:01:50
238	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzUzNTYxNywiZXhwIjoxNjY2MTI3NjE3fQ.ZcFC0ZVxchkgWsaDxPP7r4cHG5TISi79AhpoRBLsQXE	2022-09-19 05:13:37.610378	2022-10-18 21:13:37
239	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzU2NDYwOSwiZXhwIjoxNjY2MTU2NjA5fQ.Rhltd_nv2meHa2od7BS3oITWYFD1u3CaxX-EmyT_PVw	2022-09-19 13:16:49.948024	2022-10-19 05:16:49
240	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzU3NjgxMCwiZXhwIjoxNjY2MTY4ODEwfQ.a1_9aAoMywkeYZ7gUg3aDjc7-PxVmVMpVNYuUOU1A4Y	2022-09-19 16:40:10.084916	2022-10-19 08:40:10
241	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzU4MDUxMCwiZXhwIjoxNjY2MTcyNTEwfQ._ds5R-xRSdQVxM-oFldhZEG2ga6BS7F9oRsUxquouP0	2022-09-19 17:41:50.891955	2022-10-19 09:41:50
242	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzYwMzc0NSwiZXhwIjoxNjY2MTk1NzQ1fQ.ovtmvndULuWZyh2tb-2vAJsFwQyyvzKPtB-NjQzRaUc	2022-09-20 00:09:05.257798	2022-10-19 16:09:05
243	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzYxMDU2NiwiZXhwIjoxNjY2MjAyNTY2fQ.zuloPyJbxhqV0uLylQYAnICj8GcmgYkpJurut2wlrM0	2022-09-20 02:02:46.050297	2022-10-19 18:02:46
244	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzY2Mzg2NywiZXhwIjoxNjY2MjU1ODY3fQ.MrZiNOVFT2VrECATVgXABEKXS5Y3b5pdVB10AScBRrM	2022-09-20 16:51:07.02885	2022-10-20 08:51:07
245	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzY2NTA1MiwiZXhwIjoxNjY2MjU3MDUyfQ.oaI2odFu_Zp3Nb8aWg686Pmu15SQPmMu141SBvMuIn0	2022-09-20 17:10:52.168675	2022-10-20 09:10:52
246	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzY3NjM1NiwiZXhwIjoxNjY2MjY4MzU2fQ.wHrpzcJciKvdyaUKYhrCkf44L5LQ7Rjx4mms_1xqZRc	2022-09-20 20:19:16.590607	2022-10-20 12:19:16
247	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzY3OTgxNiwiZXhwIjoxNjY2MjcxODE2fQ.bkPKBhk-9meFOyLSe91rGglkOl7y9px-CTNls7YFVTk	2022-09-20 21:16:56.303903	2022-10-20 13:16:56
248	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzY4MTc5MCwiZXhwIjoxNjY2MjczNzkwfQ.V2xLwOfveR03GDBjldeM5PIm1lQdNhaxhb6_U2Y_qZs	2022-09-20 21:49:50.588501	2022-10-20 13:49:50
249	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzY5NTY4OSwiZXhwIjoxNjY2Mjg3Njg5fQ.4Bt8bVO3j8eYR66KNn4lcWsNNMMETebm6-9-2SqUZ-M	2022-09-21 01:41:29.894043	2022-10-20 17:41:29
250	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2MzcwNzEwOSwiZXhwIjoxNjY2Mjk5MTA5fQ.GoCfNFLbQie6s598uWRSob85DVVNu7tbyWZmAywOviM	2022-09-21 04:51:49.096731	2022-10-20 20:51:49
251	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2Mzc4MDg1NCwiZXhwIjoxNjY2MzcyODU0fQ.NxEntpJplecs-vrUptFWvY69T0FCfdPhXDgAQwXwVmw	2022-09-22 01:20:54.43648	2022-10-21 17:20:54
252	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDEyMDA3NywiZXhwIjoxNjY2NzEyMDc3fQ.qmkgRnSmEp-quo7bFgjPfjJfNWsrqkQXrVNVN2sJEVU	2022-09-25 23:34:37.226051	2022-10-25 15:34:37
253	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDEyODE5OSwiZXhwIjoxNjY2NzIwMTk5fQ.n-A931ZDxcLRaM_jvy0usSalR4_U_vIvDlNPmleWWT4	2022-09-26 01:49:59.801871	2022-10-25 17:49:59
254	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDEzMjAyOSwiZXhwIjoxNjY2NzI0MDI5fQ.7ykfikIzv3ygrxXDgG26eP1SCioFdP3ea78znkpqQHY	2022-09-26 02:53:49.151771	2022-10-25 18:53:49
255	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDEzNTgyNCwiZXhwIjoxNjY2NzI3ODI0fQ.-_EXndBa5yyTEIph7BJeiO0vz9GqWRW6vi5CwbIoNCM	2022-09-26 03:57:04.182382	2022-10-25 19:57:04
256	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDEzOTc2NSwiZXhwIjoxNjY2NzMxNzY1fQ.qKdVEbXT-_X-oVeWbMzew3ZDiXAHVGRLdR3LPCQILN8	2022-09-26 05:02:45.641383	2022-10-25 21:02:45
257	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDE0NTAyNSwiZXhwIjoxNjY2NzM3MDI1fQ.m5WWu-KuWmfYJnk1GtWA9vPpc28ICWSY9jATGFhJvD0	2022-09-26 06:30:25.855323	2022-10-25 22:30:25
258	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDIwOTAzOSwiZXhwIjoxNjY2ODAxMDM5fQ.grpoqP_MlnDOe7m_feN-vmNe6Fg5Uqxmc2dpUbnKnp0	2022-09-27 00:17:19.646433	2022-10-26 16:17:19
259	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDIwOTczNSwiZXhwIjoxNjY2ODAxNzM1fQ.rJTjj_do3gBTnYvcxIIki80STYR1uzgsdHQbb8vc_mc	2022-09-27 00:28:55.758976	2022-10-26 16:28:55
260	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDIwOTg5MCwiZXhwIjoxNjY2ODAxODkwfQ.IQIj-mG3OT9fHw8w6NJcTHA0u91eyH8WxW-x_U-gtFE	2022-09-27 00:31:30.501142	2022-10-26 16:31:30
261	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDIxMTU1NywiZXhwIjoxNjY2ODAzNTU3fQ.wXeMgDLvOO4MfOyPVqElKq8TLZlOXrEgDLaSJpf9CEU	2022-09-27 00:59:17.015657	2022-10-26 16:59:17
262	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDMsImlhdCI6MTY2NDIxNDc4NCwiZXhwIjoxNjY2ODA2Nzg0fQ.3ik37NC1BMkXlY8slvPuflZPqFAtwp-W4DdsjBTwPD4	2022-09-27 01:53:04.696218	2022-10-26 17:53:04
263	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDIxNDc5MywiZXhwIjoxNjY2ODA2NzkzfQ.EXDvKMpiIybsbk5Ft8V9RiQQfMloAOsUstRwJpwjvCo	2022-09-27 01:53:13.647691	2022-10-26 17:53:13
264	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDIxNjQ3OSwiZXhwIjoxNjY2ODA4NDc5fQ.gRgyjodoSBf2NZE7deuxjp4qzdMf2ogSi9kNeCJJcyA	2022-09-27 02:21:19.017239	2022-10-26 18:21:19
265	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDMsImlhdCI6MTY2NDIxNjQ4NiwiZXhwIjoxNjY2ODA4NDg2fQ.kHmVlxNUVAcfaOkQCY0ZzXKJWmKR6TG5Ar5ro74oC54	2022-09-27 02:21:26.708368	2022-10-26 18:21:26
266	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDIxNjUwMiwiZXhwIjoxNjY2ODA4NTAyfQ.U92R_f80yetdwDjDhXiPhZaLNyrMtfyHiO1_LxrCwbo	2022-09-27 02:21:42.934965	2022-10-26 18:21:42
267	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDIxNjkyNSwiZXhwIjoxNjY2ODA4OTI1fQ.h5mzsoHWeH69IAQKodcEHNYLTi_QN1CkW4wnbm41DZE	2022-09-27 02:28:45.846585	2022-10-26 18:28:45
268	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDIyMTI2MCwiZXhwIjoxNjY2ODEzMjYwfQ.X-IKK9ZJXqkms1kNcol1yowjeGOANjA2THkYnlhpx9U	2022-09-27 03:41:00.3865	2022-10-26 19:41:00
269	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDIyNTExMCwiZXhwIjoxNjY2ODE3MTEwfQ.3z3qIGKscsF5sozC1v6idvzKKd1ceh4N7P1yTcG7aN0	2022-09-27 04:45:10.126631	2022-10-26 20:45:10
270	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDI3NzE5OCwiZXhwIjoxNjY2ODY5MTk4fQ.b-oWrkmQf2BVgrw38BbjdRjnbDp65zmoGQsXatosSK4	2022-09-27 19:13:18.66938	2022-10-27 11:13:18
271	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDI4MDkyMSwiZXhwIjoxNjY2ODcyOTIxfQ.bKAmhAm3NBs-gj1ZK160zI3Q3zaFvyd5JFdh0aJVp9I	2022-09-27 20:15:21.007298	2022-10-27 12:15:21
272	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDI5Njg1NywiZXhwIjoxNjY2ODg4ODU3fQ.wF4Ze5JdwnRf-7Y1tgE11QbxIFu4h2s4g6mC2FkvByQ	2022-09-28 00:40:57.34461	2022-10-27 16:40:57
273	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDMwMDY0NywiZXhwIjoxNjY2ODkyNjQ3fQ.wEWT-z8g3zmNP4bjX8fZC3be2CqGf77q4PN897UzVYo	2022-09-28 01:44:07.672543	2022-10-27 17:44:07
274	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDMsImlhdCI6MTY2NDMwOTUyMCwiZXhwIjoxNjY2OTAxNTIwfQ.WIF9j7vn8bDvKNClXNOFfrjzX18pxZijw-2NyRGsY-o	2022-09-28 04:12:00.865254	2022-10-27 20:12:00
275	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDMwOTU5MSwiZXhwIjoxNjY2OTAxNTkxfQ.77bREA2Rd7myq6oTci8FS05uGl4tXl4qELX7fLij7XE	2022-09-28 04:13:11.278183	2022-10-27 20:13:11
276	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDMsImlhdCI6MTY2NDMwOTYwMiwiZXhwIjoxNjY2OTAxNjAyfQ.qRfcFK257wvw8B7C__W-VaTwCEfjdWi7ifv9GRkfGKs	2022-09-28 04:13:22.681629	2022-10-27 20:13:22
277	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDMsImlhdCI6MTY2NDMwOTY3OSwiZXhwIjoxNjY2OTAxNjc5fQ.vVJN8kfc2FfIml0V85NthkeCAPPyUhQUga1b0CPQ8S4	2022-09-28 04:14:39.970612	2022-10-27 20:14:39
278	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDMwOTcyMCwiZXhwIjoxNjY2OTAxNzIwfQ.aDpgJkov6euIOOWEhdrt0uPIRHNCvmCdJrs6S724YD0	2022-09-28 04:15:20.052995	2022-10-27 20:15:20
279	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDMsImlhdCI6MTY2NDMwOTcyNywiZXhwIjoxNjY2OTAxNzI3fQ.k31rR-kLAb7kQS-i0YUdxFhAwM3NLmmYZW28BrRtQUc	2022-09-28 04:15:27.593553	2022-10-27 20:15:27
280	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDMsImlhdCI6MTY2NDMwOTc2MSwiZXhwIjoxNjY2OTAxNzYxfQ.JzA5t3cfwOkXmVtZdyM1iEpfYKd3id9ok2C3euxkh1I	2022-09-28 04:16:01.246531	2022-10-27 20:16:01
281	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDMwOTc3MywiZXhwIjoxNjY2OTAxNzczfQ.kAwanhHKntYTcPyDvS_WgZi5Jxe95H3fFjkzxt2C0og	2022-09-28 04:16:13.967066	2022-10-27 20:16:13
282	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDMsImlhdCI6MTY2NDMwOTkyNiwiZXhwIjoxNjY2OTAxOTI2fQ.toN4b2yzExIPEcF72GbByZHFiJ0DZKpOsHIQ1SU2FVY	2022-09-28 04:18:46.641319	2022-10-27 20:18:46
283	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDMxMDM1NiwiZXhwIjoxNjY2OTAyMzU2fQ.mHKjewvPuY5I3I_ghMs4obVfmUNks0DnNrpOBr_7wL4	2022-09-28 04:25:56.796036	2022-10-27 20:25:56
284	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDUsImlhdCI6MTY2NDMxMjY5NywiZXhwIjoxNjY2OTA0Njk3fQ.rxTtC0F5GLYuf-ebiCCM0ioiBC62SbXJQoKvrDjw5p0	2022-09-28 05:04:57.955184	2022-10-27 21:04:57
285	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDUsImlhdCI6MTY2NDMxMjcwOCwiZXhwIjoxNjY2OTA0NzA4fQ.frl8cOFb18pk8UVKqxq4wGIB-rEXuDtXk1YfU5OmRoE	2022-09-28 05:05:08.467999	2022-10-27 21:05:08
286	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDUsImlhdCI6MTY2NDMxMzE4MCwiZXhwIjoxNjY2OTA1MTgwfQ.TIMK1c5dv5lAhV6Tq9NjYd3BCxqvM7omHGA33ignUtA	2022-09-28 05:13:00.673364	2022-10-27 21:13:00
287	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDMxMzMwNywiZXhwIjoxNjY2OTA1MzA3fQ.OV259aNeJUVfwoy5i26Kj4dCPjt49fAtxg1vQkRzR7A	2022-09-28 05:15:07.742608	2022-10-27 21:15:07
288	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDUsImlhdCI6MTY2NDMxNjA5MSwiZXhwIjoxNjY2OTA4MDkxfQ.dag6ls_K3OuS5PweH6hbdlqX9dzZOfem-JbUsZyoNNA	2022-09-28 06:01:31.198336	2022-10-27 22:01:31
289	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDMxODA4NiwiZXhwIjoxNjY2OTEwMDg2fQ.cL7weP9wp18KKGtwgYEtvLNwAiMX42Fv1J95FT6IU0c	2022-09-28 06:34:46.818023	2022-10-27 22:34:46
290	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDUsImlhdCI6MTY2NDMxODI4MCwiZXhwIjoxNjY2OTEwMjgwfQ.Zj13Cqoqkq9bCQ-j_4h8zde9LEfRcadBRjlUZf9wlhQ	2022-09-28 06:38:00.477855	2022-10-27 22:38:00
291	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDM4MjM2OCwiZXhwIjoxNjY2OTc0MzY4fQ.sdjfrSOoy57Astm1zlQvFoY5C3p9rM4v1JaNpfDBEIA	2022-09-29 00:26:08.006705	2022-10-28 16:26:08
292	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDM4NjAwNSwiZXhwIjoxNjY2OTc4MDA1fQ.gDbIGTrZCRmgpdeaQh9T4quu0nOHCDEHhXpAvna0gvE	2022-09-29 01:26:45.530907	2022-10-28 17:26:45
293	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDM5MDA5NiwiZXhwIjoxNjY2OTgyMDk2fQ.X81g0HUayvJRh3jHggnLf7I0g1yCHI2BN_IqZ6tkixU	2022-09-29 02:34:56.249424	2022-10-28 18:34:56
294	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDM5Nzc0NSwiZXhwIjoxNjY2OTg5NzQ1fQ.TdsUdJx40lxVMEE7vD4DKiKjhOoM2AWHFSmjPnTgbHE	2022-09-29 04:42:25.220837	2022-10-28 20:42:25
295	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDQwMTc0OSwiZXhwIjoxNjY2OTkzNzQ5fQ.y7LYvlOOUQXoMI5K-mFTTIePhvU3qu0R6avoMGXDKqc	2022-09-29 05:49:09.439321	2022-10-28 21:49:09
296	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDQwNTk4NCwiZXhwIjoxNjY2OTk3OTg0fQ.Snw15GgXLgs7QWUeg6akHrcGPlQlS6Krxs70NdNuFxI	2022-09-29 06:59:44.914876	2022-10-28 22:59:44
297	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDQ1NzczNSwiZXhwIjoxNjY3MDQ5NzM1fQ.remFjILx6ZwXoGUpGV0BhSBInZVrhmFly-OKuIKEvWQ	2022-09-29 21:22:15.499145	2022-10-29 13:22:15
298	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDQ3NDEwNiwiZXhwIjoxNjY3MDY2MTA2fQ.Q7zLiPxClAvl8VJNblBtiCO-h3p-2OS5Q1NoJ4qbmHw	2022-09-30 01:55:06.328494	2022-10-29 17:55:06
299	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDQ3ODMzMywiZXhwIjoxNjY3MDcwMzMzfQ.3RYuePNKxuojZne1MQWVtnhniS4KRmdCCRMvRazZ-VQ	2022-09-30 03:05:33.373681	2022-10-29 19:05:33
300	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDQ4MTA0OSwiZXhwIjoxNjY3MDczMDQ5fQ.9m_R5-tOeIgTt7PE7X4gNheZAQAW7Lj6seGZmIRUQd4	2022-09-30 03:50:49.366848	2022-10-29 19:50:49
301	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDQ4MTA5NiwiZXhwIjoxNjY3MDczMDk2fQ.3sBRcDqvQw4n3PFheb42_lndpnUgwLUtyErt6q6qXeM	2022-09-30 03:51:36.38388	2022-10-29 19:51:36
302	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDQ4MTEzOSwiZXhwIjoxNjY3MDczMTM5fQ.Fq_uRCQfQNwgZpBhAcqM1WAxqMR20cHBaRWRDlJc6DA	2022-09-30 03:52:19.544423	2022-10-29 19:52:19
303	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDQ4MTI0MCwiZXhwIjoxNjY3MDczMjQwfQ.Vu5xehxiQztWDqHks6s68sg3VnDZMj16O3Ay8iMrIeQ	2022-09-30 03:54:00.721524	2022-10-29 19:54:00
304	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDQ4MTM4MiwiZXhwIjoxNjY3MDczMzgyfQ.786901RJw4Q7nxpa3fTt09yyuQ-AQ6st4Yh1Opay-58	2022-09-30 03:56:22.987101	2022-10-29 19:56:22
305	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDQ4MTM5NiwiZXhwIjoxNjY3MDczMzk2fQ.u7vHISoJywZo2eRvciNsMfuUB94IDe2dptkbyyikjPQ	2022-09-30 03:56:36.249045	2022-10-29 19:56:36
306	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDQ4MTQ3NiwiZXhwIjoxNjY3MDczNDc2fQ.011O3guxdZ9_GanTGMmKQdbyQbpf6TacO9yECogPjDU	2022-09-30 03:57:56.247621	2022-10-29 19:57:56
307	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDQ4MTc2MCwiZXhwIjoxNjY3MDczNzYwfQ.71f2jlMYxHcUevbbcr-RJhy54lVrd_r2UokuPiA9_gQ	2022-09-30 04:02:40.033725	2022-10-29 20:02:40
308	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDQ4NTQ4MSwiZXhwIjoxNjY3MDc3NDgxfQ.FWoPFSzxSv4hVJ_Vi2u1y89pykR2W4pFz7b60uG1gw4	2022-09-30 05:04:41.141789	2022-10-29 21:04:41
309	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDQ4NjE1NSwiZXhwIjoxNjY3MDc4MTU1fQ.16bW7Juz2Ty5iypOo0V0XVrA1Pb4NGIadzyQY8Z_AbY	2022-09-30 05:15:55.576254	2022-10-29 21:15:55
310	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDQ4NjM0MiwiZXhwIjoxNjY3MDc4MzQyfQ.A0yA0OotHlomhNn4nWfviNIcrBlx9OJv97aR4gxU4fY	2022-09-30 05:19:02.064986	2022-10-29 21:19:02
311	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDQ5MDAwOSwiZXhwIjoxNjY3MDgyMDA5fQ.i9X6_W_CE9oGAzlmOhv-9jqkuaZ0WM95SBGvnWPx3PI	2022-09-30 06:20:09.704355	2022-10-29 22:20:09
312	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDQ5MzcxNSwiZXhwIjoxNjY3MDg1NzE1fQ.C988NBLL_HBMrEoB8E3JoQy-Gf1-IzJIsOylzPxA7TA	2022-09-30 07:21:55.104911	2022-10-29 23:21:55
313	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDUyNDQ4NywiZXhwIjoxNjY3MTE2NDg3fQ.TUL1rchzfzDHJqMLb5nJGl5pAN6q2icPoYBaoVmitRo	2022-09-30 15:54:47.666196	2022-10-30 07:54:47
314	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDUyODQ5NywiZXhwIjoxNjY3MTIwNDk3fQ.kFVR2hxjie4ucwXem-FJ4Lwb3tW_vM4B1sLD350oLv4	2022-09-30 17:01:37.637569	2022-10-30 09:01:37
315	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDUzMjUyNywiZXhwIjoxNjY3MTI0NTI3fQ.XeGQBAo7R6xfvCSb00MQzgpTFA-lnwvquAx4CHCLFUc	2022-09-30 18:08:47.208462	2022-10-30 10:08:47
316	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDUsImlhdCI6MTY2NDUzNDUxNSwiZXhwIjoxNjY3MTI2NTE1fQ.SWh1KgqfbJG9pt19aWjtaKh7m2_0CjscMTyygFxKXs0	2022-09-30 18:41:55.818874	2022-10-30 10:41:55
317	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDUzODQyMiwiZXhwIjoxNjY3MTMwNDIyfQ.pZI7U_Crk5u9PCuHJt0LvpVFEssi95TJHzLYq1h7aKY	2022-09-30 19:47:02.546217	2022-10-30 11:47:02
318	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDU0MTUzMSwiZXhwIjoxNjY3MTMzNTMxfQ.MCVd8H9g8nsSOd3BkxMC-Q-IgoA7FdnECC9yvouPYI4	2022-09-30 20:38:51.396544	2022-10-30 12:38:51
319	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDU0MTU5MCwiZXhwIjoxNjY3MTMzNTkwfQ.Heavt0rcY01dIbxZ7aIIMktGxWxgQlunNNS1IbQGkFU	2022-09-30 20:39:50.019769	2022-10-30 12:39:50
320	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDUsImlhdCI6MTY2NDU0MjI2NiwiZXhwIjoxNjY3MTM0MjY2fQ.Mcx_DaxOna1yUHDHmhiDpakwQYy_2UkTO7rbOTzc6hE	2022-09-30 20:51:06.483722	2022-10-30 12:51:06
321	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDU0MjUzMiwiZXhwIjoxNjY3MTM0NTMyfQ.9hcYDYVEwM3gxITvhVWLCivE790nZWNS34GJ6BAXBNY	2022-09-30 20:55:32.928247	2022-10-30 12:55:32
322	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDU0MzQwMiwiZXhwIjoxNjY3MTM1NDAyfQ.ToRKg0TdlWvu96Tr7PhbWUUvZ5NCQXKBBwezCUJSZIY	2022-09-30 21:10:02.319788	2022-10-30 13:10:02
323	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDU0MzQxNSwiZXhwIjoxNjY3MTM1NDE1fQ.3ijtLioM405aEqZURm1ygt9senlt4I78uFkRhmsCW78	2022-09-30 21:10:15.053122	2022-10-30 13:10:15
324	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDU0MzQ0MiwiZXhwIjoxNjY3MTM1NDQyfQ.Da0O6svoaA5bJxVkdxWvLKchkc51t84-_YzoOW86UYI	2022-09-30 21:10:42.448039	2022-10-30 13:10:42
325	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDUsImlhdCI6MTY2NDU0MzQ1NSwiZXhwIjoxNjY3MTM1NDU1fQ.LFvStI_zsTcQS3akMsTc2yyq1SV-QPFJymQ0T5pyZy8	2022-09-30 21:10:55.645358	2022-10-30 13:10:55
326	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDU1NDk4NywiZXhwIjoxNjY3MTQ2OTg3fQ.UR-6YNI9n7mDlkfDC1pce4_UJBDvSoNalXpgOYP4_kI	2022-10-01 00:23:07.353424	2022-10-30 16:23:07
327	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDU2NjE3NywiZXhwIjoxNjY3MTU4MTc3fQ.oLVWsee36JA4JLFDHTcOie14GVFDF7E31dffameEkmU	2022-10-01 03:29:37.654202	2022-10-30 19:29:37
328	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDU2NzIyMywiZXhwIjoxNjY3MTU5MjIzfQ.IxpK75iToaNxy8KER6UOXBBioz6t81M8iDMsO3KZ0uA	2022-10-01 03:47:03.50035	2022-10-30 19:47:03
329	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDU3MDExMywiZXhwIjoxNjY3MTYyMTEzfQ.Rqhvu0leWFsYXA4nrPXnn0T9M009-4QT6tk942CznmE	2022-10-01 04:35:13.806239	2022-10-30 20:35:13
330	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDU3MjgwNCwiZXhwIjoxNjY3MTY0ODA0fQ.pY0-c776xX3dcwEHX_niFXNGzHJAwFACIx9nxpoq8R8	2022-10-01 05:20:04.364426	2022-10-30 21:20:04
331	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NDU3NDk2MSwiZXhwIjoxNjY3MTY2OTYxfQ.c5KxR8SAdQSOhoei-u34ocaHbNHX7oOEmec4DAyP2Xk	2022-10-01 05:56:01.91705	2022-10-30 21:56:01
332	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NTA2NTk0NCwiZXhwIjoxNjY3NjU3OTQ0fQ.YHfglNbYAvjhPwcJtil_KEje4Mn6IL7uOAKuQS1rWDY	2022-10-06 22:19:04.352676	2022-11-05 14:19:04
333	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDYsImlhdCI6MTY2NTA2NjAzMiwiZXhwIjoxNjY3NjU4MDMyfQ.qt4CpvadzaAXR2m3Usiu76kOrWW1WFH0jKLLqfEoNCE	2022-10-06 22:20:32.783614	2022-11-05 14:20:32
334	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NTA3MTgxMCwiZXhwIjoxNjY3NjYzODEwfQ.ePWT2Fc1eazGxJFzlKc8kPWQNsKXVCi8I5cGGy219TM	2022-10-06 23:56:50.580344	2022-11-05 15:56:50
335	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NTEwNDQ3MSwiZXhwIjoxNjY3Njk2NDcxfQ.hiGvus5uUS7E02QW-PewPyK3H576LHmY7r1FvKNlghE	2022-10-07 09:01:11.80106	2022-11-06 01:01:11
336	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NTY3Mzk3MCwiZXhwIjoxNjY4MjY1OTcwfQ.wDkv06IRDflOe3BTkM0NUQC84Ppxh8SMkhlAdYbzGFc	2022-10-13 23:12:50.0333	2022-11-12 15:12:50
337	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NTY3NTkzNiwiZXhwIjoxNjY4MjY3OTM2fQ.LNsbsCHwYciOIpENWRIdXMx-Z32OHHFiTyLR98qsNCQ	2022-10-13 23:45:36.401951	2022-11-12 15:45:36
338	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NTY3NjEwOCwiZXhwIjoxNjY4MjY4MTA4fQ.KmbFuJ_iAk4zMRaTbQrr4HRfu6Y1mRzxbOqwv7NxQMk	2022-10-13 23:48:28.076713	2022-11-12 15:48:28
339	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NTY3NzI3OSwiZXhwIjoxNjY4MjY5Mjc5fQ.J1yetkapRe07UWnaRyChV0Gt37NH3N-zSZ0LNSGM3Qw	2022-10-14 00:07:59.174325	2022-11-12 16:07:59
340	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NTY3NzMxMCwiZXhwIjoxNjY4MjY5MzEwfQ.CYOae1VxPeKgbP5PDhervn1KrrB1AeUVirJ0Cg-FKgI	2022-10-14 00:08:30.902549	2022-11-12 16:08:30
341	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NTY3NzQ2MiwiZXhwIjoxNjY4MjY5NDYyfQ.gvf_zWXAM9tDEXK5kGwKhmZx1M4D6Gd1tCNmhApgDCs	2022-10-14 00:11:02.53076	2022-11-12 16:11:02
342	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NTY3Nzc5OSwiZXhwIjoxNjY4MjY5Nzk5fQ.DbHAf7-duEh3VWyI1U2gK66m7kuOcwxC4VuVn3Gr_WQ	2022-10-14 00:16:39.211701	2022-11-12 16:16:39
343	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NTY3Nzg4MSwiZXhwIjoxNjY4MjY5ODgxfQ.CPfoHkVFERp1S8LEx1FTy50J2dTEvSLm882_uK0_qrs	2022-10-14 00:18:01.836934	2022-11-12 16:18:01
344	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NTY3NzkwMywiZXhwIjoxNjY4MjY5OTAzfQ.MoLxuENIS4kr_IwZ40DbaxOnnWra3CmSy5G1o286zIA	2022-10-14 00:18:23.987148	2022-11-12 16:18:23
345	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NTY3Nzk1NCwiZXhwIjoxNjY4MjY5OTU0fQ.r6aj1Xogpqph2jUv7YzcDwg-1geDOqrrqu6DIiyNem4	2022-10-14 00:19:14.728434	2022-11-12 16:19:14
346	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NTY3Nzk3MCwiZXhwIjoxNjY4MjY5OTcwfQ.snyqO7FRB2N0CkK0hZFMeQbqN7og-4DrcRM9lcf5_jU	2022-10-14 00:19:30.481878	2022-11-12 16:19:30
347	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NTY3Nzk4MSwiZXhwIjoxNjY4MjY5OTgxfQ.c6JcbY3cC56rfRrc2YTvUT5D5yrKecMclHvIull7d1o	2022-10-14 00:19:41.946682	2022-11-12 16:19:41
348	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NTY3ODA3MywiZXhwIjoxNjY4MjcwMDczfQ.R3JzSPPp1NqNiHB9n6lRvo287dnZYjmCYcy_rHu1OZQ	2022-10-14 00:21:13.500622	2022-11-12 16:21:13
349	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NTY3ODI1NywiZXhwIjoxNjY4MjcwMjU3fQ.6FHi_SNalr-mxRov2W0UDIJa3p54-mJqTs9bx7JQdNk	2022-10-14 00:24:17.252804	2022-11-12 16:24:17
350	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NTY3ODMyMCwiZXhwIjoxNjY4MjcwMzIwfQ.rw533jclrDAyBRqpBg8KrK9aPKUVmKob7L-tA3L2-wA	2022-10-14 00:25:20.088818	2022-11-12 16:25:20
351	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NTY3ODM1NSwiZXhwIjoxNjY4MjcwMzU1fQ.4rVRklpqD8xZ0NHSXZF7DtfxH1Sk3GcvwbB2TlLwMM8	2022-10-14 00:25:55.763249	2022-11-12 16:25:55
352	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDQsImlhdCI6MTY2NTY3ODQ2NywiZXhwIjoxNjY4MjcwNDY3fQ.X2B0iRi69eDBvgdIETjKX3DZvyl0D5sG_Ffx2O9lZRw	2022-10-14 00:27:47.949003	2022-11-12 16:27:47
353	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDcsImlhdCI6MTY2NTY4MTIyNSwiZXhwIjoxNjY4MjczMjI1fQ.lTGzVN07aYj5QHvB6Ew76pX6zZR1r5Ut4g5Iy_tYcE4	2022-10-14 01:13:45.078493	2022-11-12 17:13:45
354	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2NTY4MTMwNCwiZXhwIjoxNjY4MjczMzA0fQ.R1FltetOGV60jByzmesZ9SdbbiLgMI1eYmMYNDzyzRA	2022-10-14 01:15:04.099138	2022-11-12 17:15:04
355	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY2NTY4MTQ1NywiZXhwIjoxNjY4MjczNDU3fQ.1lCHm3DgkEkgb5ApsUvESlqJmxHCMK0wHSCrbdIZB_Q	2022-10-14 01:17:37.671779	2022-11-12 17:17:37
356	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTAsImlhdCI6MTY2NTY4MTUyOCwiZXhwIjoxNjY4MjczNTI4fQ.YeHemhKlW01Rzhq53gx3_EML2vY6z5ogAnvrhApOQsA	2022-10-14 01:18:48.037543	2022-11-12 17:18:48
357	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2NTY4MTYzOCwiZXhwIjoxNjY4MjczNjM4fQ.MQWRkSj72AMQ6nj2JhNh-mqScVAWab4uc-d2lrwvzaA	2022-10-14 01:20:38.530916	2022-11-12 17:20:38
358	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTIsImlhdCI6MTY2NTY4MTcyMiwiZXhwIjoxNjY4MjczNzIyfQ.YH9NdWUNiKjgNVbOuePOD5_jCLVE8kKQRHduj8Ens3U	2022-10-14 01:22:02.306444	2022-11-12 17:22:02
359	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2NTY4MTg3OSwiZXhwIjoxNjY4MjczODc5fQ.qUSCdp7xpwFLw86G-V6rEPSvwNfdJF3tnyWIVHCETl8	2022-10-14 01:24:39.859915	2022-11-12 17:24:39
360	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2NTY4MTkzNywiZXhwIjoxNjY4MjczOTM3fQ.ZydXwgVHEW36VDfuGmnjuJwTOq7rSC_Lv5MaENl_m64	2022-10-14 01:25:37.024393	2022-11-12 17:25:37
361	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2NTY4NTU1NCwiZXhwIjoxNjY4Mjc3NTU0fQ.pyKnfW06BZRf2eNGbBbcS9Dul2EdFEU0SfhzzVX9Tzs	2022-10-14 02:25:54.487688	2022-11-12 18:25:54
362	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTAsImlhdCI6MTY2NTY4NjU2NSwiZXhwIjoxNjY4Mjc4NTY1fQ.KPpgjW8rqHLnpEDqSM9O1XJlwpYBALY7ve3gVgnQbKk	2022-10-14 02:42:45.810879	2022-11-12 18:42:45
363	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY2NTY4NjczMSwiZXhwIjoxNjY4Mjc4NzMxfQ.O1xmhQ4q-adpAPBZ4ksRilJbKq_nb8pauhBYjssV1Q4	2022-10-14 02:45:31.141734	2022-11-12 18:45:31
364	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2NTY4NzM0NSwiZXhwIjoxNjY4Mjc5MzQ1fQ.UOp91K9TFyEIlifzZXrYaIqv7uZ2qHVSSBsTIU2F3s8	2022-10-14 02:55:45.210451	2022-11-12 18:55:45
365	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2NjEzNzI3NiwiZXhwIjoxNjY4NzI5Mjc2fQ.t2doLlHLRr4ZFAJosGujlOpzq3aUF92nQDPbg197b0w	2022-10-19 07:54:36.8425	2022-11-17 23:54:36
366	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY2NjQwNDY2MywiZXhwIjoxNjY4OTk2NjYzfQ.nHHStAv6PQ30hOsgOixfpwn1LSBvfRg_j3LHcu2dlHI	2022-10-22 10:11:03.365738	2022-11-21 02:11:03
367	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY2NjQwNDc4MywiZXhwIjoxNjY4OTk2NzgzfQ.qNvB-D5zu8nKRwCZLHkZCrSOBQl0AudwvACqCna8eh4	2022-10-22 10:13:03.959298	2022-11-21 02:13:03
368	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2NjQwNDgxNiwiZXhwIjoxNjY4OTk2ODE2fQ.RtOC8H4uO85c6T63QwCmSLM0D4vHqSWooFt2NCHf48w	2022-10-22 10:13:36.784706	2022-11-21 02:13:36
369	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTIsImlhdCI6MTY2NjQwNDg0MSwiZXhwIjoxNjY4OTk2ODQxfQ.QrEtrDDwssmFmwy4TilTKDCPQlYeuRLvAEKG1lNzQ6k	2022-10-22 10:14:01.814858	2022-11-21 02:14:01
370	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2NjQwNDg1OCwiZXhwIjoxNjY4OTk2ODU4fQ.e6stlOIgLJkSdcwxac8yHtJ3EDklaUjY2KCfe6GMVEM	2022-10-22 10:14:18.090936	2022-11-21 02:14:18
371	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2NjQwNTMxNCwiZXhwIjoxNjY4OTk3MzE0fQ.i06aeESRwSg0WxfNIfozTqkFYpFHzUO-ySbLd_j7avY	2022-10-22 10:21:54.304544	2022-11-21 02:21:54
372	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2NjQwNTM0MiwiZXhwIjoxNjY4OTk3MzQyfQ.qYp_6bUdBsaaxYxxHw-9bEtXzF_hwqqXDXJMxdgRGn4	2022-10-22 10:22:22.043911	2022-11-21 02:22:22
373	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTAsImlhdCI6MTY2NjQwNTkxOCwiZXhwIjoxNjY4OTk3OTE4fQ.w5NB8qTyXSF-JHaxNR3F4ri3Y_VziNg-Gtjhsv6gPc8	2022-10-22 10:31:58.337875	2022-11-21 02:31:58
374	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTIsImlhdCI6MTY2NjQwNTkzOSwiZXhwIjoxNjY4OTk3OTM5fQ.pJGUBn7yTHZuIyuSCJ5muEsDN4uIRJIHmNK_34oIjVE	2022-10-22 10:32:19.261563	2022-11-21 02:32:19
375	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY2NjQwNTk1MiwiZXhwIjoxNjY4OTk3OTUyfQ.FhOEb9anyaJkqpsIrFtGOypoy21FI7uvz3QONrBKBpI	2022-10-22 10:32:32.60556	2022-11-21 02:32:32
376	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTAsImlhdCI6MTY2NjQwNTk3MiwiZXhwIjoxNjY4OTk3OTcyfQ.iDeTYxSsepw2WuOHn2qRyRRfV3BVXrNLjKbGNkQVFfI	2022-10-22 10:32:52.179887	2022-11-21 02:32:52
377	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2NjQwNTk4NCwiZXhwIjoxNjY4OTk3OTg0fQ.75etPUiRe0sqr8KqoJtYl1j2xATZhSSeQQD25vgs8O8	2022-10-22 10:33:04.406791	2022-11-21 02:33:04
378	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY2NjQwNjAwMiwiZXhwIjoxNjY4OTk4MDAyfQ.Gon-hLiaxj29INYJ-19L_bdgPRkRQtoz9QRiR8a6y34	2022-10-22 10:33:22.809705	2022-11-21 02:33:22
379	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2NjQwNjAxNCwiZXhwIjoxNjY4OTk4MDE0fQ.WP0xoGMLQpD61vzXkdqYvBs1vuIxlC9JkihZ4mPNbZE	2022-10-22 10:33:34.085674	2022-11-21 02:33:34
380	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2NjU3OTgyMiwiZXhwIjoxNjY5MTcxODIyfQ.4xCt33uqY7Dm_c1MJavcN7sbZHXuFc-UOT0_r2yNbxU	2022-10-24 10:50:22.040397	2022-11-23 02:50:22
381	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2NjU4MTUzOSwiZXhwIjoxNjY5MTczNTM5fQ.CEzugV_ZRTzsclbe2maqueg2HLugq9qaEgc9dkbwZ-U	2022-10-24 11:18:59.086695	2022-11-23 03:18:59
382	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2NjU4MjYwNywiZXhwIjoxNjY5MTc0NjA3fQ.rD0GXw1kjjveb5wANL-0mz9yNXQMJU3rGw1tekeVtx0	2022-10-24 11:36:47.801131	2022-11-23 03:36:47
383	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2NjYwOTI4NiwiZXhwIjoxNjY5MjAxMjg2fQ.PH3_tD6g4nMWlJhoSV-zKa2aSOokFNpMCGL8Fx4vlyY	2022-10-24 19:01:26.791965	2022-11-23 11:01:26
384	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY2NjY1MDU3MiwiZXhwIjoxNjY5MjQyNTcyfQ.dNDIu2XOc-DRXGA5XYcjFxutn0cWi9-LgwU3-PwJH0M	2022-10-25 06:29:32.351507	2022-11-23 22:29:32
385	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY2NjY1MjQ3MSwiZXhwIjoxNjY5MjQ0NDcxfQ.YxwuzGuUTOH1JorPxL_IAhwvcXb7ayoOu50Fj3Heu_w	2022-10-25 07:01:11.990196	2022-11-23 23:01:11
386	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2NjY1MjUxNCwiZXhwIjoxNjY5MjQ0NTE0fQ.B-1YyxtQS65XUU-5wFU_KxVAPb48s3_mUzUjJXUIlPw	2022-10-25 07:01:54.098561	2022-11-23 23:01:54
387	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY2NjY1MjU5MSwiZXhwIjoxNjY5MjQ0NTkxfQ.EHTVL2wRaSuigJFJrldzRqjr4pFvOSMi1zYp283Hq00	2022-10-25 07:03:11.28994	2022-11-23 23:03:11
388	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2NjY1NjQ5MywiZXhwIjoxNjY5MjQ4NDkzfQ.nmbMKAZ25s9mF8Mmf2gmeHQiY8CZ7PIbdJKVQTy-SZA	2022-10-25 08:08:13.333346	2022-11-24 00:08:13
389	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY2NjY1NjUzMywiZXhwIjoxNjY5MjQ4NTMzfQ.PkEOikIGW68rFbSEiEt-90Jua1YvPsxG6Y9djyaau2A	2022-10-25 08:08:53.43342	2022-11-24 00:08:53
390	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2NjY1Njc3MywiZXhwIjoxNjY5MjQ4NzczfQ.wjZDfroGXWeWAl7DF4LGfKyft5pbco_ZO2nlcwhsMTA	2022-10-25 08:12:53.581168	2022-11-24 00:12:53
391	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY2NjY1Njc5MCwiZXhwIjoxNjY5MjQ4NzkwfQ.Jn-7Y23DT8Dn9t8TpZdslGQHUraD-sZabr1i3YW44gY	2022-10-25 08:13:10.259659	2022-11-24 00:13:10
392	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY2NjY2MjI5NCwiZXhwIjoxNjY5MjU0Mjk0fQ.6wO34ZBdmBS1ir9W71V5Y9QRbpDSL7MdOSwa5n1RS_A	2022-10-25 09:44:54.009645	2022-11-24 01:44:54
393	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2NjY3NDUyNiwiZXhwIjoxNjY5MjY2NTI2fQ.3N7BQQShzIITq5MrdhDSwZIhBwehIuFb2LBenlt3ks4	2022-10-25 13:08:46.272938	2022-11-24 05:08:46
394	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2NjY3NTA4OSwiZXhwIjoxNjY5MjY3MDg5fQ.Z1Ovq-2VCLKHPGFzE9PTVrsEX9MLOUW_YnpHWxR6Olw	2022-10-25 13:18:09.614221	2022-11-24 05:18:09
395	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2NjY3NjkyMSwiZXhwIjoxNjY5MjY4OTIxfQ.6CbrtQumB_czRvToNxePhQCntahaz37lpY0m3E8rgC0	2022-10-25 13:48:41.159621	2022-11-24 05:48:41
396	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2NjY3NzExNiwiZXhwIjoxNjY5MjY5MTE2fQ.EIqcTKxzIJVtHcXjp_k630m-irGyfhVu3OejIkJcPH0	2022-10-25 13:51:56.551955	2022-11-24 05:51:56
397	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2NjY3NzI2NywiZXhwIjoxNjY5MjY5MjY3fQ.N8-X-qgqxukdteMZP5JqImjmj_IOVKcNx4MmyRxSrBc	2022-10-25 13:54:27.54592	2022-11-24 05:54:27
398	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY2NjY4ODgxMCwiZXhwIjoxNjY5MjgwODEwfQ.AtU6EGHDLHOjZJapwJmT84AIAuOikU-z_R4HQsyQ9JE	2022-10-25 17:06:50.547696	2022-11-24 09:06:50
399	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTAsImlhdCI6MTY2NjY4OTA3NywiZXhwIjoxNjY5MjgxMDc3fQ.FvtRJ32qRlobdKfpbmJ_yJirsE08wEBlRs9ys1ZmOJg	2022-10-25 17:11:17.823894	2022-11-24 09:11:17
400	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY2NjY5MjIxOCwiZXhwIjoxNjY5Mjg0MjE4fQ.FEGfjqrdy0Me_l3CbE-KFDS2lta42-LFm5oWvBKjb3E	2022-10-25 18:03:38.319734	2022-11-24 10:03:38
401	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2NjY5Mjc1MiwiZXhwIjoxNjY5Mjg0NzUyfQ.Arvs9EBX4ipfnd11Skf8_NNzoWP-W-GWas3atyilSX4	2022-10-25 18:12:32.143004	2022-11-24 10:12:32
402	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2NjY5MzAwMiwiZXhwIjoxNjY5Mjg1MDAyfQ.HkiATN8_3Vaq1A_9194MxxwyO47ONKh_xrLJ8T9M8A8	2022-10-25 18:16:42.906958	2022-11-24 10:16:42
403	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY2NjY5MzU4OCwiZXhwIjoxNjY5Mjg1NTg4fQ.jXCV-7P01I7f_J1PXXQyV2mRaWvYjEgsjgwGJuTMxK0	2022-10-25 18:26:28.496189	2022-11-24 10:26:28
404	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY2NjY5Mzc2OSwiZXhwIjoxNjY5Mjg1NzY5fQ.5uMcsHVKtj9zYF3BVHpL40iZFC5DCs55wjFw1HI-5KQ	2022-10-25 18:29:29.5112	2022-11-24 10:29:29
405	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTIsImlhdCI6MTY2NjY5MzgwNywiZXhwIjoxNjY5Mjg1ODA3fQ.5WEdny-J0liEzv-lM-IRLRBCLvVMnejC0CFHr_L2JKc	2022-10-25 18:30:07.744552	2022-11-24 10:30:07
406	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY2NjcyOTQ2NywiZXhwIjoxNjY5MzIxNDY3fQ.yzDEaUWh7NCqRO_p2BADulIglRsbpOZLoyOPgfYvrOQ	2022-10-26 04:24:27.722745	2022-11-24 20:24:27
407	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2NjcyOTc1MSwiZXhwIjoxNjY5MzIxNzUxfQ.FyIT4PkpfWZPtdYbVvSJEDOA4M0sjeP9JjPiy_7TmfY	2022-10-26 04:29:11.28919	2022-11-24 20:29:11
408	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2NjczMTkxNSwiZXhwIjoxNjY5MzIzOTE1fQ.8f9AvLlTLLOg8ZtTTQ64HTnGgvU2ewLrXlkC_b7PcUc	2022-10-26 05:05:15.834739	2022-11-24 21:05:15
409	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY2NjczMTkzNiwiZXhwIjoxNjY5MzIzOTM2fQ.0myqIj2vj0bvxkNm6vQKrHMRB1MhcIRddRHlQWu81Uk	2022-10-26 05:05:36.029425	2022-11-24 21:05:36
410	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2NjczNDI3NiwiZXhwIjoxNjY5MzI2Mjc2fQ.zVi3dP2YbAICFBZ3NulSApFszcnsUU9nnm9NQRAO5dM	2022-10-26 05:44:36.947228	2022-11-24 21:44:36
411	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2NjczNDU3MSwiZXhwIjoxNjY5MzI2NTcxfQ.X0x0F8pqT1vkGhbMEnkJ8k4Vk18BP7XtFyy85vg5pd4	2022-10-26 05:49:31.655851	2022-11-24 21:49:31
412	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2NjczNTAzMCwiZXhwIjoxNjY5MzI3MDMwfQ.ltOeDWJCgHiPllcA1NUZEGRB9V6-3WkTvaVjoQSALwo	2022-10-26 05:57:10.064432	2022-11-24 21:57:10
413	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2NjczNTE4NiwiZXhwIjoxNjY5MzI3MTg2fQ.fDkV8VdtQ0SWMrGBDb1GF_0OEwrxy5c7-SiJXFXyug4	2022-10-26 05:59:46.212684	2022-11-24 21:59:46
414	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2NjczNTM0MiwiZXhwIjoxNjY5MzI3MzQyfQ.ZD0J0M7ib8QMh1Nb-_3ZB_3Zm8GsGohIYqu3vU1g7N8	2022-10-26 06:02:22.48307	2022-11-24 22:02:22
415	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2NjczODk5MSwiZXhwIjoxNjY5MzMwOTkxfQ.vFt_n-NtbZAV2a3u_86pJQNm8j7UJ1PcNACDorqU6Ak	2022-10-26 07:03:11.844125	2022-11-24 23:03:11
416	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2Njc0NTMyNiwiZXhwIjoxNjY5MzM3MzI2fQ.xFfGbLp7772PQzmNqi-BD80acXEkgvDx9XkwCxg_0Nw	2022-10-26 08:48:46.572149	2022-11-25 00:48:46
417	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2Njc4OTMwNywiZXhwIjoxNjY5MzgxMzA3fQ.QyHPhMiGe2tWaCxelwpku0XEqX6Y01iEvsrgtKvyw_I	2022-10-26 21:01:47.117096	2022-11-25 13:01:47
418	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2NjgxNzExNiwiZXhwIjoxNjY5NDA5MTE2fQ.GLkRcyx1_lh97SlsjHpQT1yIV78p_di8Lbt9TRUgHyg	2022-10-27 04:45:16.97591	2022-11-25 20:45:16
419	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY2Njg1MDk0MCwiZXhwIjoxNjY5NDQyOTQwfQ.QjykQr9NU-C8-kkXpy5OVjb-ZQv6mAdXIYuE2OVNSDw	2022-10-27 14:09:00.733763	2022-11-26 06:09:00
420	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2Njg1MDk0OSwiZXhwIjoxNjY5NDQyOTQ5fQ.VRe-4R-yF65liHpw50bgC1RcC9vhdidkF5EqgRtJWCg	2022-10-27 14:09:09.1758	2022-11-26 06:09:09
421	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2Njg4NDExMCwiZXhwIjoxNjY5NDc2MTEwfQ.CKYVe0suYEGCZn1KVZaMw8dAT-dQihc6IPJz7uquXKg	2022-10-27 23:21:50.252061	2022-11-26 15:21:50
422	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2Njg5NjIxMCwiZXhwIjoxNjY5NDg4MjEwfQ.soiYGvl5BWAtciV-C6I3uqC_SmZryi3Ts2dilJUyYtE	2022-10-28 02:43:30.671665	2022-11-26 18:43:30
423	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2Njg5OTg3MywiZXhwIjoxNjY5NDkxODczfQ.9XjQvutpRd7dFkjK57vIo8i4tuVKNvvE3BK2yt0XtqE	2022-10-28 03:44:33.925589	2022-11-26 19:44:33
424	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2NjkwMTE2OSwiZXhwIjoxNjY5NDkzMTY5fQ.P2nTOkQLnCpgjCB4xljyyO9wy0suROYHltWlEjea4pQ	2022-10-28 04:06:09.560357	2022-11-26 20:06:09
425	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2NjkwMTIxOCwiZXhwIjoxNjY5NDkzMjE4fQ.Ce_4WHbWjJyzSqyldD48ALpwi7mRV_yELzR6qBNTTm4	2022-10-28 04:06:58.371081	2022-11-26 20:06:58
426	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2NjkzMTkyNCwiZXhwIjoxNjY5NTIzOTI0fQ.Nnyvn-WJWkCC4uEWg_XENRLlC--EzKHuMwFPCXA-Pwc	2022-10-28 12:38:44.911927	2022-11-27 04:38:44
427	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2NjkzNTcxNSwiZXhwIjoxNjY5NTI3NzE1fQ.Xz7D6_sj630CuYs29VcfwxxJDaun3EkFQcIhar5qySA	2022-10-28 13:41:55.638392	2022-11-27 05:41:55
428	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2Njk0MDM5NiwiZXhwIjoxNjY5NTMyMzk2fQ.7NglNXTad4BSR2zlK6wvXQRPtJtBN0QFeAd9md9RQhQ	2022-10-28 14:59:56.424521	2022-11-27 06:59:56
429	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2Njk0NDk2MiwiZXhwIjoxNjY5NTM2OTYyfQ.hIzSc-24tTn2-euTPdjGgLXWoLfHWQVYsZavoQz3u40	2022-10-28 16:16:02.440866	2022-11-27 08:16:02
430	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2Njk0OTkwMywiZXhwIjoxNjY5NTQxOTAzfQ.bifPJt2NRAuaxEqOfX3eshaRoDBP-kW-sgJrFO--k2A	2022-10-28 17:38:23.954815	2022-11-27 09:38:23
431	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2Njk1MjkzNSwiZXhwIjoxNjY5NTQ0OTM1fQ.b0wAqgJmlf80bIAq-HMyRD6XLekGue8KgV45RIaMN2Y	2022-10-28 18:28:55.958065	2022-11-27 10:28:55
432	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTAsImlhdCI6MTY2Njk1Njc4OCwiZXhwIjoxNjY5NTQ4Nzg4fQ.5ptcLODZNVMT52UFD4w8JICRX7tbVPrv948X4PBZzz4	2022-10-28 19:33:08.105679	2022-11-27 11:33:08
433	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2Njk1Njc5NywiZXhwIjoxNjY5NTQ4Nzk3fQ.fUhj3OGyRMF8qAa04RrdBL4X9CW2tsJm8qhv3cCnriU	2022-10-28 19:33:17.335695	2022-11-27 11:33:17
434	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2Njk2NDI4MywiZXhwIjoxNjY5NTU2MjgzfQ.9lCTbF6FLUMw_4xnvdvZVHPQ9NDwxc3Zvg3-jZX13xs	2022-10-28 21:38:03.402935	2022-11-27 13:38:03
435	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2Njk5MzQwMSwiZXhwIjoxNjY5NTg1NDAxfQ.qoDFOgG3D3ONCEcK8qTK9rsiEY8mzCZ1aGCK4O8uPuk	2022-10-29 05:43:21.882407	2022-11-27 21:43:21
436	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2Njk5NDU3NSwiZXhwIjoxNjY5NTg2NTc1fQ.DonT7lWqKNHY9PU-CNNxE1ZagMWxiPrY3baVRrfpZaQ	2022-10-29 06:02:55.220663	2022-11-27 22:02:55
437	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2Njk5NDU5NCwiZXhwIjoxNjY5NTg2NTk0fQ.naioPzsvozfLDyr6afTS9Yibt5_JkXXLp7n-_wNskEo	2022-10-29 06:03:14.585888	2022-11-27 22:03:14
438	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2Njk5OTI5MCwiZXhwIjoxNjY5NTkxMjkwfQ.bl5QRaT5jh1qqng3oyyas6IwBoDT3sJrTH0HbPP9WKI	2022-10-29 07:21:30.234671	2022-11-27 23:21:30
439	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY2Njk5OTMwOCwiZXhwIjoxNjY5NTkxMzA4fQ.lyXEho8F2n01W1z3aWAimntWuTe9TcGETTsyVKPnc8Q	2022-10-29 07:21:48.945496	2022-11-27 23:21:48
440	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2Njk5OTMxNiwiZXhwIjoxNjY5NTkxMzE2fQ.X2jjmleAQ9bVGZ7xMDxuolh1THUP8OC3xay4CfiJw3Q	2022-10-29 07:21:56.164865	2022-11-27 23:21:56
441	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2Njk5OTg2NiwiZXhwIjoxNjY5NTkxODY2fQ.OcjtWCmDTYmtm_Rh_ypXK5J6A6Rq6qcsZpApIPD2KdY	2022-10-29 07:31:06.431901	2022-11-27 23:31:06
442	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2NzAwMDAyOCwiZXhwIjoxNjY5NTkyMDI4fQ.PGKv1h3KNLWvhGXDu2yAdtD909XIxkc03IU1W2FBYTs	2022-10-29 07:33:48.391038	2022-11-27 23:33:48
443	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY2NzAwMDA5OSwiZXhwIjoxNjY5NTkyMDk5fQ.rsG8JTPj52H3Dn8QG_A31dBVymycJHG44Rgf-inw81E	2022-10-29 07:35:00.000188	2022-11-27 23:34:59
444	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2NzAwMDExMSwiZXhwIjoxNjY5NTkyMTExfQ.VsEO2xzVHSk6UvqzjQpi3oW5vWNioCC1TUrebldhQa0	2022-10-29 07:35:11.100616	2022-11-27 23:35:11
445	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2NzAwMDQ4MSwiZXhwIjoxNjY5NTkyNDgxfQ.MEW3for7oSwPXQlxACVsSKd7qiPnAjmlYoegfo1PA_c	2022-10-29 07:41:21.498137	2022-11-27 23:41:21
446	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2NzAwMDQ4OCwiZXhwIjoxNjY5NTkyNDg4fQ.rb7c3vUjsDK4bWMBWlVM_1bm-7lOG72UeWdSHaFvqH4	2022-10-29 07:41:28.702361	2022-11-27 23:41:28
447	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2NzAxMTY5NiwiZXhwIjoxNjY5NjAzNjk2fQ.Ver5lC-7Cx9gKEXX7bJH_6_RYjM0chVSWUR2-S91yW0	2022-10-29 10:48:16.894353	2022-11-28 02:48:16
448	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2NzAyMDU1NSwiZXhwIjoxNjY5NjEyNTU1fQ.eZbrZZuj1369azoG2gewto8Kwuq-X2p0c82Ijahzmz8	2022-10-29 13:15:55.846114	2022-11-28 05:15:55
449	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2NzA0NzgwNiwiZXhwIjoxNjY5NjM5ODA2fQ.IVRJcwekmcUuOPpw78593O2k8jK6k6tWGOVAc83AmDA	2022-10-29 20:50:06.276088	2022-11-28 12:50:06
450	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY2NzA0NzgyOSwiZXhwIjoxNjY5NjM5ODI5fQ.EeaHdXRVcFjAl7E7w8xSRooqIZQu383uyfO_Qw1dRJ4	2022-10-29 20:50:29.310662	2022-11-28 12:50:29
451	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2NzA0Nzg0MCwiZXhwIjoxNjY5NjM5ODQwfQ.8is0RfSJfkz5zR03j5EYsWSMdeGilueWGk_Xiop7d1I	2022-10-29 20:50:40.87386	2022-11-28 12:50:40
452	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY2NzA1MzYwOSwiZXhwIjoxNjY5NjQ1NjA5fQ.X-fvrwAtADMZxPKoSHjk0WegDx_zDl_fn_jSOuFh8aY	2022-10-29 22:26:49.898702	2022-11-28 14:26:49
453	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2NzA1MzYxNiwiZXhwIjoxNjY5NjQ1NjE2fQ.1RKAvU4z86j07nzN0du5hTrLf5_IzQOZN5E5QXbxTdU	2022-10-29 22:26:56.280928	2022-11-28 14:26:56
454	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY2NzA2MDY5OCwiZXhwIjoxNjY5NjUyNjk4fQ.hLby5h1pNEORtspvMUGBqugAtVEgQ7k_gJVrW9y7rjE	2022-10-30 00:24:58.877892	2022-11-28 16:24:58
455	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2NzA2MDcwNCwiZXhwIjoxNjY5NjUyNzA0fQ.QdHaYXf1gVqY-nd214Q_C8SU0NykwPYiAMuno7YwKNw	2022-10-30 00:25:04.656121	2022-11-28 16:25:04
456	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY2NzA2NDk2MywiZXhwIjoxNjY5NjU2OTYzfQ.PRQRN7XFQZ_UdXDov1EZqwLrKgs4Qxz6jq8XLgAW6sw	2022-10-30 01:36:03.76784	2022-11-28 17:36:03
457	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2NzA2NDk3MSwiZXhwIjoxNjY5NjU2OTcxfQ.RHiT_IrSfrRDjftYyWCEQ1f48Myzj3P1Wg2y-_WO8BM	2022-10-30 01:36:11.20871	2022-11-28 17:36:11
458	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2NzA2NDk3NiwiZXhwIjoxNjY5NjU2OTc2fQ.XioIYKg_O98DuiW6KgM9TpIlXFd6YEcW1_ZdH7Jf7LQ	2022-10-30 01:36:16.980905	2022-11-28 17:36:16
459	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2NzExMzQwMiwiZXhwIjoxNjY5NzA1NDAyfQ.8Wk5WWwYuf_ZowAobUWX38esET0kXUf0UAAK_J8rdas	2022-10-30 15:03:22.740929	2022-11-29 07:03:22
460	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY2NzExMzU1OCwiZXhwIjoxNjY5NzA1NTU4fQ.9doJupyq_e3wjYmqF509oSciotLcDZvKrX5h59SmdU8	2022-10-30 15:05:58.280379	2022-11-29 07:05:58
461	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2NzExMzU3NywiZXhwIjoxNjY5NzA1NTc3fQ.n25HSnO42z6rTRLomfboX1x_QdNlDnlpD-rLVQB3I5Q	2022-10-30 15:06:17.316879	2022-11-29 07:06:17
462	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY2NzEyMzc4NCwiZXhwIjoxNjY5NzE1Nzg0fQ.abSxNo27MSFVCfecz_4P69IqoPcYPz9tVz8ywwlHsDw	2022-10-30 17:56:24.357603	2022-11-29 09:56:24
463	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2NzEyMzc5MCwiZXhwIjoxNjY5NzE1NzkwfQ.hefKfYqafrMtlSy6aE7FZYaaaBBcNOFnd3jgWK1McbI	2022-10-30 17:56:30.063892	2022-11-29 09:56:30
464	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY2NzEyMzgwMCwiZXhwIjoxNjY5NzE1ODAwfQ.OnONqRCX4kF5ic9ypEELpt6eWn4yDk0gEgTv2lXOgO4	2022-10-30 17:56:40.938389	2022-11-29 09:56:40
465	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2NzEyMzgxMiwiZXhwIjoxNjY5NzE1ODEyfQ.2YHowZ7AtRbkcN9-7UBC0akkUOydM6vi0kvHxNdQAN4	2022-10-30 17:56:52.453612	2022-11-29 09:56:52
466	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY2NzEyNDE2MiwiZXhwIjoxNjY5NzE2MTYyfQ._rCI_vGW7imRH1u7ZQ1NlF_qFiISgBLgbQGjL_x5qbQ	2022-10-30 18:02:42.851323	2022-11-29 10:02:42
467	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2NzEyNzU0MiwiZXhwIjoxNjY5NzE5NTQyfQ.g3FtMWMhShjF2bh72uz4S7IpFADAoKvgQ94dJxStUcQ	2022-10-30 18:59:02.021959	2022-11-29 10:59:02
468	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2NzEyNzU1NCwiZXhwIjoxNjY5NzE5NTU0fQ.dLTuaxVxrEpOshPwMQKf1zaNrplUw1C1Kw4MbD06d2g	2022-10-30 18:59:14.584228	2022-11-29 10:59:14
469	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY2NzEyOTU3OCwiZXhwIjoxNjY5NzIxNTc4fQ.zzF10YVRFVhnHXwO7mt-ZxKcHti5uyW9cXbrYSJvSx0	2022-10-30 19:32:58.636267	2022-11-29 11:32:58
470	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2NzEzMDY3MCwiZXhwIjoxNjY5NzIyNjcwfQ.EpUe0oz8DsCGLI8ydEN_EH6tIE4qkyv7eFIGhbx_HgU	2022-10-30 19:51:10.444789	2022-11-29 11:51:10
471	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2NzEzMDY4OCwiZXhwIjoxNjY5NzIyNjg4fQ.zw8I5HP1SLKujBKFtdiLZD7S4QxCCd8YFfM1k4JABjE	2022-10-30 19:51:28.380885	2022-11-29 11:51:28
472	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2NzIxODA3MSwiZXhwIjoxNjY5ODEwMDcxfQ.fgoBElpgi67IY0RGI57u9ho7hjBQQYwldwRWdWgW48g	2022-10-31 20:07:51.150307	2022-11-30 12:07:51
473	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2NzIxODY3NywiZXhwIjoxNjY5ODEwNjc3fQ.PesdZS9sYRAIy98NzfGbnDjQepkkB_MWHEHVdxwpkn0	2022-10-31 20:17:57.654791	2022-11-30 12:17:57
474	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2NzIyMDE2MCwiZXhwIjoxNjY5ODEyMTYwfQ.6_uaLnJ22fqyFyrKzICJP3YvuBSPov7seSiQ7yBPmqQ	2022-10-31 20:42:40.568877	2022-11-30 12:42:40
475	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2NzIyMTAyNCwiZXhwIjoxNjY5ODEzMDI0fQ.EYvLy6ZPr0C2LawqUKOYaXItfp4dso-uAYHoQZsJSho	2022-10-31 20:57:04.094062	2022-11-30 12:57:04
476	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2Nzk5MDMxMCwiZXhwIjoxNjcwNTgyMzEwfQ.d6vgo77WZoF8SdTcmIdZ_GyopTukofXZhsk2HfqaLCg	2022-11-09 18:38:30.953224	2022-12-09 10:38:30
477	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2Nzk5MDMyMCwiZXhwIjoxNjcwNTgyMzIwfQ.-vRcEjOUjeWzbg7ftKu8sIDO930mrV-BBzWSeMjuilk	2022-11-09 18:38:40.91578	2022-12-09 10:38:40
478	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE2NjgwMTg5MDYsImV4cCI6MTY3MDYxMDkwNn0.TcGfwx1vvG0KZrrSiqSGa4u-K4Jpn392Sh9-bXf8qS0	2022-11-10 02:35:06.562172	2022-12-09 18:35:06
479	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE2NjgwMTkwMDksImV4cCI6MTY3MDYxMTAwOX0.v5v926wylXWTBAH_Admx3c4PiX-0SgROnR_WI-UUQiE	2022-11-10 02:36:49.387483	2022-12-09 18:36:49
480	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE2NjgwMTkwMTMsImV4cCI6MTY3MDYxMTAxM30.vpA0HGcl8D-UTXYHDSNErgNBQKaKOuMxdxvxozc1SyI	2022-11-10 02:36:53.553471	2022-12-09 18:36:53
481	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE2NjgwMTkxNjYsImV4cCI6MTY3MDYxMTE2Nn0.LZveABzUlNSrDfx3jAJpxFX7K85u-Lt17XyIrgPgzyo	2022-11-10 02:39:26.767484	2022-12-09 18:39:26
482	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6OSwiaWF0IjoxNjY4MDIwODA5LCJleHAiOjE2NzA2MTI4MDl9.0G0vnIYS2GmQBpZZSb0WcZYMcVdgNV6QXMynwLgeH98	2022-11-10 03:06:49.815543	2022-12-09 19:06:49
483	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NiwiaWF0IjoxNjY4MDIwODc3LCJleHAiOjE2NzA2MTI4Nzd9.h37Yy3-jcN6lVaJLAtsB2SZmM-T8zszSsv1wEtB22TU	2022-11-10 03:07:57.304043	2022-12-09 19:07:57
484	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6OCwiaWF0IjoxNjY4MDIyMTgyLCJleHAiOjE2NzA2MTQxODJ9.utxXUI2LBoaE4MoV3py73ze1MJm_gijJphJdmxUUncg	2022-11-10 03:29:42.337168	2022-12-09 19:29:42
485	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6OCwiaWF0IjoxNjY4MDIyMjA1LCJleHAiOjE2NzA2MTQyMDV9.PRajBCCOGOl3lT9WbIpH9sB45rzrCfUK8sTEmH8v-5I	2022-11-10 03:30:05.471551	2022-12-09 19:30:05
486	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6OCwiaWF0IjoxNjY4MDIyMjE5LCJleHAiOjE2NzA2MTQyMTl9.RQErJM9l3kee2387Kt13w3VqY9rTC9uce7duAPIRE4s	2022-11-10 03:30:19.859913	2022-12-09 19:30:19
487	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6OCwiaWF0IjoxNjY4MDIyMjIzLCJleHAiOjE2NzA2MTQyMjN9.8hHG5bedC_gck6UrCEcYMfDO2-LI_WGGEYmqHuRudyM	2022-11-10 03:30:23.021723	2022-12-09 19:30:23
488	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6OCwiaWF0IjoxNjY4MDIyMzEzLCJleHAiOjE2NzA2MTQzMTN9.0z9SvHZwJ4OrL5E_YuWuRFOjmFtRZoPo_0_1tgGGZWg	2022-11-10 03:31:53.230697	2022-12-09 19:31:53
489	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NiwiaWF0IjoxNjY4MDIyMzM5LCJleHAiOjE2NzA2MTQzMzl9.fPIt8_x-gD7P96sR84nLWKUOhy6x-EWp7vn1oU-r3JU	2022-11-10 03:32:19.061341	2022-12-09 19:32:19
490	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NiwiaWF0IjoxNjY4MDIyNjQ4LCJleHAiOjE2NzA2MTQ2NDh9.uFjZI_hnhO8SzAGzB9qJdTmBlVNbx1qZ9KKbEpRNS00	2022-11-10 03:37:28.720884	2022-12-09 19:37:28
491	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NiwiaWF0IjoxNjY4MDIyNjUyLCJleHAiOjE2NzA2MTQ2NTJ9.Niwp_GptOCvwwj42c1glrWmYgM75CJ_r_r5dqCWYFJU	2022-11-10 03:37:32.188203	2022-12-09 19:37:32
492	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NiwiaWF0IjoxNjY4MDIyNjU0LCJleHAiOjE2NzA2MTQ2NTR9.x-4_Ebpxiiucs_dh_YZyVtYRrNpUROy5c_QMzyl7E3c	2022-11-10 03:37:34.377074	2022-12-09 19:37:34
493	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NiwiaWF0IjoxNjY4MDIyODMxLCJleHAiOjE2NzA2MTQ4MzF9.1rLqZEJmRSwr54Y_rV7nZ8yiH0FjOs27ih_PWgb1aFc	2022-11-10 03:40:31.431001	2022-12-09 19:40:31
494	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NiwiaWF0IjoxNjY4MDIyODM1LCJleHAiOjE2NzA2MTQ4MzV9.mA42qR9wAhusBQlfQ0CFLJA-qOFxWDUd8MbtibpfjOc	2022-11-10 03:40:35.688286	2022-12-09 19:40:35
495	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NiwiaWF0IjoxNjY4MTM4NDI5LCJleHAiOjE2NzA3MzA0Mjl9.7bprxx7bZQKW-rHXM4e9xoAXM_Ot4nfeO9ySr678F_I	2022-11-11 11:47:09.970558	2022-12-11 03:47:09
496	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NiwiaWF0IjoxNjY4MTM4ODI5LCJleHAiOjE2NzA3MzA4Mjl9.99DledHXOAyZ5TCAbYyj5eQ6oLldvfigpeHdP7puuqA	2022-11-11 11:53:49.929232	2022-12-11 03:53:49
497	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NiwiaWF0IjoxNjY4MTM4ODQ3LCJleHAiOjE2NzA3MzA4NDd9.2EhV0mzHavDEP183Vj01P8Ee8oXOwtyVnfi7kP2l-Hw	2022-11-11 11:54:07.676911	2022-12-11 03:54:07
498	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NiwiaWF0IjoxNjY4MTM4OTAzLCJleHAiOjE2NzA3MzA5MDN9.cJ1clOWL62xRRU_YZxbIS8e-2Cq1PteWFRzqLOLC1Xc	2022-11-11 11:55:03.038953	2022-12-11 03:55:03
499	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NiwiaWF0IjoxNjY4MTM4OTA2LCJleHAiOjE2NzA3MzA5MDZ9.h1AH-k_g8VmHP-xhUZcHLsVEigB4W_L6DlAZAZVHGA0	2022-11-11 11:55:06.802234	2022-12-11 03:55:06
500	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NiwiaWF0IjoxNjY4MTM4OTc4LCJleHAiOjE2NzA3MzA5Nzh9.oAzlfkdKru4vZQPu-Shc90Ie0axo50-KzjR6xFWc1gw	2022-11-11 11:56:18.501501	2022-12-11 03:56:18
501	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NiwiaWF0IjoxNjY4MTM5MTA5LCJleHAiOjE2NzA3MzExMDl9.X-empkwPDdkraZhrfB4khsnQgF6EdHyzOk9bgiCFAJU	2022-11-11 11:58:29.954529	2022-12-11 03:58:29
502	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NiwiaWF0IjoxNjY4MTM5MTQyLCJleHAiOjE2NzA3MzExNDJ9.oF3ixnOkjRrrv0WevC0CuGFi5ePu3bkAdY7pqSXUsmw	2022-11-11 11:59:02.887137	2022-12-11 03:59:02
503	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NiwiaWF0IjoxNjY4MTM5Mjk2LCJleHAiOjE2NzA3MzEyOTZ9.8lImzJpf0oqz_G_ahVrL6eeD4cdIFQ5WOxpDTaF2UkU	2022-11-11 12:01:36.666067	2022-12-11 04:01:36
504	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NiwiaWF0IjoxNjY4MTM5NDEzLCJleHAiOjE2NzA3MzE0MTN9.4AYdEj9OR7t06bNEILZfeWRXLGxavdvgzedd8n4oIdw	2022-11-11 12:03:33.740364	2022-12-11 04:03:33
505	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NiwiaWF0IjoxNjY4MTM5NTk5LCJleHAiOjE2NzA3MzE1OTl9.gPdcQhwjbJwTay95gH85cNfjXSlbv_512CZQyqQgORc	2022-11-11 12:06:39.563951	2022-12-11 04:06:39
506	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NiwiaWF0IjoxNjY4MTQ3MjU1LCJleHAiOjE2NzA3MzkyNTV9.84NAOAY8O2U7OETKIaa3vno7wQJ8vvqJRSgMHnMcosU	2022-11-11 14:14:15.752658	2022-12-11 06:14:15
507	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NiwiaWF0IjoxNjY4MTQ3Mjk4LCJleHAiOjE2NzA3MzkyOTh9.jFZF5fta-AnnM2yAdKp-t0ejnpZC4FO7OZ-XRfroJh0	2022-11-11 14:14:58.180087	2022-12-11 06:14:58
508	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NiwiaWF0IjoxNjY4MTQ5NTAwLCJleHAiOjE2NzA3NDE1MDB9.G_7aIBsty921OVUwQQ-sXnRoTCIA_QvXEfOKXf0Hz3U	2022-11-11 14:51:40.808636	2022-12-11 06:51:40
509	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NiwiaWF0IjoxNjY4MTUyNzEzLCJleHAiOjE2NzA3NDQ3MTN9.7Dffw6sb2m29tnut99LoIHWvVBBVj1CZM3t0X253U0I	2022-11-11 15:45:13.724107	2022-12-11 07:45:13
510	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NywiaWF0IjoxNjY4MTU0NDA0LCJleHAiOjE2NzA3NDY0MDR9.6UWZ0o0RjaY7MgPxNIC0wh3a83Oisz_xUUqvOXa8_I0	2022-11-11 16:13:24.415052	2022-12-11 08:13:24
511	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NiwiaWF0IjoxNjY4MTU1NzA3LCJleHAiOjE2NzA3NDc3MDd9.5Qhi-zLIlDHg16j3zuxWs3I350C1IbMq-HFlFxNrkO8	2022-11-11 16:35:07.300966	2022-12-11 08:35:07
512	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NiwiaWF0IjoxNjY4MTU3MjgzLCJleHAiOjE2NzA3NDkyODN9.6sYSuPqKIk5IH8011j8Z172wJDk0Alx6d7PT-4gLLbk	2022-11-11 17:01:23.182488	2022-12-11 09:01:23
513	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NiwiaWF0IjoxNjY4MTU3NzIzLCJleHAiOjE2NzA3NDk3MjN9.PJtTE1blbQ1HVSPRHz3V4jzY18pp_7cTLQHVedeovWk	2022-11-11 17:08:43.694746	2022-12-11 09:08:43
514	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTAsImlhdCI6MTY2ODIwNDQ0MywiZXhwIjoxNjcwNzk2NDQzfQ.N3bFFt__UAUWMXlEusSju4jOcGKJbqxKKc9yfJ-XnVM	2022-11-12 06:07:23.072713	2022-12-11 22:07:23
515	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTEsImlhdCI6MTY2ODIwNDk2MCwiZXhwIjoxNjcwNzk2OTYwfQ.dAJVLOmZcqhNLHj32tfatDhghEal-UPOWgXyqkleUGA	2022-11-12 06:16:00.236922	2022-12-11 22:16:00
516	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTIsImlhdCI6MTY2ODIwNTA4NCwiZXhwIjoxNjcwNzk3MDg0fQ.6k-QuziJv5Vjn5qgzu2BxJCaqNQBqc8milHX0lFu6R8	2022-11-12 06:18:04.652025	2022-12-11 22:18:04
517	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTMsImlhdCI6MTY2ODIwODI1MSwiZXhwIjoxNjcwODAwMjUxfQ.9Z4rfZ3aCpDM7JATr7lckXXrRT2oy4Is34sjd7kzr44	2022-11-12 07:10:51.056153	2022-12-11 23:10:51
518	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTQsImlhdCI6MTY2ODIwODQzOCwiZXhwIjoxNjcwODAwNDM4fQ.pKVg9CRCqU3p0I_oLLfD27P7KEm4poDGktmudJJwk2g	2022-11-12 07:13:58.889813	2022-12-11 23:13:58
519	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTUsImlhdCI6MTY2ODIwODU3MiwiZXhwIjoxNjcwODAwNTcyfQ.CXGJqs_kohaz5QI3Tnu4FThrcboi4-NcIDpQDsL8P4g	2022-11-12 07:16:12.983991	2022-12-11 23:16:12
520	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTYsImlhdCI6MTY2ODIwODgyOCwiZXhwIjoxNjcwODAwODI4fQ.AQEni5keFO1_M5JDFJgUbZqzlvgtvnhoZqWCnGGUrtk	2022-11-12 07:20:28.570738	2022-12-11 23:20:28
521	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NiwiaWF0IjoxNjY4MjEwMTcxLCJleHAiOjE2NzA4MDIxNzF9.Oz66FTaU1rBUrWPC1AZZhAFAaJwgKT3Mdq54sV6NSJ8	2022-11-12 07:42:51.020915	2022-12-11 23:42:51
522	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTYsImlhdCI6MTY2ODIxMDMyNSwiZXhwIjoxNjcwODAyMzI1fQ.p3SVROa3fRCP18lhNssGADv5zNlNTbYmFNQhUDYLkf8	2022-11-12 07:45:25.023637	2022-12-11 23:45:25
523	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTYsImlhdCI6MTY2ODIxMDM4OCwiZXhwIjoxNjcwODAyMzg4fQ.UglSmK6BTGXv9A7BUcQgEi09wvDmfNkTL7C32K4EPe8	2022-11-12 07:46:28.931181	2022-12-11 23:46:28
524	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NiwiaWF0IjoxNjY4MjExNDUxLCJleHAiOjE2NzA4MDM0NTF9.zWECcUUGouMDcKaEeBUepyspA34OnXEqm9iireH63Nw	2022-11-12 08:04:11.486305	2022-12-12 00:04:11
525	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2ODIxMTgzNiwiZXhwIjoxNjcwODAzODM2fQ.JHn1-MjVpXNACCUIgPLhUC94NmTIYMwS2HYeS3AqONQ	2022-11-12 08:10:36.528937	2022-12-12 00:10:36
526	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTYsImlhdCI6MTY2ODIxMTkxNCwiZXhwIjoxNjcwODAzOTE0fQ._YtlcgU1L_-EipJncgrN4qaRektxMKLdnoXKR-tzDas	2022-11-12 08:11:54.888359	2022-12-12 00:11:54
527	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTcsImlhdCI6MTY2ODIxMjcwMiwiZXhwIjoxNjcwODA0NzAyfQ.2E2CM2sJsiRQLS0hKBktqxK3AUPz2ZBqhSWJdmmYbTQ	2022-11-12 08:25:02.487545	2022-12-12 00:25:02
528	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTksImlhdCI6MTY2ODIxMjkzNCwiZXhwIjoxNjcwODA0OTM0fQ.oNKt9hTgq7vhxHmdnJ2aod3K4nhlULILFwL85elY1Uw	2022-11-12 08:28:54.577617	2022-12-12 00:28:54
529	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjAsImlhdCI6MTY2ODIxMjk3OSwiZXhwIjoxNjcwODA0OTc5fQ.U6J1dPwNe0jNdDh9r5-UrUE1QsijBRegCUzoQyA3dS8	2022-11-12 08:29:39.654481	2022-12-12 00:29:39
530	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjEsImlhdCI6MTY2ODIxMzE4NiwiZXhwIjoxNjcwODA1MTg2fQ.kD1btNSWl-GnoqLhAWrM8aBoHO5fkEb7uOLq-z1FPcw	2022-11-12 08:33:06.302245	2022-12-12 00:33:06
531	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjEsImlhdCI6MTY2ODIxMzMzMSwiZXhwIjoxNjcwODA1MzMxfQ.usQW0S3ZlfbJkQsyjBOHV9L0q16LDvlIsdOK_sQ8bGw	2022-11-12 08:35:31.537402	2022-12-12 00:35:31
532	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTYsImlhdCI6MTY2ODIxMzc2OSwiZXhwIjoxNjcwODA1NzY5fQ.RB6FLrNziEJJ-1MnJdKNgNqUzpJ2Fzr1xHMCynnIHdM	2022-11-12 08:42:49.793907	2022-12-12 00:42:49
533	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NiwiaWF0IjoxNjY4MjYxNDA0LCJleHAiOjE2NzA4NTM0MDR9.HEjwlDt7S_KNrhHTNPp6muwx8Qk9gIm8z2CUyH5ti1o	2022-11-12 21:56:44.176048	2022-12-12 13:56:44
534	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2ODI2MTQxOSwiZXhwIjoxNjcwODUzNDE5fQ.kThcg1ori-XvlE9pj7MYtZEqL77bpm_ZXLX0_K2mB4I	2022-11-12 21:56:59.584274	2022-12-12 13:56:59
535	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY2ODI2MTU0MiwiZXhwIjoxNjcwODUzNTQyfQ.Rnc-PaFbV16pdD7WVYNQIH_dFHaw4z2alh1zIboz2pU	2022-11-12 21:59:02.281512	2022-12-12 13:59:02
536	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2ODI2MTU1MSwiZXhwIjoxNjcwODUzNTUxfQ._YHPDKy3R49g8uznRl1G_mEnILEp857-JZ23Au4ZlTE	2022-11-12 21:59:11.544149	2022-12-12 13:59:11
537	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2ODI2MTg2NiwiZXhwIjoxNjcwODUzODY2fQ.crHPMrvll9vopmeTQ2K4cKB7LKFzMcodpMCOVdswXJk	2022-11-12 22:04:26.833502	2022-12-12 14:04:26
538	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2ODI2MTk1MSwiZXhwIjoxNjcwODUzOTUxfQ.ZKS9--CQxJTi90BoxVjAFXXl6qLYgJGR0D-Ks2CM-nI	2022-11-12 22:05:51.45122	2022-12-12 14:05:51
539	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2ODI2MTk3NiwiZXhwIjoxNjcwODUzOTc2fQ.8H89gUuvP9kKatladozBfnUtGO0Jr24LwLd2UoAQ4rY	2022-11-12 22:06:16.694862	2022-12-12 14:06:16
540	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NiwiaWF0IjoxNjY4MzczNDQyLCJleHAiOjE2NzA5NjU0NDJ9.5RjQWwGEFH1mZHILHNIVb92zj_ZZlEs9QP1ygKrGw6I	2022-11-14 05:04:02.119006	2022-12-13 21:04:02
541	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NiwiaWF0IjoxNjY4Mzc3NTY0LCJleHAiOjE2NzA5Njk1NjR9.jNOX_g07PV8TC51-R_854jhR-gvp-IgIv3836ElxDK4	2022-11-14 06:12:44.026138	2022-12-13 22:12:44
542	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NiwiaWF0IjoxNjY4MzgxMjY2LCJleHAiOjE2NzA5NzMyNjZ9.Sxfrptr298ctTBWytEN1cmzs6KvaoJDReGGgutMdrwE	2022-11-14 07:14:26.962404	2022-12-13 23:14:26
543	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NiwiaWF0IjoxNjY4MzkwMTY4LCJleHAiOjE2NzA5ODIxNjh9.UzIRRzHCFQKnWjSDDFCBs_1iTmkfPiZAKoa3H1fpRIM	2022-11-14 09:42:48.567808	2022-12-14 01:42:48
544	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NiwiaWF0IjoxNjY4Mzk0NTk2LCJleHAiOjE2NzA5ODY1OTZ9.MUOPicj3Azs6Dr84lNubPGgtMpyO48HwhWAxNyEDllQ	2022-11-14 10:56:36.992908	2022-12-14 02:56:36
545	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NiwiaWF0IjoxNjY4Mzk0NjA0LCJleHAiOjE2NzA5ODY2MDR9.2Qoaa2TcEwXuP8PEvUbhO_4Dc1zAeTIo3EsXr3XIU3w	2022-11-14 10:56:44.151655	2022-12-14 02:56:44
546	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2ODQ2MTYwNCwiZXhwIjoxNjcxMDUzNjA0fQ.FAAn8XfObAgPcs6avsauX5q4O_j7govU8QoDzLQq3M0	2022-11-15 05:33:24.993474	2022-12-14 21:33:24
547	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2ODQ2MjUyOCwiZXhwIjoxNjcxMDU0NTI4fQ.S4bDJPqOhA7yW27M1iA991mbQ_p_miLYzjzFCJ-qXd0	2022-11-15 05:48:48.97036	2022-12-14 21:48:48
548	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2ODQ2MjcxMiwiZXhwIjoxNjcxMDU0NzEyfQ.wtjVnmmXBeKNuPnR3vGt2WFQpIyAuiHyPEf-VuraGQg	2022-11-15 05:51:52.24541	2022-12-14 21:51:52
549	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY2ODQ2MzU4NywiZXhwIjoxNjcxMDU1NTg3fQ.ukoqH2gG_yvY1yCcYNIpm0p2P4xvp8zQjzTX-5NW0zY	2022-11-15 06:06:27.398226	2022-12-14 22:06:27
550	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2ODQ2MzYwMSwiZXhwIjoxNjcxMDU1NjAxfQ.N0FFJJic_u1-y8WdqZ-xtNz0jgHkZXpJcFTDj3FlnjE	2022-11-15 06:06:41.75006	2022-12-14 22:06:41
551	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2ODQ2MzYxNSwiZXhwIjoxNjcxMDU1NjE1fQ.5bwX-gFgKTCF0kuTaVXW8leRGuRnE8H9h3DM8_Hnocw	2022-11-15 06:06:55.310415	2022-12-14 22:06:55
552	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2ODQ2NDA3NSwiZXhwIjoxNjcxMDU2MDc1fQ.xKxczRsspZgV_Gqlt0uN9n6wpzpcuymw6xbYtfBp_58	2022-11-15 06:14:35.59381	2022-12-14 22:14:35
553	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2ODQ2NDIzNiwiZXhwIjoxNjcxMDU2MjM2fQ.RL324QfzY_aDVtVY0_b8cnniT88OqALwvjRN_Pn8-to	2022-11-15 06:17:16.819219	2022-12-14 22:17:16
554	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2ODQ2NDI0MiwiZXhwIjoxNjcxMDU2MjQyfQ.jm9Sk39xWdYY0rKN9xqwoTD_NuXIIxoElUX6FyTyimE	2022-11-15 06:17:22.518259	2022-12-14 22:17:22
555	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2ODQ2NDgxOSwiZXhwIjoxNjcxMDU2ODE5fQ.iLytoicWlTIZ38hT1IjgRqt-ayXPYK0EF1QUmNEqCUQ	2022-11-15 06:26:59.517688	2022-12-14 22:26:59
556	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2ODQ2NDk5NCwiZXhwIjoxNjcxMDU2OTk0fQ.RB2kDDOmPVmRC_gMP6OfylbjBWYnXSnTZ8uI_ug3jHg	2022-11-15 06:29:54.746073	2022-12-14 22:29:54
557	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2ODQ2OTE2OCwiZXhwIjoxNjcxMDYxMTY4fQ.ELlY7EoQDMjzwivMZzYh4h2LwG_ilVG034DBrr4K2QY	2022-11-15 07:39:28.967293	2022-12-14 23:39:28
558	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2ODQ4ODc3MCwiZXhwIjoxNjcxMDgwNzcwfQ.LepYhmmLJff7fzhcymfbGqNkwhVdHLxU2qjJPtZaTc0	2022-11-15 13:06:10.327524	2022-12-15 05:06:10
559	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2ODUzNjc3MiwiZXhwIjoxNjcxMTI4NzcyfQ.Uvv5oXPOsWn_7SfpYs4raok2H72C1SwGXckMNPYPIL4	2022-11-16 02:26:12.052048	2022-12-15 18:26:12
560	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2ODU0NTEyMCwiZXhwIjoxNjcxMTM3MTIwfQ.dISSls7QufCsgof4FQL7jkqZdHoK3n8XhUR7K6HxWPk	2022-11-16 04:45:20.495611	2022-12-15 20:45:20
561	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2ODU1MjMyNSwiZXhwIjoxNjcxMTQ0MzI1fQ.sGhJKsrxc50Sl1Mfwe4CT0gIrAkEWpQlQditNZJhEaA	2022-11-16 06:45:25.637341	2022-12-15 22:45:25
562	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NiwiaWF0IjoxNjY4NTY3OTkzLCJleHAiOjE2NzExNTk5OTN9.xyLxJAtXG5nx5DboH0swfOEtnORyP9yRziQ6Tw56crk	2022-11-16 11:06:33.473993	2022-12-16 03:06:33
563	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2ODU2ODI1NSwiZXhwIjoxNjcxMTYwMjU1fQ.F5xAO28GateGrEWHRWhJFLrREVKiQLp7Na3KbShHdLc	2022-11-16 11:10:55.548341	2022-12-16 03:10:55
564	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2ODU3MjI0MSwiZXhwIjoxNjcxMTY0MjQxfQ.4iDdoP10u9-j4c78_Dp-wg8R0bJYRtFBMN1X0TnRQ_o	2022-11-16 12:17:21.443719	2022-12-16 04:17:21
565	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2ODY0NzM1MSwiZXhwIjoxNjcxMjM5MzUxfQ.bzwCeg7HLHo2Sq1zY5IA_eAEPSshNZW5qCf65_3bq5A	2022-11-17 09:09:11.564171	2022-12-17 01:09:11
566	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2ODY1MTExMiwiZXhwIjoxNjcxMjQzMTEyfQ.Ax0T7t-BjpB2j66aJc3uuxJmCo4UmetopAOJOTRongU	2022-11-17 10:11:52.266384	2022-12-17 02:11:52
567	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2ODY1MzA0MCwiZXhwIjoxNjcxMjQ1MDQwfQ.QIvke7tX0yV7GVnJ-jS5ewQa4oT458N5VHHGkwt_C3o	2022-11-17 10:44:00.250777	2022-12-17 02:44:00
568	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2ODcwMTYxMSwiZXhwIjoxNjcxMjkzNjExfQ.eVqu97jW_mlMaOm-YHb3wbVc_x1QSoxorHIyweHlxJo	2022-11-18 00:13:31.762443	2022-12-17 16:13:31
569	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2ODcwNTU3MiwiZXhwIjoxNjcxMjk3NTcyfQ.zOK4JCsIxWSF5cLV-kav57iX0mVphJqyCJ2F1lo8bDY	2022-11-18 01:19:32.988682	2022-12-17 17:19:32
570	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2ODcxMDY2NSwiZXhwIjoxNjcxMzAyNjY1fQ.lAshv4sUf63mqkGrru5jl4G5QAO87xTCvTjFOxVKwx4	2022-11-18 02:44:25.902326	2022-12-17 18:44:25
571	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY2ODcxMTAyMSwiZXhwIjoxNjcxMzAzMDIxfQ.KPSw5XJLbdZlWz3NytlrI6oUbGTwty0yQUV43wtU_LQ	2022-11-18 02:50:21.189677	2022-12-17 18:50:21
572	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2ODcxMTE1MCwiZXhwIjoxNjcxMzAzMTUwfQ.8bi0_luJLrKhYg0NTpAvV7Homh6EgwHTrtjdlWIT54I	2022-11-18 02:52:30.459846	2022-12-17 18:52:30
573	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY2ODcxMTE1NywiZXhwIjoxNjcxMzAzMTU3fQ.m3mSDWbpA4Mt8q4N5IDCKwfzYb35i9r7hQo8xOpOIro	2022-11-18 02:52:37.951796	2022-12-17 18:52:37
574	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY2ODcxMTI2NiwiZXhwIjoxNjcxMzAzMjY2fQ.P6DMJ80_zCDkdNEKlC5N7hzWHcAbeSNY7eLsZNT3Tj4	2022-11-18 02:54:26.870016	2022-12-17 18:54:26
575	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2ODcxMTI3NiwiZXhwIjoxNjcxMzAzMjc2fQ.y5IuE1UDyf9q9N1xeBwuGuxdGzhvGzBBa0MDxhjudkE	2022-11-18 02:54:36.438021	2022-12-17 18:54:36
576	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2ODcxNDk3MywiZXhwIjoxNjcxMzA2OTczfQ.DwePqRg6UCKNiSDC9pdH0_6y01LzkEwe1EeRMVKEiKw	2022-11-18 03:56:13.891194	2022-12-17 19:56:13
577	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2ODcxODc4MywiZXhwIjoxNjcxMzEwNzgzfQ.UwDerMJXBjShkT3yAClkXihV2gRTMsZsn4ZR_8o2lVA	2022-11-18 04:59:43.322795	2022-12-17 20:59:43
578	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2ODcyMDczOSwiZXhwIjoxNjcxMzEyNzM5fQ.CjJVHvjC-FBxmoH9YSp0UvSbhxDD-lwJc-BGEXyNxlM	2022-11-18 05:32:19.106096	2022-12-17 21:32:19
579	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2ODcyNjY5MCwiZXhwIjoxNjcxMzE4NjkwfQ.fHSY0S857wEvN-B1ueXekN4U6Eptm9WN8qUYDNzmBKU	2022-11-18 07:11:30.475116	2022-12-17 23:11:30
580	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2ODg1MjkwOCwiZXhwIjoxNjcxNDQ0OTA4fQ.TtRDRHVtDnCxxxhO4KiczpGVjOqbPDD_eUmzMigTX54	2022-11-19 18:15:08.830828	2022-12-19 10:15:08
581	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2ODg4MTA3OCwiZXhwIjoxNjcxNDczMDc4fQ.qVamf2RLWluMuolkjSPPDzkKMJPQJncQvmUItxZh3m8	2022-11-20 02:04:38.624389	2022-12-19 18:04:38
582	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2ODg4NTE4MiwiZXhwIjoxNjcxNDc3MTgyfQ.g0TWw853XKpAI7TZys-cpvsEMGkvLs05Xu_rZ6n7a6Y	2022-11-20 03:13:02.754385	2022-12-19 19:13:02
583	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2ODg5MjQ0MCwiZXhwIjoxNjcxNDg0NDQwfQ.8fWtm7v8G2zj4AM8-h5GTfNuecgNABckU5e7yv1FR1A	2022-11-20 05:14:00.005475	2022-12-19 21:14:00
584	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2ODg5NDc4OSwiZXhwIjoxNjcxNDg2Nzg5fQ.TcQgoShqd30UmVrwflA-iq_j1rup8p_IfPcCHsjzF50	2022-11-20 05:53:09.762045	2022-12-19 21:53:09
585	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2ODg5NTA4OCwiZXhwIjoxNjcxNDg3MDg4fQ.kIhF-iUEZPMhX7pu5nOpfKJcpP7tTsbxGsgC8h0bYWI	2022-11-20 05:58:08.356677	2022-12-19 21:58:08
586	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2ODg5NTUwMywiZXhwIjoxNjcxNDg3NTAzfQ.aRBb6fCJSt4exQpKaw9LPF2aoaeT-MDxbgr05zRB9Yg	2022-11-20 06:05:03.295931	2022-12-19 22:05:03
587	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2ODg5OTE3MiwiZXhwIjoxNjcxNDkxMTcyfQ.DUOSHfC6Dzwr6bnMwByPm8AlyhrAL2bU1Ec4Gl-8IHc	2022-11-20 07:06:12.284328	2022-12-19 23:06:12
588	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2ODk3MzY4MCwiZXhwIjoxNjcxNTY1NjgwfQ.-h6hSRO-HqHhheijZzljoSwemwCMkB44CDQzNtj5Fmw	2022-11-21 03:48:00.795235	2022-12-20 19:48:00
589	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2ODk3NzMzMSwiZXhwIjoxNjcxNTY5MzMxfQ.7R4BbkmTvkIpAm6xgi_ciBOt410JT9GYwtLhNvufvxY	2022-11-21 04:48:51.595316	2022-12-20 20:48:51
590	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2ODk4MDYyMiwiZXhwIjoxNjcxNTcyNjIyfQ.e-LIcRFteyxtwrDHJXlaJ8a4knhPm9fBQPA47srC8Ms	2022-11-21 05:43:42.983788	2022-12-20 21:43:42
591	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2ODk4NTExMCwiZXhwIjoxNjcxNTc3MTEwfQ.OCOzB3EUPbUdyum0ZdZbPSr3zBZhQ9IHWgsr9KXbj8I	2022-11-21 06:58:30.137546	2022-12-20 22:58:30
592	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2ODk4NTQyNywiZXhwIjoxNjcxNTc3NDI3fQ.7-DAsLIQlBq8NIkYAMP9-P6u7XrSlhy2nx5oMWvB_DY	2022-11-21 07:03:47.809275	2022-12-20 23:03:47
593	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY2ODk4NTQzNywiZXhwIjoxNjcxNTc3NDM3fQ.wA_TebKvMbxY_fcPctCBHfRBzkjCsh8qClkkqA6AedA	2022-11-21 07:03:57.589629	2022-12-20 23:03:57
594	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2ODk5Mzk4OSwiZXhwIjoxNjcxNTg1OTg5fQ.jlOgdbwSWdO5gyxKi77qpeKgk0KbcxVFMIZerJhDYRM	2022-11-21 09:26:29.101401	2022-12-21 01:26:29
595	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2ODk5NDI0MSwiZXhwIjoxNjcxNTg2MjQxfQ.JcNmO0ThD3N8Q_KIZVvUPvtjufLvCPK3fxd5fHQ7A4E	2022-11-21 09:30:41.17976	2022-12-21 01:30:41
596	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2OTI1MDE0NSwiZXhwIjoxNjcxODQyMTQ1fQ.GPtg4v6P2rQWGtd-JIQtQeldoXmfBMXLH80bB_Fs4bU	2022-11-24 08:35:45.485009	2022-12-24 00:35:45
597	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2OTI1MDE4NywiZXhwIjoxNjcxODQyMTg3fQ.r2FfxHIlzOOEaRW3kzqciMyBz5XkUTM7msL6O-kOdrc	2022-11-24 08:36:27.278518	2022-12-24 00:36:27
598	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2OTY3NzY4OCwiZXhwIjoxNjcyMjY5Njg4fQ.bcycDfHcm0X0_Jr30Pv5TWPLC24xwaFALKY2fS_eue4	2022-11-29 07:21:28.062837	2022-12-28 23:21:28
599	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2OTY4MTMwMywiZXhwIjoxNjcyMjczMzAzfQ.YSC2WFfzDew2kBm_rLsE8Cl4rA-wCXafxz1P2-FYr9w	2022-11-29 08:21:43.746947	2022-12-29 00:21:43
600	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2OTY4Njk0MSwiZXhwIjoxNjcyMjc4OTQxfQ.IXKiAA03TtrsSiE5Ri3ZceC45blJpbrvRkanJr0nqAQ	2022-11-29 09:55:41.050678	2022-12-29 01:55:41
601	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2OTcxNjg0NCwiZXhwIjoxNjcyMzA4ODQ0fQ.bQxeOLnjEXIQl0cWzIZZRe4pxqdsMiBX_DgPpYOSBPw	2022-11-29 18:14:04.824587	2022-12-29 10:14:04
602	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2OTc2NTc3MywiZXhwIjoxNjcyMzU3NzczfQ.zNb4HnQvjOLS4TWtiKO8xcz1vUgDda-H5yglrgGKR-M	2022-11-30 07:49:33.32817	2022-12-29 23:49:33
603	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY2OTc2OTQ0MiwiZXhwIjoxNjcyMzYxNDQyfQ.JfeJIggIr2iKerulmQPuvdAmIR9oYhINPCQUCO6KviA	2022-11-30 08:50:42.684431	2022-12-30 00:50:42
604	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2OTc3NjE0OSwiZXhwIjoxNjcyMzY4MTQ5fQ.uTWPzSYyPxE1104vbrTx-yfXkWiahai6T-NGtkMnyF8	2022-11-30 10:42:29.482852	2022-12-30 02:42:29
605	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2OTc3OTIyNiwiZXhwIjoxNjcyMzcxMjI2fQ.aOSTpSIzP0ppjIWduzXzJbj7bu4mK5rLFek0Pf2HOsk	2022-11-30 11:33:46.782597	2022-12-30 03:33:46
606	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2OTc3OTIzNCwiZXhwIjoxNjcyMzcxMjM0fQ.hdbpAmivfRIsVNnPDnQ_C5-0LHJcUQ-de_n9l8wHkeY	2022-11-30 11:33:54.135506	2022-12-30 03:33:54
607	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2OTgwMzE1MSwiZXhwIjoxNjcyMzk1MTUxfQ.Z-5QVnmIg5Oq5n3Ip5wn4DAEmOh3bWaDp4vRzFwfZkc	2022-11-30 18:12:31.020069	2022-12-30 10:12:31
608	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2OTg0NTY0MiwiZXhwIjoxNjcyNDM3NjQyfQ.HIqQUOv98QVqd1efnGMkyXqY9bF91_zYSJ4VSKPOXrY	2022-12-01 06:00:42.845842	2022-12-30 22:00:42
609	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2OTg1OTUzOCwiZXhwIjoxNjcyNDUxNTM4fQ.97OUE8fVDGPGEWWQvpO34AC4Y3VCWTaq92zSDTEM8n4	2022-12-01 09:52:18.170046	2022-12-31 01:52:18
610	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2OTg2MzE3NywiZXhwIjoxNjcyNDU1MTc3fQ.TAB_awHcssh4GElEDd6JWh4FqDvuIluOZv07DkHWjbI	2022-12-01 10:52:57.040108	2022-12-31 02:52:57
611	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2OTg3Nzk5MCwiZXhwIjoxNjcyNDY5OTkwfQ.0d2Z-JFeVTu420AjXFb3ncasY5-XaR2pjacNC9c2B_A	2022-12-01 14:59:50.554071	2022-12-31 06:59:50
612	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2OTg4MjUzMCwiZXhwIjoxNjcyNDc0NTMwfQ.3PSpBAvdtnaUtn519qgLlnjSQYRd6fZFoBl4-D5NXXc	2022-12-01 16:15:30.842291	2022-12-31 08:15:30
613	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NjAsImlhdCI6MTY2OTg4NDg1NSwiZXhwIjoxNjcyNDc2ODU1fQ.wwC4nKKqEyK3T8C9nclCOmly9gAJuFVx8scjIsio3BI	2022-12-01 16:54:15.845947	2022-12-31 08:54:15
614	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NjEsImlhdCI6MTY2OTg4NTA0NSwiZXhwIjoxNjcyNDc3MDQ1fQ.Buq6YhIq6PDBCB2Igoss3QuQAHridNVEkfXciL6hSTY	2022-12-01 16:57:25.171375	2022-12-31 08:57:25
615	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2OTg4Nzg0OSwiZXhwIjoxNjcyNDc5ODQ5fQ.Dn7f-n6U0oJVJvEI9uHrPD5bsceBacSXqyiXMvy-j9A	2022-12-01 17:44:09.432686	2022-12-31 09:44:09
616	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NjIsImlhdCI6MTY2OTg4ODYxMSwiZXhwIjoxNjcyNDgwNjExfQ.-GD251A0WAae0nDT-qmW7EiRHh6Gue-DwBMsfwr5hG8	2022-12-01 17:56:51.724372	2022-12-31 09:56:51
617	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NjIsImlhdCI6MTY2OTg4ODY0MSwiZXhwIjoxNjcyNDgwNjQxfQ.QwSanXPfxZERoSx3lTdpRYnl149qiDr4Xmno1ieNA10	2022-12-01 17:57:21.199251	2022-12-31 09:57:21
618	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2OTg4ODcxMiwiZXhwIjoxNjcyNDgwNzEyfQ.7_X4C3ozcfyC-q0zvC_Obxd1RalLK2lztG32eg_FDQ4	2022-12-01 17:58:32.734407	2022-12-31 09:58:32
619	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY2OTg5NDY4MSwiZXhwIjoxNjcyNDg2NjgxfQ.XBUEtrP3bFGOPRClNhudsLygjkMWerB6-kVflNwUgow	2022-12-01 19:38:01.732348	2022-12-31 11:38:01
620	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2OTg5NTExNCwiZXhwIjoxNjcyNDg3MTE0fQ.njIH3iAiQJ9rIsPAuybw5Ox9u_fxWLDCsvFj76i5fq0	2022-12-01 19:45:14.018991	2022-12-31 11:45:14
621	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NjIsImlhdCI6MTY2OTg5NTM4OCwiZXhwIjoxNjcyNDg3Mzg4fQ.PCeqG_p7ThQs9GGuRYfQWmMn3g3KMH3cCPQ8Ljir8EM	2022-12-01 19:49:48.888879	2022-12-31 11:49:48
622	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2OTg5NTQ0MywiZXhwIjoxNjcyNDg3NDQzfQ.fMphqsi26WyceSu9-jNZuHn5GKyvZDpz9ADuSLzoNWI	2022-12-01 19:50:43.597495	2022-12-31 11:50:43
623	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NjMsImlhdCI6MTY2OTg5NjAyOCwiZXhwIjoxNjcyNDg4MDI4fQ.95obxJwqQhMWLsf7J0x6mVCvXePENssF3ElWurEr3js	2022-12-01 20:00:28.14668	2022-12-31 12:00:28
624	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NjQsImlhdCI6MTY2OTg5NjEwNywiZXhwIjoxNjcyNDg4MTA3fQ.4t275ys6r6a56FC5rln5L2ugCAamdXOXxyj9wn4xg1g	2022-12-01 20:01:47.73525	2022-12-31 12:01:47
625	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NjQsImlhdCI6MTY2OTg5NjEyMiwiZXhwIjoxNjcyNDg4MTIyfQ.yuh5juDGxKX3e_ml4YYO7bbC0fMhWRtOWllBkWOAmsM	2022-12-01 20:02:02.440776	2022-12-31 12:02:02
626	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2OTg5NjEzOCwiZXhwIjoxNjcyNDg4MTM4fQ.7xikwviY0VUsYhrM6kgGuuyzW2KPTKVXuwDXkWukSlw	2022-12-01 20:02:18.258391	2022-12-31 12:02:18
627	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NjQsImlhdCI6MTY2OTg5NjE3NCwiZXhwIjoxNjcyNDg4MTc0fQ.EQbGbEPHB6YO2SpxvZQ5LUlvYIy3OlmCJYReJZbBvMc	2022-12-01 20:02:54.541672	2022-12-31 12:02:54
628	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2OTg5OTE5OCwiZXhwIjoxNjcyNDkxMTk4fQ.VCg3jLejeJjSVXYo17mu5mnEjT1FzyfOAqYpWM_1Ymc	2022-12-01 20:53:18.718192	2022-12-31 12:53:18
629	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2OTkwOTc2NywiZXhwIjoxNjcyNTAxNzY3fQ.0UdHua8tK-_uOfRzfl2uEY2XsnZASaH7x1RjX-EVvOc	2022-12-01 23:49:27.625503	2022-12-31 15:49:27
630	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2OTk1MzkxOCwiZXhwIjoxNjcyNTQ1OTE4fQ.ejlghhyC7tHm7CjXJAWBt6JpK2nyKb2epGdeW1doffA	2022-12-02 12:05:18.212586	2023-01-01 04:05:18
631	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2OTk2NTQ0NywiZXhwIjoxNjcyNTU3NDQ3fQ.fRDURgaJw2oLYHONdDyDD7_YhE3qRukKGCAOOgtk35Q	2022-12-02 15:17:27.518745	2023-01-01 07:17:27
632	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY2OTk2NzgwMiwiZXhwIjoxNjcyNTU5ODAyfQ.wLGz5sVN27TiGJjXt2aJRyGDKEy2r7Zn3wSTKAHrCC0	2022-12-02 15:56:42.911941	2023-01-01 07:56:42
633	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MDIzNTc2NywiZXhwIjoxNjcyODI3NzY3fQ.Etn2TdSYFH70lkjm0LhiXu5uwndwtgPpyva5XtogWf8	2022-12-05 18:22:47.725626	2023-01-04 10:22:47
634	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDMwMjQ4NSwiZXhwIjoxNjcyODk0NDg1fQ.zDbk5xpfFWmeJFxOfyg2jpQxKDDr1l7RPwKR2iHXaMQ	2022-12-06 12:54:45.90894	2023-01-05 04:54:45
635	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDMwODk0MSwiZXhwIjoxNjcyOTAwOTQxfQ.rX2MC7K39X9mBdr2oHiMn_slKatYtA5nqwJ3pd1NLus	2022-12-06 14:42:21.384284	2023-01-05 06:42:21
636	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MDMxMTM4MiwiZXhwIjoxNjcyOTAzMzgyfQ.4gR3Uxz8OfZnDFEIBWzCAEnZ74oAr4WwFmTYzNAQB6I	2022-12-06 15:23:02.584004	2023-01-05 07:23:02
637	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MDMyMTMxMCwiZXhwIjoxNjcyOTEzMzEwfQ.NJ_1tHr3C3P7S6BdrIocrHV9FZ8oAEfG3Maw5jwKW5A	2022-12-06 18:08:30.597681	2023-01-05 10:08:30
638	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MDMyNTQ1MywiZXhwIjoxNjcyOTE3NDUzfQ.-WsUIWPn0_YsN05cZcPyGFcnWl5IXZE-QbDl3yAyCUI	2022-12-06 19:17:33.026706	2023-01-05 11:17:33
639	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTAsImlhdCI6MTY3MDMzNDg0MCwiZXhwIjoxNjcyOTI2ODQwfQ.CJT6H7F-S4lZ0R5QjUdGr2DIMkFYAObIpd04dWQlIP8	2022-12-06 21:54:00.207713	2023-01-05 13:54:00
640	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MDMzNTU1NywiZXhwIjoxNjcyOTI3NTU3fQ.qViuj5TKDcbYczF0P8Cpc0T4hHLvYSgGyM-admW-8FU	2022-12-06 22:05:57.534612	2023-01-05 14:05:57
641	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTAsImlhdCI6MTY3MDM1NDgzMCwiZXhwIjoxNjcyOTQ2ODMwfQ.450vtF0hc5bS1DIu-phm5AjhVgOeZfjekyfXDXvjsqA	2022-12-07 03:27:10.211184	2023-01-05 19:27:10
642	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MDM1NDg2OCwiZXhwIjoxNjcyOTQ2ODY4fQ.aeYStofYxkIb0jADtghlWsfKj7AlcraFUpvm1t1bs6g	2022-12-07 03:27:48.967085	2023-01-05 19:27:48
643	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MDM5MDc5NiwiZXhwIjoxNjcyOTgyNzk2fQ.3D0fb7YQIty5pwEtqlUAgGGoWnoasBIzKF4hrh0Effc	2022-12-07 13:26:36.580708	2023-01-06 05:26:36
644	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTAsImlhdCI6MTY3MDM5MTA0MiwiZXhwIjoxNjcyOTgzMDQyfQ.beYCvP4qlRvkCoLpI6_puKtmfj1bNH-5mAcw8MAAFkE	2022-12-07 13:30:42.607311	2023-01-06 05:30:42
645	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY3MDM5MjM3NCwiZXhwIjoxNjcyOTg0Mzc0fQ.BIwHfawylJyVlpBj3gEgNZGW6NzTn4WlWLXdtWQH75o	2022-12-07 13:52:54.409136	2023-01-06 05:52:54
646	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDM5MjM4MiwiZXhwIjoxNjcyOTg0MzgyfQ.Fo3gELcwpYNAJFrDGRVpEfbnzd7wsm_1WmMMDIBgHk8	2022-12-07 13:53:02.16669	2023-01-06 05:53:02
647	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTAsImlhdCI6MTY3MDQyMjQ4MSwiZXhwIjoxNjczMDE0NDgxfQ.msWvtL7A54dNaaT33_APupetddJQ7uTHr1_-ejNolrg	2022-12-07 22:14:41.25076	2023-01-06 14:14:41
648	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MDQyNTk5MSwiZXhwIjoxNjczMDE3OTkxfQ.FJtaSVh9BZJETMKEtfVDrZXS9gaKnEas9hi8163lsro	2022-12-07 23:13:11.643027	2023-01-06 15:13:11
649	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY3MDQyNjAzNSwiZXhwIjoxNjczMDE4MDM1fQ.4sx82T51Pf5gsoMkG6t5WuD5LNOOHonu7DjK2oe1SBI	2022-12-07 23:13:55.351229	2023-01-06 15:13:55
650	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MDQzMTU5NiwiZXhwIjoxNjczMDIzNTk2fQ.BHET8T4nh7b_0epvIXMf_82h2nHVVnxvEU8vulSe8vQ	2022-12-08 00:46:36.644613	2023-01-06 16:46:36
651	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTAsImlhdCI6MTY3MDQzMzQ5MiwiZXhwIjoxNjczMDI1NDkyfQ.AWUZ0FMCJVyPEXXfFAJdtWQolNgefmoiyjR20J53Uv8	2022-12-08 01:18:12.234539	2023-01-06 17:18:12
652	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY3MDQzMzUxNSwiZXhwIjoxNjczMDI1NTE1fQ.QXKooKp-isdG1j2CKRRUy6jAuTiOmPwl9wsNYxLTSik	2022-12-08 01:18:35.542813	2023-01-06 17:18:35
653	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY3MDQ3MDQ1NywiZXhwIjoxNjczMDYyNDU3fQ.y3x9mU9U5oQYGHg2SrWYFfbMlmXgMN8-wWXr4vpXZeo	2022-12-08 11:34:17.592987	2023-01-07 03:34:17
654	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTAsImlhdCI6MTY3MDQ3MTQwOSwiZXhwIjoxNjczMDYzNDA5fQ.q75bfCpqhf0YA4iTUeacczo7NN4yZV09FAMKlbSCBjs	2022-12-08 11:50:09.950342	2023-01-07 03:50:09
655	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTAsImlhdCI6MTY3MDQ3NTEwNCwiZXhwIjoxNjczMDY3MTA0fQ.yxhhnJu8P9Ziyh59ljqa04uXWOCSBcxvS3e19lkHC7I	2022-12-08 12:51:44.106738	2023-01-07 04:51:44
656	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTAsImlhdCI6MTY3MDQ4NTAzOSwiZXhwIjoxNjczMDc3MDM5fQ.TagHe29AQHFORMnHA-ltBV3uf7nb5MjJntW7EqtPaJY	2022-12-08 15:37:19.143349	2023-01-07 07:37:19
657	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MDQ4NzE5NCwiZXhwIjoxNjczMDc5MTk0fQ.3N0HYtbWI_EeNNDSYA7AsRruRr9YisqWXK0Xs1exXUw	2022-12-08 16:13:14.879653	2023-01-07 08:13:14
658	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MDQ5MDkwMSwiZXhwIjoxNjczMDgyOTAxfQ.HpkscH81PJ8QojddisAoY0XQy2sNkT28Fc83W8Jblyg	2022-12-08 17:15:01.498863	2023-01-07 09:15:01
659	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTAsImlhdCI6MTY3MDQ5MjgzNywiZXhwIjoxNjczMDg0ODM3fQ.SGd7tj2zdEwhRaVQwStdHknT-OsSlN-5249WlzibrNg	2022-12-08 17:47:17.683938	2023-01-07 09:47:17
660	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTAsImlhdCI6MTY3MDQ5MzMyNCwiZXhwIjoxNjczMDg1MzI0fQ.lmmm8GPTL-XtIYlmGOj9QY43PlV6WUyUdfZO_1WuAYs	2022-12-08 17:55:24.168017	2023-01-07 09:55:24
661	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY3MDQ5NDU4NywiZXhwIjoxNjczMDg2NTg3fQ.0Z4l6v7uN12pqO5kqLRCb-E3u3TrKhH2gzUc_vXFvrE	2022-12-08 18:16:27.851993	2023-01-07 10:16:27
662	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MDQ5NDYwOSwiZXhwIjoxNjczMDg2NjA5fQ.Nw_zODbtGFZ_Q6ld1WRmOE-CSVKnZtgDgy4eTosqzIk	2022-12-08 18:16:49.558749	2023-01-07 10:16:49
663	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTAsImlhdCI6MTY3MDQ5NTAxOSwiZXhwIjoxNjczMDg3MDE5fQ.Xf6UFLgT2qqDrJ1kqfD1rPTwplq3WWlX6nVLioABeXw	2022-12-08 18:23:39.346685	2023-01-07 10:23:39
664	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDQ5NjUwOSwiZXhwIjoxNjczMDg4NTA5fQ.C0Tw0trFlmdZDcEoVAilMBbeUZkVgyepXUbgAn5rips	2022-12-08 18:48:29.405222	2023-01-07 10:48:29
665	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MDQ5NjUyMCwiZXhwIjoxNjczMDg4NTIwfQ.2c_9w9BIwKbTxdF36JCq7jLN-y4Z7BrkuE29kAvFCjc	2022-12-08 18:48:40.588301	2023-01-07 10:48:40
666	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MDQ5Njg2OSwiZXhwIjoxNjczMDg4ODY5fQ.hIH25LWaXbGeWyacFgcg6jglvexMtj5lGiIQXkXCd8M	2022-12-08 18:54:29.587462	2023-01-07 10:54:29
667	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NjUsImlhdCI6MTY3MDQ5NzQ1MSwiZXhwIjoxNjczMDg5NDUxfQ.JLJDQfuI0KJZh4QuLPxoEJ6d2mVw5OOX9FYsfwpfnkU	2022-12-08 19:04:11.833594	2023-01-07 11:04:11
668	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NjUsImlhdCI6MTY3MDQ5NzQ2MCwiZXhwIjoxNjczMDg5NDYwfQ.vlfNt3mms34AT7AwHttq33d-WTGFQ8gn23BthYPfXwc	2022-12-08 19:04:20.237461	2023-01-07 11:04:20
669	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MDQ5NzQ4MCwiZXhwIjoxNjczMDg5NDgwfQ.1E9EVDUFZpey8W_n2SI8jsY9CLsrxVQKwNjVB4I9_pY	2022-12-08 19:04:40.524486	2023-01-07 11:04:40
670	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTAsImlhdCI6MTY3MDQ5NzU0NiwiZXhwIjoxNjczMDg5NTQ2fQ.gSTn9845RPexSKh9meSPzF6bSIWfyh2Efj3jIxJw9js	2022-12-08 19:05:46.399788	2023-01-07 11:05:46
671	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MDUzNDgyMiwiZXhwIjoxNjczMTI2ODIyfQ.lUNqrT4wZY9IVXq80Mo3vtR5V6I7iunFAFaNFc3K1Zo	2022-12-09 05:27:02.5173	2023-01-07 21:27:02
672	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTAsImlhdCI6MTY3MDUzNTA5NywiZXhwIjoxNjczMTI3MDk3fQ.BSmjpfaSqdJV8BRJ67m_RZc3fSWfywD6B1r6mp6T9R0	2022-12-09 05:31:37.923068	2023-01-07 21:31:37
673	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MDUzNTM2OSwiZXhwIjoxNjczMTI3MzY5fQ.2HnHIZgjVMxVf55DyGRTwhIV49p65QV6cm93gv_CGAw	2022-12-09 05:36:09.911688	2023-01-07 21:36:09
674	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MDU0MjE2MiwiZXhwIjoxNjczMTM0MTYyfQ.f6_NaxO_vIjKF7GqzFKCJ42oBRD4-ahonXCMYSxua8M	2022-12-09 07:29:22.738528	2023-01-07 23:29:22
675	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDU4NzAyNSwiZXhwIjoxNjczMTc5MDI1fQ.PGxV5rF0Fj6n7AsuBeoLES2AL--dueccYLvKP5Lhrco	2022-12-09 11:57:05.57641	2023-01-08 11:57:05
676	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDU4NzYyNiwiZXhwIjoxNjczMTc5NjI2fQ.YY7rBqSw0GcDiN5PIDK8zgre8PvgGALpeECRy-6I6Jo	2022-12-09 12:07:06.483614	2023-01-08 12:07:06
677	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MDU4NzY0NiwiZXhwIjoxNjczMTc5NjQ2fQ.guggOVB8x2gqzZvTMbwteOf0Oehyys9xOTrrYd_XpdE	2022-12-09 12:07:26.290666	2023-01-08 12:07:26
678	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MDU4OTg5MCwiZXhwIjoxNjczMTgxODkwfQ.0mE2zHBFhoEv1Dh-2_u8tPDx3_NWK6OeGkAS7V4TBrg	2022-12-09 12:44:50.871309	2023-01-08 12:44:50
679	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MDU4OTkyNCwiZXhwIjoxNjczMTgxOTI0fQ.pnQ4YyFZTTnf_8yBEcvzbvhjJdkhhhGOX4tsZyp-6JE	2022-12-09 12:45:24.626237	2023-01-08 12:45:24
680	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MDU5ODIwOCwiZXhwIjoxNjczMTkwMjA4fQ.Fjmnsz_m1a_0QfWJDZSYQp5ujR7aw4OiF-l67Ry1wWc	2022-12-09 15:03:28.268144	2023-01-08 15:03:28
681	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDU5ODI2MCwiZXhwIjoxNjczMTkwMjYwfQ.y8STRnKKDLNdUeZqi__9JyKSyh_Sh3EArjVBX0ta9sE	2022-12-09 15:04:20.824696	2023-01-08 15:04:20
682	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDU5ODMyMywiZXhwIjoxNjczMTkwMzIzfQ.Mb5dfPE5SLcAWgo397GzPeO-laligYiBlS0ixG90ePU	2022-12-09 15:05:23.24106	2023-01-08 15:05:23
683	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDU5ODgwNSwiZXhwIjoxNjczMTkwODA1fQ.xm92O_U5GjgBccUBuP_R98Zy7Jdog5GerIeLnhkjUkE	2022-12-09 15:13:25.276559	2023-01-08 15:13:25
684	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDU5ODgzNiwiZXhwIjoxNjczMTkwODM2fQ.w5nF196F0wpRTaLnwbN3mKujzAwxRUj2Z5c1GIyax9k	2022-12-09 15:13:56.097134	2023-01-08 15:13:56
685	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTAsImlhdCI6MTY3MDU5ODg0OSwiZXhwIjoxNjczMTkwODQ5fQ.QOSlH-vjF90U3-ZcZLVNGsJK08pp7Ke7I3pZAhw0ZOM	2022-12-09 15:14:09.354433	2023-01-08 15:14:09
686	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDYwMTU4NCwiZXhwIjoxNjczMTkzNTg0fQ.--EkcLWU_2oGszbpv1cxHR9Rr8AI697SDnjwsU4lIgw	2022-12-09 15:59:44.95759	2023-01-08 15:59:44
687	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MDYwNDk0NywiZXhwIjoxNjczMTk2OTQ3fQ.aOADeGSFCXTDoZSHMEWDfqC0PusQqc9YhduNhdYg_YE	2022-12-09 16:55:47.863289	2023-01-08 16:55:47
688	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDYzNDA4MiwiZXhwIjoxNjczMjI2MDgyfQ._roQh3ivUHnp92bmBYy0V3JKIYGNKy6lN69PdLie5kI	2022-12-10 01:01:22.68418	2023-01-09 01:01:22
689	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDYzNDIxNSwiZXhwIjoxNjczMjI2MjE1fQ.zF682smflwxpvhg6aGmZorSzRiP_CB-gLOFK6z4sccI	2022-12-10 01:03:35.120355	2023-01-09 01:03:35
690	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDY0MjIyMywiZXhwIjoxNjczMjM0MjIzfQ.rtohIvm8s8WvvPfrQMNHWKgycOGxGAqtF8fMxMK653E	2022-12-10 03:17:03.249254	2023-01-09 03:17:03
691	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDY0NDYwNiwiZXhwIjoxNjczMjM2NjA2fQ.1Svq_5VARDX6sPKcRl7FujZxv3Ekf6t5ISKAGPvkiAE	2022-12-10 03:56:46.222779	2023-01-09 03:56:46
692	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NjYsImlhdCI6MTY3MDY0NDg5NCwiZXhwIjoxNjczMjM2ODk0fQ.Z4ho4c4HxN4sxs0rorwJ4MdSH-0ZEci6a7xKB0qYYeQ	2022-12-10 04:01:34.420624	2023-01-09 04:01:34
693	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MDY0OTE0OCwiZXhwIjoxNjczMjQxMTQ4fQ.GfWja-k7dlYCkg2N4pxm57z2GaPYd7-jdPvOPz0Q_FM	2022-12-10 05:12:28.853811	2023-01-09 05:12:28
694	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDY1MDc1OSwiZXhwIjoxNjczMjQyNzU5fQ.Ri7b_AY1LzKohT78eC2si4LfXEkkgrayxr-ZRnFUFMo	2022-12-10 05:39:19.320943	2023-01-09 05:39:19
695	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDY5NTE5NSwiZXhwIjoxNjczMjg3MTk1fQ.CgKoNFzeV_G57gdIZfTsgMJ0Tyeboklpf7C7V9tW2mw	2022-12-10 17:59:55.860775	2023-01-09 17:59:55
696	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTAsImlhdCI6MTY3MDY5NTI0NCwiZXhwIjoxNjczMjg3MjQ0fQ.XYKhlwsTJ493OhsMd8wlrn-fpjLhB7F1oWBM20DynFo	2022-12-10 18:00:44.864541	2023-01-09 18:00:44
697	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDcwMDIwNSwiZXhwIjoxNjczMjkyMjA1fQ.AzPoqTnOj2EPaYbEjoMzKxTsPrU7taIK2zWLKLLZ6oE	2022-12-10 19:23:25.371428	2023-01-09 19:23:25
698	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDc2OTQwMywiZXhwIjoxNjczMzYxNDAzfQ.i9D5AbOGw0_yAjqmVfbYxONWcG_z3xPT_75TaPOch5o	2022-12-11 14:36:43.304305	2023-01-10 14:36:43
699	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTAsImlhdCI6MTY3MDgyOTk2MCwiZXhwIjoxNjczNDIxOTYwfQ.BBn64JkTTYRU9HAot93Ac1GaAJ1JJivk5hzDpPt91qg	2022-12-12 07:26:00.476327	2023-01-11 07:26:00
700	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MDgzMDE4MywiZXhwIjoxNjczNDIyMTgzfQ.3v8u5KjSu3fjvo8LO67cFfqF5hTor6Un7A_ALWEgGnI	2022-12-12 07:29:43.543772	2023-01-11 07:29:43
701	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDgzMTE3NywiZXhwIjoxNjczNDIzMTc3fQ.yRP3rRcByrwIGVIHmGvZNHNpxdGJ6q3fkYWYyT0lyhY	2022-12-12 07:46:17.553295	2023-01-11 07:46:17
702	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTYsImlhdCI6MTY3MDgzMTM3NSwiZXhwIjoxNjczNDIzMzc1fQ.ez7lJqt93sI5ErtBEp1XNPwnLX4syno5OaVGJ7L7z70	2022-12-12 07:49:35.767154	2023-01-11 07:49:35
703	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTYsImlhdCI6MTY3MDgzMTQzNSwiZXhwIjoxNjczNDIzNDM1fQ.qbyJgSgqJxtdv5ztYri_7op_2R8qBke_2DzUqY8RR7w	2022-12-12 07:50:35.777007	2023-01-11 07:50:35
704	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTYsImlhdCI6MTY3MDgzMTQzNywiZXhwIjoxNjczNDIzNDM3fQ.7vyjqp5B2GsHdNwLRF0cC6FB2LdUXst15iYP6mD2sT0	2022-12-12 07:50:37.368507	2023-01-11 07:50:37
705	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTYsImlhdCI6MTY3MDgzMTY4MCwiZXhwIjoxNjczNDIzNjgwfQ.9h0Wb3xrH4lqltEX5pFhq7NLOMVe3USAse3KzB-kpGw	2022-12-12 07:54:40.237215	2023-01-11 07:54:40
706	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTYsImlhdCI6MTY3MDgzMTk0MSwiZXhwIjoxNjczNDIzOTQxfQ.Sd_RcYtrfINUEu11LG0bhcPUagNaGHQBbH7Caoaa28E	2022-12-12 07:59:01.556961	2023-01-11 07:59:01
707	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTYsImlhdCI6MTY3MDgzMjM5MCwiZXhwIjoxNjczNDI0MzkwfQ.THaY0DHu74UKSQpDYOnh62lV282Q6xFMqxOqVqJUKnI	2022-12-12 08:06:30.659976	2023-01-11 08:06:30
708	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDgzMjM5MCwiZXhwIjoxNjczNDI0MzkwfQ.wViXfRf5v61u-tdlqq9sw8tvE3BC3x8J_ranrxaz9aE	2022-12-12 08:06:30.950543	2023-01-11 08:06:30
709	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTYsImlhdCI6MTY3MDgzMjM5MSwiZXhwIjoxNjczNDI0MzkxfQ.uQrhyyo4pcmiOV8mG2ix8YY1_1Te1pebUTT4GjbU2C8	2022-12-12 08:06:31.099364	2023-01-11 08:06:31
710	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjIsImlhdCI6MTY3MDgzMjgxMSwiZXhwIjoxNjczNDI0ODExfQ.rmDd6HkKf0-H_aZNvIopNGoT9X1R3JmvfKCbV9X-Wh8	2022-12-12 08:13:31.558493	2023-01-11 08:13:31
711	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDgzNDg0NCwiZXhwIjoxNjczNDI2ODQ0fQ.TKAuIyU5Gfmo-Xpg_JhaE6ke_sb2yW91jnjsMb2Zv00	2022-12-12 08:47:24.85981	2023-01-11 08:47:24
712	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDgzNTEyMiwiZXhwIjoxNjczNDI3MTIyfQ.Lheb98S6hm4ZPVIHkmEkysJpqkMmw_3FgbaKSUsgX9c	2022-12-12 08:52:02.907971	2023-01-11 08:52:02
713	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjIsImlhdCI6MTY3MDgzNzg3MSwiZXhwIjoxNjczNDI5ODcxfQ.C7eTKAVe-ypKjj6NBGC2eAFNYQomO7V4blP6u_VgnGk	2022-12-12 09:37:51.349845	2023-01-11 09:37:51
714	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjIsImlhdCI6MTY3MDgzNzk4NiwiZXhwIjoxNjczNDI5OTg2fQ.Fph-yc3GZXSE_E8j8B04fjAmmqxHStLiLkPLwWr7iZY	2022-12-12 09:39:46.334984	2023-01-11 09:39:46
715	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjIsImlhdCI6MTY3MDg1NTQ1MiwiZXhwIjoxNjczNDQ3NDUyfQ.WRxdEDCXZVhKhRknbPMs3awi8-qYwaFiUoO4U5DfzuQ	2022-12-12 14:30:52.138354	2023-01-11 14:30:52
716	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjIsImlhdCI6MTY3MDg1NjAzNCwiZXhwIjoxNjczNDQ4MDM0fQ.oBjlQ2mfTGFmqsVsuO7i9XyAbj2198ca4u9hmNdwYbk	2022-12-12 14:40:34.262004	2023-01-11 14:40:34
717	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjMsImlhdCI6MTY3MDg1OTA1OSwiZXhwIjoxNjczNDUxMDU5fQ.YeEQduxbtDg79WUfPLk2u5ZLkoa9xzcOgTuFhGVUqKI	2022-12-12 15:30:59.837787	2023-01-11 15:30:59
718	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTAsImlhdCI6MTY3MDg2MDI5MywiZXhwIjoxNjczNDUyMjkzfQ.7BFROHZGdmfoXTAz0OKgGiGdih2vj9Cbv-b8IJq0ZZ8	2022-12-12 15:51:33.650195	2023-01-11 15:51:33
719	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTAsImlhdCI6MTY3MDg2MDI5NCwiZXhwIjoxNjczNDUyMjk0fQ.CmMAfg8ZtrJ9JqM43JrGleiJXmeerYMBBV0E6gambM4	2022-12-12 15:51:34.380435	2023-01-11 15:51:34
720	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjQsImlhdCI6MTY3MDg2MDkwNiwiZXhwIjoxNjczNDUyOTA2fQ.-3nLKoh1Ye8yHvF6Zbpr8bNd6hRbd4AyAhq3onDTBrE	2022-12-12 16:01:46.122349	2023-01-11 16:01:46
721	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDg2MjEzMSwiZXhwIjoxNjczNDU0MTMxfQ.urjP7Uz4KGNg2u01rx1k38Tbd_ZqIbEPOioLgBnqAZw	2022-12-12 16:22:11.035664	2023-01-11 16:22:11
722	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjQsImlhdCI6MTY3MDg2MjI3NiwiZXhwIjoxNjczNDU0Mjc2fQ.z5PBNjMlh-oO8f-X74Th5hDKLKIqetojv8JXfuhaYLw	2022-12-12 16:24:36.097491	2023-01-11 16:24:36
723	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjQsImlhdCI6MTY3MDg2MjM1MywiZXhwIjoxNjczNDU0MzUzfQ.bDtwm9M8Y_Md58jHD7qtwbpVi6jn_3OHyQ7AFbi5NR8	2022-12-12 16:25:53.051514	2023-01-11 16:25:53
724	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjUsImlhdCI6MTY3MDg2MjY3MywiZXhwIjoxNjczNDU0NjczfQ.kGtVe6UBqHzumI-3UvVVI5WLzj5xBEQNYuTC7NNz4X4	2022-12-12 16:31:13.840013	2023-01-11 16:31:13
725	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjUsImlhdCI6MTY3MDg2MjcyMSwiZXhwIjoxNjczNDU0NzIxfQ.HJR-WnSM7pulmUj4BZd58JaQVEIgpFGlvUqooeKs83k	2022-12-12 16:32:01.515598	2023-01-11 16:32:01
726	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjUsImlhdCI6MTY3MDg2MjczMCwiZXhwIjoxNjczNDU0NzMwfQ.ulzFeLMxyD7GL5ZqSlQ-URQhUkV9bWLFXBgd3n5miIY	2022-12-12 16:32:10.088987	2023-01-11 16:32:10
727	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjUsImlhdCI6MTY3MDg2Mjc0OCwiZXhwIjoxNjczNDU0NzQ4fQ.tWUKt31ZA97lGIlMkasSKH3ziutuH-ZeI5yqJbDrJqU	2022-12-12 16:32:28.761107	2023-01-11 16:32:28
728	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjUsImlhdCI6MTY3MDg2Mjc5MCwiZXhwIjoxNjczNDU0NzkwfQ.tyTQDThb3Z5TcHgu34G97DKS9X0Lnb_9ytpMWiUFOjM	2022-12-12 16:33:10.896898	2023-01-11 16:33:10
729	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjUsImlhdCI6MTY3MDg2Mjc5OSwiZXhwIjoxNjczNDU0Nzk5fQ.svNv1LmtAHuU8cy21XzK7kKh0v9zawXPhR8k3T1qO0c	2022-12-12 16:33:19.998491	2023-01-11 16:33:19
730	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDg2MzExNiwiZXhwIjoxNjczNDU1MTE2fQ.zDHI-ODOKGTSsFbd1o3FcPSz7tCVMQTcQv1FFeQBLIk	2022-12-12 16:38:36.672641	2023-01-11 16:38:36
731	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDg2MzIwNiwiZXhwIjoxNjczNDU1MjA2fQ.OPXtCT71UODSxp1SpmA0Fp9W88r3vooKWlGrczgaXKo	2022-12-12 16:40:06.521366	2023-01-11 16:40:06
732	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTYsImlhdCI6MTY3MDg4NjQ1OSwiZXhwIjoxNjczNDc4NDU5fQ.QHKoF-gkoGDod2kXJHSDUPtOKyhrrgvf-IJosTYceo4	2022-12-12 23:07:39.206089	2023-01-11 23:07:39
733	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDg4NjYyNiwiZXhwIjoxNjczNDc4NjI2fQ.t572cePdLyVxzN3cRJa9wj61QIjR3ySnYtW1mhxB74o	2022-12-12 23:10:26.050493	2023-01-11 23:10:26
734	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjIsImlhdCI6MTY3MDg4Njg1NywiZXhwIjoxNjczNDc4ODU3fQ.EXgvLLtq8YIR00CKhUw5UKHcqSYlDUk1jZP_85niSpw	2022-12-12 23:14:17.773771	2023-01-11 23:14:17
735	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDg4ODk4MywiZXhwIjoxNjczNDgwOTgzfQ.ReF4QIjDpNY9p1zMsqCH-4cy12lAijChzAd7aBvkSHw	2022-12-12 23:49:43.03442	2023-01-11 23:49:43
736	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjIsImlhdCI6MTY3MDkxMzI0MywiZXhwIjoxNjczNTA1MjQzfQ.p1LshiiKwFnFVPuxWd-VWX8g9qt_Q1XFFBExXTieriI	2022-12-13 06:34:03.675332	2023-01-12 06:34:03
737	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjIsImlhdCI6MTY3MDkxNzQ4OSwiZXhwIjoxNjczNTA5NDg5fQ.74YDXJJM_S7QQ0W0pAhmvscooLxBnaAd7PkwujNfnvE	2022-12-13 07:44:49.705782	2023-01-12 07:44:49
738	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjIsImlhdCI6MTY3MDkxNzQ5MCwiZXhwIjoxNjczNTA5NDkwfQ.VtZS7fBoTL8Ak34P3ptQLsiqwb7u6N-U6YPCxPoi71w	2022-12-13 07:44:50.33839	2023-01-12 07:44:50
739	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjIsImlhdCI6MTY3MDkxNzQ5MCwiZXhwIjoxNjczNTA5NDkwfQ.VtZS7fBoTL8Ak34P3ptQLsiqwb7u6N-U6YPCxPoi71w	2022-12-13 07:44:50.887369	2023-01-12 07:44:50
740	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjYsImlhdCI6MTY3MDkyMDYyMiwiZXhwIjoxNjczNTEyNjIyfQ.x0eWQ2CFwz3g08FdOh5Kg1Z64tb0CGF2IrJYzejT7gI	2022-12-13 08:37:02.267624	2023-01-12 08:37:02
741	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTAsImlhdCI6MTY3MDkyMjQ3NiwiZXhwIjoxNjczNTE0NDc2fQ.RxnNSXKq8d6WWpogxk_0nX5bb1t-cGNrHMCFLMbQwtY	2022-12-13 09:07:56.563821	2023-01-12 09:07:56
742	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTAsImlhdCI6MTY3MDkyOTU4MiwiZXhwIjoxNjczNTIxNTgyfQ.cFBmKxWBg5F-_fiuJvhXfp3mNxPenfCKSsBUelwg22Y	2022-12-13 11:06:22.578182	2023-01-12 11:06:22
743	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTAsImlhdCI6MTY3MDkyOTU4MywiZXhwIjoxNjczNTIxNTgzfQ.MM6gfJf5UtsOv5-d-M4ZwuhJX5uuO7SsIIsioUXQj-8	2022-12-13 11:06:23.995698	2023-01-12 11:06:23
744	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDkzMTM2NiwiZXhwIjoxNjczNTIzMzY2fQ.UuFedOylv6DXaHNEqU6BpW5LVkJvih0OWwMmhhAMCLo	2022-12-13 11:36:06.885992	2023-01-12 11:36:06
745	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDkzMTM2NiwiZXhwIjoxNjczNTIzMzY2fQ.UuFedOylv6DXaHNEqU6BpW5LVkJvih0OWwMmhhAMCLo	2022-12-13 11:36:06.935692	2023-01-12 11:36:06
746	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDkzNDMxOSwiZXhwIjoxNjczNTI2MzE5fQ.tkZVYdlw8cIyFcoRCnxVb7ziHqJwlaaQ2Rjkrj4jgvs	2022-12-13 12:25:19.108328	2023-01-12 12:25:19
747	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDkzNDgwNCwiZXhwIjoxNjczNTI2ODA0fQ.wliT5SnoNqVluj7L9ItJ4kw7v1hJoie1mvtV2-ND9rs	2022-12-13 12:33:24.757976	2023-01-12 12:33:24
748	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDkzNzg4NCwiZXhwIjoxNjczNTI5ODg0fQ.mW61AOuO8MmBncBIcOJyKAyWACkFBifGY6QglX9Zgu8	2022-12-13 13:24:44.482954	2023-01-12 13:24:44
749	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDkzODAxOCwiZXhwIjoxNjczNTMwMDE4fQ.uZaLidrGi4YIWo-_CNzbbqtgiE0YSR1GDoH5-_0-Emo	2022-12-13 13:26:58.632747	2023-01-12 13:26:58
750	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjcsImlhdCI6MTY3MDkzOTI5NSwiZXhwIjoxNjczNTMxMjk1fQ.3QhO0zayHQ8-ZtAjJ_jtd5rIV18qODPRa1Hm49GTXhU	2022-12-13 13:48:15.445193	2023-01-12 13:48:15
751	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDk0NTE2MywiZXhwIjoxNjczNTM3MTYzfQ.QtaHl_zsMU4ols92nnwtoMdn2GVFTmfsD3sT1Ch3wcg	2022-12-13 15:26:03.486783	2023-01-12 15:26:03
752	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDk0NTE2MywiZXhwIjoxNjczNTM3MTYzfQ.QtaHl_zsMU4ols92nnwtoMdn2GVFTmfsD3sT1Ch3wcg	2022-12-13 15:26:03.49218	2023-01-12 15:26:03
753	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MDk0NjM5NywiZXhwIjoxNjczNTM4Mzk3fQ.bSagFUWhmGagiJ4NHVonYcSeUzszLy0ao6uAH5rkbiw	2022-12-13 15:46:37.983526	2023-01-12 15:46:37
754	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDk0OTMyMCwiZXhwIjoxNjczNTQxMzIwfQ.JAiUlKWj87EO9cp0JAkzRLckrU1SZocBhVUD_Cc-FQ4	2022-12-13 16:35:20.990261	2023-01-12 16:35:20
755	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDk0OTcwMSwiZXhwIjoxNjczNTQxNzAxfQ.BDsSPTql-e1IND0P1JywjEj5_DCiYCnQ0Xy-UxDvc3Y	2022-12-13 16:41:41.27337	2023-01-12 16:41:41
756	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDk0OTgyMywiZXhwIjoxNjczNTQxODIzfQ.4Pv8U-wYqstp_kZGA1AJmD5EbSnd9cwu6hJdWBjHbGc	2022-12-13 16:43:43.32951	2023-01-12 16:43:43
757	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjgsImlhdCI6MTY3MDk1MDA5OSwiZXhwIjoxNjczNTQyMDk5fQ.jVA_uLa6MnVPQHfNJVulLFadIHt-ME5wFr7ppQqgTuM	2022-12-13 16:48:19.441102	2023-01-12 16:48:19
758	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjgsImlhdCI6MTY3MDk1MDI4MywiZXhwIjoxNjczNTQyMjgzfQ.wcH3JmAnONy3dn_VfeDjq0Ux_QpGycbljs2MISNarH8	2022-12-13 16:51:23.461594	2023-01-12 16:51:23
759	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjgsImlhdCI6MTY3MDk1MDI4NCwiZXhwIjoxNjczNTQyMjg0fQ.b4FTjUt8UQJ_Kmqt-jfloiEU7wnRYCECRS7yeviZEM8	2022-12-13 16:51:24.445661	2023-01-12 16:51:24
760	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDk1MDM0NSwiZXhwIjoxNjczNTQyMzQ1fQ.RAMzSfRQ7FygTyrx9L0UHFlRhQb4HnLz_4wGJC7arOI	2022-12-13 16:52:25.318289	2023-01-12 16:52:25
761	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDk1MTgzMiwiZXhwIjoxNjczNTQzODMyfQ.uSoivh8UM05QOrzQHtdb9F-Dn_rgXZF9tVWNA5w9OEI	2022-12-13 17:17:12.68046	2023-01-12 17:17:12
762	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDk1MzM0MCwiZXhwIjoxNjczNTQ1MzQwfQ.7_52Bm7tXKzYVWkxxIJY-XgTbPA59hRZPamqyGauBE8	2022-12-13 17:42:20.723492	2023-01-12 17:42:20
763	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjgsImlhdCI6MTY3MDk1NzAzNywiZXhwIjoxNjczNTQ5MDM3fQ.eX5iTDrolkw8yfxS1VHjamx4AmnExrSbKzLysQiXgmM	2022-12-13 18:43:57.337277	2023-01-12 18:43:57
764	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjIsImlhdCI6MTY3MDk1NzU5MiwiZXhwIjoxNjczNTQ5NTkyfQ.EpCpcuSWSjSdA2PEDPph_rcmaJe-oqf7u9VSgjAo-rA	2022-12-13 18:53:12.72632	2023-01-12 18:53:12
765	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDk1OTM0MiwiZXhwIjoxNjczNTUxMzQyfQ.4_HTgR6BiO-6sXmo-cyCNmpA4ClAna0DrsYC74Bhfbk	2022-12-13 19:22:22.012745	2023-01-12 19:22:22
766	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTAsImlhdCI6MTY3MDk4MDM1OCwiZXhwIjoxNjczNTcyMzU4fQ.Fv1WY32uCjN47VjsLDGmo8pBVBr_Bgj6AERVJLtsAZI	2022-12-14 01:12:38.686884	2023-01-13 01:12:38
767	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjgsImlhdCI6MTY3MDk4MDYwOCwiZXhwIjoxNjczNTcyNjA4fQ.1pytTqV-SMV7HRFxODeTmacTrR5EV1mW2DUExmdmemQ	2022-12-14 01:16:48.506576	2023-01-13 01:16:48
768	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjksImlhdCI6MTY3MDk4MDgxNCwiZXhwIjoxNjczNTcyODE0fQ.fiR7ASItF6cke6I7U-YLv9mhIgV8pG7X135a8uFpSog	2022-12-14 01:20:14.743309	2023-01-13 01:20:14
769	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTAsImlhdCI6MTY3MDk4NTEwOCwiZXhwIjoxNjczNTc3MTA4fQ.ibYomF3BMyB5D5paMEDEmdI5bcJUrlHB2QMqGT86GkA	2022-12-14 02:31:48.563578	2023-01-13 02:31:48
770	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjgsImlhdCI6MTY3MDk4NTYzNiwiZXhwIjoxNjczNTc3NjM2fQ.6Ok25pFWI1n2FzRlqmZOrGZvO3L0rCFaBg8nNEqDCdU	2022-12-14 02:40:36.476032	2023-01-13 02:40:36
771	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY3MDk4NTY4OSwiZXhwIjoxNjczNTc3Njg5fQ.HM_3hoatJXIMyTXyzwDYMUZv7ZCS5K-PX-hAnYnDL5Q	2022-12-14 02:41:29.785059	2023-01-13 02:41:29
772	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDk4NTcxMCwiZXhwIjoxNjczNTc3NzEwfQ.9b90SWAnP5g-QAuDozYnHNiGB1KPLM3vr8svMlaKD7Q	2022-12-14 02:41:50.864706	2023-01-13 02:41:50
773	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDk4NTg5NywiZXhwIjoxNjczNTc3ODk3fQ.4NoK3X01GPmfbnW5rAxvA7L73-CZnq7zm4lANIAkrh0	2022-12-14 02:44:57.996338	2023-01-13 02:44:57
774	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDk4NjE1MSwiZXhwIjoxNjczNTc4MTUxfQ.EMJqOxEmc8ESy_GZ2sW4eJLA_W-r-l3rWFA0AOR3rmU	2022-12-14 02:49:11.030143	2023-01-13 02:49:11
775	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDk4NjIyNCwiZXhwIjoxNjczNTc4MjI0fQ.EphaGB0RYgc8F_tt4gdf4R1U-sqfv75MTpWLOZovHJ4	2022-12-14 02:50:24.654418	2023-01-13 02:50:24
776	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NjcsImlhdCI6MTY3MDk4NzE0MywiZXhwIjoxNjczNTc5MTQzfQ.UwpkWxFIwsHDXK5yTqSgSKY4qfGjE7QD70VfsGM_S0Y	2022-12-14 03:05:43.296255	2023-01-13 03:05:43
777	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjgsImlhdCI6MTY3MDk4OTA2OCwiZXhwIjoxNjczNTgxMDY4fQ.SpRQhWEDvdd6w4skhytbEAERmS36PNmVxcXGzRl8Dmo	2022-12-14 03:37:48.647577	2023-01-13 03:37:48
778	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTAsImlhdCI6MTY3MDk5MDY2MCwiZXhwIjoxNjczNTgyNjYwfQ.08QWzrRFcnNI4ka4u9pC9pkdT9m60sH2vOLoPj1kYmE	2022-12-14 04:04:20.747601	2023-01-13 04:04:20
779	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDk5MTg5MywiZXhwIjoxNjczNTgzODkzfQ.kCge7ilrdYvy4KpIRmxb_w0hFV6pjbj9UWeKt6aRrvE	2022-12-14 04:24:53.159314	2023-01-13 04:24:53
780	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MDk5MTkwMiwiZXhwIjoxNjczNTgzOTAyfQ.nFnUDJW8AnUUeV6t6JZMC3ds8TxiXlj2HgDuMQEKn8s	2022-12-14 04:25:02.090013	2023-01-13 04:25:02
781	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTAsImlhdCI6MTY3MDk5Mjk4NCwiZXhwIjoxNjczNTg0OTg0fQ.Th3fnE91jmdneLTj4f8Rrb4s2ffJpCcTTU4KgY1JDn4	2022-12-14 04:43:04.249058	2023-01-13 04:43:04
782	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDk5Mzg3NSwiZXhwIjoxNjczNTg1ODc1fQ.97FNp4ylAQDsh_S_BpCiA9Zs5C1JRhpukGS5ASmtHPo	2022-12-14 04:57:55.031913	2023-01-13 04:57:55
783	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MDk5Mzk0MiwiZXhwIjoxNjczNTg1OTQyfQ.GlZSNTrfkVpCll7YamfVw_EJxiQk7MrCo5ohMOwEQxw	2022-12-14 04:59:02.366659	2023-01-13 04:59:02
784	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MDk5Mzk1OCwiZXhwIjoxNjczNTg1OTU4fQ.0c1u6fYjcnNZXdXOciHLxsuclw8ZJPTQp9HBDTlEXzs	2022-12-14 04:59:18.099675	2023-01-13 04:59:18
785	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTIsImlhdCI6MTY3MDk5Mzk3MiwiZXhwIjoxNjczNTg1OTcyfQ.mvMrTPzz5cH5KTZGCyaxBTpw80cpO2Xk9uYsO4vkKtw	2022-12-14 04:59:32.027334	2023-01-13 04:59:32
786	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTAsImlhdCI6MTY3MDk5Mzk4NiwiZXhwIjoxNjczNTg1OTg2fQ.sP-S44hZS6ygXevxS-cu6aeplc8mdwgJPnudzm2kwI0	2022-12-14 04:59:46.166632	2023-01-13 04:59:46
787	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTAsImlhdCI6MTY3MDk5Mzk5OCwiZXhwIjoxNjczNTg1OTk4fQ.0LGoBL_iDLczW3942qO-Xa7-rIV8kkt46RO0D8E6sN8	2022-12-14 04:59:58.483019	2023-01-13 04:59:58
788	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTAsImlhdCI6MTY3MDk5NDE3MywiZXhwIjoxNjczNTg2MTczfQ.NSEL-ZqPu7sPh5rj_NIwMvKqXvJxtug6xintBkesYTY	2022-12-14 05:02:53.377471	2023-01-13 05:02:53
789	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTAsImlhdCI6MTY3MDk5NjYxNywiZXhwIjoxNjczNTg4NjE3fQ.o3FL56gRAsJudoWgzOMp-iCeJYpVbRDY-vxmxDEeROE	2022-12-14 05:43:37.3541	2023-01-13 05:43:37
790	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTAsImlhdCI6MTY3MDk5NjY0MiwiZXhwIjoxNjczNTg4NjQyfQ.KUSTtj5Vv7oO6V3r6XOg1SxrpzBKAOg7sX1PfyNvRoU	2022-12-14 05:44:02.739484	2023-01-13 05:44:02
791	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTAsImlhdCI6MTY3MTAwMDQ5MCwiZXhwIjoxNjczNTkyNDkwfQ.Q1vhaOr94KZxudN_sJmTaVNcyNVMhKUHPgaHzR737Ao	2022-12-14 06:48:10.750351	2023-01-13 06:48:10
792	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTAsImlhdCI6MTY3MTAwMTIyMCwiZXhwIjoxNjczNTkzMjIwfQ.BzPy15P9A4wLK8VqEXz_1bjJD-cCYvLUIupb3-w1vIo	2022-12-14 07:00:20.941222	2023-01-13 07:00:20
793	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjIsImlhdCI6MTY3MTAwMTY5NiwiZXhwIjoxNjczNTkzNjk2fQ.rTgHfQ2I_vyU53nockyRIqmPxv36XRmy4y588Fqv0OM	2022-12-14 07:08:16.428879	2023-01-13 07:08:16
794	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjIsImlhdCI6MTY3MTAwMzI3OCwiZXhwIjoxNjczNTk1Mjc4fQ.tBFFQKRH4z76zluGJQCQFdD6YDnx5Qxl0O4UpgxepQk	2022-12-14 07:34:38.731886	2023-01-13 07:34:38
795	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjIsImlhdCI6MTY3MTAwMzI3OSwiZXhwIjoxNjczNTk1Mjc5fQ.jMgetBdhZXY_skhS-jnjqVa5eYNUxWCdE5JInpnVDhM	2022-12-14 07:34:39.823677	2023-01-13 07:34:39
796	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjcsImlhdCI6MTY3MTAwNzQ5MiwiZXhwIjoxNjczNTk5NDkyfQ.1BdIIPYYee750ySnyMpdoRCZzQN15uv9CJLYPB0DAqY	2022-12-14 08:44:52.226719	2023-01-13 08:44:52
797	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjcsImlhdCI6MTY3MTAwNzQ5MywiZXhwIjoxNjczNTk5NDkzfQ.DBad3Hvz3CFZLaDnRoQ14Nl1SYGnYWqzIt1dvPyiumA	2022-12-14 08:44:53.231727	2023-01-13 08:44:53
798	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjIsImlhdCI6MTY3MTAwOTI2OCwiZXhwIjoxNjczNjAxMjY4fQ.Xm3_1Te0lJWCWDjUx6iNKuR1mCXO1KTAh87azYQXNhM	2022-12-14 09:14:28.666618	2023-01-13 09:14:28
799	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjIsImlhdCI6MTY3MTAwOTI5MSwiZXhwIjoxNjczNjAxMjkxfQ.W-7XC-AMd2zOoyRdomMoX7GcfHe0iciKAr83uKIB6ZY	2022-12-14 09:14:51.328362	2023-01-13 09:14:51
800	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjIsImlhdCI6MTY3MTAwOTI5MiwiZXhwIjoxNjczNjAxMjkyfQ.2nY6ic6iKZWkqKasLL5vyUzTVVMoMbXpvexratnLBoY	2022-12-14 09:14:52.845054	2023-01-13 09:14:52
801	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MTAxMzc0MiwiZXhwIjoxNjczNjA1NzQyfQ.SJRhZ8XBqOvODSrl9kEB1JNW0xHBUUR5h60hbe9xfII	2022-12-14 10:29:02.276422	2023-01-13 10:29:02
802	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MTAxMzgwOSwiZXhwIjoxNjczNjA1ODA5fQ.oey-M6U3QNoQMj_3SUDt6rexUTgbWdeY9pKMJ7jhGrE	2022-12-14 10:30:09.115504	2023-01-13 10:30:09
803	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MTAxMzgyNSwiZXhwIjoxNjczNjA1ODI1fQ.Q3t7WxHgwDovd1WTeyKc0Q4BSae9FE59uq7FlXGazWs	2022-12-14 10:30:25.427037	2023-01-13 10:30:25
804	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MTAxMzg4MywiZXhwIjoxNjczNjA1ODgzfQ.hdb_OgMlaKXtze4mqAnFTBAnS1h7R6vEG7tS1_Xo3EU	2022-12-14 10:31:23.770414	2023-01-13 10:31:23
805	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjgsImlhdCI6MTY3MTAxNDEwNCwiZXhwIjoxNjczNjA2MTA0fQ.lJUFIb3MQcu5_V8Y_KIcyYz2jeeMqgTZpRzswP4iPCg	2022-12-14 10:35:04.693942	2023-01-13 10:35:04
806	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjIsImlhdCI6MTY3MTAxNDEzOCwiZXhwIjoxNjczNjA2MTM4fQ.8CfmHLqKKEt5VVL7UltjyT9cxQBa27cPutNT98SbGTc	2022-12-14 10:35:38.111208	2023-01-13 10:35:38
807	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjIsImlhdCI6MTY3MTAxNDEzOSwiZXhwIjoxNjczNjA2MTM5fQ.ntNbk-a6mNTdxyVyT5Y8lAHEuSGEXCv8LF_R-uafhLY	2022-12-14 10:35:39.632708	2023-01-13 10:35:39
808	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTAsImlhdCI6MTY3MTA1MTU4MCwiZXhwIjoxNjczNjQzNTgwfQ.34GUSfYv9L-Dksytoh7RQF67tTTA-lcQxouNYfpADaQ	2022-12-14 20:59:40.583354	2023-01-13 20:59:40
809	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTAsImlhdCI6MTY3MTA1MTY1OSwiZXhwIjoxNjczNjQzNjU5fQ.KGc9F8LOG2k0erF8fJbgKEVftB7whyV92gBBuEGJvjY	2022-12-14 21:00:59.408181	2023-01-13 21:00:59
810	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MTA1MTcwMCwiZXhwIjoxNjczNjQzNzAwfQ.YZ6Niym9eNv_ZNiEUNOYhkrYTpNnV3z4jwhzNMGciuk	2022-12-14 21:01:40.385797	2023-01-13 21:01:40
811	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MTA1MTcwOSwiZXhwIjoxNjczNjQzNzA5fQ.Cy-TNLpqTLgMsLrrjVzA5rj2kLe8jRc50uljAfmW2BQ	2022-12-14 21:01:49.786347	2023-01-13 21:01:49
812	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MTA1Mzg3NiwiZXhwIjoxNjczNjQ1ODc2fQ.aioTozzyoj5KlG1RBEA_yFJQkPRL9xtZmgPYPFAulfc	2022-12-14 21:37:56.230573	2023-01-13 21:37:56
813	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTAsImlhdCI6MTY3MTA1Njk1NCwiZXhwIjoxNjczNjQ4OTU0fQ.Dkg_ypjwk_DaZ5qq5e6Ef8dtZjKUFTczeiLs9U-gQwA	2022-12-14 22:29:14.659547	2023-01-13 22:29:14
814	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MTA1Njk5NywiZXhwIjoxNjczNjQ4OTk3fQ.YV6fOG9tFkU6C-VkIqr7UqBHSAZyLU9dZL3kL9swEoY	2022-12-14 22:29:57.942983	2023-01-13 22:29:57
815	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTAsImlhdCI6MTY3MTA1ODYzMCwiZXhwIjoxNjczNjUwNjMwfQ.ZwEDaZa9uCtSH5g6GoAVaD1nIdfCTof4zUvLSl-0Yp8	2022-12-14 22:57:10.317297	2023-01-13 22:57:10
816	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MTA1ODY4MywiZXhwIjoxNjczNjUwNjgzfQ.JyB6L-X5ZSQJt356J98XX6W-UKoUMoS_KPAwjNQTyQM	2022-12-14 22:58:03.51047	2023-01-13 22:58:03
817	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTAsImlhdCI6MTY3MTA1ODY5NCwiZXhwIjoxNjczNjUwNjk0fQ.aqf4XenPzsWrbqCPp7u664otD1doTlAS9yYZHaSzftU	2022-12-14 22:58:14.314504	2023-01-13 22:58:14
818	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MTA1ODczMCwiZXhwIjoxNjczNjUwNzMwfQ.xNXrB4WtyOsbnsblZ183EE9UHyoQ_Vnz-Z2eQWPNoa0	2022-12-14 22:58:50.02117	2023-01-13 22:58:50
819	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTAsImlhdCI6MTY3MTA1ODg2MCwiZXhwIjoxNjczNjUwODYwfQ.uxctWTQPFv0ypMXkoxLvb1__ml8EpWRVDT2efUvfKEI	2022-12-14 23:01:00.387383	2023-01-13 23:01:00
820	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTAsImlhdCI6MTY3MTA1ODg4NSwiZXhwIjoxNjczNjUwODg1fQ.HJEjimjgspA11EN1ERDb8zAhs4ec3Zjc39m_QNHaTbY	2022-12-14 23:01:25.808249	2023-01-13 23:01:25
821	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MTA2MjAyNCwiZXhwIjoxNjczNjU0MDI0fQ.IzaMfNkMP734rQD8Yl907GjbanGAGg2iHX6w1FE8dUw	2022-12-14 23:53:44.623988	2023-01-13 23:53:44
822	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTAsImlhdCI6MTY3MTA2MjIwOSwiZXhwIjoxNjczNjU0MjA5fQ.XRwLBb0j-7YMecMOiwpFsaXJ3MJznzK94YNW5OGXsVY	2022-12-14 23:56:49.71084	2023-01-13 23:56:49
823	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTAsImlhdCI6MTY3MTA2NDU2MCwiZXhwIjoxNjczNjU2NTYwfQ.Wnt03F-az6nAc6pf3Z-QhWz0cQx-6EJQ4NHva3jFucs	2022-12-15 00:36:00.115976	2023-01-14 00:36:00
824	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTAsImlhdCI6MTY3MTA2NjE3OCwiZXhwIjoxNjczNjU4MTc4fQ.EgWzJFChzriMGRkefwwyGpcSpz3eHUREtLTnawNrCNU	2022-12-15 01:02:58.489575	2023-01-14 01:02:58
825	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjIsImlhdCI6MTY3MTA2NjMzNCwiZXhwIjoxNjczNjU4MzM0fQ.pjT59k1Il17H7IK3XHCvAurvpa3KgX5QrPYNhe5MC20	2022-12-15 01:05:33.951498	2023-01-14 01:05:34
826	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NjgsImlhdCI6MTY3MTA2NjYzNywiZXhwIjoxNjczNjU4NjM3fQ.b-Cr4_mKvlTyrmlWEU5XoPZRsItTyWztQDYWNg1j0J0	2022-12-15 01:10:37.065574	2023-01-14 01:10:37
827	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NjgsImlhdCI6MTY3MTA2NjY0OSwiZXhwIjoxNjczNjU4NjQ5fQ.hBCGhCPooZg0fu5254UekhE0i5ReSVekz5bnWIORKRw	2022-12-15 01:10:49.329273	2023-01-14 01:10:49
828	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTAsImlhdCI6MTY3MTA2NjY4NywiZXhwIjoxNjczNjU4Njg3fQ.K4aSVvjg04fkX3zSJYNLAri9gOmB1TcKPlmo853E8Iw	2022-12-15 01:11:27.410203	2023-01-14 01:11:27
829	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTAsImlhdCI6MTY3MTA2NzQ3NSwiZXhwIjoxNjczNjU5NDc1fQ.RZ_YLyv_eRMuZKuJdD6hzP09B3YpJk4rXNiqQRHrxF8	2022-12-15 01:24:34.908282	2023-01-14 01:24:35
830	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjIsImlhdCI6MTY3MTA3MDE1NywiZXhwIjoxNjczNjYyMTU3fQ.Sc2MpsBUdM6XgyFV-pbBj-Hi_f9lRLo6ZEquOSnoZLQ	2022-12-15 02:09:17.343656	2023-01-14 02:09:17
831	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjIsImlhdCI6MTY3MTA3MDIxMCwiZXhwIjoxNjczNjYyMjEwfQ.7ESUsYkQEB5SBUZtd0hlWF3zQ1n5KgpMXWkk5Cn4pMM	2022-12-15 02:10:10.179517	2023-01-14 02:10:10
832	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTAsImlhdCI6MTY3MTA3MDg4MywiZXhwIjoxNjczNjYyODgzfQ.93QagXQLYgoUjpH7fRt21iF7jBY8vaVWkOLKeyu-ipM	2022-12-15 02:21:23.333547	2023-01-14 02:21:23
833	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MTA3MTk0NSwiZXhwIjoxNjczNjYzOTQ1fQ.ZPZ2TSKjDbUKQPNYqUupn--jimb_fksR4TtGXpb24hc	2022-12-15 02:39:04.969722	2023-01-14 02:39:05
834	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MTA3MjM2NCwiZXhwIjoxNjczNjY0MzY0fQ.L753AcLSZSOX85ZOc-v71Kt-avtnnRLXpf0IvyD064A	2022-12-15 02:46:04.077928	2023-01-14 02:46:04
835	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTAsImlhdCI6MTY3MTA3MjQ5OCwiZXhwIjoxNjczNjY0NDk4fQ.PfA71g0kNY2_gYbEmrSs9JxexQiVV9A9pK2lZGzIz-Q	2022-12-15 02:48:18.599489	2023-01-14 02:48:18
836	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTAsImlhdCI6MTY3MTA3MjcxOCwiZXhwIjoxNjczNjY0NzE4fQ.TvGRCQaxEzWbj5HTnr276tlAcETiyw3chPXidtUBQpk	2022-12-15 02:51:58.866877	2023-01-14 02:51:58
837	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTAsImlhdCI6MTY3MTA3MzAxNCwiZXhwIjoxNjczNjY1MDE0fQ.efxOsJpU12GjUcGAxWIz42SsGW9dsp-TKWw4xcEqUic	2022-12-15 02:56:54.950563	2023-01-14 02:56:54
838	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTAsImlhdCI6MTY3MTA3MzcyOCwiZXhwIjoxNjczNjY1NzI4fQ.3QJSOQ77Rcyzedk2j7IkHFsZF3EUGwucRyTRDe7FHGw	2022-12-15 03:08:48.712295	2023-01-14 03:08:48
839	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjIsImlhdCI6MTY3MTA3NDE5MCwiZXhwIjoxNjczNjY2MTkwfQ.tkl09U7oPxSy5jShPRK0Sd31GDQt3r4POcBrR2y_qqU	2022-12-15 03:16:30.688426	2023-01-14 03:16:30
840	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjIsImlhdCI6MTY3MTA3NDIyMSwiZXhwIjoxNjczNjY2MjIxfQ.9nBrBtruyU1nCHmAZ_Va4h1URLKez2fVwA29jzfK_wQ	2022-12-15 03:17:01.407665	2023-01-14 03:17:01
841	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjIsImlhdCI6MTY3MTA3NDIyMiwiZXhwIjoxNjczNjY2MjIyfQ.WqHG23dOQ9yh_AcohrdOEbz3gQev2NVF8hO1J_1viX4	2022-12-15 03:17:02.887617	2023-01-14 03:17:02
842	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NjksImlhdCI6MTY3MTA3NDk0OCwiZXhwIjoxNjczNjY2OTQ4fQ.KOXym2s2U6cc58KlBzbPfuzYscc8sn6bsNjH-GfMcdc	2022-12-15 03:29:08.768433	2023-01-14 03:29:08
843	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NjksImlhdCI6MTY3MTA3NTA4OCwiZXhwIjoxNjczNjY3MDg4fQ.yJSrSlpIIirtKYdh5P9sNzhAMpYU2qqnAoS7ES0xYRA	2022-12-15 03:31:28.398085	2023-01-14 03:31:28
844	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTAsImlhdCI6MTY3MTA3NTI0MCwiZXhwIjoxNjczNjY3MjQwfQ.vy1xb1QUHt17XvRD3bOpfcz8UVz9ALRUJqcqtRX1EKQ	2022-12-15 03:34:00.808173	2023-01-14 03:34:00
845	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTAsImlhdCI6MTY3MTA3NTM4OSwiZXhwIjoxNjczNjY3Mzg5fQ.2nSeFCfv528stn5Npf6gP86UNwitmLDduSscDwcf0F8	2022-12-15 03:36:29.733742	2023-01-14 03:36:29
846	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTAsImlhdCI6MTY3MTA3NTM5MSwiZXhwIjoxNjczNjY3MzkxfQ.V3MG4pXlnoffdWDxIm-fMdNYOj4ctmmAtGxz0ceepi0	2022-12-15 03:36:31.117224	2023-01-14 03:36:31
847	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjIsImlhdCI6MTY3MTA3NjM3MywiZXhwIjoxNjczNjY4MzczfQ.fDL-ZQOp6jbk2IAboq_Hq8PRrro4VjCEn-98YhL6qS4	2022-12-15 03:52:53.285515	2023-01-14 03:52:53
848	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MzAsImlhdCI6MTY3MTA3NzMzMSwiZXhwIjoxNjczNjY5MzMxfQ.yksP7oCCny6p7OsiTFsodGwa2sHFFzeOVWCss52MdCI	2022-12-15 04:08:51.154726	2023-01-14 04:08:51
849	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MzEsImlhdCI6MTY3MTA3NzY1OCwiZXhwIjoxNjczNjY5NjU4fQ.6QcIoBkMVEsKFHGWjQ560tnXed4Gn6spFG3jNu22bm0	2022-12-15 04:14:18.713501	2023-01-14 04:14:18
850	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MTA3ODMwOSwiZXhwIjoxNjczNjcwMzA5fQ.C5t-EyXxvVHsGv3mFhrTkMmOPXz7V51q9QMtIWbArbQ	2022-12-15 04:25:09.86138	2023-01-14 04:25:09
851	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MzIsImlhdCI6MTY3MTA3ODQ3OSwiZXhwIjoxNjczNjcwNDc5fQ.b2VfpQdAtZq_SSTzD_vso5wArJ3Hj7Wgc74ptNFB5Jk	2022-12-15 04:27:59.051602	2023-01-14 04:27:59
852	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTAsImlhdCI6MTY3MTA3OTM0OSwiZXhwIjoxNjczNjcxMzQ5fQ.MsMl9WLKBBzMtzkXfQDaeygBJm7yjYDR7vJS4pTCBYQ	2022-12-15 04:42:29.876486	2023-01-14 04:42:29
853	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MTA3OTM3NywiZXhwIjoxNjczNjcxMzc3fQ.IRS1sBl6xVuDT0ghr1o-jfw4Cks8VP5lCtlmN8lAPJg	2022-12-15 04:42:57.960299	2023-01-14 04:42:57
854	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MTA3OTM4NywiZXhwIjoxNjczNjcxMzg3fQ.Gy9CAyk8hOhghkMtzZOoDzIscLl_cwNHPSIpvqQyJ3M	2022-12-15 04:43:07.846675	2023-01-14 04:43:07
855	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTAsImlhdCI6MTY3MTA3OTY2NiwiZXhwIjoxNjczNjcxNjY2fQ.fhje3DEyBNqxQ42q17YYZuWXvERFm-uVA6joUAWjHY8	2022-12-15 04:47:46.182586	2023-01-14 04:47:46
856	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MzMsImlhdCI6MTY3MTA4MjY5MywiZXhwIjoxNjczNjc0NjkzfQ.z4aZ3AiOaAQcnJrqwRaUEfooRiJ22NnaXaTtm1djNhM	2022-12-15 05:38:13.664343	2023-01-14 05:38:13
857	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MzQsImlhdCI6MTY3MTA4Mjg0NCwiZXhwIjoxNjczNjc0ODQ0fQ.DxwDHjKFERe7DKqAfm9kdm89O11cD82g3aSwXrLX0GM	2022-12-15 05:40:44.231899	2023-01-14 05:40:44
858	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MzQsImlhdCI6MTY3MTA4MzA1NywiZXhwIjoxNjczNjc1MDU3fQ.K8mP6Bhcehljp7ap5MDP4aSs_i1Bk_3uJdCZ41LrbOc	2022-12-15 05:44:17.579664	2023-01-14 05:44:17
859	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MzUsImlhdCI6MTY3MTA4MzA5MSwiZXhwIjoxNjczNjc1MDkxfQ.yPACl7T3Lzt1BdTVl2qFbZEBIldPTYNFEhPz67xQcxI	2022-12-15 05:44:51.335782	2023-01-14 05:44:51
860	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MzUsImlhdCI6MTY3MTA4MzE4OCwiZXhwIjoxNjczNjc1MTg4fQ.un5tkrEQc2e7JsJGFk9kwmuNxdU-KfKlh8J4Yd3TeO0	2022-12-15 05:46:28.04134	2023-01-14 05:46:28
861	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MTA4MzYwNywiZXhwIjoxNjczNjc1NjA3fQ.EQpRymaNEB_7nO05OI9ebgSdzlUcNccShhl2UNpoRV4	2022-12-15 05:53:27.914553	2023-01-14 05:53:27
862	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTAsImlhdCI6MTY3MTA4MzY1NCwiZXhwIjoxNjczNjc1NjU0fQ.qfAXH-6-dcHYnctl_pLe7W3XkRIe0Jqceh7Y8i30wRk	2022-12-15 05:54:14.038672	2023-01-14 05:54:14
863	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTAsImlhdCI6MTY3MTA4MzY4NiwiZXhwIjoxNjczNjc1Njg2fQ.OVlDzsp8jFLBbVtGT_el5-BP9ILp9bq_5RO4rfBmLT0	2022-12-15 05:54:46.952198	2023-01-14 05:54:46
864	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MzUsImlhdCI6MTY3MTA4MzgxNywiZXhwIjoxNjczNjc1ODE3fQ.9eXG4LHHttUZO3O97ykBTpzXTDbn2mV9MyCM-JX2bxI	2022-12-15 05:56:57.731762	2023-01-14 05:56:57
865	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjIsImlhdCI6MTY3MTA4MzgzNSwiZXhwIjoxNjczNjc1ODM1fQ.6gyPfv8sGKxOw_71uv4pF5fQv-g40W4BhrHY7rv3i-U	2022-12-15 05:57:15.566074	2023-01-14 05:57:15
866	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NzAsImlhdCI6MTY3MTA4NDMwOSwiZXhwIjoxNjczNjc2MzA5fQ.1Vg2OrdYYcBvI8_hYyjG6c6GvdyhuBN_fSyfWUyIR-c	2022-12-15 06:05:09.662235	2023-01-14 06:05:09
867	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NzAsImlhdCI6MTY3MTA4NDMyMSwiZXhwIjoxNjczNjc2MzIxfQ.8w1jzn8ylVbyFkIbrdAizaW6iDLLYnzij0ZH4gg-ydc	2022-12-15 06:05:21.253952	2023-01-14 06:05:21
868	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTAsImlhdCI6MTY3MTA4NDM4MCwiZXhwIjoxNjczNjc2MzgwfQ.iRrNV-WjgJzXNyZHt6YVey37FGLsH6YYeCVaUyo-iwo	2022-12-15 06:06:20.159478	2023-01-14 06:06:20
869	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTAsImlhdCI6MTY3MTA4NDQ0NywiZXhwIjoxNjczNjc2NDQ3fQ.g7l7Fnq1Rtm_ChlpjfAvpxDL38XnRnsnJCDjOiB0ex8	2022-12-15 06:07:27.841047	2023-01-14 06:07:27
870	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTAsImlhdCI6MTY3MTA4NTE1MCwiZXhwIjoxNjczNjc3MTUwfQ.OhpJHY9mZpsVYZliDNu1wbRNi-t0jCw4PfM8zVg8xQg	2022-12-15 06:19:10.844786	2023-01-14 06:19:10
871	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MTA4NTE1NywiZXhwIjoxNjczNjc3MTU3fQ.JdVqr0_pu12JxAfbaOsc_Qo_mwE2-TexIqSX7GzLQwE	2022-12-15 06:19:17.463485	2023-01-14 06:19:17
872	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjgsImlhdCI6MTY3MTA4NTcwMywiZXhwIjoxNjczNjc3NzAzfQ.TtNciyWVrdqXQG5kTNFoPlGzHc-Atb7LoW6l4WsXTGk	2022-12-15 06:28:23.409549	2023-01-14 06:28:23
873	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTAsImlhdCI6MTY3MTA4NTc5NywiZXhwIjoxNjczNjc3Nzk3fQ.JrR6DMpzUqAKbf_kQOSMjTzNLvBSBsobVQ1DixRhsXo	2022-12-15 06:29:57.308053	2023-01-14 06:29:57
874	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTAsImlhdCI6MTY3MTA4NTc5OCwiZXhwIjoxNjczNjc3Nzk4fQ.cscV2Dba2ezxeyc5YsKKGmV70HMudbcZH0Og52y2Kgc	2022-12-15 06:29:58.016418	2023-01-14 06:29:58
875	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MTA4NjI1NiwiZXhwIjoxNjczNjc4MjU2fQ.yaTjH2GUfp4yOBNYDphrhoRc6nbUYKHUsFVtgFr-tU8	2022-12-15 06:37:36.933655	2023-01-14 06:37:36
876	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTAsImlhdCI6MTY3MTA4NjI3NCwiZXhwIjoxNjczNjc4Mjc0fQ.JPf3S1RpLyLf_xMqWKWLyX_QMVva5BMR3nEfgscVXjU	2022-12-15 06:37:54.549126	2023-01-14 06:37:54
877	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTAsImlhdCI6MTY3MTA4NjczOCwiZXhwIjoxNjczNjc4NzM4fQ.Mp01ciox_gChHb2rmYJHcIJwJ22fAoFxyb_79415_LE	2022-12-15 06:45:38.3526	2023-01-14 06:45:38
878	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTAsImlhdCI6MTY3MTA4NjkxOSwiZXhwIjoxNjczNjc4OTE5fQ.T_DolT45a2ddSSyrGZptsF7hsYF-WtDK2Z1wKlPx73k	2022-12-15 06:48:39.080793	2023-01-14 06:48:39
879	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjgsImlhdCI6MTY3MTA4NzA3NCwiZXhwIjoxNjczNjc5MDc0fQ.gfY4Fb63SzxceDS1mjcQfgqRxgiCRMZe9HlOwIKf_XY	2022-12-15 06:51:14.386782	2023-01-14 06:51:14
880	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTAsImlhdCI6MTY3MTA4ODQ3OCwiZXhwIjoxNjczNjgwNDc4fQ.DIwmCsYO1vCRqBLyOJ1S5F1n69KfNp1dYAbQGgxrxD0	2022-12-15 07:14:38.841496	2023-01-14 07:14:38
881	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTAsImlhdCI6MTY3MTA4ODQ3OSwiZXhwIjoxNjczNjgwNDc5fQ.87E9eSOhdIcuQKeTonBnUiGWuCK77YO5S-tm4YVGLm8	2022-12-15 07:14:39.956344	2023-01-14 07:14:39
882	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTAsImlhdCI6MTY3MTA4ODQ4NCwiZXhwIjoxNjczNjgwNDg0fQ.s0OIv7mZBHqcck2Yei2EYIHgMZhV_yO_Aw8_mRfTAcs	2022-12-15 07:14:44.079315	2023-01-14 07:14:44
883	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MTA4OTA3NywiZXhwIjoxNjczNjgxMDc3fQ.C7ITCPyoarJ1gzeayI2raN3odglAgZ_bUV9ZxXj18VQ	2022-12-15 07:24:37.836486	2023-01-14 07:24:37
884	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MTA4OTA3NywiZXhwIjoxNjczNjgxMDc3fQ.C7ITCPyoarJ1gzeayI2raN3odglAgZ_bUV9ZxXj18VQ	2022-12-15 07:24:37.837111	2023-01-14 07:24:37
885	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjgsImlhdCI6MTY3MTA4OTI2OCwiZXhwIjoxNjczNjgxMjY4fQ.3Rh2MDgUBHWssbu379igpVSs1GIoMGADhzplvhMkHfI	2022-12-15 07:27:48.182825	2023-01-14 07:27:48
886	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjgsImlhdCI6MTY3MTA4OTI3MywiZXhwIjoxNjczNjgxMjczfQ.XolpUzhes27pCnpAusjK6iQrojsE2PMn4UDQLw3j_ww	2022-12-15 07:27:53.236672	2023-01-14 07:27:53
887	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjgsImlhdCI6MTY3MTA4OTI3NiwiZXhwIjoxNjczNjgxMjc2fQ.zg5hLzLtAQr9emtgo7EI8mas3NOJAXjl5T64LqEzFBM	2022-12-15 07:27:56.701619	2023-01-14 07:27:56
889	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjgsImlhdCI6MTY3MTA4OTI4MSwiZXhwIjoxNjczNjgxMjgxfQ.5RT4yLnQzLDmYF58JJOMlYnTfHiHn3eNnfne1CECdGQ	2022-12-15 07:28:01.354055	2023-01-14 07:28:01
888	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjgsImlhdCI6MTY3MTA4OTI4MSwiZXhwIjoxNjczNjgxMjgxfQ.5RT4yLnQzLDmYF58JJOMlYnTfHiHn3eNnfne1CECdGQ	2022-12-15 07:28:01.353387	2023-01-14 07:28:01
890	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjgsImlhdCI6MTY3MTA4OTM3MCwiZXhwIjoxNjczNjgxMzcwfQ.q4Gk9Sh8gzXA2Z6gTKcLixfIT3xNMaoyzwaA5huHVFk	2022-12-15 07:29:30.321035	2023-01-14 07:29:30
891	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjgsImlhdCI6MTY3MTA4OTM3MCwiZXhwIjoxNjczNjgxMzcwfQ.q4Gk9Sh8gzXA2Z6gTKcLixfIT3xNMaoyzwaA5huHVFk	2022-12-15 07:29:30.318721	2023-01-14 07:29:30
894	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjgsImlhdCI6MTY3MTA4OTM3MCwiZXhwIjoxNjczNjgxMzcwfQ.q4Gk9Sh8gzXA2Z6gTKcLixfIT3xNMaoyzwaA5huHVFk	2022-12-15 07:29:30.493109	2023-01-14 07:29:30
895	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjgsImlhdCI6MTY3MTA4OTM3MCwiZXhwIjoxNjczNjgxMzcwfQ.q4Gk9Sh8gzXA2Z6gTKcLixfIT3xNMaoyzwaA5huHVFk	2022-12-15 07:29:30.317514	2023-01-14 07:29:30
892	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjgsImlhdCI6MTY3MTA4OTM3MCwiZXhwIjoxNjczNjgxMzcwfQ.q4Gk9Sh8gzXA2Z6gTKcLixfIT3xNMaoyzwaA5huHVFk	2022-12-15 07:29:30.440821	2023-01-14 07:29:30
893	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjgsImlhdCI6MTY3MTA4OTM3MCwiZXhwIjoxNjczNjgxMzcwfQ.q4Gk9Sh8gzXA2Z6gTKcLixfIT3xNMaoyzwaA5huHVFk	2022-12-15 07:29:30.319946	2023-01-14 07:29:30
896	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjgsImlhdCI6MTY3MTA4OTM3MCwiZXhwIjoxNjczNjgxMzcwfQ.q4Gk9Sh8gzXA2Z6gTKcLixfIT3xNMaoyzwaA5huHVFk	2022-12-15 07:29:31.753509	2023-01-14 07:29:30
897	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjgsImlhdCI6MTY3MTA4OTM3MCwiZXhwIjoxNjczNjgxMzcwfQ.q4Gk9Sh8gzXA2Z6gTKcLixfIT3xNMaoyzwaA5huHVFk	2022-12-15 07:29:31.756848	2023-01-14 07:29:30
898	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjgsImlhdCI6MTY3MTA4OTM3MCwiZXhwIjoxNjczNjgxMzcwfQ.q4Gk9Sh8gzXA2Z6gTKcLixfIT3xNMaoyzwaA5huHVFk	2022-12-15 07:29:31.758775	2023-01-14 07:29:30
899	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjgsImlhdCI6MTY3MTA4OTM3MCwiZXhwIjoxNjczNjgxMzcwfQ.q4Gk9Sh8gzXA2Z6gTKcLixfIT3xNMaoyzwaA5huHVFk	2022-12-15 07:29:31.760402	2023-01-14 07:29:30
903	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjIsImlhdCI6MTY3MTA4OTM4MCwiZXhwIjoxNjczNjgxMzgwfQ.p9QRGoIwGO3McLupOzbvXh0Lw_POvmSXwsXmEz_E7ls	2022-12-15 07:29:45.432316	2023-01-14 07:29:40
906	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjIsImlhdCI6MTY3MTA4OTM4NSwiZXhwIjoxNjczNjgxMzg1fQ.waFqGJiJ4hjgYtuxqe917xUW86AAlBThpc9FV3W2tao	2022-12-15 07:29:45.661133	2023-01-14 07:29:45
907	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjIsImlhdCI6MTY3MTA4OTM4NiwiZXhwIjoxNjczNjgxMzg2fQ.jqSFcDVe7iAZWY13t7s3fmYBS7p_HxpXiSNvwKLKD9g	2022-12-15 07:29:46.48225	2023-01-14 07:29:46
901	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjIsImlhdCI6MTY3MTA4OTM4MCwiZXhwIjoxNjczNjgxMzgwfQ.p9QRGoIwGO3McLupOzbvXh0Lw_POvmSXwsXmEz_E7ls	2022-12-15 07:29:40.578075	2023-01-14 07:29:40
902	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjIsImlhdCI6MTY3MTA4OTM4MCwiZXhwIjoxNjczNjgxMzgwfQ.p9QRGoIwGO3McLupOzbvXh0Lw_POvmSXwsXmEz_E7ls	2022-12-15 07:29:45.431386	2023-01-14 07:29:40
927	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MTA5Njc5MSwiZXhwIjoxNjczNjg4NzkxfQ.g1ml2_2apMT-ejBw-mdwNqg5qf3hW7qF7GeRAW5Uxc8	2022-12-15 09:33:11.386118	2023-01-14 09:33:11
948	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MzM3OTQ4NiwiZXhwIjoxNjc1OTcxNDg2fQ.ydYyWiFz-lJGSAhOy_ygaiXKgem6wQQTszGD3clDmKE	2023-01-10 19:38:05.651681	2023-02-09 19:38:06
970	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MzgwNzQ1MSwiZXhwIjoxNjc2Mzk5NDUxfQ.5ej0TUbUiOFaISd2uvobCQl5yVTbqa9oJNDhp3cSRRQ	2023-01-15 18:30:51.580993	2023-02-14 18:30:51
991	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3NTkyMzgyNSwiZXhwIjoxNjc4NTE1ODI1fQ._MmXOsmnfTUi8ba0V_ZtQxnB9Q2-24xJ700T_BGzRwQ	2023-02-09 06:23:45.025606	2023-03-11 06:23:45
1011	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MzksImlhdCI6MTY3NjMzNzY4MywiZXhwIjoxNjc4OTI5NjgzfQ.TmJxP3qRYeHWEQA0QczFnCSCUvynqroqWFypQdMZhkI	2023-02-14 01:21:23.668008	2023-03-16 01:21:23
904	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjIsImlhdCI6MTY3MTA4OTM4NSwiZXhwIjoxNjczNjgxMzg1fQ.waFqGJiJ4hjgYtuxqe917xUW86AAlBThpc9FV3W2tao	2022-12-15 07:29:45.512883	2023-01-14 07:29:45
930	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MTA5NzAyNSwiZXhwIjoxNjczNjg5MDI1fQ.7rz1pSZLMd4fN7owAtlnnCchk-T0My0dilkymNH-Fho	2022-12-15 09:37:05.509222	2023-01-14 09:37:05
949	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MzM4Mzk1MywiZXhwIjoxNjc1OTc1OTUzfQ.mZKQTJql39jbIycfD5_2bJw9Ra3A-cqfSBI932aSYdk	2023-01-10 20:52:33.183081	2023-02-09 20:52:33
971	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MzgxMTE2MiwiZXhwIjoxNjc2NDAzMTYyfQ.sepkwtbXRpwqh94KYaY8uhgdpyWnYrXmbaCshlCZg5c	2023-01-15 19:32:43.169282	2023-02-14 19:32:42
992	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3NTkyNjE5OCwiZXhwIjoxNjc4NTE4MTk4fQ.WY16lZ03_V5GMGgA7kueda-dtNbI09bBwypYDsfH94o	2023-02-09 07:03:18.980292	2023-03-11 07:03:18
1012	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3NjM1MTMxNywiZXhwIjoxNjc4OTQzMzE3fQ.15EBvrx5iFYYc63tCv2b0iWyhAaHJKocIYDI9uy-xmg	2023-02-14 05:08:37.918889	2023-03-16 05:08:37
905	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjIsImlhdCI6MTY3MTA4OTM4NSwiZXhwIjoxNjczNjgxMzg1fQ.waFqGJiJ4hjgYtuxqe917xUW86AAlBThpc9FV3W2tao	2022-12-15 07:29:45.513515	2023-01-14 07:29:45
929	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MTA5NzAyNSwiZXhwIjoxNjczNjg5MDI1fQ.7rz1pSZLMd4fN7owAtlnnCchk-T0My0dilkymNH-Fho	2022-12-15 09:37:05.510763	2023-01-14 09:37:05
950	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTYsImlhdCI6MTY3MzQ1MjM2NiwiZXhwIjoxNjc2MDQ0MzY2fQ.xPca_QIPJDOcfwR8MuW3D0AbG3vUdpDPzItWlDI2u4s	2023-01-11 15:52:46.185304	2023-02-10 15:52:46
951	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTYsImlhdCI6MTY3MzQ1MjM3MywiZXhwIjoxNjc2MDQ0MzczfQ.pjnsNgy2KZK2yJ150GQjCFL2NrkDPTqPWKuzxmeOHcQ	2023-01-11 15:52:53.306766	2023-02-10 15:52:53
972	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MzgxNDk0NSwiZXhwIjoxNjc2NDA2OTQ1fQ.Vnr8yU-6pOFpD52uuX0V8-C_GkfLHVWg6WcxqrlnzwI	2023-01-15 20:35:46.546868	2023-02-14 20:35:45
993	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3NTk1MjUwNSwiZXhwIjoxNjc4NTQ0NTA1fQ._1rjtqLqYrsUZdgDxfCErpVLJ6ercfxhxGQa-Kkx-HM	2023-02-09 14:21:45.039739	2023-03-11 14:21:45
1013	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDAsImlhdCI6MTY3NjM1MTQwMSwiZXhwIjoxNjc4OTQzNDAxfQ.USfiR6lGPmiTjQExxYiyr0OSv8TMzA2Y-GaXXeA2dtY	2023-02-14 05:10:01.485658	2023-03-16 05:10:01
908	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjIsImlhdCI6MTY3MTA4OTM4OSwiZXhwIjoxNjczNjgxMzg5fQ.tKQDsIqgGxxlllMTsC24dfOBZpcwokik9R6OMIOA2oY	2022-12-15 07:29:49.225615	2023-01-14 07:29:49
931	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MTE2NTU3NSwiZXhwIjoxNjczNzU3NTc1fQ.huc8f1mEP-bx03uRbig5BVHg709M8KqLxbOUyQVghn4	2022-12-16 04:39:35.601822	2023-01-15 04:39:35
952	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MzQ1MzczNywiZXhwIjoxNjc2MDQ1NzM3fQ.ZuQ2EFaVMG0qtUAr_trdqFOyxry-kaGTErkFPGyKGtU	2023-01-11 16:15:37.861302	2023-02-10 16:15:37
973	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MzgxODU5OCwiZXhwIjoxNjc2NDEwNTk4fQ.HFfNAoc9UoybAkfV8G456OcNMheviVBsmyKlmqHL46A	2023-01-15 21:36:38.771762	2023-02-14 21:36:38
994	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3NTk2MzY4NywiZXhwIjoxNjc4NTU1Njg3fQ.XsRiGdbcdVyBDXyLHtJbQytfoFQiAJy-lma75g2nBLk	2023-02-09 17:28:07.928926	2023-03-11 17:28:07
1014	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3NjM1NzY5MywiZXhwIjoxNjc4OTQ5NjkzfQ.x72SJLqcl1iNKAKKTgbc6j4-_GA03DCMYXmI5zkKnks	2023-02-14 06:54:53.171664	2023-03-16 06:54:53
910	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MTA4OTY5MCwiZXhwIjoxNjczNjgxNjkwfQ.iTyuJgZYYcvHwVYJV2cCLHvFhkJKw65xLv_9PuRUtDU	2022-12-15 07:34:50.016129	2023-01-14 07:34:50
932	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MTE2NTc0MiwiZXhwIjoxNjczNzU3NzQyfQ.ZabosCHxiQQpr2CYRKWU3pL-hdgSpRxv3onIYWhnYg8	2022-12-16 04:42:22.659707	2023-01-15 04:42:22
953	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MzQ2MDY5MSwiZXhwIjoxNjc2MDUyNjkxfQ.nDY4CmaItbqKqNdMScesIqCc3Xzivz1ApyFQR3JV5hA	2023-01-11 18:22:26.769558	2023-02-10 18:11:31
974	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MzgxOTAyMiwiZXhwIjoxNjc2NDExMDIyfQ.CRSCWxr7tmlOILh11q67KQeqzY5hhms6UREbs5_vl6U	2023-01-15 21:43:43.272641	2023-02-14 21:43:42
995	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3NTk2MzgxMCwiZXhwIjoxNjc4NTU1ODEwfQ.7LpCoSYv--5pxUgozjBev2bdKtwdyVBJ96OoXByKrcQ	2023-02-09 17:30:10.522622	2023-03-11 17:30:10
1015	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3NjM1ODE5NCwiZXhwIjoxNjc4OTUwMTk0fQ.PYj_EeV6VhbZEGRaowDBReVwRquGT6EPq2ci3Bst0dg	2023-02-14 07:03:14.602594	2023-03-16 07:03:14
911	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MTA4OTY5MCwiZXhwIjoxNjczNjgxNjkwfQ.iTyuJgZYYcvHwVYJV2cCLHvFhkJKw65xLv_9PuRUtDU	2022-12-15 07:34:50.015197	2023-01-14 07:34:50
933	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MzE3OTk4MiwiZXhwIjoxNjc1NzcxOTgyfQ.lh20YBfJFxcbHNwbtFAVrnpfGJm8M8IyRckJyNSZTKQ	2023-01-08 12:13:04.213747	2023-02-07 12:13:02
954	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MzQ2MTE5MSwiZXhwIjoxNjc2MDUzMTkxfQ.eNkaGOeyPR1q0dU4pib79vzzuFMSBFuoVDEZmf7qQZE	2023-01-11 18:30:46.961548	2023-02-10 18:19:51
975	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTYsImlhdCI6MTY3MzgzMjI3NywiZXhwIjoxNjc2NDI0Mjc3fQ.ZBWirF5axAf-HmVznpV8AjJYleV-fBLp9bNmcOvSCBw	2023-01-16 01:24:37.482567	2023-02-15 01:24:37
996	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3NTk2NTAzNiwiZXhwIjoxNjc4NTU3MDM2fQ.RVCUluSqtp3HHv8QSTq8pxjWJ41LTW3DvJeePUc31_Y	2023-02-09 17:50:36.529627	2023-03-11 17:50:36
1016	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTAsImlhdCI6MTY3NjM1ODU3MywiZXhwIjoxNjc4OTUwNTczfQ.PiqqE__xFc9VfyKltM2RW0iWAZ8xpfyPf2OsEMpYxP8	2023-02-14 07:09:33.132331	2023-03-16 07:09:33
913	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTAsImlhdCI6MTY3MTA5NTE2OCwiZXhwIjoxNjczNjg3MTY4fQ.BRzK8RDq62IHWWEZz2dh-6S9_vL5mkRl-oqbovFIxf4	2022-12-15 09:06:08.678731	2023-01-14 09:06:08
934	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MzI2NjY1MSwiZXhwIjoxNjc1ODU4NjUxfQ.rwLrSAXmBxEUKrLr9VC-ZTk9V6WMTR8JSFqzbwd2iSk	2023-01-09 12:17:31.529558	2023-02-08 12:17:31
955	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MzQ2NDgyNCwiZXhwIjoxNjc2MDU2ODI0fQ.h-66pdgIMQ2gAe8rFqn4X-ZLxDP95RUJyO4Ggci694E	2023-01-11 19:31:19.564159	2023-02-10 19:20:24
976	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjIsImlhdCI6MTY3Mzk1MTc4MywiZXhwIjoxNjc2NTQzNzgzfQ.uow3tldccRW5PjjVR9dgkGFxY4gH6onfAFGIwDyWmOg	2023-01-17 10:36:23.115292	2023-02-16 10:36:23
997	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3NjAwMzQyMiwiZXhwIjoxNjc4NTk1NDIyfQ.HBDHqF5LXdNZAdRy2A4KFHn2ieRW-sz_bkZeFTjzL7A	2023-02-10 04:30:22.064248	2023-03-12 04:30:22
1017	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3NjM1OTM4NywiZXhwIjoxNjc4OTUxMzg3fQ.47KANzREeIkWXtP-GzYl6mV-4VPs8GwTwyRVtY2Btwo	2023-02-14 07:23:07.557657	2023-03-16 07:23:07
912	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTAsImlhdCI6MTY3MTA5NTE2OCwiZXhwIjoxNjczNjg3MTY4fQ.BRzK8RDq62IHWWEZz2dh-6S9_vL5mkRl-oqbovFIxf4	2022-12-15 09:06:08.67937	2023-01-14 09:06:08
935	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTYsImlhdCI6MTY3MzI2NjcyMywiZXhwIjoxNjc1ODU4NzIzfQ.7brGBSpE94r7e_arsViLBetUM9_1hKcsqB6V81YkrRo	2023-01-09 12:18:43.850753	2023-02-08 12:18:43
956	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MzQ2ODg2NCwiZXhwIjoxNjc2MDYwODY0fQ.IgRrmoPN9BWXRfBh4vldsC6OexDA8jfXlRKtuTXz5Uk	2023-01-11 20:38:40.308703	2023-02-10 20:27:44
977	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3Mzk1MjAzNywiZXhwIjoxNjc2NTQ0MDM3fQ.Ykdnval-2-5bvcMHldYme_Zv9fucJZnY_T-ggnnl1zE	2023-01-17 10:40:37.775625	2023-02-16 10:40:37
998	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3NjAxMTkwOSwiZXhwIjoxNjc4NjAzOTA5fQ.U-WDwExE_y0c_BUC-z8ikZcgtdPt0Q3840Y4iOJKHw0	2023-02-10 06:51:49.418436	2023-03-12 06:51:49
1018	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3NjQ4MjA4MiwiZXhwIjoxNjc5MDc0MDgyfQ.bu9PF5x2myQaKGFsOg4QeD-bHv1meHZzpdh4_3azX0g	2023-02-15 17:28:02.443155	2023-03-17 17:28:02
914	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTAsImlhdCI6MTY3MTA5NTI0NywiZXhwIjoxNjczNjg3MjQ3fQ.PEJpaREANGHS-b4gIhCo29-qz7MbWi-1aJDWA0fH0hg	2022-12-15 09:07:27.053696	2023-01-14 09:07:27
936	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MzYsImlhdCI6MTY3MzI2Njk5OCwiZXhwIjoxNjc1ODU4OTk4fQ.z4sx2fJXykg87Dfgws-GKLKHJJDkDu1tpbjWtbN0Gw4	2023-01-09 12:23:18.372004	2023-02-08 12:23:18
957	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MzYwOTEyMSwiZXhwIjoxNjc2MjAxMTIxfQ._nrpTwXsOk825Qsv8BdlqzvCQlqvpbTqXIRBPXg9LdE	2023-01-13 11:25:23.262354	2023-02-12 11:25:21
978	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3Mzk1MjA3NiwiZXhwIjoxNjc2NTQ0MDc2fQ.RTARunUuHm0sHWtk9F1vn6UfVN8lTXJIfQ1Kul0WYK8	2023-01-17 10:41:16.809621	2023-02-16 10:41:16
999	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3NjAzMDYwOSwiZXhwIjoxNjc4NjIyNjA5fQ.w8jWKvXToD376jfUEhtqr9ez6pZk0h80_I3LLo98T68	2023-02-10 12:03:29.186611	2023-03-12 12:03:29
915	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTAsImlhdCI6MTY3MTA5NTI0NywiZXhwIjoxNjczNjg3MjQ3fQ.PEJpaREANGHS-b4gIhCo29-qz7MbWi-1aJDWA0fH0hg	2022-12-15 09:07:27.056885	2023-01-14 09:07:27
937	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MzYsImlhdCI6MTY3MzI3MTAzNywiZXhwIjoxNjc1ODYzMDM3fQ.UYRo3VRjPAEnTIYkkCIYDVsfxcZ9nN1F56C9AEt-sTE	2023-01-09 13:30:37.157079	2023-02-08 13:30:37
958	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MzYyMTI5MCwiZXhwIjoxNjc2MjEzMjkwfQ.QIqXh78ETMdL3VoRym-uJrq7wKXfaugq3gRpYJqaegc	2023-01-13 14:48:12.612962	2023-02-12 14:48:10
979	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjIsImlhdCI6MTY3Mzk1OTU0NiwiZXhwIjoxNjc2NTUxNTQ2fQ.YQ0nVKM_7XVXT4v9BnziaO0mxXpNbD2wc5XkS2VwSBA	2023-01-17 12:45:46.944403	2023-02-16 12:45:46
980	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjIsImlhdCI6MTY3Mzk1OTU0OCwiZXhwIjoxNjc2NTUxNTQ4fQ.3m7B-xqTeOr0hpexJvU2789n24XUH68adu2DXFU_JOE	2023-01-17 12:45:48.516123	2023-02-16 12:45:48
1000	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY3NjAzNjgxOCwiZXhwIjoxNjc4NjI4ODE4fQ.xrFYo01K4n2wHcwS-ZQe7WZ_4_uUaWtAY0OBy4ob2vQ	2023-02-10 13:46:58.432376	2023-03-12 13:46:58
916	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTAsImlhdCI6MTY3MTA5NTI0NywiZXhwIjoxNjczNjg3MjQ3fQ.PEJpaREANGHS-b4gIhCo29-qz7MbWi-1aJDWA0fH0hg	2022-12-15 09:07:27.054317	2023-01-14 09:07:27
938	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MzI3MTEzMiwiZXhwIjoxNjc1ODYzMTMyfQ.Jzc7fQ20lf7lUmxIsPsh4TBoudLSYZMGqlC6PXwhe0Y	2023-01-09 13:32:12.152934	2023-02-08 13:32:12
959	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MzcsImlhdCI6MTY3MzYyNzg2NiwiZXhwIjoxNjc2MjE5ODY2fQ.X4d_DlqQl5MVcd9r7TM_9itQkY6l-csnC3o7LI_QTcs	2023-01-13 16:37:46.981825	2023-02-12 16:37:46
981	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3NDE1MzIwNCwiZXhwIjoxNjc2NzQ1MjA0fQ.zcbdefL5QjhAvCNNu3dF46yBzujUFvkyJsHevoc9IC8	2023-01-19 18:33:24.329727	2023-02-18 18:33:24
1001	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3NjA0MzU2MSwiZXhwIjoxNjc4NjM1NTYxfQ.M55Yn1zDqg55EKUMS-fPE4xZWtEYO2wa_lv-I4U7NjU	2023-02-10 15:39:21.564015	2023-03-12 15:39:21
917	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY3MTA5NTQ4NiwiZXhwIjoxNjczNjg3NDg2fQ.lxvrzOb03CuSgfbYMkvntfSCuNjDS2lVhIRhjMcbhj4	2022-12-15 09:11:26.082343	2023-01-14 09:11:26
920	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MTA5NTUxMCwiZXhwIjoxNjczNjg3NTEwfQ.cjKMJGCqWNG9aD3S9m7alxVd7-kzGaw5GqmX9N94XWg	2022-12-15 09:11:50.925201	2023-01-14 09:11:50
939	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MzI3MTE3MSwiZXhwIjoxNjc1ODYzMTcxfQ.iKfF10Q8VYM-3cee_4pteiIlUECMRA1JvewwOIpCujg	2023-01-09 13:32:51.868571	2023-02-08 13:32:51
960	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MzcsImlhdCI6MTY3MzYyODIwMSwiZXhwIjoxNjc2MjIwMjAxfQ.A_4KwBWPzzqgqCb8QoqbSIupVpRb9CVcRDVA8eS5Cwk	2023-01-13 16:43:21.809612	2023-02-12 16:43:21
982	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3NTY1OTU5NCwiZXhwIjoxNjc4MjUxNTk0fQ.4rWqXFA6HJUuI_gVOGTYw2evXuc5NEApIu3V3pyR6-A	2023-02-06 04:59:54.96175	2023-03-08 04:59:54
1002	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3NjA0NTMxNiwiZXhwIjoxNjc4NjM3MzE2fQ.tlHh0U5EIQzvdCobKXectO42l-cPC0InE8hATMMq-zk	2023-02-10 16:08:36.354844	2023-03-12 16:08:36
918	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY3MTA5NTQ4NiwiZXhwIjoxNjczNjg3NDg2fQ.lxvrzOb03CuSgfbYMkvntfSCuNjDS2lVhIRhjMcbhj4	2022-12-15 09:11:26.081217	2023-01-14 09:11:26
919	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MTA5NTUwOSwiZXhwIjoxNjczNjg3NTA5fQ.cOSpn0sOxwtFdYFjHddEpQz6JgrTAisVlJvnPZKjQJw	2022-12-15 09:11:49.96092	2023-01-14 09:11:49
940	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTYsImlhdCI6MTY3MzI4OTY4NywiZXhwIjoxNjc1ODgxNjg3fQ.JYaV4j1vrZbnx8ZhzU4Sxj5FJv6T6q_MVru57Q5M1wU	2023-01-09 18:41:27.565466	2023-02-08 18:41:27
961	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjIsImlhdCI6MTY3MzYyOTA1OSwiZXhwIjoxNjc2MjIxMDU5fQ.92R5b6tSN1fD0CvmA7Tdfw4gLa_Y5LKKwowSgzSQOxk	2023-01-13 16:57:39.945513	2023-02-12 16:57:39
962	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjIsImlhdCI6MTY3MzYyOTA2MCwiZXhwIjoxNjc2MjIxMDYwfQ.zoSm3Ej71tumP6nqSi__Nb2iTsfpvNcvkiuOk-Z-ctQ	2023-01-13 16:57:40.629775	2023-02-12 16:57:40
983	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MzgsImlhdCI6MTY3NTY1OTc4OSwiZXhwIjoxNjc4MjUxNzg5fQ._6Ee7NDKzvFLgWcF9Nl_knKGx9FwlygpwWu-ypLmJjU	2023-02-06 05:03:09.595301	2023-03-08 05:03:09
1003	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3NjA0NTQxMiwiZXhwIjoxNjc4NjM3NDEyfQ.i4tPb1piHL-hQEXu7epCu7z-7ZgyUNiMtdCA76hKKjw	2023-02-10 16:10:12.92164	2023-03-12 16:10:12
922	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MTA5NTYxMSwiZXhwIjoxNjczNjg3NjExfQ.TRdDJBNnC16nN2j4QQ_EetIiobSkTidLykiMH-KA-uY	2022-12-15 09:13:31.098419	2023-01-14 09:13:31
941	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTYsImlhdCI6MTY3MzI4OTY4OCwiZXhwIjoxNjc1ODgxNjg4fQ.QlicRW36Mi4q2V2QPblwE7UYjul_w13u_uYV_t2v_tM	2023-01-09 18:41:28.298033	2023-02-08 18:41:28
963	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MzY0NjE1NywiZXhwIjoxNjc2MjM4MTU3fQ.BrLiQAz_bDmay4fIM_SFVGnbO5vy21WqnfnrXbSV20U	2023-01-13 21:42:37.870281	2023-02-12 21:42:37
984	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3NTY3Mjk5MSwiZXhwIjoxNjc4MjY0OTkxfQ.fy6cHywaHHJdAqqmAZA3JFf4ZfkI8y93p4ChAguxrX8	2023-02-06 08:43:11.876823	2023-03-08 08:43:11
1004	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTAsImlhdCI6MTY3NjA0NTQ1NCwiZXhwIjoxNjc4NjM3NDU0fQ.Kkzs4rOplIENV7S-zhIjEQVo_e_JTOGs4lx-f0ZeU4g	2023-02-10 16:10:54.615916	2023-03-12 16:10:54
921	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MTA5NTYxMSwiZXhwIjoxNjczNjg3NjExfQ.TRdDJBNnC16nN2j4QQ_EetIiobSkTidLykiMH-KA-uY	2022-12-15 09:13:31.097471	2023-01-14 09:13:31
942	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTYsImlhdCI6MTY3MzI5MzczMCwiZXhwIjoxNjc1ODg1NzMwfQ.CZFl_QRAJWIqZmQ1_EwEpOiZM-pyGGDxGzPN15A4d-Y	2023-01-09 19:48:50.517191	2023-02-08 19:48:50
964	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MzY1MTY2NCwiZXhwIjoxNjc2MjQzNjY0fQ.TKUnmmREI2MkuxfyyRCTWwx1fre7zxyGW3FwjFvDSRY	2023-01-13 23:14:24.208872	2023-02-12 23:14:24
985	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3NTY3Mzc3NiwiZXhwIjoxNjc4MjY1Nzc2fQ.W11uQrAsMY_9jrYJTeaz9se1YN024-_RdCJKmBR9lag	2023-02-06 08:56:16.22638	2023-03-08 08:56:16
1005	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3NjA2MDU5NSwiZXhwIjoxNjc4NjUyNTk1fQ.jl4_yx-IgGRnpiHOwa31UHR8HLXTUNDqAOCPU8yUKU0	2023-02-10 20:23:15.088281	2023-03-12 20:23:15
924	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MTA5NTgyNiwiZXhwIjoxNjczNjg3ODI2fQ.K6l3Qcpjt-DnWbeSrwKEEdnXKZn88ZbbphOwvFzDBcA	2022-12-15 09:17:06.357224	2023-01-14 09:17:06
943	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MzI5Mzg5OSwiZXhwIjoxNjc1ODg1ODk5fQ.GZ0NM2msT2gudo4KzVketEQNZBfCzc-aoVXgy8qes20	2023-01-09 19:51:39.761473	2023-02-08 19:51:39
965	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MzY1MTY5MSwiZXhwIjoxNjc2MjQzNjkxfQ.kAmHNNZI22Uz9FUT49vHrhbNQaLrS1_1Jbsgkg1uBuo	2023-01-13 23:14:52.080724	2023-02-12 23:14:51
986	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3NTc5NTY5OCwiZXhwIjoxNjc4Mzg3Njk4fQ.75dCSK-qNxxzizgo86afUIauGQTjtZ5xVqrCErZBz_M	2023-02-07 18:48:18.141142	2023-03-09 18:48:18
1006	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3NjA2MTgyOCwiZXhwIjoxNjc4NjUzODI4fQ.hGEWgOw4WvaNO_IVMqxkw4RzKWpxSmaaEY5GMUiYGdM	2023-02-10 20:43:48.457919	2023-03-12 20:43:48
923	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MTA5NTgyNiwiZXhwIjoxNjczNjg3ODI2fQ.K6l3Qcpjt-DnWbeSrwKEEdnXKZn88ZbbphOwvFzDBcA	2022-12-15 09:17:06.358451	2023-01-14 09:17:06
944	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTAsImlhdCI6MTY3MzI5MzkxMCwiZXhwIjoxNjc1ODg1OTEwfQ._4c1BuXUCW3nhgEA7TwgnllWeUGW74WLOahFvN2Dyl8	2023-01-09 19:51:51.013521	2023-02-08 19:51:50
966	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MzY1MTY5OCwiZXhwIjoxNjc2MjQzNjk4fQ.NtC05qo3saew09-_A5qvIovRVKpYTgPLglyTr2NiYM0	2023-01-13 23:14:58.12019	2023-02-12 23:14:58
987	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTAsImlhdCI6MTY3NTgyODM4NywiZXhwIjoxNjc4NDIwMzg3fQ.y-8IILAqY2oDKQ8_5Dj04_J5P7mBXakEMo-qHK5FxZU	2023-02-08 03:53:07.062575	2023-03-10 03:53:07
1007	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3NjA2MzE0MywiZXhwIjoxNjc4NjU1MTQzfQ.LHB6JR0WYzbbH0U_aWS0ky7y1hVr4jzSxXHCCb_lwbE	2023-02-10 21:05:43.009832	2023-03-12 21:05:43
925	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MTA5NjY0NywiZXhwIjoxNjczNjg4NjQ3fQ.eF0hKZ-D07WnVlfqG4YD2NoHZh-ejof3s52Lu4NvIv8	2022-12-15 09:30:47.426162	2023-01-14 09:30:47
945	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTYsImlhdCI6MTY3MzI5ODc3MiwiZXhwIjoxNjc1ODkwNzcyfQ.Uqfw_c0v3O0XuBjui5TCsN4hRSaX0eIlW18USSctyj0	2023-01-09 21:12:52.988033	2023-02-08 21:12:52
967	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MzcyMjc1OCwiZXhwIjoxNjc2MzE0NzU4fQ.EUhfLb0bWZG339dZNQQ-9vwyQTT3Rt3H2PSW_8XsxVg	2023-01-14 18:59:18.376377	2023-02-13 18:59:18
988	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTAsImlhdCI6MTY3NTg5NjE1OSwiZXhwIjoxNjc4NDg4MTU5fQ.5gr1OU476wlgTqJyFEhgL8lvFM6OalgmC0uUy_ulUgI	2023-02-08 22:42:39.714172	2023-03-10 22:42:39
1008	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3NjA2MzUzNywiZXhwIjoxNjc4NjU1NTM3fQ.uyKXf935AGkmuLh5SsDxrjAtUQKEDdnEnN_eshHlSD0	2023-02-10 21:12:17.394339	2023-03-12 21:12:17
926	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MTA5NjY0NywiZXhwIjoxNjczNjg4NjQ3fQ.eF0hKZ-D07WnVlfqG4YD2NoHZh-ejof3s52Lu4NvIv8	2022-12-15 09:30:47.42479	2023-01-14 09:30:47
946	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MzI5OTkwNywiZXhwIjoxNjc1ODkxOTA3fQ.CQ8IDM1jU4Cr-48hDYBW_Kojg_mSZUGGbIt8LG5emuE	2023-01-09 21:31:48.085212	2023-02-08 21:31:47
968	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3MzcyMzA0OCwiZXhwIjoxNjc2MzE1MDQ4fQ.s1xFzcMbirhjiCHjnesEzZyKzpmpI9lPgEpl3RgBBcA	2023-01-14 19:04:08.233742	2023-02-13 19:04:08
989	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MTAsImlhdCI6MTY3NTg5NzEzMCwiZXhwIjoxNjc4NDg5MTMwfQ.-1efbJJh_bdNEAUD33QeHSiQ-p264cu49JVl6MwGSNQ	2023-02-08 22:58:50.028558	2023-03-10 22:58:50
1009	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDksImlhdCI6MTY3NjMzNzQ3MiwiZXhwIjoxNjc4OTI5NDcyfQ.iA1GozE3gI07MHfQzJpV_SVgFIc5L8AOc6ta2kDTl9Q	2023-02-14 01:17:52.983956	2023-03-16 01:17:52
928	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MTA5Njc5MSwiZXhwIjoxNjczNjg4NzkxfQ.g1ml2_2apMT-ejBw-mdwNqg5qf3hW7qF7GeRAW5Uxc8	2022-12-15 09:33:11.387601	2023-01-14 09:33:11
947	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MzM1MzEyMSwiZXhwIjoxNjc1OTQ1MTIxfQ.bHzz6CwnA6h1dqtdYQ0qeKeXjIdN2A_XhH_-SUw3boE	2023-01-10 12:18:41.263822	2023-02-09 12:18:41
969	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3MzcyMzA3NSwiZXhwIjoxNjc2MzE1MDc1fQ.vCktzOU-6HQXwiqXT5VrW53Oi3VD-pyHiLjZ2HIA-CE	2023-01-14 19:04:35.847484	2023-02-13 19:04:35
990	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NTEsImlhdCI6MTY3NTkyMzc4MywiZXhwIjoxNjc4NTE1NzgzfQ.5biCqZBP1scT7lUwGMKU86sx_deoDcej9K2yGpQabDs	2023-02-09 06:23:03.745311	2023-03-11 06:23:03
1010	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6NDgsImlhdCI6MTY3NjMzNzYzMiwiZXhwIjoxNjc4OTI5NjMyfQ.bfch3Q8yvx7kV-XKjOZ_7J71pCw9FZ4mhoaQRkrCvHk	2023-02-14 01:20:32.897589	2023-03-16 01:20:32
900	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjIsImlhdCI6MTY3MTA4OTM4MCwiZXhwIjoxNjczNjgxMzgwfQ.p9QRGoIwGO3McLupOzbvXh0Lw_POvmSXwsXmEz_E7ls	2022-12-15 07:29:40.756701	2023-01-14 07:29:40
909	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbiI6MjIsImlhdCI6MTY3MTA4OTM5MywiZXhwIjoxNjczNjgxMzkzfQ.EC5n_zcK4dD_s39d8TW0NJ8XoldvyUvZcnoaLFJVlJs	2022-12-15 07:29:53.493533	2023-01-14 07:29:53
\.


                                                                                                                                                                                                                                                                                                                                                                                     restore.sql                                                                                         0000600 0004000 0002000 00000156311 14373217513 0015401 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 15.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE railway;
--
-- Name: railway; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE railway WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE railway OWNER TO postgres;

\connect railway

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: tbl_administrator; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tbl_administrator (
    admin_id integer NOT NULL,
    admin_name character varying NOT NULL,
    admin_email character varying NOT NULL,
    admin_password character varying NOT NULL
);


ALTER TABLE public.tbl_administrator OWNER TO postgres;

--
-- Name: tbl_administrator_admin_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tbl_administrator_admin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_administrator_admin_id_seq OWNER TO postgres;

--
-- Name: tbl_administrator_admin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tbl_administrator_admin_id_seq OWNED BY public.tbl_administrator.admin_id;


--
-- Name: tbl_classification; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tbl_classification (
    class_id integer NOT NULL,
    class_desc character varying NOT NULL
);


ALTER TABLE public.tbl_classification OWNER TO postgres;

--
-- Name: tbl_classification_class_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tbl_classification_class_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_classification_class_id_seq OWNER TO postgres;

--
-- Name: tbl_classification_class_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tbl_classification_class_id_seq OWNED BY public.tbl_classification.class_id;


--
-- Name: tbl_custMed; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."tbl_custMed" (
    custmed_id integer NOT NULL,
    prod_id integer NOT NULL,
    med_quantity integer NOT NULL,
    med_name character varying
);


ALTER TABLE public."tbl_custMed" OWNER TO postgres;

--
-- Name: tbl_custMed_custmed_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."tbl_custMed_custmed_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."tbl_custMed_custmed_id_seq" OWNER TO postgres;

--
-- Name: tbl_custMed_custmed_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."tbl_custMed_custmed_id_seq" OWNED BY public."tbl_custMed".custmed_id;


--
-- Name: tbl_customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tbl_customer (
    customer_id integer NOT NULL,
    username character varying NOT NULL,
    password character varying NOT NULL,
    email character varying NOT NULL,
    firstname character varying,
    lastname character varying,
    sex character varying,
    age character varying,
    datecreated timestamp without time zone
);


ALTER TABLE public.tbl_customer OWNER TO postgres;

--
-- Name: tbl_customer_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tbl_customer_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_customer_customer_id_seq OWNER TO postgres;

--
-- Name: tbl_customer_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tbl_customer_customer_id_seq OWNED BY public.tbl_customer.customer_id;


--
-- Name: tbl_customer_med; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tbl_customer_med (
    c_med_id integer NOT NULL,
    customer integer NOT NULL,
    global_med integer NOT NULL,
    qty integer
);


ALTER TABLE public.tbl_customer_med OWNER TO postgres;

--
-- Name: tbl_customer_med_c_med_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tbl_customer_med_c_med_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_customer_med_c_med_id_seq OWNER TO postgres;

--
-- Name: tbl_customer_med_c_med_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tbl_customer_med_c_med_id_seq OWNED BY public.tbl_customer_med.c_med_id;


--
-- Name: tbl_discount; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tbl_discount (
    discount_id integer NOT NULL,
    discount_desc character varying NOT NULL,
    discount_cost numeric NOT NULL,
    pharmacy_id integer
);


ALTER TABLE public.tbl_discount OWNER TO postgres;

--
-- Name: tbl_discount_discount_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tbl_discount_discount_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_discount_discount_id_seq OWNER TO postgres;

--
-- Name: tbl_discount_discount_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tbl_discount_discount_id_seq OWNED BY public.tbl_discount.discount_id;


--
-- Name: tbl_dosage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tbl_dosage (
    dosage_id integer NOT NULL,
    dosage_desc character varying NOT NULL
);


ALTER TABLE public.tbl_dosage OWNER TO postgres;

--
-- Name: tbl_dosage_dosage_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tbl_dosage_dosage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_dosage_dosage_id_seq OWNER TO postgres;

--
-- Name: tbl_dosage_dosage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tbl_dosage_dosage_id_seq OWNED BY public.tbl_dosage.dosage_id;


--
-- Name: tbl_global_med; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tbl_global_med (
    global_med_id integer NOT NULL,
    global_brand character varying,
    global_brand_name character varying NOT NULL,
    global_generic_name character varying NOT NULL,
    global_med_category integer NOT NULL,
    global_classification integer,
    image character varying
);


ALTER TABLE public.tbl_global_med OWNER TO postgres;

--
-- Name: tbl_global_med_global_med_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tbl_global_med_global_med_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_global_med_global_med_id_seq OWNER TO postgres;

--
-- Name: tbl_global_med_global_med_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tbl_global_med_global_med_id_seq OWNED BY public.tbl_global_med.global_med_id;


--
-- Name: tbl_local_medicine; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tbl_local_medicine (
    med_id integer NOT NULL,
    pharmacy_id integer NOT NULL,
    global_med_id integer NOT NULL,
    med_price numeric NOT NULL,
    med_storage character varying,
    med_notes character varying,
    med_qty numeric,
    warning_threshold integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.tbl_local_medicine OWNER TO postgres;

--
-- Name: tbl_local_medicine_med_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tbl_local_medicine_med_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_local_medicine_med_id_seq OWNER TO postgres;

--
-- Name: tbl_local_medicine_med_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tbl_local_medicine_med_id_seq OWNED BY public.tbl_local_medicine.med_id;


--
-- Name: tbl_med_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tbl_med_category (
    med_cat_id integer NOT NULL,
    med_cat_desc character varying NOT NULL
);


ALTER TABLE public.tbl_med_category OWNER TO postgres;

--
-- Name: tbl_med_category_med_cat_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tbl_med_category_med_cat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_med_category_med_cat_id_seq OWNER TO postgres;

--
-- Name: tbl_med_category_med_cat_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tbl_med_category_med_cat_id_seq OWNED BY public.tbl_med_category.med_cat_id;


--
-- Name: tbl_missing_med; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tbl_missing_med (
    missing_id integer NOT NULL,
    med_id integer NOT NULL,
    quantity integer NOT NULL,
    current_item_price numeric NOT NULL,
    report_date timestamp without time zone NOT NULL,
    pharma_id integer NOT NULL
);


ALTER TABLE public.tbl_missing_med OWNER TO postgres;

--
-- Name: tbl_missing_med_missing_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tbl_missing_med_missing_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_missing_med_missing_id_seq OWNER TO postgres;

--
-- Name: tbl_missing_med_missing_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tbl_missing_med_missing_id_seq OWNED BY public.tbl_missing_med.missing_id;


--
-- Name: tbl_mobile_cart; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tbl_mobile_cart (
    cart_id integer NOT NULL,
    cart_med_id integer NOT NULL,
    cart_global_med_id integer NOT NULL,
    cart_pharmacy_id integer NOT NULL,
    cart_quantity integer NOT NULL,
    "userID" integer NOT NULL
);


ALTER TABLE public.tbl_mobile_cart OWNER TO postgres;

--
-- Name: tbl_mobile_cart_cart_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tbl_mobile_cart_cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_mobile_cart_cart_id_seq OWNER TO postgres;

--
-- Name: tbl_mobile_cart_cart_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tbl_mobile_cart_cart_id_seq OWNED BY public.tbl_mobile_cart.cart_id;


--
-- Name: tbl_onPurchaseInvoice; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."tbl_onPurchaseInvoice" (
    "onPurhcaseInv_id" integer NOT NULL,
    med_id integer NOT NULL,
    "purchaseInvoice_id" integer NOT NULL,
    quantity integer NOT NULL,
    listing_price numeric NOT NULL,
    retail_price numeric NOT NULL,
    expiry_date timestamp without time zone,
    "manufactureDate" timestamp without time zone
);


ALTER TABLE public."tbl_onPurchaseInvoice" OWNER TO postgres;

--
-- Name: tbl_onPurchaseInvoice_onPurhcaseInv_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."tbl_onPurchaseInvoice_onPurhcaseInv_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."tbl_onPurchaseInvoice_onPurhcaseInv_id_seq" OWNER TO postgres;

--
-- Name: tbl_onPurchaseInvoice_onPurhcaseInv_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."tbl_onPurchaseInvoice_onPurhcaseInv_id_seq" OWNED BY public."tbl_onPurchaseInvoice"."onPurhcaseInv_id";


--
-- Name: tbl_onSalesInvoice; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."tbl_onSalesInvoice" (
    sales_qty_id integer NOT NULL,
    sales_id integer NOT NULL,
    qty_purchased integer NOT NULL,
    total_price numeric NOT NULL,
    med_id integer
);


ALTER TABLE public."tbl_onSalesInvoice" OWNER TO postgres;

--
-- Name: tbl_order_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tbl_order_items (
    "orderItem_id" integer NOT NULL,
    order_id integer NOT NULL,
    med_id integer NOT NULL,
    quantity integer NOT NULL
);


ALTER TABLE public.tbl_order_items OWNER TO postgres;

--
-- Name: tbl_order_items_orderItem_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."tbl_order_items_orderItem_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."tbl_order_items_orderItem_id_seq" OWNER TO postgres;

--
-- Name: tbl_order_items_orderItem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."tbl_order_items_orderItem_id_seq" OWNED BY public.tbl_order_items."orderItem_id";


--
-- Name: tbl_order_status; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tbl_order_status (
    order_status_id integer NOT NULL,
    status_desc character varying NOT NULL
);


ALTER TABLE public.tbl_order_status OWNER TO postgres;

--
-- Name: tbl_order_status_order_status_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tbl_order_status_order_status_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_order_status_order_status_id_seq OWNER TO postgres;

--
-- Name: tbl_order_status_order_status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tbl_order_status_order_status_id_seq OWNED BY public.tbl_order_status.order_status_id;


--
-- Name: tbl_orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tbl_orders (
    order_id integer NOT NULL,
    customer_id integer NOT NULL,
    pharmacy_id integer NOT NULL,
    order_totalprice numeric NOT NULL,
    order_created timestamp without time zone NOT NULL,
    order_status integer,
    order_sales_id integer,
    order_finished timestamp without time zone,
    discount_type integer,
    discount_cost numeric,
    subtotal numeric
);


ALTER TABLE public.tbl_orders OWNER TO postgres;

--
-- Name: tbl_orders_order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tbl_orders_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_orders_order_id_seq OWNER TO postgres;

--
-- Name: tbl_orders_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tbl_orders_order_id_seq OWNED BY public.tbl_orders.order_id;


--
-- Name: tbl_paymentType; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."tbl_paymentType" (
    "paymenType_id" integer NOT NULL,
    "paymentType_desc" character varying NOT NULL
);


ALTER TABLE public."tbl_paymentType" OWNER TO postgres;

--
-- Name: tbl_paymentType_paymenType_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."tbl_paymentType_paymenType_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."tbl_paymentType_paymenType_id_seq" OWNER TO postgres;

--
-- Name: tbl_paymentType_paymenType_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."tbl_paymentType_paymenType_id_seq" OWNED BY public."tbl_paymentType"."paymenType_id";


--
-- Name: tbl_pharmaAdmin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."tbl_pharmaAdmin" (
    pa_id integer NOT NULL,
    pharmacy_id integer NOT NULL,
    admin_id integer NOT NULL,
    pos boolean,
    inventory boolean,
    orders boolean,
    purchased boolean,
    settings boolean,
    sales boolean,
    "roleDesc" character varying,
    "primary" boolean DEFAULT false NOT NULL
);


ALTER TABLE public."tbl_pharmaAdmin" OWNER TO postgres;

--
-- Name: tbl_pharmaAdmin_pa_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."tbl_pharmaAdmin_pa_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."tbl_pharmaAdmin_pa_id_seq" OWNER TO postgres;

--
-- Name: tbl_pharmaAdmin_pa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."tbl_pharmaAdmin_pa_id_seq" OWNED BY public."tbl_pharmaAdmin".pa_id;


--
-- Name: tbl_pharmacy; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tbl_pharmacy (
    pharmacy_id integer NOT NULL,
    pharmacy_name character varying NOT NULL,
    pharmacy_location character varying NOT NULL,
    pharmacy_lat character varying,
    pharmacy_lng character varying,
    pharmacy_status boolean,
    pharamcy_closingtime character varying,
    pharmacy_timelimit character varying,
    pharamcy_openingtime character varying,
    logo character varying
);


ALTER TABLE public.tbl_pharmacy OWNER TO postgres;

--
-- Name: tbl_pharmacy_pharmacy_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tbl_pharmacy_pharmacy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_pharmacy_pharmacy_id_seq OWNER TO postgres;

--
-- Name: tbl_pharmacy_pharmacy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tbl_pharmacy_pharmacy_id_seq OWNED BY public.tbl_pharmacy.pharmacy_id;


--
-- Name: tbl_purchase_invoice; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tbl_purchase_invoice (
    "purchaseInvoice_id" integer NOT NULL,
    admin_id integer NOT NULL,
    pharmacy_id integer NOT NULL,
    supplier_id integer NOT NULL,
    "Date" timestamp without time zone,
    total_price numeric
);


ALTER TABLE public.tbl_purchase_invoice OWNER TO postgres;

--
-- Name: tbl_purchase_invoice_purchaseInvoice_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."tbl_purchase_invoice_purchaseInvoice_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."tbl_purchase_invoice_purchaseInvoice_id_seq" OWNER TO postgres;

--
-- Name: tbl_purchase_invoice_purchaseInvoice_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."tbl_purchase_invoice_purchaseInvoice_id_seq" OWNED BY public.tbl_purchase_invoice."purchaseInvoice_id";


--
-- Name: tbl_rem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tbl_rem (
    rem_id integer NOT NULL,
    med_id integer NOT NULL,
    mon boolean,
    tue boolean,
    wed boolean,
    thu boolean,
    fri boolean,
    sat boolean,
    sun boolean,
    notes character varying,
    active boolean,
    updatetime timestamp without time zone,
    dose integer,
    customer integer
);


ALTER TABLE public.tbl_rem OWNER TO postgres;

--
-- Name: tbl_remLog; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."tbl_remLog" (
    log_id integer NOT NULL,
    rem_id integer NOT NULL,
    med_id integer NOT NULL,
    time_id integer NOT NULL,
    datecreated timestamp without time zone NOT NULL,
    datetaken timestamp without time zone,
    day character varying,
    timetaken character varying
);


ALTER TABLE public."tbl_remLog" OWNER TO postgres;

--
-- Name: tbl_remLog_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."tbl_remLog_log_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."tbl_remLog_log_id_seq" OWNER TO postgres;

--
-- Name: tbl_remLog_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."tbl_remLog_log_id_seq" OWNED BY public."tbl_remLog".log_id;


--
-- Name: tbl_rem_rem_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tbl_rem_rem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_rem_rem_id_seq OWNER TO postgres;

--
-- Name: tbl_rem_rem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tbl_rem_rem_id_seq OWNED BY public.tbl_rem.rem_id;


--
-- Name: tbl_sales_invoice; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tbl_sales_invoice (
    salesinvoice_id integer NOT NULL,
    admin_id integer NOT NULL,
    pharmacy_id integer NOT NULL,
    "Date" timestamp without time zone NOT NULL,
    total_price numeric NOT NULL,
    discount numeric NOT NULL,
    payed_ammount numeric NOT NULL,
    change numeric NOT NULL,
    payment_type integer NOT NULL
);


ALTER TABLE public.tbl_sales_invoice OWNER TO postgres;

--
-- Name: tbl_sales_invoice_salesinvoice_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tbl_sales_invoice_salesinvoice_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_sales_invoice_salesinvoice_id_seq OWNER TO postgres;

--
-- Name: tbl_sales_invoice_salesinvoice_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tbl_sales_invoice_salesinvoice_id_seq OWNED BY public.tbl_sales_invoice.salesinvoice_id;


--
-- Name: tbl_sales_qty_sales_qty_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tbl_sales_qty_sales_qty_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_sales_qty_sales_qty_id_seq OWNER TO postgres;

--
-- Name: tbl_sales_qty_sales_qty_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tbl_sales_qty_sales_qty_id_seq OWNED BY public."tbl_onSalesInvoice".sales_qty_id;


--
-- Name: tbl_socketIO; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."tbl_socketIO" (
    "socketIO_id" integer NOT NULL,
    socket character varying NOT NULL,
    pharmacy_id integer NOT NULL,
    "timestamp" timestamp without time zone NOT NULL
);


ALTER TABLE public."tbl_socketIO" OWNER TO postgres;

--
-- Name: tbl_socketIO_socketIO_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."tbl_socketIO_socketIO_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."tbl_socketIO_socketIO_id_seq" OWNER TO postgres;

--
-- Name: tbl_socketIO_socketIO_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."tbl_socketIO_socketIO_id_seq" OWNED BY public."tbl_socketIO"."socketIO_id";


--
-- Name: tbl_supplier; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tbl_supplier (
    supplier_id integer NOT NULL,
    "companyName" character varying NOT NULL,
    contact character varying,
    email character varying,
    address character varying,
    pharmacy_id integer NOT NULL
);


ALTER TABLE public.tbl_supplier OWNER TO postgres;

--
-- Name: tbl_supplier_supplier_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tbl_supplier_supplier_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_supplier_supplier_id_seq OWNER TO postgres;

--
-- Name: tbl_supplier_supplier_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tbl_supplier_supplier_id_seq OWNED BY public.tbl_supplier.supplier_id;


--
-- Name: tbl_time; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tbl_time (
    time_id integer NOT NULL,
    rem_id integer NOT NULL,
    timeupdated timestamp without time zone,
    "time" character varying NOT NULL
);


ALTER TABLE public.tbl_time OWNER TO postgres;

--
-- Name: tbl_time_time_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tbl_time_time_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_time_time_id_seq OWNER TO postgres;

--
-- Name: tbl_time_time_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tbl_time_time_id_seq OWNED BY public.tbl_time.time_id;


--
-- Name: tbl_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tbl_tokens (
    token_id integer NOT NULL,
    token character varying NOT NULL,
    "dateCreated" timestamp without time zone NOT NULL,
    "dateExpired" timestamp without time zone NOT NULL
);


ALTER TABLE public.tbl_tokens OWNER TO postgres;

--
-- Name: tbl_tokens_token_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tbl_tokens_token_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_tokens_token_id_seq OWNER TO postgres;

--
-- Name: tbl_tokens_token_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tbl_tokens_token_id_seq OWNED BY public.tbl_tokens.token_id;


--
-- Name: tbl_administrator admin_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_administrator ALTER COLUMN admin_id SET DEFAULT nextval('public.tbl_administrator_admin_id_seq'::regclass);


--
-- Name: tbl_classification class_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_classification ALTER COLUMN class_id SET DEFAULT nextval('public.tbl_classification_class_id_seq'::regclass);


--
-- Name: tbl_custMed custmed_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tbl_custMed" ALTER COLUMN custmed_id SET DEFAULT nextval('public."tbl_custMed_custmed_id_seq"'::regclass);


--
-- Name: tbl_customer customer_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_customer ALTER COLUMN customer_id SET DEFAULT nextval('public.tbl_customer_customer_id_seq'::regclass);


--
-- Name: tbl_customer_med c_med_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_customer_med ALTER COLUMN c_med_id SET DEFAULT nextval('public.tbl_customer_med_c_med_id_seq'::regclass);


--
-- Name: tbl_discount discount_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_discount ALTER COLUMN discount_id SET DEFAULT nextval('public.tbl_discount_discount_id_seq'::regclass);


--
-- Name: tbl_dosage dosage_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_dosage ALTER COLUMN dosage_id SET DEFAULT nextval('public.tbl_dosage_dosage_id_seq'::regclass);


--
-- Name: tbl_global_med global_med_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_global_med ALTER COLUMN global_med_id SET DEFAULT nextval('public.tbl_global_med_global_med_id_seq'::regclass);


--
-- Name: tbl_local_medicine med_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_local_medicine ALTER COLUMN med_id SET DEFAULT nextval('public.tbl_local_medicine_med_id_seq'::regclass);


--
-- Name: tbl_med_category med_cat_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_med_category ALTER COLUMN med_cat_id SET DEFAULT nextval('public.tbl_med_category_med_cat_id_seq'::regclass);


--
-- Name: tbl_missing_med missing_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_missing_med ALTER COLUMN missing_id SET DEFAULT nextval('public.tbl_missing_med_missing_id_seq'::regclass);


--
-- Name: tbl_mobile_cart cart_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_mobile_cart ALTER COLUMN cart_id SET DEFAULT nextval('public.tbl_mobile_cart_cart_id_seq'::regclass);


--
-- Name: tbl_onPurchaseInvoice onPurhcaseInv_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tbl_onPurchaseInvoice" ALTER COLUMN "onPurhcaseInv_id" SET DEFAULT nextval('public."tbl_onPurchaseInvoice_onPurhcaseInv_id_seq"'::regclass);


--
-- Name: tbl_onSalesInvoice sales_qty_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tbl_onSalesInvoice" ALTER COLUMN sales_qty_id SET DEFAULT nextval('public.tbl_sales_qty_sales_qty_id_seq'::regclass);


--
-- Name: tbl_order_items orderItem_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_order_items ALTER COLUMN "orderItem_id" SET DEFAULT nextval('public."tbl_order_items_orderItem_id_seq"'::regclass);


--
-- Name: tbl_order_status order_status_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_order_status ALTER COLUMN order_status_id SET DEFAULT nextval('public.tbl_order_status_order_status_id_seq'::regclass);


--
-- Name: tbl_orders order_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_orders ALTER COLUMN order_id SET DEFAULT nextval('public.tbl_orders_order_id_seq'::regclass);


--
-- Name: tbl_paymentType paymenType_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tbl_paymentType" ALTER COLUMN "paymenType_id" SET DEFAULT nextval('public."tbl_paymentType_paymenType_id_seq"'::regclass);


--
-- Name: tbl_pharmaAdmin pa_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tbl_pharmaAdmin" ALTER COLUMN pa_id SET DEFAULT nextval('public."tbl_pharmaAdmin_pa_id_seq"'::regclass);


--
-- Name: tbl_pharmacy pharmacy_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_pharmacy ALTER COLUMN pharmacy_id SET DEFAULT nextval('public.tbl_pharmacy_pharmacy_id_seq'::regclass);


--
-- Name: tbl_purchase_invoice purchaseInvoice_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_purchase_invoice ALTER COLUMN "purchaseInvoice_id" SET DEFAULT nextval('public."tbl_purchase_invoice_purchaseInvoice_id_seq"'::regclass);


--
-- Name: tbl_rem rem_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_rem ALTER COLUMN rem_id SET DEFAULT nextval('public.tbl_rem_rem_id_seq'::regclass);


--
-- Name: tbl_remLog log_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tbl_remLog" ALTER COLUMN log_id SET DEFAULT nextval('public."tbl_remLog_log_id_seq"'::regclass);


--
-- Name: tbl_sales_invoice salesinvoice_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_sales_invoice ALTER COLUMN salesinvoice_id SET DEFAULT nextval('public.tbl_sales_invoice_salesinvoice_id_seq'::regclass);


--
-- Name: tbl_socketIO socketIO_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tbl_socketIO" ALTER COLUMN "socketIO_id" SET DEFAULT nextval('public."tbl_socketIO_socketIO_id_seq"'::regclass);


--
-- Name: tbl_supplier supplier_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_supplier ALTER COLUMN supplier_id SET DEFAULT nextval('public.tbl_supplier_supplier_id_seq'::regclass);


--
-- Name: tbl_time time_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_time ALTER COLUMN time_id SET DEFAULT nextval('public.tbl_time_time_id_seq'::regclass);


--
-- Name: tbl_tokens token_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_tokens ALTER COLUMN token_id SET DEFAULT nextval('public.tbl_tokens_token_id_seq'::regclass);


--
-- Data for Name: tbl_administrator; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tbl_administrator (admin_id, admin_name, admin_email, admin_password) FROM stdin;
\.
COPY public.tbl_administrator (admin_id, admin_name, admin_email, admin_password) FROM '$$PATH$$/3576.dat';

--
-- Data for Name: tbl_classification; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tbl_classification (class_id, class_desc) FROM stdin;
\.
COPY public.tbl_classification (class_id, class_desc) FROM '$$PATH$$/3578.dat';

--
-- Data for Name: tbl_custMed; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."tbl_custMed" (custmed_id, prod_id, med_quantity, med_name) FROM stdin;
\.
COPY public."tbl_custMed" (custmed_id, prod_id, med_quantity, med_name) FROM '$$PATH$$/3580.dat';

--
-- Data for Name: tbl_customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tbl_customer (customer_id, username, password, email, firstname, lastname, sex, age, datecreated) FROM stdin;
\.
COPY public.tbl_customer (customer_id, username, password, email, firstname, lastname, sex, age, datecreated) FROM '$$PATH$$/3582.dat';

--
-- Data for Name: tbl_customer_med; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tbl_customer_med (c_med_id, customer, global_med, qty) FROM stdin;
\.
COPY public.tbl_customer_med (c_med_id, customer, global_med, qty) FROM '$$PATH$$/3631.dat';

--
-- Data for Name: tbl_discount; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tbl_discount (discount_id, discount_desc, discount_cost, pharmacy_id) FROM stdin;
\.
COPY public.tbl_discount (discount_id, discount_desc, discount_cost, pharmacy_id) FROM '$$PATH$$/3584.dat';

--
-- Data for Name: tbl_dosage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tbl_dosage (dosage_id, dosage_desc) FROM stdin;
\.
COPY public.tbl_dosage (dosage_id, dosage_desc) FROM '$$PATH$$/3586.dat';

--
-- Data for Name: tbl_global_med; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tbl_global_med (global_med_id, global_brand, global_brand_name, global_generic_name, global_med_category, global_classification, image) FROM stdin;
\.
COPY public.tbl_global_med (global_med_id, global_brand, global_brand_name, global_generic_name, global_med_category, global_classification, image) FROM '$$PATH$$/3588.dat';

--
-- Data for Name: tbl_local_medicine; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tbl_local_medicine (med_id, pharmacy_id, global_med_id, med_price, med_storage, med_notes, med_qty, warning_threshold) FROM stdin;
\.
COPY public.tbl_local_medicine (med_id, pharmacy_id, global_med_id, med_price, med_storage, med_notes, med_qty, warning_threshold) FROM '$$PATH$$/3590.dat';

--
-- Data for Name: tbl_med_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tbl_med_category (med_cat_id, med_cat_desc) FROM stdin;
\.
COPY public.tbl_med_category (med_cat_id, med_cat_desc) FROM '$$PATH$$/3592.dat';

--
-- Data for Name: tbl_missing_med; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tbl_missing_med (missing_id, med_id, quantity, current_item_price, report_date, pharma_id) FROM stdin;
\.
COPY public.tbl_missing_med (missing_id, med_id, quantity, current_item_price, report_date, pharma_id) FROM '$$PATH$$/3594.dat';

--
-- Data for Name: tbl_mobile_cart; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tbl_mobile_cart (cart_id, cart_med_id, cart_global_med_id, cart_pharmacy_id, cart_quantity, "userID") FROM stdin;
\.
COPY public.tbl_mobile_cart (cart_id, cart_med_id, cart_global_med_id, cart_pharmacy_id, cart_quantity, "userID") FROM '$$PATH$$/3596.dat';

--
-- Data for Name: tbl_onPurchaseInvoice; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."tbl_onPurchaseInvoice" ("onPurhcaseInv_id", med_id, "purchaseInvoice_id", quantity, listing_price, retail_price, expiry_date, "manufactureDate") FROM stdin;
\.
COPY public."tbl_onPurchaseInvoice" ("onPurhcaseInv_id", med_id, "purchaseInvoice_id", quantity, listing_price, retail_price, expiry_date, "manufactureDate") FROM '$$PATH$$/3598.dat';

--
-- Data for Name: tbl_onSalesInvoice; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."tbl_onSalesInvoice" (sales_qty_id, sales_id, qty_purchased, total_price, med_id) FROM stdin;
\.
COPY public."tbl_onSalesInvoice" (sales_qty_id, sales_id, qty_purchased, total_price, med_id) FROM '$$PATH$$/3600.dat';

--
-- Data for Name: tbl_order_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tbl_order_items ("orderItem_id", order_id, med_id, quantity) FROM stdin;
\.
COPY public.tbl_order_items ("orderItem_id", order_id, med_id, quantity) FROM '$$PATH$$/3601.dat';

--
-- Data for Name: tbl_order_status; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tbl_order_status (order_status_id, status_desc) FROM stdin;
\.
COPY public.tbl_order_status (order_status_id, status_desc) FROM '$$PATH$$/3603.dat';

--
-- Data for Name: tbl_orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tbl_orders (order_id, customer_id, pharmacy_id, order_totalprice, order_created, order_status, order_sales_id, order_finished, discount_type, discount_cost, subtotal) FROM stdin;
\.
COPY public.tbl_orders (order_id, customer_id, pharmacy_id, order_totalprice, order_created, order_status, order_sales_id, order_finished, discount_type, discount_cost, subtotal) FROM '$$PATH$$/3605.dat';

--
-- Data for Name: tbl_paymentType; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."tbl_paymentType" ("paymenType_id", "paymentType_desc") FROM stdin;
\.
COPY public."tbl_paymentType" ("paymenType_id", "paymentType_desc") FROM '$$PATH$$/3607.dat';

--
-- Data for Name: tbl_pharmaAdmin; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."tbl_pharmaAdmin" (pa_id, pharmacy_id, admin_id, pos, inventory, orders, purchased, settings, sales, "roleDesc", "primary") FROM stdin;
\.
COPY public."tbl_pharmaAdmin" (pa_id, pharmacy_id, admin_id, pos, inventory, orders, purchased, settings, sales, "roleDesc", "primary") FROM '$$PATH$$/3609.dat';

--
-- Data for Name: tbl_pharmacy; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tbl_pharmacy (pharmacy_id, pharmacy_name, pharmacy_location, pharmacy_lat, pharmacy_lng, pharmacy_status, pharamcy_closingtime, pharmacy_timelimit, pharamcy_openingtime, logo) FROM stdin;
\.
COPY public.tbl_pharmacy (pharmacy_id, pharmacy_name, pharmacy_location, pharmacy_lat, pharmacy_lng, pharmacy_status, pharamcy_closingtime, pharmacy_timelimit, pharamcy_openingtime, logo) FROM '$$PATH$$/3611.dat';

--
-- Data for Name: tbl_purchase_invoice; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tbl_purchase_invoice ("purchaseInvoice_id", admin_id, pharmacy_id, supplier_id, "Date", total_price) FROM stdin;
\.
COPY public.tbl_purchase_invoice ("purchaseInvoice_id", admin_id, pharmacy_id, supplier_id, "Date", total_price) FROM '$$PATH$$/3613.dat';

--
-- Data for Name: tbl_rem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tbl_rem (rem_id, med_id, mon, tue, wed, thu, fri, sat, sun, notes, active, updatetime, dose, customer) FROM stdin;
\.
COPY public.tbl_rem (rem_id, med_id, mon, tue, wed, thu, fri, sat, sun, notes, active, updatetime, dose, customer) FROM '$$PATH$$/3615.dat';

--
-- Data for Name: tbl_remLog; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."tbl_remLog" (log_id, rem_id, med_id, time_id, datecreated, datetaken, day, timetaken) FROM stdin;
\.
COPY public."tbl_remLog" (log_id, rem_id, med_id, time_id, datecreated, datetaken, day, timetaken) FROM '$$PATH$$/3616.dat';

--
-- Data for Name: tbl_sales_invoice; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tbl_sales_invoice (salesinvoice_id, admin_id, pharmacy_id, "Date", total_price, discount, payed_ammount, change, payment_type) FROM stdin;
\.
COPY public.tbl_sales_invoice (salesinvoice_id, admin_id, pharmacy_id, "Date", total_price, discount, payed_ammount, change, payment_type) FROM '$$PATH$$/3619.dat';

--
-- Data for Name: tbl_socketIO; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."tbl_socketIO" ("socketIO_id", socket, pharmacy_id, "timestamp") FROM stdin;
\.
COPY public."tbl_socketIO" ("socketIO_id", socket, pharmacy_id, "timestamp") FROM '$$PATH$$/3622.dat';

--
-- Data for Name: tbl_supplier; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tbl_supplier (supplier_id, "companyName", contact, email, address, pharmacy_id) FROM stdin;
\.
COPY public.tbl_supplier (supplier_id, "companyName", contact, email, address, pharmacy_id) FROM '$$PATH$$/3624.dat';

--
-- Data for Name: tbl_time; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tbl_time (time_id, rem_id, timeupdated, "time") FROM stdin;
\.
COPY public.tbl_time (time_id, rem_id, timeupdated, "time") FROM '$$PATH$$/3626.dat';

--
-- Data for Name: tbl_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tbl_tokens (token_id, token, "dateCreated", "dateExpired") FROM stdin;
\.
COPY public.tbl_tokens (token_id, token, "dateCreated", "dateExpired") FROM '$$PATH$$/3628.dat';

--
-- Name: tbl_administrator_admin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tbl_administrator_admin_id_seq', 70, true);


--
-- Name: tbl_classification_class_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tbl_classification_class_id_seq', 4, true);


--
-- Name: tbl_custMed_custmed_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."tbl_custMed_custmed_id_seq"', 1, true);


--
-- Name: tbl_customer_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tbl_customer_customer_id_seq', 40, true);


--
-- Name: tbl_customer_med_c_med_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tbl_customer_med_c_med_id_seq', 13, true);


--
-- Name: tbl_discount_discount_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tbl_discount_discount_id_seq', 15, true);


--
-- Name: tbl_dosage_dosage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tbl_dosage_dosage_id_seq', 1, false);


--
-- Name: tbl_global_med_global_med_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tbl_global_med_global_med_id_seq', 9, true);


--
-- Name: tbl_local_medicine_med_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tbl_local_medicine_med_id_seq', 70, true);


--
-- Name: tbl_med_category_med_cat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tbl_med_category_med_cat_id_seq', 2, true);


--
-- Name: tbl_missing_med_missing_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tbl_missing_med_missing_id_seq', 10, true);


--
-- Name: tbl_mobile_cart_cart_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tbl_mobile_cart_cart_id_seq', 351, true);


--
-- Name: tbl_onPurchaseInvoice_onPurhcaseInv_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."tbl_onPurchaseInvoice_onPurhcaseInv_id_seq"', 73, true);


--
-- Name: tbl_order_items_orderItem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."tbl_order_items_orderItem_id_seq"', 244, true);


--
-- Name: tbl_order_status_order_status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tbl_order_status_order_status_id_seq', 3, true);


--
-- Name: tbl_orders_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tbl_orders_order_id_seq', 204, true);


--
-- Name: tbl_paymentType_paymenType_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."tbl_paymentType_paymenType_id_seq"', 2, true);


--
-- Name: tbl_pharmaAdmin_pa_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."tbl_pharmaAdmin_pa_id_seq"', 25, true);


--
-- Name: tbl_pharmacy_pharmacy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tbl_pharmacy_pharmacy_id_seq', 14, true);


--
-- Name: tbl_purchase_invoice_purchaseInvoice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."tbl_purchase_invoice_purchaseInvoice_id_seq"', 65, true);


--
-- Name: tbl_remLog_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."tbl_remLog_log_id_seq"', 1, false);


--
-- Name: tbl_rem_rem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tbl_rem_rem_id_seq', 9, true);


--
-- Name: tbl_sales_invoice_salesinvoice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tbl_sales_invoice_salesinvoice_id_seq', 288, true);


--
-- Name: tbl_sales_qty_sales_qty_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tbl_sales_qty_sales_qty_id_seq', 374, true);


--
-- Name: tbl_socketIO_socketIO_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."tbl_socketIO_socketIO_id_seq"', 5144, true);


--
-- Name: tbl_supplier_supplier_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tbl_supplier_supplier_id_seq', 23, true);


--
-- Name: tbl_time_time_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tbl_time_time_id_seq', 26, true);


--
-- Name: tbl_tokens_token_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tbl_tokens_token_id_seq', 1018, true);


--
-- Name: tbl_local_medicine qty_limit; Type: CHECK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE public.tbl_local_medicine
    ADD CONSTRAINT qty_limit CHECK ((med_qty >= (0)::numeric)) NOT VALID;


--
-- Name: tbl_administrator tbl_administrator_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_administrator
    ADD CONSTRAINT tbl_administrator_pkey PRIMARY KEY (admin_id);


--
-- Name: tbl_classification tbl_classification_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_classification
    ADD CONSTRAINT tbl_classification_pkey PRIMARY KEY (class_id);


--
-- Name: tbl_custMed tbl_custMed_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tbl_custMed"
    ADD CONSTRAINT "tbl_custMed_pkey" PRIMARY KEY (custmed_id);


--
-- Name: tbl_customer tbl_customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_customer
    ADD CONSTRAINT tbl_customer_pkey PRIMARY KEY (customer_id);


--
-- Name: tbl_discount tbl_discount_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_discount
    ADD CONSTRAINT tbl_discount_pkey PRIMARY KEY (discount_id);


--
-- Name: tbl_dosage tbl_dosage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_dosage
    ADD CONSTRAINT tbl_dosage_pkey PRIMARY KEY (dosage_id);


--
-- Name: tbl_global_med tbl_global_med_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_global_med
    ADD CONSTRAINT tbl_global_med_pkey PRIMARY KEY (global_med_id);


--
-- Name: tbl_local_medicine tbl_local_medicine_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_local_medicine
    ADD CONSTRAINT tbl_local_medicine_pkey PRIMARY KEY (med_id);


--
-- Name: tbl_med_category tbl_med_category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_med_category
    ADD CONSTRAINT tbl_med_category_pkey PRIMARY KEY (med_cat_id);


--
-- Name: tbl_missing_med tbl_missing_med_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_missing_med
    ADD CONSTRAINT tbl_missing_med_pkey PRIMARY KEY (missing_id);


--
-- Name: tbl_mobile_cart tbl_mobile_cart_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_mobile_cart
    ADD CONSTRAINT tbl_mobile_cart_pkey PRIMARY KEY (cart_id);


--
-- Name: tbl_onPurchaseInvoice tbl_onPurchaseInvoice_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tbl_onPurchaseInvoice"
    ADD CONSTRAINT "tbl_onPurchaseInvoice_pkey" PRIMARY KEY ("onPurhcaseInv_id");


--
-- Name: tbl_order_items tbl_order_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_order_items
    ADD CONSTRAINT tbl_order_items_pkey PRIMARY KEY ("orderItem_id");


--
-- Name: tbl_order_status tbl_order_status_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_order_status
    ADD CONSTRAINT tbl_order_status_pkey PRIMARY KEY (order_status_id);


--
-- Name: tbl_orders tbl_orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_orders
    ADD CONSTRAINT tbl_orders_pkey PRIMARY KEY (order_id);


--
-- Name: tbl_paymentType tbl_paymentType_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tbl_paymentType"
    ADD CONSTRAINT "tbl_paymentType_pkey" PRIMARY KEY ("paymenType_id");


--
-- Name: tbl_pharmaAdmin tbl_pharmaAdmin_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tbl_pharmaAdmin"
    ADD CONSTRAINT "tbl_pharmaAdmin_pkey" PRIMARY KEY (pa_id);


--
-- Name: tbl_pharmacy tbl_pharmacy_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_pharmacy
    ADD CONSTRAINT tbl_pharmacy_pkey PRIMARY KEY (pharmacy_id);


--
-- Name: tbl_purchase_invoice tbl_purchase_invoice_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_purchase_invoice
    ADD CONSTRAINT tbl_purchase_invoice_pkey PRIMARY KEY ("purchaseInvoice_id");


--
-- Name: tbl_remLog tbl_remLog_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tbl_remLog"
    ADD CONSTRAINT "tbl_remLog_pkey" PRIMARY KEY (log_id);


--
-- Name: tbl_rem tbl_rem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_rem
    ADD CONSTRAINT tbl_rem_pkey PRIMARY KEY (rem_id);


--
-- Name: tbl_sales_invoice tbl_sales_invoice_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_sales_invoice
    ADD CONSTRAINT tbl_sales_invoice_pkey PRIMARY KEY (salesinvoice_id);


--
-- Name: tbl_onSalesInvoice tbl_sales_qty_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tbl_onSalesInvoice"
    ADD CONSTRAINT tbl_sales_qty_pkey PRIMARY KEY (sales_qty_id);


--
-- Name: tbl_socketIO tbl_socketIO_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tbl_socketIO"
    ADD CONSTRAINT "tbl_socketIO_pkey" PRIMARY KEY ("socketIO_id");


--
-- Name: tbl_supplier tbl_supplier_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_supplier
    ADD CONSTRAINT tbl_supplier_pkey PRIMARY KEY (supplier_id);


--
-- Name: tbl_purchase_invoice Admin; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_purchase_invoice
    ADD CONSTRAINT "Admin" FOREIGN KEY (admin_id) REFERENCES public.tbl_administrator(admin_id) NOT VALID;


--
-- Name: tbl_local_medicine Global Med; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_local_medicine
    ADD CONSTRAINT "Global Med" FOREIGN KEY (global_med_id) REFERENCES public.tbl_global_med(global_med_id) NOT VALID;


--
-- Name: tbl_global_med MedCategory; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_global_med
    ADD CONSTRAINT "MedCategory" FOREIGN KEY (global_med_category) REFERENCES public.tbl_med_category(med_cat_id);


--
-- Name: tbl_onPurchaseInvoice Medicine; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tbl_onPurchaseInvoice"
    ADD CONSTRAINT "Medicine" FOREIGN KEY (med_id) REFERENCES public.tbl_local_medicine(med_id) NOT VALID;


--
-- Name: tbl_onSalesInvoice Medicine; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tbl_onSalesInvoice"
    ADD CONSTRAINT "Medicine" FOREIGN KEY (med_id) REFERENCES public.tbl_local_medicine(med_id) NOT VALID;


--
-- Name: tbl_local_medicine Pharmacy; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_local_medicine
    ADD CONSTRAINT "Pharmacy" FOREIGN KEY (pharmacy_id) REFERENCES public.tbl_pharmacy(pharmacy_id) NOT VALID;


--
-- Name: tbl_discount Pharmacy; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_discount
    ADD CONSTRAINT "Pharmacy" FOREIGN KEY (pharmacy_id) REFERENCES public.tbl_pharmacy(pharmacy_id) NOT VALID;


--
-- Name: tbl_purchase_invoice Pharmacy; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_purchase_invoice
    ADD CONSTRAINT "Pharmacy" FOREIGN KEY (pharmacy_id) REFERENCES public.tbl_pharmacy(pharmacy_id) NOT VALID;


--
-- Name: tbl_supplier Pharmacy; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_supplier
    ADD CONSTRAINT "Pharmacy" FOREIGN KEY (pharmacy_id) REFERENCES public.tbl_pharmacy(pharmacy_id) NOT VALID;


--
-- Name: tbl_onPurchaseInvoice Purchase Invoice; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tbl_onPurchaseInvoice"
    ADD CONSTRAINT "Purchase Invoice" FOREIGN KEY ("purchaseInvoice_id") REFERENCES public.tbl_purchase_invoice("purchaseInvoice_id") NOT VALID;


--
-- Name: tbl_onSalesInvoice Sales; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tbl_onSalesInvoice"
    ADD CONSTRAINT "Sales" FOREIGN KEY (sales_id) REFERENCES public.tbl_sales_invoice(salesinvoice_id) NOT VALID;


--
-- Name: tbl_purchase_invoice Supplier; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_purchase_invoice
    ADD CONSTRAINT "Supplier" FOREIGN KEY (supplier_id) REFERENCES public.tbl_supplier(supplier_id) NOT VALID;


--
-- Name: tbl_pharmaAdmin admin; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tbl_pharmaAdmin"
    ADD CONSTRAINT admin FOREIGN KEY (admin_id) REFERENCES public.tbl_administrator(admin_id) NOT VALID;


--
-- Name: tbl_pharmaAdmin pharma; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tbl_pharmaAdmin"
    ADD CONSTRAINT pharma FOREIGN KEY (pharmacy_id) REFERENCES public.tbl_pharmacy(pharmacy_id) NOT VALID;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       