<?php
/*
 * Copyright 2020 OsclassPoint.com
 *
 * Osclass maintained & developed by OsclassPoint.com
 * you may not use this file except in compliance with the License.
 * You may download copy of Osclass at
 *
 *     https://osclass-classifieds.com/download
 *
 * Software is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 */


    // meta tag robots
    osc_add_hook('header','bender_nofollow_construct');

    osc_enqueue_script('jquery-validate');
    bender_add_body_class('item item-post');
    $action = 'item_add_post';
    $edit = false;
    if( Params::getParam('action') === 'item_edit') {
        $action = 'item_edit_post';
        $edit = true;
    }

    ?>
<?php osc_current_web_theme_path('header.php') ; ?>
        <?php
    if ( bender_default_location_show_as() === 'dropdown') {
        ItemForm::location_javascript();
    } else {
        ItemForm::location_javascript_new();
    }
    ?>
    <div class="form-container form-horizontal">
        <div class="resp-wrapper">
            <div class="header">
                <h1><?php _e('Publish a listing', 'bender'); ?></h1>
            </div>
            <ul id="error_list"></ul>
                <form name="item" action="<?php echo osc_base_url(true);?>" method="post" enctype="multipart/form-data" id="item-post">
                    <fieldset>
                    <input type="hidden" name="action" value="<?php echo $action; ?>" />
                        <input type="hidden" name="page" value="item" />
                    <?php if($edit){ ?>
                        <input type="hidden" name="id" value="<?php echo osc_item_id();?>" />
                        <input type="hidden" name="secret" value="<?php echo osc_item_secret();?>" />
                    <?php } ?>
                        <h2><?php _e('General Information', 'bender'); ?></h2>
                        <div class="control-group">
                            <label class="control-label" for="select_1"><?php _e('Category', 'bender'); ?></label>
                            <div class="controls">
                                <?php try {
	                                ItemForm::category_select( null , null , __( 'Select a category' , 'bender' ) );
                                } catch ( Exception $e ) {
                                } ?>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="title[<?php echo osc_current_user_locale(); ?>]"><?php _e('Title', 'bender'); ?></label>
                            <div class="controls">
                                <?php ItemForm::title_input('title',osc_current_user_locale(), osc_esc_html( bender_item_title() )); ?>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="description[<?php echo osc_current_user_locale(); ?>]"><?php _e('Description', 'bender'); ?></label>
                            <div class="controls">
                                <?php ItemForm::description_textarea('description',osc_current_user_locale(), osc_esc_html( bender_item_description() )); ?>
                            </div>
                        </div>
                        <?php if( osc_price_enabled_at_items() ) { ?>
                        <div class="control-group control-group-price">
                            <label class="control-label" for="price"><?php _e('Price', 'bender'); ?></label>
                            <div class="controls">
                                <?php ItemForm::price_input_text(); ?>
                                <?php ItemForm::currency_select(); ?>
                            </div>
                        </div>
                        <?php } ?>
                        <?php if( osc_images_enabled_at_items() ) {
	                        try {
		                        ItemForm::ajax_photos();
	                        } catch ( Exception $e ) {
	                        }
                        } ?>
                        <div class="box location">
                            <h2><?php _e('Listing Location', 'bender'); ?></h2>
                            <?php if(count(osc_get_countries()) > 1) { ?>
                            <div class="control-group">
                                <label class="control-label" for="country"><?php _e('Country', 'bender'); ?></label>
                                <div class="controls">
                                    <?php ItemForm::country_select(osc_get_countries(), osc_user()); ?>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="regionId"><?php _e('Region', 'bender'); ?></label>
                                <div class="controls">
                                    <?php
                                    if ( bender_default_location_show_as() === 'dropdown') {
                                        if($edit) {
                                            ItemForm::region_select(osc_get_regions(osc_item_country_code()), osc_item());
                                        } else {
                                            ItemForm::region_select(osc_get_regions(osc_user_field('fk_c_country_code')), osc_user());
                                        }
                                    } else {
                                        if($edit) {
                                            ItemForm::region_text(osc_item());
                                        } else {
                                            ItemForm::region_text(osc_user());
                                        }
                                    }
                                    ?>
                                </div>
                            </div>
                            <?php
                            } else {
                                $aRegions = array();
                                $_countryCode = '';
                                $aCountries = osc_get_countries();
                                if(count($aCountries)>0) {
                                    $_countryCode = $aCountries[0]['pk_c_code'];
                                    $aRegions = osc_get_regions($_countryCode);
                                }
                                ?>
                            <input type="hidden" id="countryId" name="countryId" value="<?php echo osc_esc_html($_countryCode); ?>"/>
                            <div class="control-group">
                                <label class="control-label" for="region"><?php _e('Region', 'bender'); ?></label>
                                <div class="controls">
                                  <?php
                                    if ( bender_default_location_show_as() === 'dropdown') {
                                        if($edit) {
                                            ItemForm::region_select($aRegions, osc_item());
                                        } else {
                                            ItemForm::region_select($aRegions, osc_user());
                                        }
                                    } else {
                                        if($edit) {
                                            ItemForm::region_text(osc_item());
                                        } else {
                                            ItemForm::region_text(osc_user());
                                        }
                                    }
                                    ?>
                                </div>
                            </div>
                            <?php } ?>

                            <div class="control-group">
                                <label class="control-label" for="city"><?php _e('City', 'bender'); ?></label>
                                <div class="controls">
                                    <?php
                                    if ( bender_default_location_show_as() === 'dropdown') {
                                        if($edit) {
                                            ItemForm::city_select(null, osc_item());
                                        } else { // add new item
                                            ItemForm::city_select(osc_get_cities(osc_user_region_id()), osc_user());
                                        }
                                    } else {
                                        ItemForm::city_text(osc_user());
                                    }
                                    ?>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="cityArea"><?php _e('City Area', 'bender'); ?></label>
                                <div class="controls">
                                    <?php ItemForm::city_area_text(osc_user()); ?>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="address"><?php _e('Address', 'bender'); ?></label>
                                <div class="controls">
                                  <?php ItemForm::address_text(osc_user()); ?>
                                </div>
                            </div>
                        </div>
                        <!-- seller info -->
                        <?php if(!osc_is_web_user_logged_in() ) { ?>
                        <div class="box seller_info">
                            <h2><?php _e("Seller's information", 'bender'); ?></h2>
                            <div class="control-group">
                                <label class="control-label" for="contactName"><?php _e('Name', 'bender'); ?></label>
                                <div class="controls">
                                    <?php ItemForm::contact_name_text(); ?>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="contactEmail"><?php _e('E-mail', 'bender'); ?></label>
                                <div class="controls">
                                    <?php ItemForm::contact_email_text(); ?>
                                </div>
                            </div>
                            <div class="control-group">
                                <div class="controls checkbox">
                                    <?php ItemForm::show_email_checkbox(); ?> <label for="showEmail"><?php _e('Show e-mail on the listing page', 'bender'); ?></label>
                                </div>
                            </div>
                        </div>
                        <?php
                        }
                        if($edit) {
                            ItemForm::plugin_edit_item();
                        } else {
                            ItemForm::plugin_post_item();
                        }
                        ?>
                        <div class="control-group">
                            <?php if( osc_recaptcha_items_enabled() ) { ?>
                                <div class="controls">
                                    <?php osc_show_recaptcha(); ?>
                                </div>
                            <?php }?>
                            <div class="controls">
                                <button type="submit" class="ui-button ui-button-middle ui-button-main"><?php if($edit) { _e( 'Update' , 'bender'); } else { _e( 'Publish' , 'bender'); } ?></button>
                            </div>
                        </div>
                    </fieldset>
                </form>
            </div>
        </div>
        <script type="text/javascript">
            $('#price').bind('hide-price', function(){
                $('.control-group-price').hide();
            });

            $('#price').bind('show-price', function(){
                $('.control-group-price').show();
            });

            <?php if ($edit && !osc_item_category_price_enabled(osc_item_category_id())) { ?>
                $('#price').trigger('hide-price');
            <?php } ?>


    <?php if(osc_locale_thousands_sep()!='' || osc_locale_dec_point() != '') { ?>
    $().ready(function(){
        $("#price").blur(function(event) {
            var price = $("#price").prop("value");
            <?php if(osc_locale_thousands_sep()!='') { ?>
            while(price.indexOf('<?php echo osc_esc_js(osc_locale_thousands_sep());  ?>')!=-1) {
                price = price.replace('<?php echo osc_esc_js(osc_locale_thousands_sep());  ?>', '');
            }
            <?php } ?>
            <?php if(osc_locale_dec_point()!='') { ?>
            var tmp = price.split('<?php echo osc_esc_js(osc_locale_dec_point())?>');
            if(tmp.length>2) {
                price = tmp[0]+'<?php echo osc_esc_js(osc_locale_dec_point())?>'+tmp[1];
            }
            <?php } ?>
            $("#price").prop("value", price);
        });
    });
    <?php } ?>
</script>
<?php osc_current_web_theme_path('footer.php'); ?>
