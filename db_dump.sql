--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE IF EXISTS ONLY public.store_locale DROP CONSTRAINT IF EXISTS store_locale_store_id_foreign;
ALTER TABLE IF EXISTS ONLY public.store_currency DROP CONSTRAINT IF EXISTS store_currency_store_id_foreign;
ALTER TABLE IF EXISTS ONLY public.stock_location DROP CONSTRAINT IF EXISTS stock_location_address_id_foreign;
ALTER TABLE IF EXISTS ONLY public.shipping_option DROP CONSTRAINT IF EXISTS shipping_option_shipping_profile_id_foreign;
ALTER TABLE IF EXISTS ONLY public.shipping_option DROP CONSTRAINT IF EXISTS shipping_option_shipping_option_type_id_foreign;
ALTER TABLE IF EXISTS ONLY public.shipping_option DROP CONSTRAINT IF EXISTS shipping_option_service_zone_id_foreign;
ALTER TABLE IF EXISTS ONLY public.shipping_option_rule DROP CONSTRAINT IF EXISTS shipping_option_rule_shipping_option_id_foreign;
ALTER TABLE IF EXISTS ONLY public.shipping_option DROP CONSTRAINT IF EXISTS shipping_option_provider_id_foreign;
ALTER TABLE IF EXISTS ONLY public.service_zone DROP CONSTRAINT IF EXISTS service_zone_fulfillment_set_id_foreign;
ALTER TABLE IF EXISTS ONLY public.return_reason DROP CONSTRAINT IF EXISTS return_reason_parent_return_reason_id_foreign;
ALTER TABLE IF EXISTS ONLY public.reservation_item DROP CONSTRAINT IF EXISTS reservation_item_inventory_item_id_foreign;
ALTER TABLE IF EXISTS ONLY public.region_country DROP CONSTRAINT IF EXISTS region_country_region_id_foreign;
ALTER TABLE IF EXISTS ONLY public.refund DROP CONSTRAINT IF EXISTS refund_payment_id_foreign;
ALTER TABLE IF EXISTS ONLY public.provider_identity DROP CONSTRAINT IF EXISTS provider_identity_auth_identity_id_foreign;
ALTER TABLE IF EXISTS ONLY public.promotion_rule_value DROP CONSTRAINT IF EXISTS promotion_rule_value_promotion_rule_id_foreign;
ALTER TABLE IF EXISTS ONLY public.promotion_promotion_rule DROP CONSTRAINT IF EXISTS promotion_promotion_rule_promotion_rule_id_foreign;
ALTER TABLE IF EXISTS ONLY public.promotion_promotion_rule DROP CONSTRAINT IF EXISTS promotion_promotion_rule_promotion_id_foreign;
ALTER TABLE IF EXISTS ONLY public.promotion DROP CONSTRAINT IF EXISTS promotion_campaign_id_foreign;
ALTER TABLE IF EXISTS ONLY public.promotion_campaign_budget_usage DROP CONSTRAINT IF EXISTS promotion_campaign_budget_usage_budget_id_foreign;
ALTER TABLE IF EXISTS ONLY public.promotion_campaign_budget DROP CONSTRAINT IF EXISTS promotion_campaign_budget_campaign_id_foreign;
ALTER TABLE IF EXISTS ONLY public.promotion_application_method DROP CONSTRAINT IF EXISTS promotion_application_method_promotion_id_foreign;
ALTER TABLE IF EXISTS ONLY public.product_variant_product_image DROP CONSTRAINT IF EXISTS product_variant_product_image_image_id_foreign;
ALTER TABLE IF EXISTS ONLY public.product_variant DROP CONSTRAINT IF EXISTS product_variant_product_id_foreign;
ALTER TABLE IF EXISTS ONLY public.product_variant_option DROP CONSTRAINT IF EXISTS product_variant_option_variant_id_foreign;
ALTER TABLE IF EXISTS ONLY public.product_variant_option DROP CONSTRAINT IF EXISTS product_variant_option_option_value_id_foreign;
ALTER TABLE IF EXISTS ONLY public.product DROP CONSTRAINT IF EXISTS product_type_id_foreign;
ALTER TABLE IF EXISTS ONLY public.product_tags DROP CONSTRAINT IF EXISTS product_tags_product_tag_id_foreign;
ALTER TABLE IF EXISTS ONLY public.product_tags DROP CONSTRAINT IF EXISTS product_tags_product_id_foreign;
ALTER TABLE IF EXISTS ONLY public.product_option_value DROP CONSTRAINT IF EXISTS product_option_value_option_id_foreign;
ALTER TABLE IF EXISTS ONLY public.product_option DROP CONSTRAINT IF EXISTS product_option_product_id_foreign;
ALTER TABLE IF EXISTS ONLY public.product DROP CONSTRAINT IF EXISTS product_collection_id_foreign;
ALTER TABLE IF EXISTS ONLY public.product_category_product DROP CONSTRAINT IF EXISTS product_category_product_product_id_foreign;
ALTER TABLE IF EXISTS ONLY public.product_category_product DROP CONSTRAINT IF EXISTS product_category_product_product_category_id_foreign;
ALTER TABLE IF EXISTS ONLY public.product_category DROP CONSTRAINT IF EXISTS product_category_parent_category_id_foreign;
ALTER TABLE IF EXISTS ONLY public.price_rule DROP CONSTRAINT IF EXISTS price_rule_price_id_foreign;
ALTER TABLE IF EXISTS ONLY public.price DROP CONSTRAINT IF EXISTS price_price_set_id_foreign;
ALTER TABLE IF EXISTS ONLY public.price DROP CONSTRAINT IF EXISTS price_price_list_id_foreign;
ALTER TABLE IF EXISTS ONLY public.price_list_rule DROP CONSTRAINT IF EXISTS price_list_rule_price_list_id_foreign;
ALTER TABLE IF EXISTS ONLY public.payment_session DROP CONSTRAINT IF EXISTS payment_session_payment_collection_id_foreign;
ALTER TABLE IF EXISTS ONLY public.payment DROP CONSTRAINT IF EXISTS payment_payment_collection_id_foreign;
ALTER TABLE IF EXISTS ONLY public.payment_collection_payment_providers DROP CONSTRAINT IF EXISTS payment_collection_payment_providers_payment_pro_2d555_foreign;
ALTER TABLE IF EXISTS ONLY public.payment_collection_payment_providers DROP CONSTRAINT IF EXISTS payment_collection_payment_providers_payment_col_aa276_foreign;
ALTER TABLE IF EXISTS ONLY public.order_transaction DROP CONSTRAINT IF EXISTS order_transaction_order_id_foreign;
ALTER TABLE IF EXISTS ONLY public.order_summary DROP CONSTRAINT IF EXISTS order_summary_order_id_foreign;
ALTER TABLE IF EXISTS ONLY public.order_shipping DROP CONSTRAINT IF EXISTS order_shipping_order_id_foreign;
ALTER TABLE IF EXISTS ONLY public.order_shipping_method_tax_line DROP CONSTRAINT IF EXISTS order_shipping_method_tax_line_shipping_method_id_foreign;
ALTER TABLE IF EXISTS ONLY public.order_shipping_method_adjustment DROP CONSTRAINT IF EXISTS order_shipping_method_adjustment_shipping_method_id_foreign;
ALTER TABLE IF EXISTS ONLY public."order" DROP CONSTRAINT IF EXISTS order_shipping_address_id_foreign;
ALTER TABLE IF EXISTS ONLY public.order_line_item DROP CONSTRAINT IF EXISTS order_line_item_totals_id_foreign;
ALTER TABLE IF EXISTS ONLY public.order_line_item_tax_line DROP CONSTRAINT IF EXISTS order_line_item_tax_line_item_id_foreign;
ALTER TABLE IF EXISTS ONLY public.order_line_item_adjustment DROP CONSTRAINT IF EXISTS order_line_item_adjustment_item_id_foreign;
ALTER TABLE IF EXISTS ONLY public.order_item DROP CONSTRAINT IF EXISTS order_item_order_id_foreign;
ALTER TABLE IF EXISTS ONLY public.order_item DROP CONSTRAINT IF EXISTS order_item_item_id_foreign;
ALTER TABLE IF EXISTS ONLY public.order_credit_line DROP CONSTRAINT IF EXISTS order_credit_line_order_id_foreign;
ALTER TABLE IF EXISTS ONLY public.order_change DROP CONSTRAINT IF EXISTS order_change_order_id_foreign;
ALTER TABLE IF EXISTS ONLY public.order_change_action DROP CONSTRAINT IF EXISTS order_change_action_order_change_id_foreign;
ALTER TABLE IF EXISTS ONLY public."order" DROP CONSTRAINT IF EXISTS order_billing_address_id_foreign;
ALTER TABLE IF EXISTS ONLY public.notification DROP CONSTRAINT IF EXISTS notification_provider_id_foreign;
ALTER TABLE IF EXISTS ONLY public.inventory_level DROP CONSTRAINT IF EXISTS inventory_level_inventory_item_id_foreign;
ALTER TABLE IF EXISTS ONLY public.image DROP CONSTRAINT IF EXISTS image_product_id_foreign;
ALTER TABLE IF EXISTS ONLY public.geo_zone DROP CONSTRAINT IF EXISTS geo_zone_service_zone_id_foreign;
ALTER TABLE IF EXISTS ONLY public.fulfillment DROP CONSTRAINT IF EXISTS fulfillment_shipping_option_id_foreign;
ALTER TABLE IF EXISTS ONLY public.fulfillment DROP CONSTRAINT IF EXISTS fulfillment_provider_id_foreign;
ALTER TABLE IF EXISTS ONLY public.fulfillment_label DROP CONSTRAINT IF EXISTS fulfillment_label_fulfillment_id_foreign;
ALTER TABLE IF EXISTS ONLY public.fulfillment_item DROP CONSTRAINT IF EXISTS fulfillment_item_fulfillment_id_foreign;
ALTER TABLE IF EXISTS ONLY public.fulfillment DROP CONSTRAINT IF EXISTS fulfillment_delivery_address_id_foreign;
ALTER TABLE IF EXISTS ONLY public.customer_group_customer DROP CONSTRAINT IF EXISTS customer_group_customer_customer_id_foreign;
ALTER TABLE IF EXISTS ONLY public.customer_group_customer DROP CONSTRAINT IF EXISTS customer_group_customer_customer_group_id_foreign;
ALTER TABLE IF EXISTS ONLY public.customer_address DROP CONSTRAINT IF EXISTS customer_address_customer_id_foreign;
ALTER TABLE IF EXISTS ONLY public.credit_line DROP CONSTRAINT IF EXISTS credit_line_cart_id_foreign;
ALTER TABLE IF EXISTS ONLY public.cart_shipping_method_tax_line DROP CONSTRAINT IF EXISTS cart_shipping_method_tax_line_shipping_method_id_foreign;
ALTER TABLE IF EXISTS ONLY public.cart_shipping_method DROP CONSTRAINT IF EXISTS cart_shipping_method_cart_id_foreign;
ALTER TABLE IF EXISTS ONLY public.cart_shipping_method_adjustment DROP CONSTRAINT IF EXISTS cart_shipping_method_adjustment_shipping_method_id_foreign;
ALTER TABLE IF EXISTS ONLY public.cart DROP CONSTRAINT IF EXISTS cart_shipping_address_id_foreign;
ALTER TABLE IF EXISTS ONLY public.cart_line_item_tax_line DROP CONSTRAINT IF EXISTS cart_line_item_tax_line_item_id_foreign;
ALTER TABLE IF EXISTS ONLY public.cart_line_item DROP CONSTRAINT IF EXISTS cart_line_item_cart_id_foreign;
ALTER TABLE IF EXISTS ONLY public.cart_line_item_adjustment DROP CONSTRAINT IF EXISTS cart_line_item_adjustment_item_id_foreign;
ALTER TABLE IF EXISTS ONLY public.cart DROP CONSTRAINT IF EXISTS cart_billing_address_id_foreign;
ALTER TABLE IF EXISTS ONLY public.capture DROP CONSTRAINT IF EXISTS capture_payment_id_foreign;
ALTER TABLE IF EXISTS ONLY public.application_method_target_rules DROP CONSTRAINT IF EXISTS application_method_target_rules_promotion_rule_id_foreign;
ALTER TABLE IF EXISTS ONLY public.application_method_target_rules DROP CONSTRAINT IF EXISTS application_method_target_rules_application_method_id_foreign;
ALTER TABLE IF EXISTS ONLY public.application_method_buy_rules DROP CONSTRAINT IF EXISTS application_method_buy_rules_promotion_rule_id_foreign;
ALTER TABLE IF EXISTS ONLY public.application_method_buy_rules DROP CONSTRAINT IF EXISTS application_method_buy_rules_application_method_id_foreign;
ALTER TABLE IF EXISTS ONLY public.tax_region DROP CONSTRAINT IF EXISTS "FK_tax_region_provider_id";
ALTER TABLE IF EXISTS ONLY public.tax_region DROP CONSTRAINT IF EXISTS "FK_tax_region_parent_id";
ALTER TABLE IF EXISTS ONLY public.tax_rate DROP CONSTRAINT IF EXISTS "FK_tax_rate_tax_region_id";
ALTER TABLE IF EXISTS ONLY public.tax_rate_rule DROP CONSTRAINT IF EXISTS "FK_tax_rate_rule_tax_rate_id";
DROP INDEX IF EXISTS public.idx_script_name_unique;
DROP INDEX IF EXISTS public."IDX_workflow_execution_workflow_id_transaction_id_run_id_unique";
DROP INDEX IF EXISTS public."IDX_workflow_execution_workflow_id_transaction_id";
DROP INDEX IF EXISTS public."IDX_workflow_execution_workflow_id";
DROP INDEX IF EXISTS public."IDX_workflow_execution_updated_at_retention_time";
DROP INDEX IF EXISTS public."IDX_workflow_execution_transaction_id";
DROP INDEX IF EXISTS public."IDX_workflow_execution_state_updated_at";
DROP INDEX IF EXISTS public."IDX_workflow_execution_state";
DROP INDEX IF EXISTS public."IDX_workflow_execution_run_id";
DROP INDEX IF EXISTS public."IDX_workflow_execution_retention_time_updated_at_state";
DROP INDEX IF EXISTS public."IDX_workflow_execution_id";
DROP INDEX IF EXISTS public."IDX_workflow_execution_deleted_at";
DROP INDEX IF EXISTS public."IDX_view_configuration_user_id";
DROP INDEX IF EXISTS public."IDX_view_configuration_entity_user_id";
DROP INDEX IF EXISTS public."IDX_view_configuration_entity_is_system_default";
DROP INDEX IF EXISTS public."IDX_view_configuration_deleted_at";
DROP INDEX IF EXISTS public."IDX_variant_id_52b23597";
DROP INDEX IF EXISTS public."IDX_variant_id_17b4c4e35";
DROP INDEX IF EXISTS public."IDX_user_preference_user_id_key_unique";
DROP INDEX IF EXISTS public."IDX_user_preference_user_id";
DROP INDEX IF EXISTS public."IDX_user_preference_deleted_at";
DROP INDEX IF EXISTS public."IDX_user_id_64ff0c4c";
DROP INDEX IF EXISTS public."IDX_user_email_unique";
DROP INDEX IF EXISTS public."IDX_user_deleted_at";
DROP INDEX IF EXISTS public."IDX_unique_promotion_code";
DROP INDEX IF EXISTS public."IDX_type_value_unique";
DROP INDEX IF EXISTS public."IDX_translation_settings_entity_type_unique";
DROP INDEX IF EXISTS public."IDX_translation_settings_deleted_at";
DROP INDEX IF EXISTS public."IDX_translation_reference_locale_code";
DROP INDEX IF EXISTS public."IDX_translation_reference_id_reference_locale_code";
DROP INDEX IF EXISTS public."IDX_translation_reference_id_reference";
DROP INDEX IF EXISTS public."IDX_translation_reference_id_locale_code_unique";
DROP INDEX IF EXISTS public."IDX_translation_locale_code";
DROP INDEX IF EXISTS public."IDX_translation_deleted_at";
DROP INDEX IF EXISTS public."IDX_tax_region_unique_country_province";
DROP INDEX IF EXISTS public."IDX_tax_region_unique_country_nullable_province";
DROP INDEX IF EXISTS public."IDX_tax_region_provider_id";
DROP INDEX IF EXISTS public."IDX_tax_region_parent_id";
DROP INDEX IF EXISTS public."IDX_tax_region_deleted_at";
DROP INDEX IF EXISTS public."IDX_tax_rate_tax_region_id";
DROP INDEX IF EXISTS public."IDX_tax_rate_rule_unique_rate_reference";
DROP INDEX IF EXISTS public."IDX_tax_rate_rule_tax_rate_id";
DROP INDEX IF EXISTS public."IDX_tax_rate_rule_reference_id";
DROP INDEX IF EXISTS public."IDX_tax_rate_rule_deleted_at";
DROP INDEX IF EXISTS public."IDX_tax_rate_deleted_at";
DROP INDEX IF EXISTS public."IDX_tax_provider_deleted_at";
DROP INDEX IF EXISTS public."IDX_tag_value_unique";
DROP INDEX IF EXISTS public."IDX_store_locale_store_id";
DROP INDEX IF EXISTS public."IDX_store_locale_deleted_at";
DROP INDEX IF EXISTS public."IDX_store_deleted_at";
DROP INDEX IF EXISTS public."IDX_store_currency_store_id";
DROP INDEX IF EXISTS public."IDX_store_currency_deleted_at";
DROP INDEX IF EXISTS public."IDX_stock_location_id_26d06f470";
DROP INDEX IF EXISTS public."IDX_stock_location_id_-e88adb96";
DROP INDEX IF EXISTS public."IDX_stock_location_id_-1e5992737";
DROP INDEX IF EXISTS public."IDX_stock_location_deleted_at";
DROP INDEX IF EXISTS public."IDX_stock_location_address_id_unique";
DROP INDEX IF EXISTS public."IDX_stock_location_address_deleted_at";
DROP INDEX IF EXISTS public."IDX_single_default_region";
DROP INDEX IF EXISTS public."IDX_shipping_profile_name_unique";
DROP INDEX IF EXISTS public."IDX_shipping_profile_id_17a262437";
DROP INDEX IF EXISTS public."IDX_shipping_profile_deleted_at";
DROP INDEX IF EXISTS public."IDX_shipping_option_type_deleted_at";
DROP INDEX IF EXISTS public."IDX_shipping_option_shipping_profile_id";
DROP INDEX IF EXISTS public."IDX_shipping_option_shipping_option_type_id";
DROP INDEX IF EXISTS public."IDX_shipping_option_service_zone_id";
DROP INDEX IF EXISTS public."IDX_shipping_option_rule_shipping_option_id";
DROP INDEX IF EXISTS public."IDX_shipping_option_rule_deleted_at";
DROP INDEX IF EXISTS public."IDX_shipping_option_provider_id";
DROP INDEX IF EXISTS public."IDX_shipping_option_id_ba32fa9c";
DROP INDEX IF EXISTS public."IDX_shipping_option_deleted_at";
DROP INDEX IF EXISTS public."IDX_shipping_method_tax_line_tax_rate_id";
DROP INDEX IF EXISTS public."IDX_shipping_method_option_id";
DROP INDEX IF EXISTS public."IDX_shipping_method_adjustment_promotion_id";
DROP INDEX IF EXISTS public."IDX_service_zone_name_unique";
DROP INDEX IF EXISTS public."IDX_service_zone_fulfillment_set_id";
DROP INDEX IF EXISTS public."IDX_service_zone_deleted_at";
DROP INDEX IF EXISTS public."IDX_sales_channel_id_26d06f470";
DROP INDEX IF EXISTS public."IDX_sales_channel_id_20b454295";
DROP INDEX IF EXISTS public."IDX_sales_channel_id_-1d67bae40";
DROP INDEX IF EXISTS public."IDX_sales_channel_deleted_at";
DROP INDEX IF EXISTS public."IDX_return_reason_value";
DROP INDEX IF EXISTS public."IDX_return_reason_parent_return_reason_id";
DROP INDEX IF EXISTS public."IDX_return_order_id";
DROP INDEX IF EXISTS public."IDX_return_item_return_id";
DROP INDEX IF EXISTS public."IDX_return_item_reason_id";
DROP INDEX IF EXISTS public."IDX_return_item_item_id";
DROP INDEX IF EXISTS public."IDX_return_item_deleted_at";
DROP INDEX IF EXISTS public."IDX_return_id_-31ea43a";
DROP INDEX IF EXISTS public."IDX_return_exchange_id";
DROP INDEX IF EXISTS public."IDX_return_display_id";
DROP INDEX IF EXISTS public."IDX_return_claim_id";
DROP INDEX IF EXISTS public."IDX_reservation_item_location_id";
DROP INDEX IF EXISTS public."IDX_reservation_item_line_item_id";
DROP INDEX IF EXISTS public."IDX_reservation_item_inventory_item_id";
DROP INDEX IF EXISTS public."IDX_reservation_item_deleted_at";
DROP INDEX IF EXISTS public."IDX_region_id_1c934dab0";
DROP INDEX IF EXISTS public."IDX_region_deleted_at";
DROP INDEX IF EXISTS public."IDX_region_country_region_id_iso_2_unique";
DROP INDEX IF EXISTS public."IDX_region_country_region_id";
DROP INDEX IF EXISTS public."IDX_region_country_deleted_at";
DROP INDEX IF EXISTS public."IDX_refund_refund_reason_id";
DROP INDEX IF EXISTS public."IDX_refund_reason_deleted_at";
DROP INDEX IF EXISTS public."IDX_refund_payment_id";
DROP INDEX IF EXISTS public."IDX_refund_deleted_at";
DROP INDEX IF EXISTS public."IDX_rbac_role_id_64ff0c4c";
DROP INDEX IF EXISTS public."IDX_rbac_role_id_-85069d44";
DROP INDEX IF EXISTS public."IDX_publishable_key_id_-1d67bae40";
DROP INDEX IF EXISTS public."IDX_provider_identity_provider_entity_id";
DROP INDEX IF EXISTS public."IDX_provider_identity_deleted_at";
DROP INDEX IF EXISTS public."IDX_provider_identity_auth_identity_id";
DROP INDEX IF EXISTS public."IDX_promotion_type";
DROP INDEX IF EXISTS public."IDX_promotion_status";
DROP INDEX IF EXISTS public."IDX_promotion_rule_value_value";
DROP INDEX IF EXISTS public."IDX_promotion_rule_value_rule_id_value";
DROP INDEX IF EXISTS public."IDX_promotion_rule_value_promotion_rule_id";
DROP INDEX IF EXISTS public."IDX_promotion_rule_value_deleted_at";
DROP INDEX IF EXISTS public."IDX_promotion_rule_operator";
DROP INDEX IF EXISTS public."IDX_promotion_rule_deleted_at";
DROP INDEX IF EXISTS public."IDX_promotion_rule_attribute_operator_id";
DROP INDEX IF EXISTS public."IDX_promotion_rule_attribute_operator";
DROP INDEX IF EXISTS public."IDX_promotion_rule_attribute";
DROP INDEX IF EXISTS public."IDX_promotion_is_automatic";
DROP INDEX IF EXISTS public."IDX_promotion_id_-a9d4a70b";
DROP INDEX IF EXISTS public."IDX_promotion_id_-71518339";
DROP INDEX IF EXISTS public."IDX_promotion_deleted_at";
DROP INDEX IF EXISTS public."IDX_promotion_campaign_id";
DROP INDEX IF EXISTS public."IDX_promotion_campaign_deleted_at";
DROP INDEX IF EXISTS public."IDX_promotion_campaign_campaign_identifier_unique";
DROP INDEX IF EXISTS public."IDX_promotion_campaign_budget_usage_deleted_at";
DROP INDEX IF EXISTS public."IDX_promotion_campaign_budget_usage_budget_id";
DROP INDEX IF EXISTS public."IDX_promotion_campaign_budget_usage_attribute_value_budget_id_u";
DROP INDEX IF EXISTS public."IDX_promotion_campaign_budget_deleted_at";
DROP INDEX IF EXISTS public."IDX_promotion_campaign_budget_campaign_id_unique";
DROP INDEX IF EXISTS public."IDX_promotion_application_method_promotion_id_unique";
DROP INDEX IF EXISTS public."IDX_promotion_application_method_deleted_at";
DROP INDEX IF EXISTS public."IDX_promotion_application_method_currency_code";
DROP INDEX IF EXISTS public."IDX_product_variant_upc_unique";
DROP INDEX IF EXISTS public."IDX_product_variant_sku_unique";
DROP INDEX IF EXISTS public."IDX_product_variant_product_image_variant_id";
DROP INDEX IF EXISTS public."IDX_product_variant_product_image_image_id";
DROP INDEX IF EXISTS public."IDX_product_variant_product_image_deleted_at";
DROP INDEX IF EXISTS public."IDX_product_variant_product_id";
DROP INDEX IF EXISTS public."IDX_product_variant_id_product_id";
DROP INDEX IF EXISTS public."IDX_product_variant_ean_unique";
DROP INDEX IF EXISTS public."IDX_product_variant_deleted_at";
DROP INDEX IF EXISTS public."IDX_product_variant_barcode_unique";
DROP INDEX IF EXISTS public."IDX_product_type_id";
DROP INDEX IF EXISTS public."IDX_product_type_deleted_at";
DROP INDEX IF EXISTS public."IDX_product_tag_deleted_at";
DROP INDEX IF EXISTS public."IDX_product_status";
DROP INDEX IF EXISTS public."IDX_product_option_value_option_id";
DROP INDEX IF EXISTS public."IDX_product_option_value_deleted_at";
DROP INDEX IF EXISTS public."IDX_product_option_product_id";
DROP INDEX IF EXISTS public."IDX_product_option_deleted_at";
DROP INDEX IF EXISTS public."IDX_product_image_url_rank_product_id";
DROP INDEX IF EXISTS public."IDX_product_image_url";
DROP INDEX IF EXISTS public."IDX_product_image_rank_product_id";
DROP INDEX IF EXISTS public."IDX_product_image_rank";
DROP INDEX IF EXISTS public."IDX_product_id_20b454295";
DROP INDEX IF EXISTS public."IDX_product_id_17a262437";
DROP INDEX IF EXISTS public."IDX_product_handle_unique";
DROP INDEX IF EXISTS public."IDX_product_deleted_at";
DROP INDEX IF EXISTS public."IDX_product_collection_id";
DROP INDEX IF EXISTS public."IDX_product_collection_deleted_at";
DROP INDEX IF EXISTS public."IDX_product_category_path";
DROP INDEX IF EXISTS public."IDX_product_category_parent_category_id";
DROP INDEX IF EXISTS public."IDX_price_set_id_ba32fa9c";
DROP INDEX IF EXISTS public."IDX_price_set_id_52b23597";
DROP INDEX IF EXISTS public."IDX_price_set_deleted_at";
DROP INDEX IF EXISTS public."IDX_price_rule_price_id_attribute_operator_unique";
DROP INDEX IF EXISTS public."IDX_price_rule_price_id";
DROP INDEX IF EXISTS public."IDX_price_rule_operator_value";
DROP INDEX IF EXISTS public."IDX_price_rule_operator";
DROP INDEX IF EXISTS public."IDX_price_rule_deleted_at";
DROP INDEX IF EXISTS public."IDX_price_rule_attribute_value_price_id";
DROP INDEX IF EXISTS public."IDX_price_rule_attribute_value";
DROP INDEX IF EXISTS public."IDX_price_rule_attribute";
DROP INDEX IF EXISTS public."IDX_price_price_set_id";
DROP INDEX IF EXISTS public."IDX_price_price_list_id";
DROP INDEX IF EXISTS public."IDX_price_preference_deleted_at";
DROP INDEX IF EXISTS public."IDX_price_preference_attribute_value";
DROP INDEX IF EXISTS public."IDX_price_list_rule_value";
DROP INDEX IF EXISTS public."IDX_price_list_rule_price_list_id";
DROP INDEX IF EXISTS public."IDX_price_list_rule_deleted_at";
DROP INDEX IF EXISTS public."IDX_price_list_rule_attribute";
DROP INDEX IF EXISTS public."IDX_price_list_id_status_starts_at_ends_at";
DROP INDEX IF EXISTS public."IDX_price_list_deleted_at";
DROP INDEX IF EXISTS public."IDX_price_deleted_at";
DROP INDEX IF EXISTS public."IDX_price_currency_code";
DROP INDEX IF EXISTS public."IDX_payment_session_payment_collection_id";
DROP INDEX IF EXISTS public."IDX_payment_session_deleted_at";
DROP INDEX IF EXISTS public."IDX_payment_provider_id_1c934dab0";
DROP INDEX IF EXISTS public."IDX_payment_provider_id";
DROP INDEX IF EXISTS public."IDX_payment_provider_deleted_at";
DROP INDEX IF EXISTS public."IDX_payment_payment_session_id_unique";
DROP INDEX IF EXISTS public."IDX_payment_payment_session_id";
DROP INDEX IF EXISTS public."IDX_payment_payment_collection_id";
DROP INDEX IF EXISTS public."IDX_payment_deleted_at";
DROP INDEX IF EXISTS public."IDX_payment_collection_id_f42b9949";
DROP INDEX IF EXISTS public."IDX_payment_collection_id_-4a39f6c9";
DROP INDEX IF EXISTS public."IDX_payment_collection_deleted_at";
DROP INDEX IF EXISTS public."IDX_order_transaction_return_id";
DROP INDEX IF EXISTS public."IDX_order_transaction_reference_id";
DROP INDEX IF EXISTS public."IDX_order_transaction_order_id_version";
DROP INDEX IF EXISTS public."IDX_order_transaction_order_id";
DROP INDEX IF EXISTS public."IDX_order_transaction_exchange_id";
DROP INDEX IF EXISTS public."IDX_order_transaction_currency_code";
DROP INDEX IF EXISTS public."IDX_order_transaction_claim_id";
DROP INDEX IF EXISTS public."IDX_order_summary_order_id_version";
DROP INDEX IF EXISTS public."IDX_order_summary_deleted_at";
DROP INDEX IF EXISTS public."IDX_order_shipping_shipping_method_id";
DROP INDEX IF EXISTS public."IDX_order_shipping_return_id";
DROP INDEX IF EXISTS public."IDX_order_shipping_order_id_version";
DROP INDEX IF EXISTS public."IDX_order_shipping_order_id";
DROP INDEX IF EXISTS public."IDX_order_shipping_method_tax_line_shipping_method_id";
DROP INDEX IF EXISTS public."IDX_order_shipping_method_shipping_option_id";
DROP INDEX IF EXISTS public."IDX_order_shipping_method_adjustment_shipping_method_id";
DROP INDEX IF EXISTS public."IDX_order_shipping_item_id";
DROP INDEX IF EXISTS public."IDX_order_shipping_exchange_id";
DROP INDEX IF EXISTS public."IDX_order_shipping_deleted_at";
DROP INDEX IF EXISTS public."IDX_order_shipping_claim_id";
DROP INDEX IF EXISTS public."IDX_order_shipping_address_id";
DROP INDEX IF EXISTS public."IDX_order_sales_channel_id";
DROP INDEX IF EXISTS public."IDX_order_region_id";
DROP INDEX IF EXISTS public."IDX_order_line_item_variant_id";
DROP INDEX IF EXISTS public."IDX_order_line_item_tax_line_item_id";
DROP INDEX IF EXISTS public."IDX_order_line_item_product_id";
DROP INDEX IF EXISTS public."IDX_order_line_item_adjustment_item_id";
DROP INDEX IF EXISTS public."IDX_order_item_order_id_version";
DROP INDEX IF EXISTS public."IDX_order_item_order_id";
DROP INDEX IF EXISTS public."IDX_order_item_item_id";
DROP INDEX IF EXISTS public."IDX_order_item_deleted_at";
DROP INDEX IF EXISTS public."IDX_order_is_draft_order";
DROP INDEX IF EXISTS public."IDX_order_id_f42b9949";
DROP INDEX IF EXISTS public."IDX_order_id_-e8d2543e";
DROP INDEX IF EXISTS public."IDX_order_id_-71518339";
DROP INDEX IF EXISTS public."IDX_order_id_-71069c16";
DROP INDEX IF EXISTS public."IDX_order_exchange_return_id";
DROP INDEX IF EXISTS public."IDX_order_exchange_order_id";
DROP INDEX IF EXISTS public."IDX_order_exchange_item_item_id";
DROP INDEX IF EXISTS public."IDX_order_exchange_item_exchange_id";
DROP INDEX IF EXISTS public."IDX_order_exchange_item_deleted_at";
DROP INDEX IF EXISTS public."IDX_order_exchange_display_id";
DROP INDEX IF EXISTS public."IDX_order_exchange_deleted_at";
DROP INDEX IF EXISTS public."IDX_order_display_id";
DROP INDEX IF EXISTS public."IDX_order_deleted_at";
DROP INDEX IF EXISTS public."IDX_order_customer_id";
DROP INDEX IF EXISTS public."IDX_order_custom_display_id";
DROP INDEX IF EXISTS public."IDX_order_currency_code";
DROP INDEX IF EXISTS public."IDX_order_credit_line_order_id_version";
DROP INDEX IF EXISTS public."IDX_order_credit_line_order_id";
DROP INDEX IF EXISTS public."IDX_order_credit_line_deleted_at";
DROP INDEX IF EXISTS public."IDX_order_claim_return_id";
DROP INDEX IF EXISTS public."IDX_order_claim_order_id";
DROP INDEX IF EXISTS public."IDX_order_claim_item_item_id";
DROP INDEX IF EXISTS public."IDX_order_claim_item_image_deleted_at";
DROP INDEX IF EXISTS public."IDX_order_claim_item_image_claim_item_id";
DROP INDEX IF EXISTS public."IDX_order_claim_item_deleted_at";
DROP INDEX IF EXISTS public."IDX_order_claim_item_claim_id";
DROP INDEX IF EXISTS public."IDX_order_claim_display_id";
DROP INDEX IF EXISTS public."IDX_order_claim_deleted_at";
DROP INDEX IF EXISTS public."IDX_order_change_version";
DROP INDEX IF EXISTS public."IDX_order_change_status";
DROP INDEX IF EXISTS public."IDX_order_change_return_id";
DROP INDEX IF EXISTS public."IDX_order_change_order_id_version";
DROP INDEX IF EXISTS public."IDX_order_change_order_id";
DROP INDEX IF EXISTS public."IDX_order_change_exchange_id";
DROP INDEX IF EXISTS public."IDX_order_change_deleted_at";
DROP INDEX IF EXISTS public."IDX_order_change_claim_id";
DROP INDEX IF EXISTS public."IDX_order_change_change_type";
DROP INDEX IF EXISTS public."IDX_order_change_action_return_id";
DROP INDEX IF EXISTS public."IDX_order_change_action_ordering";
DROP INDEX IF EXISTS public."IDX_order_change_action_order_id";
DROP INDEX IF EXISTS public."IDX_order_change_action_order_change_id";
DROP INDEX IF EXISTS public."IDX_order_change_action_exchange_id";
DROP INDEX IF EXISTS public."IDX_order_change_action_deleted_at";
DROP INDEX IF EXISTS public."IDX_order_change_action_claim_id";
DROP INDEX IF EXISTS public."IDX_order_billing_address_id";
DROP INDEX IF EXISTS public."IDX_order_address_deleted_at";
DROP INDEX IF EXISTS public."IDX_order_address_customer_id";
DROP INDEX IF EXISTS public."IDX_option_value_option_id_unique";
DROP INDEX IF EXISTS public."IDX_option_product_id_title_unique";
DROP INDEX IF EXISTS public."IDX_notification_receiver_id";
DROP INDEX IF EXISTS public."IDX_notification_provider_id";
DROP INDEX IF EXISTS public."IDX_notification_provider_deleted_at";
DROP INDEX IF EXISTS public."IDX_notification_idempotency_key_unique";
DROP INDEX IF EXISTS public."IDX_notification_deleted_at";
DROP INDEX IF EXISTS public."IDX_locale_deleted_at";
DROP INDEX IF EXISTS public."IDX_locale_code_unique";
DROP INDEX IF EXISTS public."IDX_line_item_variant_id";
DROP INDEX IF EXISTS public."IDX_line_item_tax_line_tax_rate_id";
DROP INDEX IF EXISTS public."IDX_line_item_product_type_id";
DROP INDEX IF EXISTS public."IDX_line_item_product_id";
DROP INDEX IF EXISTS public."IDX_line_item_adjustment_promotion_id";
DROP INDEX IF EXISTS public."IDX_invite_token";
DROP INDEX IF EXISTS public."IDX_invite_id_-85069d44";
DROP INDEX IF EXISTS public."IDX_invite_email_unique";
DROP INDEX IF EXISTS public."IDX_invite_deleted_at";
DROP INDEX IF EXISTS public."IDX_inventory_level_location_id_inventory_item_id";
DROP INDEX IF EXISTS public."IDX_inventory_level_location_id";
DROP INDEX IF EXISTS public."IDX_inventory_level_inventory_item_id";
DROP INDEX IF EXISTS public."IDX_inventory_level_deleted_at";
DROP INDEX IF EXISTS public."IDX_inventory_item_sku";
DROP INDEX IF EXISTS public."IDX_inventory_item_id_17b4c4e35";
DROP INDEX IF EXISTS public."IDX_inventory_item_deleted_at";
DROP INDEX IF EXISTS public."IDX_image_product_id";
DROP INDEX IF EXISTS public."IDX_image_deleted_at";
DROP INDEX IF EXISTS public."IDX_id_f42b9949";
DROP INDEX IF EXISTS public."IDX_id_ba32fa9c";
DROP INDEX IF EXISTS public."IDX_id_64ff0c4c";
DROP INDEX IF EXISTS public."IDX_id_5cb3a0c0";
DROP INDEX IF EXISTS public."IDX_id_52b23597";
DROP INDEX IF EXISTS public."IDX_id_26d06f470";
DROP INDEX IF EXISTS public."IDX_id_20b454295";
DROP INDEX IF EXISTS public."IDX_id_1c934dab0";
DROP INDEX IF EXISTS public."IDX_id_17b4c4e35";
DROP INDEX IF EXISTS public."IDX_id_17a262437";
DROP INDEX IF EXISTS public."IDX_id_-e8d2543e";
DROP INDEX IF EXISTS public."IDX_id_-e88adb96";
DROP INDEX IF EXISTS public."IDX_id_-a9d4a70b";
DROP INDEX IF EXISTS public."IDX_id_-85069d44";
DROP INDEX IF EXISTS public."IDX_id_-71518339";
DROP INDEX IF EXISTS public."IDX_id_-71069c16";
DROP INDEX IF EXISTS public."IDX_id_-4a39f6c9";
DROP INDEX IF EXISTS public."IDX_id_-31ea43a";
DROP INDEX IF EXISTS public."IDX_id_-1e5992737";
DROP INDEX IF EXISTS public."IDX_id_-1d67bae40";
DROP INDEX IF EXISTS public."IDX_homepage_section_deleted_at";
DROP INDEX IF EXISTS public."IDX_geo_zone_service_zone_id";
DROP INDEX IF EXISTS public."IDX_geo_zone_province_code";
DROP INDEX IF EXISTS public."IDX_geo_zone_deleted_at";
DROP INDEX IF EXISTS public."IDX_geo_zone_country_code";
DROP INDEX IF EXISTS public."IDX_geo_zone_city";
DROP INDEX IF EXISTS public."IDX_fulfillment_shipping_option_id";
DROP INDEX IF EXISTS public."IDX_fulfillment_set_name_unique";
DROP INDEX IF EXISTS public."IDX_fulfillment_set_id_-e88adb96";
DROP INDEX IF EXISTS public."IDX_fulfillment_set_deleted_at";
DROP INDEX IF EXISTS public."IDX_fulfillment_provider_id_-1e5992737";
DROP INDEX IF EXISTS public."IDX_fulfillment_provider_deleted_at";
DROP INDEX IF EXISTS public."IDX_fulfillment_location_id";
DROP INDEX IF EXISTS public."IDX_fulfillment_label_fulfillment_id";
DROP INDEX IF EXISTS public."IDX_fulfillment_label_deleted_at";
DROP INDEX IF EXISTS public."IDX_fulfillment_item_line_item_id";
DROP INDEX IF EXISTS public."IDX_fulfillment_item_inventory_item_id";
DROP INDEX IF EXISTS public."IDX_fulfillment_item_fulfillment_id";
DROP INDEX IF EXISTS public."IDX_fulfillment_item_deleted_at";
DROP INDEX IF EXISTS public."IDX_fulfillment_id_-e8d2543e";
DROP INDEX IF EXISTS public."IDX_fulfillment_id_-31ea43a";
DROP INDEX IF EXISTS public."IDX_fulfillment_deleted_at";
DROP INDEX IF EXISTS public."IDX_fulfillment_address_deleted_at";
DROP INDEX IF EXISTS public."IDX_deleted_at_f42b9949";
DROP INDEX IF EXISTS public."IDX_deleted_at_ba32fa9c";
DROP INDEX IF EXISTS public."IDX_deleted_at_64ff0c4c";
DROP INDEX IF EXISTS public."IDX_deleted_at_5cb3a0c0";
DROP INDEX IF EXISTS public."IDX_deleted_at_52b23597";
DROP INDEX IF EXISTS public."IDX_deleted_at_26d06f470";
DROP INDEX IF EXISTS public."IDX_deleted_at_20b454295";
DROP INDEX IF EXISTS public."IDX_deleted_at_1c934dab0";
DROP INDEX IF EXISTS public."IDX_deleted_at_17b4c4e35";
DROP INDEX IF EXISTS public."IDX_deleted_at_17a262437";
DROP INDEX IF EXISTS public."IDX_deleted_at_-e8d2543e";
DROP INDEX IF EXISTS public."IDX_deleted_at_-e88adb96";
DROP INDEX IF EXISTS public."IDX_deleted_at_-a9d4a70b";
DROP INDEX IF EXISTS public."IDX_deleted_at_-85069d44";
DROP INDEX IF EXISTS public."IDX_deleted_at_-71518339";
DROP INDEX IF EXISTS public."IDX_deleted_at_-71069c16";
DROP INDEX IF EXISTS public."IDX_deleted_at_-4a39f6c9";
DROP INDEX IF EXISTS public."IDX_deleted_at_-31ea43a";
DROP INDEX IF EXISTS public."IDX_deleted_at_-1e5992737";
DROP INDEX IF EXISTS public."IDX_deleted_at_-1d67bae40";
DROP INDEX IF EXISTS public."IDX_customer_id_5cb3a0c0";
DROP INDEX IF EXISTS public."IDX_customer_group_name_unique";
DROP INDEX IF EXISTS public."IDX_customer_group_deleted_at";
DROP INDEX IF EXISTS public."IDX_customer_group_customer_deleted_at";
DROP INDEX IF EXISTS public."IDX_customer_group_customer_customer_id";
DROP INDEX IF EXISTS public."IDX_customer_group_customer_customer_group_id";
DROP INDEX IF EXISTS public."IDX_customer_email_has_account_unique";
DROP INDEX IF EXISTS public."IDX_customer_deleted_at";
DROP INDEX IF EXISTS public."IDX_customer_address_unique_customer_shipping";
DROP INDEX IF EXISTS public."IDX_customer_address_unique_customer_billing";
DROP INDEX IF EXISTS public."IDX_customer_address_deleted_at";
DROP INDEX IF EXISTS public."IDX_customer_address_customer_id";
DROP INDEX IF EXISTS public."IDX_credit_line_deleted_at";
DROP INDEX IF EXISTS public."IDX_credit_line_cart_id";
DROP INDEX IF EXISTS public."IDX_collection_handle_unique";
DROP INDEX IF EXISTS public."IDX_category_handle_unique";
DROP INDEX IF EXISTS public."IDX_cart_shipping_method_tax_line_shipping_method_id";
DROP INDEX IF EXISTS public."IDX_cart_shipping_method_tax_line_deleted_at";
DROP INDEX IF EXISTS public."IDX_cart_shipping_method_deleted_at";
DROP INDEX IF EXISTS public."IDX_cart_shipping_method_cart_id";
DROP INDEX IF EXISTS public."IDX_cart_shipping_method_adjustment_shipping_method_id";
DROP INDEX IF EXISTS public."IDX_cart_shipping_method_adjustment_deleted_at";
DROP INDEX IF EXISTS public."IDX_cart_shipping_address_id";
DROP INDEX IF EXISTS public."IDX_cart_sales_channel_id";
DROP INDEX IF EXISTS public."IDX_cart_region_id";
DROP INDEX IF EXISTS public."IDX_cart_line_item_tax_line_item_id";
DROP INDEX IF EXISTS public."IDX_cart_line_item_tax_line_deleted_at";
DROP INDEX IF EXISTS public."IDX_cart_line_item_deleted_at";
DROP INDEX IF EXISTS public."IDX_cart_line_item_cart_id";
DROP INDEX IF EXISTS public."IDX_cart_line_item_adjustment_item_id";
DROP INDEX IF EXISTS public."IDX_cart_line_item_adjustment_deleted_at";
DROP INDEX IF EXISTS public."IDX_cart_id_-a9d4a70b";
DROP INDEX IF EXISTS public."IDX_cart_id_-71069c16";
DROP INDEX IF EXISTS public."IDX_cart_id_-4a39f6c9";
DROP INDEX IF EXISTS public."IDX_cart_deleted_at";
DROP INDEX IF EXISTS public."IDX_cart_customer_id";
DROP INDEX IF EXISTS public."IDX_cart_currency_code";
DROP INDEX IF EXISTS public."IDX_cart_credit_line_reference_reference_id";
DROP INDEX IF EXISTS public."IDX_cart_billing_address_id";
DROP INDEX IF EXISTS public."IDX_cart_address_deleted_at";
DROP INDEX IF EXISTS public."IDX_capture_payment_id";
DROP INDEX IF EXISTS public."IDX_capture_deleted_at";
DROP INDEX IF EXISTS public."IDX_campaign_budget_type";
DROP INDEX IF EXISTS public."IDX_banner_deleted_at";
DROP INDEX IF EXISTS public."IDX_auth_identity_deleted_at";
DROP INDEX IF EXISTS public."IDX_application_method_type";
DROP INDEX IF EXISTS public."IDX_application_method_target_type";
DROP INDEX IF EXISTS public."IDX_application_method_allocation";
DROP INDEX IF EXISTS public."IDX_api_key_type";
DROP INDEX IF EXISTS public."IDX_api_key_token_unique";
DROP INDEX IF EXISTS public."IDX_api_key_revoked_at";
DROP INDEX IF EXISTS public."IDX_api_key_redacted";
DROP INDEX IF EXISTS public."IDX_api_key_deleted_at";
DROP INDEX IF EXISTS public."IDX_account_holder_provider_id_external_id_unique";
DROP INDEX IF EXISTS public."IDX_account_holder_id_5cb3a0c0";
DROP INDEX IF EXISTS public."IDX_account_holder_deleted_at";
ALTER TABLE IF EXISTS ONLY public.workflow_execution DROP CONSTRAINT IF EXISTS workflow_execution_pkey;
ALTER TABLE IF EXISTS ONLY public.view_configuration DROP CONSTRAINT IF EXISTS view_configuration_pkey;
ALTER TABLE IF EXISTS ONLY public.user_rbac_role DROP CONSTRAINT IF EXISTS user_rbac_role_pkey;
ALTER TABLE IF EXISTS ONLY public.user_preference DROP CONSTRAINT IF EXISTS user_preference_pkey;
ALTER TABLE IF EXISTS ONLY public."user" DROP CONSTRAINT IF EXISTS user_pkey;
ALTER TABLE IF EXISTS ONLY public.translation_settings DROP CONSTRAINT IF EXISTS translation_settings_pkey;
ALTER TABLE IF EXISTS ONLY public.translation DROP CONSTRAINT IF EXISTS translation_pkey;
ALTER TABLE IF EXISTS ONLY public.tax_region DROP CONSTRAINT IF EXISTS tax_region_pkey;
ALTER TABLE IF EXISTS ONLY public.tax_rate_rule DROP CONSTRAINT IF EXISTS tax_rate_rule_pkey;
ALTER TABLE IF EXISTS ONLY public.tax_rate DROP CONSTRAINT IF EXISTS tax_rate_pkey;
ALTER TABLE IF EXISTS ONLY public.tax_provider DROP CONSTRAINT IF EXISTS tax_provider_pkey;
ALTER TABLE IF EXISTS ONLY public.store DROP CONSTRAINT IF EXISTS store_pkey;
ALTER TABLE IF EXISTS ONLY public.store_locale DROP CONSTRAINT IF EXISTS store_locale_pkey;
ALTER TABLE IF EXISTS ONLY public.store_currency DROP CONSTRAINT IF EXISTS store_currency_pkey;
ALTER TABLE IF EXISTS ONLY public.stock_location DROP CONSTRAINT IF EXISTS stock_location_pkey;
ALTER TABLE IF EXISTS ONLY public.stock_location_address DROP CONSTRAINT IF EXISTS stock_location_address_pkey;
ALTER TABLE IF EXISTS ONLY public.shipping_profile DROP CONSTRAINT IF EXISTS shipping_profile_pkey;
ALTER TABLE IF EXISTS ONLY public.shipping_option_type DROP CONSTRAINT IF EXISTS shipping_option_type_pkey;
ALTER TABLE IF EXISTS ONLY public.shipping_option_rule DROP CONSTRAINT IF EXISTS shipping_option_rule_pkey;
ALTER TABLE IF EXISTS ONLY public.shipping_option_price_set DROP CONSTRAINT IF EXISTS shipping_option_price_set_pkey;
ALTER TABLE IF EXISTS ONLY public.shipping_option DROP CONSTRAINT IF EXISTS shipping_option_pkey;
ALTER TABLE IF EXISTS ONLY public.service_zone DROP CONSTRAINT IF EXISTS service_zone_pkey;
ALTER TABLE IF EXISTS ONLY public.script_migrations DROP CONSTRAINT IF EXISTS script_migrations_pkey;
ALTER TABLE IF EXISTS ONLY public.sales_channel_stock_location DROP CONSTRAINT IF EXISTS sales_channel_stock_location_pkey;
ALTER TABLE IF EXISTS ONLY public.sales_channel DROP CONSTRAINT IF EXISTS sales_channel_pkey;
ALTER TABLE IF EXISTS ONLY public.return_reason DROP CONSTRAINT IF EXISTS return_reason_pkey;
ALTER TABLE IF EXISTS ONLY public.return DROP CONSTRAINT IF EXISTS return_pkey;
ALTER TABLE IF EXISTS ONLY public.return_item DROP CONSTRAINT IF EXISTS return_item_pkey;
ALTER TABLE IF EXISTS ONLY public.return_fulfillment DROP CONSTRAINT IF EXISTS return_fulfillment_pkey;
ALTER TABLE IF EXISTS ONLY public.reservation_item DROP CONSTRAINT IF EXISTS reservation_item_pkey;
ALTER TABLE IF EXISTS ONLY public.region DROP CONSTRAINT IF EXISTS region_pkey;
ALTER TABLE IF EXISTS ONLY public.region_payment_provider DROP CONSTRAINT IF EXISTS region_payment_provider_pkey;
ALTER TABLE IF EXISTS ONLY public.region_country DROP CONSTRAINT IF EXISTS region_country_pkey;
ALTER TABLE IF EXISTS ONLY public.refund_reason DROP CONSTRAINT IF EXISTS refund_reason_pkey;
ALTER TABLE IF EXISTS ONLY public.refund DROP CONSTRAINT IF EXISTS refund_pkey;
ALTER TABLE IF EXISTS ONLY public.publishable_api_key_sales_channel DROP CONSTRAINT IF EXISTS publishable_api_key_sales_channel_pkey;
ALTER TABLE IF EXISTS ONLY public.provider_identity DROP CONSTRAINT IF EXISTS provider_identity_pkey;
ALTER TABLE IF EXISTS ONLY public.promotion_rule_value DROP CONSTRAINT IF EXISTS promotion_rule_value_pkey;
ALTER TABLE IF EXISTS ONLY public.promotion_rule DROP CONSTRAINT IF EXISTS promotion_rule_pkey;
ALTER TABLE IF EXISTS ONLY public.promotion_promotion_rule DROP CONSTRAINT IF EXISTS promotion_promotion_rule_pkey;
ALTER TABLE IF EXISTS ONLY public.promotion DROP CONSTRAINT IF EXISTS promotion_pkey;
ALTER TABLE IF EXISTS ONLY public.promotion_campaign DROP CONSTRAINT IF EXISTS promotion_campaign_pkey;
ALTER TABLE IF EXISTS ONLY public.promotion_campaign_budget_usage DROP CONSTRAINT IF EXISTS promotion_campaign_budget_usage_pkey;
ALTER TABLE IF EXISTS ONLY public.promotion_campaign_budget DROP CONSTRAINT IF EXISTS promotion_campaign_budget_pkey;
ALTER TABLE IF EXISTS ONLY public.promotion_application_method DROP CONSTRAINT IF EXISTS promotion_application_method_pkey;
ALTER TABLE IF EXISTS ONLY public.product_variant_product_image DROP CONSTRAINT IF EXISTS product_variant_product_image_pkey;
ALTER TABLE IF EXISTS ONLY public.product_variant_price_set DROP CONSTRAINT IF EXISTS product_variant_price_set_pkey;
ALTER TABLE IF EXISTS ONLY public.product_variant DROP CONSTRAINT IF EXISTS product_variant_pkey;
ALTER TABLE IF EXISTS ONLY public.product_variant_option DROP CONSTRAINT IF EXISTS product_variant_option_pkey;
ALTER TABLE IF EXISTS ONLY public.product_variant_inventory_item DROP CONSTRAINT IF EXISTS product_variant_inventory_item_pkey;
ALTER TABLE IF EXISTS ONLY public.product_type DROP CONSTRAINT IF EXISTS product_type_pkey;
ALTER TABLE IF EXISTS ONLY public.product_tags DROP CONSTRAINT IF EXISTS product_tags_pkey;
ALTER TABLE IF EXISTS ONLY public.product_tag DROP CONSTRAINT IF EXISTS product_tag_pkey;
ALTER TABLE IF EXISTS ONLY public.product_shipping_profile DROP CONSTRAINT IF EXISTS product_shipping_profile_pkey;
ALTER TABLE IF EXISTS ONLY public.product_sales_channel DROP CONSTRAINT IF EXISTS product_sales_channel_pkey;
ALTER TABLE IF EXISTS ONLY public.product DROP CONSTRAINT IF EXISTS product_pkey;
ALTER TABLE IF EXISTS ONLY public.product_option_value DROP CONSTRAINT IF EXISTS product_option_value_pkey;
ALTER TABLE IF EXISTS ONLY public.product_option DROP CONSTRAINT IF EXISTS product_option_pkey;
ALTER TABLE IF EXISTS ONLY public.product_collection DROP CONSTRAINT IF EXISTS product_collection_pkey;
ALTER TABLE IF EXISTS ONLY public.product_category_product DROP CONSTRAINT IF EXISTS product_category_product_pkey;
ALTER TABLE IF EXISTS ONLY public.product_category DROP CONSTRAINT IF EXISTS product_category_pkey;
ALTER TABLE IF EXISTS ONLY public.price_set DROP CONSTRAINT IF EXISTS price_set_pkey;
ALTER TABLE IF EXISTS ONLY public.price_rule DROP CONSTRAINT IF EXISTS price_rule_pkey;
ALTER TABLE IF EXISTS ONLY public.price_preference DROP CONSTRAINT IF EXISTS price_preference_pkey;
ALTER TABLE IF EXISTS ONLY public.price DROP CONSTRAINT IF EXISTS price_pkey;
ALTER TABLE IF EXISTS ONLY public.price_list_rule DROP CONSTRAINT IF EXISTS price_list_rule_pkey;
ALTER TABLE IF EXISTS ONLY public.price_list DROP CONSTRAINT IF EXISTS price_list_pkey;
ALTER TABLE IF EXISTS ONLY public.payment_session DROP CONSTRAINT IF EXISTS payment_session_pkey;
ALTER TABLE IF EXISTS ONLY public.payment_provider DROP CONSTRAINT IF EXISTS payment_provider_pkey;
ALTER TABLE IF EXISTS ONLY public.payment DROP CONSTRAINT IF EXISTS payment_pkey;
ALTER TABLE IF EXISTS ONLY public.payment_collection DROP CONSTRAINT IF EXISTS payment_collection_pkey;
ALTER TABLE IF EXISTS ONLY public.payment_collection_payment_providers DROP CONSTRAINT IF EXISTS payment_collection_payment_providers_pkey;
ALTER TABLE IF EXISTS ONLY public.order_transaction DROP CONSTRAINT IF EXISTS order_transaction_pkey;
ALTER TABLE IF EXISTS ONLY public.order_summary DROP CONSTRAINT IF EXISTS order_summary_pkey;
ALTER TABLE IF EXISTS ONLY public.order_shipping DROP CONSTRAINT IF EXISTS order_shipping_pkey;
ALTER TABLE IF EXISTS ONLY public.order_shipping_method_tax_line DROP CONSTRAINT IF EXISTS order_shipping_method_tax_line_pkey;
ALTER TABLE IF EXISTS ONLY public.order_shipping_method DROP CONSTRAINT IF EXISTS order_shipping_method_pkey;
ALTER TABLE IF EXISTS ONLY public.order_shipping_method_adjustment DROP CONSTRAINT IF EXISTS order_shipping_method_adjustment_pkey;
ALTER TABLE IF EXISTS ONLY public.order_promotion DROP CONSTRAINT IF EXISTS order_promotion_pkey;
ALTER TABLE IF EXISTS ONLY public."order" DROP CONSTRAINT IF EXISTS order_pkey;
ALTER TABLE IF EXISTS ONLY public.order_payment_collection DROP CONSTRAINT IF EXISTS order_payment_collection_pkey;
ALTER TABLE IF EXISTS ONLY public.order_line_item_tax_line DROP CONSTRAINT IF EXISTS order_line_item_tax_line_pkey;
ALTER TABLE IF EXISTS ONLY public.order_line_item DROP CONSTRAINT IF EXISTS order_line_item_pkey;
ALTER TABLE IF EXISTS ONLY public.order_line_item_adjustment DROP CONSTRAINT IF EXISTS order_line_item_adjustment_pkey;
ALTER TABLE IF EXISTS ONLY public.order_item DROP CONSTRAINT IF EXISTS order_item_pkey;
ALTER TABLE IF EXISTS ONLY public.order_fulfillment DROP CONSTRAINT IF EXISTS order_fulfillment_pkey;
ALTER TABLE IF EXISTS ONLY public.order_exchange DROP CONSTRAINT IF EXISTS order_exchange_pkey;
ALTER TABLE IF EXISTS ONLY public.order_exchange_item DROP CONSTRAINT IF EXISTS order_exchange_item_pkey;
ALTER TABLE IF EXISTS ONLY public.order_credit_line DROP CONSTRAINT IF EXISTS order_credit_line_pkey;
ALTER TABLE IF EXISTS ONLY public.order_claim DROP CONSTRAINT IF EXISTS order_claim_pkey;
ALTER TABLE IF EXISTS ONLY public.order_claim_item DROP CONSTRAINT IF EXISTS order_claim_item_pkey;
ALTER TABLE IF EXISTS ONLY public.order_claim_item_image DROP CONSTRAINT IF EXISTS order_claim_item_image_pkey;
ALTER TABLE IF EXISTS ONLY public.order_change DROP CONSTRAINT IF EXISTS order_change_pkey;
ALTER TABLE IF EXISTS ONLY public.order_change_action DROP CONSTRAINT IF EXISTS order_change_action_pkey;
ALTER TABLE IF EXISTS ONLY public.order_cart DROP CONSTRAINT IF EXISTS order_cart_pkey;
ALTER TABLE IF EXISTS ONLY public.order_address DROP CONSTRAINT IF EXISTS order_address_pkey;
ALTER TABLE IF EXISTS ONLY public.notification_provider DROP CONSTRAINT IF EXISTS notification_provider_pkey;
ALTER TABLE IF EXISTS ONLY public.notification DROP CONSTRAINT IF EXISTS notification_pkey;
ALTER TABLE IF EXISTS ONLY public.mikro_orm_migrations DROP CONSTRAINT IF EXISTS mikro_orm_migrations_pkey;
ALTER TABLE IF EXISTS ONLY public.location_fulfillment_set DROP CONSTRAINT IF EXISTS location_fulfillment_set_pkey;
ALTER TABLE IF EXISTS ONLY public.location_fulfillment_provider DROP CONSTRAINT IF EXISTS location_fulfillment_provider_pkey;
ALTER TABLE IF EXISTS ONLY public.locale DROP CONSTRAINT IF EXISTS locale_pkey;
ALTER TABLE IF EXISTS ONLY public.link_module_migrations DROP CONSTRAINT IF EXISTS link_module_migrations_table_name_key;
ALTER TABLE IF EXISTS ONLY public.link_module_migrations DROP CONSTRAINT IF EXISTS link_module_migrations_pkey;
ALTER TABLE IF EXISTS ONLY public.invite_rbac_role DROP CONSTRAINT IF EXISTS invite_rbac_role_pkey;
ALTER TABLE IF EXISTS ONLY public.invite DROP CONSTRAINT IF EXISTS invite_pkey;
ALTER TABLE IF EXISTS ONLY public.inventory_level DROP CONSTRAINT IF EXISTS inventory_level_pkey;
ALTER TABLE IF EXISTS ONLY public.inventory_item DROP CONSTRAINT IF EXISTS inventory_item_pkey;
ALTER TABLE IF EXISTS ONLY public.image DROP CONSTRAINT IF EXISTS image_pkey;
ALTER TABLE IF EXISTS ONLY public.homepage_section DROP CONSTRAINT IF EXISTS homepage_section_pkey;
ALTER TABLE IF EXISTS ONLY public.geo_zone DROP CONSTRAINT IF EXISTS geo_zone_pkey;
ALTER TABLE IF EXISTS ONLY public.fulfillment_set DROP CONSTRAINT IF EXISTS fulfillment_set_pkey;
ALTER TABLE IF EXISTS ONLY public.fulfillment_provider DROP CONSTRAINT IF EXISTS fulfillment_provider_pkey;
ALTER TABLE IF EXISTS ONLY public.fulfillment DROP CONSTRAINT IF EXISTS fulfillment_pkey;
ALTER TABLE IF EXISTS ONLY public.fulfillment_label DROP CONSTRAINT IF EXISTS fulfillment_label_pkey;
ALTER TABLE IF EXISTS ONLY public.fulfillment_item DROP CONSTRAINT IF EXISTS fulfillment_item_pkey;
ALTER TABLE IF EXISTS ONLY public.fulfillment_address DROP CONSTRAINT IF EXISTS fulfillment_address_pkey;
ALTER TABLE IF EXISTS ONLY public.customer DROP CONSTRAINT IF EXISTS customer_pkey;
ALTER TABLE IF EXISTS ONLY public.customer_group DROP CONSTRAINT IF EXISTS customer_group_pkey;
ALTER TABLE IF EXISTS ONLY public.customer_group_customer DROP CONSTRAINT IF EXISTS customer_group_customer_pkey;
ALTER TABLE IF EXISTS ONLY public.customer_address DROP CONSTRAINT IF EXISTS customer_address_pkey;
ALTER TABLE IF EXISTS ONLY public.customer_account_holder DROP CONSTRAINT IF EXISTS customer_account_holder_pkey;
ALTER TABLE IF EXISTS ONLY public.currency DROP CONSTRAINT IF EXISTS currency_pkey;
ALTER TABLE IF EXISTS ONLY public.credit_line DROP CONSTRAINT IF EXISTS credit_line_pkey;
ALTER TABLE IF EXISTS ONLY public.cart_shipping_method_tax_line DROP CONSTRAINT IF EXISTS cart_shipping_method_tax_line_pkey;
ALTER TABLE IF EXISTS ONLY public.cart_shipping_method DROP CONSTRAINT IF EXISTS cart_shipping_method_pkey;
ALTER TABLE IF EXISTS ONLY public.cart_shipping_method_adjustment DROP CONSTRAINT IF EXISTS cart_shipping_method_adjustment_pkey;
ALTER TABLE IF EXISTS ONLY public.cart_promotion DROP CONSTRAINT IF EXISTS cart_promotion_pkey;
ALTER TABLE IF EXISTS ONLY public.cart DROP CONSTRAINT IF EXISTS cart_pkey;
ALTER TABLE IF EXISTS ONLY public.cart_payment_collection DROP CONSTRAINT IF EXISTS cart_payment_collection_pkey;
ALTER TABLE IF EXISTS ONLY public.cart_line_item_tax_line DROP CONSTRAINT IF EXISTS cart_line_item_tax_line_pkey;
ALTER TABLE IF EXISTS ONLY public.cart_line_item DROP CONSTRAINT IF EXISTS cart_line_item_pkey;
ALTER TABLE IF EXISTS ONLY public.cart_line_item_adjustment DROP CONSTRAINT IF EXISTS cart_line_item_adjustment_pkey;
ALTER TABLE IF EXISTS ONLY public.cart_address DROP CONSTRAINT IF EXISTS cart_address_pkey;
ALTER TABLE IF EXISTS ONLY public.capture DROP CONSTRAINT IF EXISTS capture_pkey;
ALTER TABLE IF EXISTS ONLY public.banner DROP CONSTRAINT IF EXISTS banner_pkey;
ALTER TABLE IF EXISTS ONLY public.auth_identity DROP CONSTRAINT IF EXISTS auth_identity_pkey;
ALTER TABLE IF EXISTS ONLY public.application_method_target_rules DROP CONSTRAINT IF EXISTS application_method_target_rules_pkey;
ALTER TABLE IF EXISTS ONLY public.application_method_buy_rules DROP CONSTRAINT IF EXISTS application_method_buy_rules_pkey;
ALTER TABLE IF EXISTS ONLY public.api_key DROP CONSTRAINT IF EXISTS api_key_pkey;
ALTER TABLE IF EXISTS ONLY public.account_holder DROP CONSTRAINT IF EXISTS account_holder_pkey;
ALTER TABLE IF EXISTS public.script_migrations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.return ALTER COLUMN display_id DROP DEFAULT;
ALTER TABLE IF EXISTS public.order_exchange ALTER COLUMN display_id DROP DEFAULT;
ALTER TABLE IF EXISTS public.order_claim ALTER COLUMN display_id DROP DEFAULT;
ALTER TABLE IF EXISTS public.order_change_action ALTER COLUMN ordering DROP DEFAULT;
ALTER TABLE IF EXISTS public."order" ALTER COLUMN display_id DROP DEFAULT;
ALTER TABLE IF EXISTS public.mikro_orm_migrations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.link_module_migrations ALTER COLUMN id DROP DEFAULT;
DROP TABLE IF EXISTS public.workflow_execution;
DROP TABLE IF EXISTS public.view_configuration;
DROP TABLE IF EXISTS public.user_rbac_role;
DROP TABLE IF EXISTS public.user_preference;
DROP TABLE IF EXISTS public."user";
DROP TABLE IF EXISTS public.translation_settings;
DROP TABLE IF EXISTS public.translation;
DROP TABLE IF EXISTS public.tax_region;
DROP TABLE IF EXISTS public.tax_rate_rule;
DROP TABLE IF EXISTS public.tax_rate;
DROP TABLE IF EXISTS public.tax_provider;
DROP TABLE IF EXISTS public.store_locale;
DROP TABLE IF EXISTS public.store_currency;
DROP TABLE IF EXISTS public.store;
DROP TABLE IF EXISTS public.stock_location_address;
DROP TABLE IF EXISTS public.stock_location;
DROP TABLE IF EXISTS public.shipping_profile;
DROP TABLE IF EXISTS public.shipping_option_type;
DROP TABLE IF EXISTS public.shipping_option_rule;
DROP TABLE IF EXISTS public.shipping_option_price_set;
DROP TABLE IF EXISTS public.shipping_option;
DROP TABLE IF EXISTS public.service_zone;
DROP SEQUENCE IF EXISTS public.script_migrations_id_seq;
DROP TABLE IF EXISTS public.script_migrations;
DROP TABLE IF EXISTS public.sales_channel_stock_location;
DROP TABLE IF EXISTS public.sales_channel;
DROP TABLE IF EXISTS public.return_reason;
DROP TABLE IF EXISTS public.return_item;
DROP TABLE IF EXISTS public.return_fulfillment;
DROP SEQUENCE IF EXISTS public.return_display_id_seq;
DROP TABLE IF EXISTS public.return;
DROP TABLE IF EXISTS public.reservation_item;
DROP TABLE IF EXISTS public.region_payment_provider;
DROP TABLE IF EXISTS public.region_country;
DROP TABLE IF EXISTS public.region;
DROP TABLE IF EXISTS public.refund_reason;
DROP TABLE IF EXISTS public.refund;
DROP TABLE IF EXISTS public.publishable_api_key_sales_channel;
DROP TABLE IF EXISTS public.provider_identity;
DROP TABLE IF EXISTS public.promotion_rule_value;
DROP TABLE IF EXISTS public.promotion_rule;
DROP TABLE IF EXISTS public.promotion_promotion_rule;
DROP TABLE IF EXISTS public.promotion_campaign_budget_usage;
DROP TABLE IF EXISTS public.promotion_campaign_budget;
DROP TABLE IF EXISTS public.promotion_campaign;
DROP TABLE IF EXISTS public.promotion_application_method;
DROP TABLE IF EXISTS public.promotion;
DROP TABLE IF EXISTS public.product_variant_product_image;
DROP TABLE IF EXISTS public.product_variant_price_set;
DROP TABLE IF EXISTS public.product_variant_option;
DROP TABLE IF EXISTS public.product_variant_inventory_item;
DROP TABLE IF EXISTS public.product_variant;
DROP TABLE IF EXISTS public.product_type;
DROP TABLE IF EXISTS public.product_tags;
DROP TABLE IF EXISTS public.product_tag;
DROP TABLE IF EXISTS public.product_shipping_profile;
DROP TABLE IF EXISTS public.product_sales_channel;
DROP TABLE IF EXISTS public.product_option_value;
DROP TABLE IF EXISTS public.product_option;
DROP TABLE IF EXISTS public.product_collection;
DROP TABLE IF EXISTS public.product_category_product;
DROP TABLE IF EXISTS public.product_category;
DROP TABLE IF EXISTS public.product;
DROP TABLE IF EXISTS public.price_set;
DROP TABLE IF EXISTS public.price_rule;
DROP TABLE IF EXISTS public.price_preference;
DROP TABLE IF EXISTS public.price_list_rule;
DROP TABLE IF EXISTS public.price_list;
DROP TABLE IF EXISTS public.price;
DROP TABLE IF EXISTS public.payment_session;
DROP TABLE IF EXISTS public.payment_provider;
DROP TABLE IF EXISTS public.payment_collection_payment_providers;
DROP TABLE IF EXISTS public.payment_collection;
DROP TABLE IF EXISTS public.payment;
DROP TABLE IF EXISTS public.order_transaction;
DROP TABLE IF EXISTS public.order_summary;
DROP TABLE IF EXISTS public.order_shipping_method_tax_line;
DROP TABLE IF EXISTS public.order_shipping_method_adjustment;
DROP TABLE IF EXISTS public.order_shipping_method;
DROP TABLE IF EXISTS public.order_shipping;
DROP TABLE IF EXISTS public.order_promotion;
DROP TABLE IF EXISTS public.order_payment_collection;
DROP TABLE IF EXISTS public.order_line_item_tax_line;
DROP TABLE IF EXISTS public.order_line_item_adjustment;
DROP TABLE IF EXISTS public.order_line_item;
DROP TABLE IF EXISTS public.order_item;
DROP TABLE IF EXISTS public.order_fulfillment;
DROP TABLE IF EXISTS public.order_exchange_item;
DROP SEQUENCE IF EXISTS public.order_exchange_display_id_seq;
DROP TABLE IF EXISTS public.order_exchange;
DROP SEQUENCE IF EXISTS public.order_display_id_seq;
DROP TABLE IF EXISTS public.order_credit_line;
DROP TABLE IF EXISTS public.order_claim_item_image;
DROP TABLE IF EXISTS public.order_claim_item;
DROP SEQUENCE IF EXISTS public.order_claim_display_id_seq;
DROP TABLE IF EXISTS public.order_claim;
DROP SEQUENCE IF EXISTS public.order_change_action_ordering_seq;
DROP TABLE IF EXISTS public.order_change_action;
DROP TABLE IF EXISTS public.order_change;
DROP TABLE IF EXISTS public.order_cart;
DROP TABLE IF EXISTS public.order_address;
DROP TABLE IF EXISTS public."order";
DROP TABLE IF EXISTS public.notification_provider;
DROP TABLE IF EXISTS public.notification;
DROP SEQUENCE IF EXISTS public.mikro_orm_migrations_id_seq;
DROP TABLE IF EXISTS public.mikro_orm_migrations;
DROP TABLE IF EXISTS public.location_fulfillment_set;
DROP TABLE IF EXISTS public.location_fulfillment_provider;
DROP TABLE IF EXISTS public.locale;
DROP SEQUENCE IF EXISTS public.link_module_migrations_id_seq;
DROP TABLE IF EXISTS public.link_module_migrations;
DROP TABLE IF EXISTS public.invite_rbac_role;
DROP TABLE IF EXISTS public.invite;
DROP TABLE IF EXISTS public.inventory_level;
DROP TABLE IF EXISTS public.inventory_item;
DROP TABLE IF EXISTS public.image;
DROP TABLE IF EXISTS public.homepage_section;
DROP TABLE IF EXISTS public.geo_zone;
DROP TABLE IF EXISTS public.fulfillment_set;
DROP TABLE IF EXISTS public.fulfillment_provider;
DROP TABLE IF EXISTS public.fulfillment_label;
DROP TABLE IF EXISTS public.fulfillment_item;
DROP TABLE IF EXISTS public.fulfillment_address;
DROP TABLE IF EXISTS public.fulfillment;
DROP TABLE IF EXISTS public.customer_group_customer;
DROP TABLE IF EXISTS public.customer_group;
DROP TABLE IF EXISTS public.customer_address;
DROP TABLE IF EXISTS public.customer_account_holder;
DROP TABLE IF EXISTS public.customer;
DROP TABLE IF EXISTS public.currency;
DROP TABLE IF EXISTS public.credit_line;
DROP TABLE IF EXISTS public.cart_shipping_method_tax_line;
DROP TABLE IF EXISTS public.cart_shipping_method_adjustment;
DROP TABLE IF EXISTS public.cart_shipping_method;
DROP TABLE IF EXISTS public.cart_promotion;
DROP TABLE IF EXISTS public.cart_payment_collection;
DROP TABLE IF EXISTS public.cart_line_item_tax_line;
DROP TABLE IF EXISTS public.cart_line_item_adjustment;
DROP TABLE IF EXISTS public.cart_line_item;
DROP TABLE IF EXISTS public.cart_address;
DROP TABLE IF EXISTS public.cart;
DROP TABLE IF EXISTS public.capture;
DROP TABLE IF EXISTS public.banner;
DROP TABLE IF EXISTS public.auth_identity;
DROP TABLE IF EXISTS public.application_method_target_rules;
DROP TABLE IF EXISTS public.application_method_buy_rules;
DROP TABLE IF EXISTS public.api_key;
DROP TABLE IF EXISTS public.account_holder;
DROP TYPE IF EXISTS public.return_status_enum;
DROP TYPE IF EXISTS public.order_status_enum;
DROP TYPE IF EXISTS public.order_claim_type_enum;
DROP TYPE IF EXISTS public.claim_reason_enum;
--
-- Name: claim_reason_enum; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.claim_reason_enum AS ENUM (
    'missing_item',
    'wrong_item',
    'production_failure',
    'other'
);


--
-- Name: order_claim_type_enum; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.order_claim_type_enum AS ENUM (
    'refund',
    'replace'
);


--
-- Name: order_status_enum; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.order_status_enum AS ENUM (
    'pending',
    'completed',
    'draft',
    'archived',
    'canceled',
    'requires_action'
);


--
-- Name: return_status_enum; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.return_status_enum AS ENUM (
    'open',
    'requested',
    'received',
    'partially_received',
    'canceled'
);


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: account_holder; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.account_holder (
    id text NOT NULL,
    provider_id text NOT NULL,
    external_id text NOT NULL,
    email text,
    data jsonb DEFAULT '{}'::jsonb NOT NULL,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: api_key; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.api_key (
    id text NOT NULL,
    token text NOT NULL,
    salt text NOT NULL,
    redacted text NOT NULL,
    title text NOT NULL,
    type text NOT NULL,
    last_used_at timestamp with time zone,
    created_by text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    revoked_by text,
    revoked_at timestamp with time zone,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    CONSTRAINT api_key_type_check CHECK ((type = ANY (ARRAY['publishable'::text, 'secret'::text])))
);


--
-- Name: application_method_buy_rules; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.application_method_buy_rules (
    application_method_id text NOT NULL,
    promotion_rule_id text NOT NULL
);


--
-- Name: application_method_target_rules; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.application_method_target_rules (
    application_method_id text NOT NULL,
    promotion_rule_id text NOT NULL
);


--
-- Name: auth_identity; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_identity (
    id text NOT NULL,
    app_metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: banner; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.banner (
    id text NOT NULL,
    title text NOT NULL,
    description text,
    image_url text,
    link text NOT NULL,
    link_text text,
    is_active boolean DEFAULT true NOT NULL,
    "order" integer DEFAULT 0 NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    image_data text
);


--
-- Name: capture; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.capture (
    id text NOT NULL,
    amount numeric NOT NULL,
    raw_amount jsonb NOT NULL,
    payment_id text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    created_by text,
    metadata jsonb
);


--
-- Name: cart; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cart (
    id text NOT NULL,
    region_id text,
    customer_id text,
    sales_channel_id text,
    email text,
    currency_code text NOT NULL,
    shipping_address_id text,
    billing_address_id text,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    completed_at timestamp with time zone,
    locale text
);


--
-- Name: cart_address; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cart_address (
    id text NOT NULL,
    customer_id text,
    company text,
    first_name text,
    last_name text,
    address_1 text,
    address_2 text,
    city text,
    country_code text,
    province text,
    postal_code text,
    phone text,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: cart_line_item; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cart_line_item (
    id text NOT NULL,
    cart_id text NOT NULL,
    title text NOT NULL,
    subtitle text,
    thumbnail text,
    quantity integer NOT NULL,
    variant_id text,
    product_id text,
    product_title text,
    product_description text,
    product_subtitle text,
    product_type text,
    product_collection text,
    product_handle text,
    variant_sku text,
    variant_barcode text,
    variant_title text,
    variant_option_values jsonb,
    requires_shipping boolean DEFAULT true NOT NULL,
    is_discountable boolean DEFAULT true NOT NULL,
    is_tax_inclusive boolean DEFAULT false NOT NULL,
    compare_at_unit_price numeric,
    raw_compare_at_unit_price jsonb,
    unit_price numeric NOT NULL,
    raw_unit_price jsonb NOT NULL,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    product_type_id text,
    is_custom_price boolean DEFAULT false NOT NULL,
    is_giftcard boolean DEFAULT false NOT NULL,
    CONSTRAINT cart_line_item_unit_price_check CHECK ((unit_price >= (0)::numeric))
);


--
-- Name: cart_line_item_adjustment; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cart_line_item_adjustment (
    id text NOT NULL,
    description text,
    promotion_id text,
    code text,
    amount numeric NOT NULL,
    raw_amount jsonb NOT NULL,
    provider_id text,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    item_id text,
    is_tax_inclusive boolean DEFAULT false NOT NULL,
    CONSTRAINT cart_line_item_adjustment_check CHECK ((amount >= (0)::numeric))
);


--
-- Name: cart_line_item_tax_line; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cart_line_item_tax_line (
    id text NOT NULL,
    description text,
    tax_rate_id text,
    code text NOT NULL,
    rate real NOT NULL,
    provider_id text,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    item_id text
);


--
-- Name: cart_payment_collection; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cart_payment_collection (
    cart_id character varying(255) NOT NULL,
    payment_collection_id character varying(255) NOT NULL,
    id character varying(255) NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: cart_promotion; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cart_promotion (
    cart_id character varying(255) NOT NULL,
    promotion_id character varying(255) NOT NULL,
    id character varying(255) NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: cart_shipping_method; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cart_shipping_method (
    id text NOT NULL,
    cart_id text NOT NULL,
    name text NOT NULL,
    description jsonb,
    amount numeric NOT NULL,
    raw_amount jsonb NOT NULL,
    is_tax_inclusive boolean DEFAULT false NOT NULL,
    shipping_option_id text,
    data jsonb,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    CONSTRAINT cart_shipping_method_check CHECK ((amount >= (0)::numeric))
);


--
-- Name: cart_shipping_method_adjustment; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cart_shipping_method_adjustment (
    id text NOT NULL,
    description text,
    promotion_id text,
    code text,
    amount numeric NOT NULL,
    raw_amount jsonb NOT NULL,
    provider_id text,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    shipping_method_id text
);


--
-- Name: cart_shipping_method_tax_line; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cart_shipping_method_tax_line (
    id text NOT NULL,
    description text,
    tax_rate_id text,
    code text NOT NULL,
    rate real NOT NULL,
    provider_id text,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    shipping_method_id text
);


--
-- Name: credit_line; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.credit_line (
    id text NOT NULL,
    cart_id text NOT NULL,
    reference text,
    reference_id text,
    amount numeric NOT NULL,
    raw_amount jsonb NOT NULL,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: currency; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.currency (
    code text NOT NULL,
    symbol text NOT NULL,
    symbol_native text NOT NULL,
    decimal_digits integer DEFAULT 0 NOT NULL,
    rounding numeric DEFAULT 0 NOT NULL,
    raw_rounding jsonb NOT NULL,
    name text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: customer; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.customer (
    id text NOT NULL,
    company_name text,
    first_name text,
    last_name text,
    email text,
    phone text,
    has_account boolean DEFAULT false NOT NULL,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    created_by text
);


--
-- Name: customer_account_holder; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.customer_account_holder (
    customer_id character varying(255) NOT NULL,
    account_holder_id character varying(255) NOT NULL,
    id character varying(255) NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: customer_address; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.customer_address (
    id text NOT NULL,
    customer_id text NOT NULL,
    address_name text,
    is_default_shipping boolean DEFAULT false NOT NULL,
    is_default_billing boolean DEFAULT false NOT NULL,
    company text,
    first_name text,
    last_name text,
    address_1 text,
    address_2 text,
    city text,
    country_code text,
    province text,
    postal_code text,
    phone text,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: customer_group; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.customer_group (
    id text NOT NULL,
    name text NOT NULL,
    metadata jsonb,
    created_by text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: customer_group_customer; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.customer_group_customer (
    id text NOT NULL,
    customer_id text NOT NULL,
    customer_group_id text NOT NULL,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    created_by text,
    deleted_at timestamp with time zone
);


--
-- Name: fulfillment; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fulfillment (
    id text NOT NULL,
    location_id text NOT NULL,
    packed_at timestamp with time zone,
    shipped_at timestamp with time zone,
    delivered_at timestamp with time zone,
    canceled_at timestamp with time zone,
    data jsonb,
    provider_id text,
    shipping_option_id text,
    metadata jsonb,
    delivery_address_id text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    marked_shipped_by text,
    created_by text,
    requires_shipping boolean DEFAULT true NOT NULL
);


--
-- Name: fulfillment_address; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fulfillment_address (
    id text NOT NULL,
    company text,
    first_name text,
    last_name text,
    address_1 text,
    address_2 text,
    city text,
    country_code text,
    province text,
    postal_code text,
    phone text,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: fulfillment_item; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fulfillment_item (
    id text NOT NULL,
    title text NOT NULL,
    sku text NOT NULL,
    barcode text NOT NULL,
    quantity numeric NOT NULL,
    raw_quantity jsonb NOT NULL,
    line_item_id text,
    inventory_item_id text,
    fulfillment_id text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: fulfillment_label; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fulfillment_label (
    id text NOT NULL,
    tracking_number text NOT NULL,
    tracking_url text NOT NULL,
    label_url text NOT NULL,
    fulfillment_id text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: fulfillment_provider; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fulfillment_provider (
    id text NOT NULL,
    is_enabled boolean DEFAULT true NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: fulfillment_set; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fulfillment_set (
    id text NOT NULL,
    name text NOT NULL,
    type text NOT NULL,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: geo_zone; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.geo_zone (
    id text NOT NULL,
    type text DEFAULT 'country'::text NOT NULL,
    country_code text NOT NULL,
    province_code text,
    city text,
    service_zone_id text NOT NULL,
    postal_expression jsonb,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    CONSTRAINT geo_zone_type_check CHECK ((type = ANY (ARRAY['country'::text, 'province'::text, 'city'::text, 'zip'::text])))
);


--
-- Name: homepage_section; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.homepage_section (
    id text NOT NULL,
    key text NOT NULL,
    title text NOT NULL,
    type text NOT NULL,
    config jsonb,
    is_active boolean DEFAULT true NOT NULL,
    "order" integer DEFAULT 0 NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    CONSTRAINT homepage_section_type_check CHECK ((type = ANY (ARRAY['hero_banner'::text, 'featured_products'::text, 'single_category_grid'::text, 'categories_grid'::text, 'newsletter'::text, 'custom_html'::text])))
);


--
-- Name: image; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.image (
    id text NOT NULL,
    url text NOT NULL,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    rank integer DEFAULT 0 NOT NULL,
    product_id text NOT NULL
);


--
-- Name: inventory_item; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.inventory_item (
    id text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    sku text,
    origin_country text,
    hs_code text,
    mid_code text,
    material text,
    weight integer,
    length integer,
    height integer,
    width integer,
    requires_shipping boolean DEFAULT true NOT NULL,
    description text,
    title text,
    thumbnail text,
    metadata jsonb
);


--
-- Name: inventory_level; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.inventory_level (
    id text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    inventory_item_id text NOT NULL,
    location_id text NOT NULL,
    stocked_quantity numeric DEFAULT 0 NOT NULL,
    reserved_quantity numeric DEFAULT 0 NOT NULL,
    incoming_quantity numeric DEFAULT 0 NOT NULL,
    metadata jsonb,
    raw_stocked_quantity jsonb,
    raw_reserved_quantity jsonb,
    raw_incoming_quantity jsonb
);


--
-- Name: invite; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.invite (
    id text NOT NULL,
    email text NOT NULL,
    accepted boolean DEFAULT false NOT NULL,
    token text NOT NULL,
    expires_at timestamp with time zone NOT NULL,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: invite_rbac_role; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.invite_rbac_role (
    invite_id character varying(255) NOT NULL,
    rbac_role_id character varying(255) NOT NULL,
    id character varying(255) NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: link_module_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.link_module_migrations (
    id integer NOT NULL,
    table_name character varying(255) NOT NULL,
    link_descriptor jsonb DEFAULT '{}'::jsonb NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: link_module_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.link_module_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: link_module_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.link_module_migrations_id_seq OWNED BY public.link_module_migrations.id;


--
-- Name: locale; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.locale (
    id text NOT NULL,
    code text NOT NULL,
    name text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: location_fulfillment_provider; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.location_fulfillment_provider (
    stock_location_id character varying(255) NOT NULL,
    fulfillment_provider_id character varying(255) NOT NULL,
    id character varying(255) NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: location_fulfillment_set; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.location_fulfillment_set (
    stock_location_id character varying(255) NOT NULL,
    fulfillment_set_id character varying(255) NOT NULL,
    id character varying(255) NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: mikro_orm_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mikro_orm_migrations (
    id integer NOT NULL,
    name character varying(255),
    executed_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: mikro_orm_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.mikro_orm_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: mikro_orm_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.mikro_orm_migrations_id_seq OWNED BY public.mikro_orm_migrations.id;


--
-- Name: notification; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.notification (
    id text NOT NULL,
    "to" text NOT NULL,
    channel text NOT NULL,
    template text,
    data jsonb,
    trigger_type text,
    resource_id text,
    resource_type text,
    receiver_id text,
    original_notification_id text,
    idempotency_key text,
    external_id text,
    provider_id text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    status text DEFAULT 'pending'::text NOT NULL,
    "from" text,
    provider_data jsonb,
    CONSTRAINT notification_status_check CHECK ((status = ANY (ARRAY['pending'::text, 'success'::text, 'failure'::text])))
);


--
-- Name: notification_provider; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.notification_provider (
    id text NOT NULL,
    handle text NOT NULL,
    name text NOT NULL,
    is_enabled boolean DEFAULT true NOT NULL,
    channels text[] DEFAULT '{}'::text[] NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: order; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."order" (
    id text NOT NULL,
    region_id text,
    display_id integer,
    customer_id text,
    version integer DEFAULT 1 NOT NULL,
    sales_channel_id text,
    status public.order_status_enum DEFAULT 'pending'::public.order_status_enum NOT NULL,
    is_draft_order boolean DEFAULT false NOT NULL,
    email text,
    currency_code text NOT NULL,
    shipping_address_id text,
    billing_address_id text,
    no_notification boolean,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    canceled_at timestamp with time zone,
    custom_display_id text,
    locale text
);


--
-- Name: order_address; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.order_address (
    id text NOT NULL,
    customer_id text,
    company text,
    first_name text,
    last_name text,
    address_1 text,
    address_2 text,
    city text,
    country_code text,
    province text,
    postal_code text,
    phone text,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: order_cart; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.order_cart (
    order_id character varying(255) NOT NULL,
    cart_id character varying(255) NOT NULL,
    id character varying(255) NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: order_change; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.order_change (
    id text NOT NULL,
    order_id text NOT NULL,
    version integer NOT NULL,
    description text,
    status text DEFAULT 'pending'::text NOT NULL,
    internal_note text,
    created_by text,
    requested_by text,
    requested_at timestamp with time zone,
    confirmed_by text,
    confirmed_at timestamp with time zone,
    declined_by text,
    declined_reason text,
    metadata jsonb,
    declined_at timestamp with time zone,
    canceled_by text,
    canceled_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    change_type text,
    deleted_at timestamp with time zone,
    return_id text,
    claim_id text,
    exchange_id text,
    carry_over_promotions boolean,
    CONSTRAINT order_change_status_check CHECK ((status = ANY (ARRAY['confirmed'::text, 'declined'::text, 'requested'::text, 'pending'::text, 'canceled'::text])))
);


--
-- Name: order_change_action; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.order_change_action (
    id text NOT NULL,
    order_id text,
    version integer,
    ordering bigint NOT NULL,
    order_change_id text,
    reference text,
    reference_id text,
    action text NOT NULL,
    details jsonb,
    amount numeric,
    raw_amount jsonb,
    internal_note text,
    applied boolean DEFAULT false NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    return_id text,
    claim_id text,
    exchange_id text
);


--
-- Name: order_change_action_ordering_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.order_change_action_ordering_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: order_change_action_ordering_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.order_change_action_ordering_seq OWNED BY public.order_change_action.ordering;


--
-- Name: order_claim; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.order_claim (
    id text NOT NULL,
    order_id text NOT NULL,
    return_id text,
    order_version integer NOT NULL,
    display_id integer NOT NULL,
    type public.order_claim_type_enum NOT NULL,
    no_notification boolean,
    refund_amount numeric,
    raw_refund_amount jsonb,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    canceled_at timestamp with time zone,
    created_by text
);


--
-- Name: order_claim_display_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.order_claim_display_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: order_claim_display_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.order_claim_display_id_seq OWNED BY public.order_claim.display_id;


--
-- Name: order_claim_item; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.order_claim_item (
    id text NOT NULL,
    claim_id text NOT NULL,
    item_id text NOT NULL,
    is_additional_item boolean DEFAULT false NOT NULL,
    reason public.claim_reason_enum,
    quantity numeric NOT NULL,
    raw_quantity jsonb NOT NULL,
    note text,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: order_claim_item_image; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.order_claim_item_image (
    id text NOT NULL,
    claim_item_id text NOT NULL,
    url text NOT NULL,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: order_credit_line; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.order_credit_line (
    id text NOT NULL,
    order_id text NOT NULL,
    reference text,
    reference_id text,
    amount numeric NOT NULL,
    raw_amount jsonb NOT NULL,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    version integer DEFAULT 1 NOT NULL
);


--
-- Name: order_display_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.order_display_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: order_display_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.order_display_id_seq OWNED BY public."order".display_id;


--
-- Name: order_exchange; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.order_exchange (
    id text NOT NULL,
    order_id text NOT NULL,
    return_id text,
    order_version integer NOT NULL,
    display_id integer NOT NULL,
    no_notification boolean,
    allow_backorder boolean DEFAULT false NOT NULL,
    difference_due numeric,
    raw_difference_due jsonb,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    canceled_at timestamp with time zone,
    created_by text
);


--
-- Name: order_exchange_display_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.order_exchange_display_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: order_exchange_display_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.order_exchange_display_id_seq OWNED BY public.order_exchange.display_id;


--
-- Name: order_exchange_item; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.order_exchange_item (
    id text NOT NULL,
    exchange_id text NOT NULL,
    item_id text NOT NULL,
    quantity numeric NOT NULL,
    raw_quantity jsonb NOT NULL,
    note text,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: order_fulfillment; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.order_fulfillment (
    order_id character varying(255) NOT NULL,
    fulfillment_id character varying(255) NOT NULL,
    id character varying(255) NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: order_item; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.order_item (
    id text NOT NULL,
    order_id text NOT NULL,
    version integer NOT NULL,
    item_id text NOT NULL,
    quantity numeric NOT NULL,
    raw_quantity jsonb NOT NULL,
    fulfilled_quantity numeric NOT NULL,
    raw_fulfilled_quantity jsonb DEFAULT '{"value": "0", "precision": 20}'::jsonb NOT NULL,
    shipped_quantity numeric NOT NULL,
    raw_shipped_quantity jsonb DEFAULT '{"value": "0", "precision": 20}'::jsonb NOT NULL,
    return_requested_quantity numeric NOT NULL,
    raw_return_requested_quantity jsonb DEFAULT '{"value": "0", "precision": 20}'::jsonb NOT NULL,
    return_received_quantity numeric NOT NULL,
    raw_return_received_quantity jsonb DEFAULT '{"value": "0", "precision": 20}'::jsonb NOT NULL,
    return_dismissed_quantity numeric NOT NULL,
    raw_return_dismissed_quantity jsonb DEFAULT '{"value": "0", "precision": 20}'::jsonb NOT NULL,
    written_off_quantity numeric NOT NULL,
    raw_written_off_quantity jsonb DEFAULT '{"value": "0", "precision": 20}'::jsonb NOT NULL,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    delivered_quantity numeric DEFAULT 0 NOT NULL,
    raw_delivered_quantity jsonb DEFAULT '{"value": "0", "precision": 20}'::jsonb NOT NULL,
    unit_price numeric,
    raw_unit_price jsonb,
    compare_at_unit_price numeric,
    raw_compare_at_unit_price jsonb
);


--
-- Name: order_line_item; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.order_line_item (
    id text NOT NULL,
    totals_id text,
    title text NOT NULL,
    subtitle text,
    thumbnail text,
    variant_id text,
    product_id text,
    product_title text,
    product_description text,
    product_subtitle text,
    product_type text,
    product_collection text,
    product_handle text,
    variant_sku text,
    variant_barcode text,
    variant_title text,
    variant_option_values jsonb,
    requires_shipping boolean DEFAULT true NOT NULL,
    is_discountable boolean DEFAULT true NOT NULL,
    is_tax_inclusive boolean DEFAULT false NOT NULL,
    compare_at_unit_price numeric,
    raw_compare_at_unit_price jsonb,
    unit_price numeric NOT NULL,
    raw_unit_price jsonb NOT NULL,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    is_custom_price boolean DEFAULT false NOT NULL,
    product_type_id text,
    is_giftcard boolean DEFAULT false NOT NULL
);


--
-- Name: order_line_item_adjustment; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.order_line_item_adjustment (
    id text NOT NULL,
    description text,
    promotion_id text,
    code text,
    amount numeric NOT NULL,
    raw_amount jsonb NOT NULL,
    provider_id text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    item_id text NOT NULL,
    deleted_at timestamp with time zone,
    is_tax_inclusive boolean DEFAULT false NOT NULL,
    version integer DEFAULT 1 NOT NULL
);


--
-- Name: order_line_item_tax_line; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.order_line_item_tax_line (
    id text NOT NULL,
    description text,
    tax_rate_id text,
    code text NOT NULL,
    rate numeric NOT NULL,
    raw_rate jsonb NOT NULL,
    provider_id text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    item_id text NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: order_payment_collection; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.order_payment_collection (
    order_id character varying(255) NOT NULL,
    payment_collection_id character varying(255) NOT NULL,
    id character varying(255) NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: order_promotion; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.order_promotion (
    order_id character varying(255) NOT NULL,
    promotion_id character varying(255) NOT NULL,
    id character varying(255) NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: order_shipping; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.order_shipping (
    id text NOT NULL,
    order_id text NOT NULL,
    version integer NOT NULL,
    shipping_method_id text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    return_id text,
    claim_id text,
    exchange_id text
);


--
-- Name: order_shipping_method; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.order_shipping_method (
    id text NOT NULL,
    name text NOT NULL,
    description jsonb,
    amount numeric NOT NULL,
    raw_amount jsonb NOT NULL,
    is_tax_inclusive boolean DEFAULT false NOT NULL,
    shipping_option_id text,
    data jsonb,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    is_custom_amount boolean DEFAULT false NOT NULL
);


--
-- Name: order_shipping_method_adjustment; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.order_shipping_method_adjustment (
    id text NOT NULL,
    description text,
    promotion_id text,
    code text,
    amount numeric NOT NULL,
    raw_amount jsonb NOT NULL,
    provider_id text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    shipping_method_id text NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: order_shipping_method_tax_line; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.order_shipping_method_tax_line (
    id text NOT NULL,
    description text,
    tax_rate_id text,
    code text NOT NULL,
    rate numeric NOT NULL,
    raw_rate jsonb NOT NULL,
    provider_id text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    shipping_method_id text NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: order_summary; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.order_summary (
    id text NOT NULL,
    order_id text NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    totals jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: order_transaction; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.order_transaction (
    id text NOT NULL,
    order_id text NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    amount numeric NOT NULL,
    raw_amount jsonb NOT NULL,
    currency_code text NOT NULL,
    reference text,
    reference_id text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    return_id text,
    claim_id text,
    exchange_id text
);


--
-- Name: payment; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payment (
    id text NOT NULL,
    amount numeric NOT NULL,
    raw_amount jsonb NOT NULL,
    currency_code text NOT NULL,
    provider_id text NOT NULL,
    data jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    captured_at timestamp with time zone,
    canceled_at timestamp with time zone,
    payment_collection_id text NOT NULL,
    payment_session_id text NOT NULL,
    metadata jsonb
);


--
-- Name: payment_collection; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payment_collection (
    id text NOT NULL,
    currency_code text NOT NULL,
    amount numeric NOT NULL,
    raw_amount jsonb NOT NULL,
    authorized_amount numeric,
    raw_authorized_amount jsonb,
    captured_amount numeric,
    raw_captured_amount jsonb,
    refunded_amount numeric,
    raw_refunded_amount jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    completed_at timestamp with time zone,
    status text DEFAULT 'not_paid'::text NOT NULL,
    metadata jsonb,
    CONSTRAINT payment_collection_status_check CHECK ((status = ANY (ARRAY['not_paid'::text, 'awaiting'::text, 'authorized'::text, 'partially_authorized'::text, 'canceled'::text, 'failed'::text, 'partially_captured'::text, 'completed'::text])))
);


--
-- Name: payment_collection_payment_providers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payment_collection_payment_providers (
    payment_collection_id text NOT NULL,
    payment_provider_id text NOT NULL
);


--
-- Name: payment_provider; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payment_provider (
    id text NOT NULL,
    is_enabled boolean DEFAULT true NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: payment_session; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payment_session (
    id text NOT NULL,
    currency_code text NOT NULL,
    amount numeric NOT NULL,
    raw_amount jsonb NOT NULL,
    provider_id text NOT NULL,
    data jsonb DEFAULT '{}'::jsonb NOT NULL,
    context jsonb,
    status text DEFAULT 'pending'::text NOT NULL,
    authorized_at timestamp with time zone,
    payment_collection_id text NOT NULL,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    CONSTRAINT payment_session_status_check CHECK ((status = ANY (ARRAY['authorized'::text, 'captured'::text, 'pending'::text, 'requires_more'::text, 'error'::text, 'canceled'::text])))
);


--
-- Name: price; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.price (
    id text NOT NULL,
    title text,
    price_set_id text NOT NULL,
    currency_code text NOT NULL,
    raw_amount jsonb NOT NULL,
    rules_count integer DEFAULT 0,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    price_list_id text,
    amount numeric NOT NULL,
    min_quantity numeric,
    max_quantity numeric,
    raw_min_quantity jsonb,
    raw_max_quantity jsonb
);


--
-- Name: price_list; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.price_list (
    id text NOT NULL,
    status text DEFAULT 'draft'::text NOT NULL,
    starts_at timestamp with time zone,
    ends_at timestamp with time zone,
    rules_count integer DEFAULT 0,
    title text NOT NULL,
    description text NOT NULL,
    type text DEFAULT 'sale'::text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    CONSTRAINT price_list_status_check CHECK ((status = ANY (ARRAY['active'::text, 'draft'::text]))),
    CONSTRAINT price_list_type_check CHECK ((type = ANY (ARRAY['sale'::text, 'override'::text])))
);


--
-- Name: price_list_rule; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.price_list_rule (
    id text NOT NULL,
    price_list_id text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    value jsonb,
    attribute text DEFAULT ''::text NOT NULL
);


--
-- Name: price_preference; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.price_preference (
    id text NOT NULL,
    attribute text NOT NULL,
    value text,
    is_tax_inclusive boolean DEFAULT false NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: price_rule; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.price_rule (
    id text NOT NULL,
    value text NOT NULL,
    priority integer DEFAULT 0 NOT NULL,
    price_id text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    attribute text DEFAULT ''::text NOT NULL,
    operator text DEFAULT 'eq'::text NOT NULL,
    CONSTRAINT price_rule_operator_check CHECK ((operator = ANY (ARRAY['gte'::text, 'lte'::text, 'gt'::text, 'lt'::text, 'eq'::text])))
);


--
-- Name: price_set; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.price_set (
    id text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: product; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.product (
    id text NOT NULL,
    title text NOT NULL,
    handle text NOT NULL,
    subtitle text,
    description text,
    is_giftcard boolean DEFAULT false NOT NULL,
    status text DEFAULT 'draft'::text NOT NULL,
    thumbnail text,
    weight text,
    length text,
    height text,
    width text,
    origin_country text,
    hs_code text,
    mid_code text,
    material text,
    collection_id text,
    type_id text,
    discountable boolean DEFAULT true NOT NULL,
    external_id text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    CONSTRAINT product_status_check CHECK ((status = ANY (ARRAY['draft'::text, 'proposed'::text, 'published'::text, 'rejected'::text])))
);


--
-- Name: product_category; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.product_category (
    id text NOT NULL,
    name text NOT NULL,
    description text DEFAULT ''::text NOT NULL,
    handle text NOT NULL,
    mpath text NOT NULL,
    is_active boolean DEFAULT false NOT NULL,
    is_internal boolean DEFAULT false NOT NULL,
    rank integer DEFAULT 0 NOT NULL,
    parent_category_id text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);


--
-- Name: product_category_product; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.product_category_product (
    product_id text NOT NULL,
    product_category_id text NOT NULL
);


--
-- Name: product_collection; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.product_collection (
    id text NOT NULL,
    title text NOT NULL,
    handle text NOT NULL,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: product_option; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.product_option (
    id text NOT NULL,
    title text NOT NULL,
    product_id text NOT NULL,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: product_option_value; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.product_option_value (
    id text NOT NULL,
    value text NOT NULL,
    option_id text,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: product_sales_channel; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.product_sales_channel (
    product_id character varying(255) NOT NULL,
    sales_channel_id character varying(255) NOT NULL,
    id character varying(255) NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: product_shipping_profile; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.product_shipping_profile (
    product_id character varying(255) NOT NULL,
    shipping_profile_id character varying(255) NOT NULL,
    id character varying(255) NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: product_tag; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.product_tag (
    id text NOT NULL,
    value text NOT NULL,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: product_tags; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.product_tags (
    product_id text NOT NULL,
    product_tag_id text NOT NULL
);


--
-- Name: product_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.product_type (
    id text NOT NULL,
    value text NOT NULL,
    metadata json,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: product_variant; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.product_variant (
    id text NOT NULL,
    title text NOT NULL,
    sku text,
    barcode text,
    ean text,
    upc text,
    allow_backorder boolean DEFAULT false NOT NULL,
    manage_inventory boolean DEFAULT true NOT NULL,
    hs_code text,
    origin_country text,
    mid_code text,
    material text,
    weight integer,
    length integer,
    height integer,
    width integer,
    metadata jsonb,
    variant_rank integer DEFAULT 0,
    product_id text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    thumbnail text
);


--
-- Name: product_variant_inventory_item; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.product_variant_inventory_item (
    variant_id character varying(255) NOT NULL,
    inventory_item_id character varying(255) NOT NULL,
    id character varying(255) NOT NULL,
    required_quantity integer DEFAULT 1 NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: product_variant_option; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.product_variant_option (
    variant_id text NOT NULL,
    option_value_id text NOT NULL
);


--
-- Name: product_variant_price_set; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.product_variant_price_set (
    variant_id character varying(255) NOT NULL,
    price_set_id character varying(255) NOT NULL,
    id character varying(255) NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: product_variant_product_image; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.product_variant_product_image (
    id text NOT NULL,
    variant_id text NOT NULL,
    image_id text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: promotion; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.promotion (
    id text NOT NULL,
    code text NOT NULL,
    campaign_id text,
    is_automatic boolean DEFAULT false NOT NULL,
    type text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    status text DEFAULT 'draft'::text NOT NULL,
    is_tax_inclusive boolean DEFAULT false NOT NULL,
    "limit" integer,
    used integer DEFAULT 0 NOT NULL,
    metadata jsonb,
    CONSTRAINT promotion_status_check CHECK ((status = ANY (ARRAY['draft'::text, 'active'::text, 'inactive'::text]))),
    CONSTRAINT promotion_type_check CHECK ((type = ANY (ARRAY['standard'::text, 'buyget'::text])))
);


--
-- Name: promotion_application_method; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.promotion_application_method (
    id text NOT NULL,
    value numeric,
    raw_value jsonb,
    max_quantity integer,
    apply_to_quantity integer,
    buy_rules_min_quantity integer,
    type text NOT NULL,
    target_type text NOT NULL,
    allocation text,
    promotion_id text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    currency_code text,
    CONSTRAINT promotion_application_method_allocation_check CHECK ((allocation = ANY (ARRAY['each'::text, 'across'::text, 'once'::text]))),
    CONSTRAINT promotion_application_method_target_type_check CHECK ((target_type = ANY (ARRAY['order'::text, 'shipping_methods'::text, 'items'::text]))),
    CONSTRAINT promotion_application_method_type_check CHECK ((type = ANY (ARRAY['fixed'::text, 'percentage'::text])))
);


--
-- Name: promotion_campaign; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.promotion_campaign (
    id text NOT NULL,
    name text NOT NULL,
    description text,
    campaign_identifier text NOT NULL,
    starts_at timestamp with time zone,
    ends_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: promotion_campaign_budget; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.promotion_campaign_budget (
    id text NOT NULL,
    type text NOT NULL,
    campaign_id text NOT NULL,
    "limit" numeric,
    raw_limit jsonb,
    used numeric DEFAULT 0 NOT NULL,
    raw_used jsonb NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    currency_code text,
    attribute text,
    CONSTRAINT promotion_campaign_budget_type_check CHECK ((type = ANY (ARRAY['spend'::text, 'usage'::text, 'use_by_attribute'::text, 'spend_by_attribute'::text])))
);


--
-- Name: promotion_campaign_budget_usage; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.promotion_campaign_budget_usage (
    id text NOT NULL,
    attribute_value text NOT NULL,
    used numeric DEFAULT 0 NOT NULL,
    budget_id text NOT NULL,
    raw_used jsonb NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: promotion_promotion_rule; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.promotion_promotion_rule (
    promotion_id text NOT NULL,
    promotion_rule_id text NOT NULL
);


--
-- Name: promotion_rule; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.promotion_rule (
    id text NOT NULL,
    description text,
    attribute text NOT NULL,
    operator text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    CONSTRAINT promotion_rule_operator_check CHECK ((operator = ANY (ARRAY['gte'::text, 'lte'::text, 'gt'::text, 'lt'::text, 'eq'::text, 'ne'::text, 'in'::text])))
);


--
-- Name: promotion_rule_value; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.promotion_rule_value (
    id text NOT NULL,
    promotion_rule_id text NOT NULL,
    value text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: provider_identity; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.provider_identity (
    id text NOT NULL,
    entity_id text NOT NULL,
    provider text NOT NULL,
    auth_identity_id text NOT NULL,
    user_metadata jsonb,
    provider_metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: publishable_api_key_sales_channel; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.publishable_api_key_sales_channel (
    publishable_key_id character varying(255) NOT NULL,
    sales_channel_id character varying(255) NOT NULL,
    id character varying(255) NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: refund; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.refund (
    id text NOT NULL,
    amount numeric NOT NULL,
    raw_amount jsonb NOT NULL,
    payment_id text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    created_by text,
    metadata jsonb,
    refund_reason_id text,
    note text
);


--
-- Name: refund_reason; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.refund_reason (
    id text NOT NULL,
    label text NOT NULL,
    description text,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    code text NOT NULL
);


--
-- Name: region; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.region (
    id text NOT NULL,
    name text NOT NULL,
    currency_code text NOT NULL,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    automatic_taxes boolean DEFAULT true NOT NULL
);


--
-- Name: region_country; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.region_country (
    iso_2 text NOT NULL,
    iso_3 text NOT NULL,
    num_code text NOT NULL,
    name text NOT NULL,
    display_name text NOT NULL,
    region_id text,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: region_payment_provider; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.region_payment_provider (
    region_id character varying(255) NOT NULL,
    payment_provider_id character varying(255) NOT NULL,
    id character varying(255) NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: reservation_item; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.reservation_item (
    id text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    line_item_id text,
    location_id text NOT NULL,
    quantity numeric NOT NULL,
    external_id text,
    description text,
    created_by text,
    metadata jsonb,
    inventory_item_id text NOT NULL,
    allow_backorder boolean DEFAULT false,
    raw_quantity jsonb
);


--
-- Name: return; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.return (
    id text NOT NULL,
    order_id text NOT NULL,
    claim_id text,
    exchange_id text,
    order_version integer NOT NULL,
    display_id integer NOT NULL,
    status public.return_status_enum DEFAULT 'open'::public.return_status_enum NOT NULL,
    no_notification boolean,
    refund_amount numeric,
    raw_refund_amount jsonb,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    received_at timestamp with time zone,
    canceled_at timestamp with time zone,
    location_id text,
    requested_at timestamp with time zone,
    created_by text
);


--
-- Name: return_display_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.return_display_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: return_display_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.return_display_id_seq OWNED BY public.return.display_id;


--
-- Name: return_fulfillment; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.return_fulfillment (
    return_id character varying(255) NOT NULL,
    fulfillment_id character varying(255) NOT NULL,
    id character varying(255) NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: return_item; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.return_item (
    id text NOT NULL,
    return_id text NOT NULL,
    reason_id text,
    item_id text NOT NULL,
    quantity numeric NOT NULL,
    raw_quantity jsonb NOT NULL,
    received_quantity numeric DEFAULT 0 NOT NULL,
    raw_received_quantity jsonb DEFAULT '{"value": "0", "precision": 20}'::jsonb NOT NULL,
    note text,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    damaged_quantity numeric DEFAULT 0 NOT NULL,
    raw_damaged_quantity jsonb DEFAULT '{"value": "0", "precision": 20}'::jsonb NOT NULL
);


--
-- Name: return_reason; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.return_reason (
    id character varying NOT NULL,
    value character varying NOT NULL,
    label character varying NOT NULL,
    description character varying,
    metadata jsonb,
    parent_return_reason_id character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: sales_channel; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sales_channel (
    id text NOT NULL,
    name text NOT NULL,
    description text,
    is_disabled boolean DEFAULT false NOT NULL,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: sales_channel_stock_location; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sales_channel_stock_location (
    sales_channel_id character varying(255) NOT NULL,
    stock_location_id character varying(255) NOT NULL,
    id character varying(255) NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: script_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.script_migrations (
    id integer NOT NULL,
    script_name character varying(255) NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    finished_at timestamp with time zone
);


--
-- Name: script_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.script_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: script_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.script_migrations_id_seq OWNED BY public.script_migrations.id;


--
-- Name: service_zone; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.service_zone (
    id text NOT NULL,
    name text NOT NULL,
    metadata jsonb,
    fulfillment_set_id text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: shipping_option; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.shipping_option (
    id text NOT NULL,
    name text NOT NULL,
    price_type text DEFAULT 'flat'::text NOT NULL,
    service_zone_id text NOT NULL,
    shipping_profile_id text,
    provider_id text,
    data jsonb,
    metadata jsonb,
    shipping_option_type_id text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    CONSTRAINT shipping_option_price_type_check CHECK ((price_type = ANY (ARRAY['calculated'::text, 'flat'::text])))
);


--
-- Name: shipping_option_price_set; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.shipping_option_price_set (
    shipping_option_id character varying(255) NOT NULL,
    price_set_id character varying(255) NOT NULL,
    id character varying(255) NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: shipping_option_rule; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.shipping_option_rule (
    id text NOT NULL,
    attribute text NOT NULL,
    operator text NOT NULL,
    value jsonb,
    shipping_option_id text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    CONSTRAINT shipping_option_rule_operator_check CHECK ((operator = ANY (ARRAY['in'::text, 'eq'::text, 'ne'::text, 'gt'::text, 'gte'::text, 'lt'::text, 'lte'::text, 'nin'::text])))
);


--
-- Name: shipping_option_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.shipping_option_type (
    id text NOT NULL,
    label text NOT NULL,
    description text,
    code text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: shipping_profile; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.shipping_profile (
    id text NOT NULL,
    name text NOT NULL,
    type text NOT NULL,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: stock_location; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.stock_location (
    id text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    name text NOT NULL,
    address_id text,
    metadata jsonb
);


--
-- Name: stock_location_address; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.stock_location_address (
    id text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    address_1 text NOT NULL,
    address_2 text,
    company text,
    city text,
    country_code text NOT NULL,
    phone text,
    province text,
    postal_code text,
    metadata jsonb
);


--
-- Name: store; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.store (
    id text NOT NULL,
    name text DEFAULT 'Medusa Store'::text NOT NULL,
    default_sales_channel_id text,
    default_region_id text,
    default_location_id text,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: store_currency; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.store_currency (
    id text NOT NULL,
    currency_code text NOT NULL,
    is_default boolean DEFAULT false NOT NULL,
    store_id text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: store_locale; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.store_locale (
    id text NOT NULL,
    locale_code text NOT NULL,
    store_id text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: tax_provider; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tax_provider (
    id text NOT NULL,
    is_enabled boolean DEFAULT true NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: tax_rate; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tax_rate (
    id text NOT NULL,
    rate real,
    code text NOT NULL,
    name text NOT NULL,
    is_default boolean DEFAULT false NOT NULL,
    is_combinable boolean DEFAULT false NOT NULL,
    tax_region_id text NOT NULL,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    created_by text,
    deleted_at timestamp with time zone
);


--
-- Name: tax_rate_rule; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tax_rate_rule (
    id text NOT NULL,
    tax_rate_id text NOT NULL,
    reference_id text NOT NULL,
    reference text NOT NULL,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    created_by text,
    deleted_at timestamp with time zone
);


--
-- Name: tax_region; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tax_region (
    id text NOT NULL,
    provider_id text,
    country_code text NOT NULL,
    province_code text,
    parent_id text,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    created_by text,
    deleted_at timestamp with time zone,
    CONSTRAINT "CK_tax_region_country_top_level" CHECK (((parent_id IS NULL) OR (province_code IS NOT NULL))),
    CONSTRAINT "CK_tax_region_provider_top_level" CHECK (((parent_id IS NULL) OR (provider_id IS NULL)))
);


--
-- Name: translation; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.translation (
    id text NOT NULL,
    reference_id text NOT NULL,
    reference text NOT NULL,
    locale_code text NOT NULL,
    translations jsonb NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    translated_field_count integer DEFAULT 0 NOT NULL
);


--
-- Name: translation_settings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.translation_settings (
    id text NOT NULL,
    entity_type text NOT NULL,
    fields jsonb NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    is_active boolean DEFAULT true NOT NULL
);


--
-- Name: user; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."user" (
    id text NOT NULL,
    first_name text,
    last_name text,
    email text NOT NULL,
    avatar_url text,
    metadata jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: user_preference; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.user_preference (
    id text NOT NULL,
    user_id text NOT NULL,
    key text NOT NULL,
    value jsonb NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: user_rbac_role; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.user_rbac_role (
    user_id character varying(255) NOT NULL,
    rbac_role_id character varying(255) NOT NULL,
    id character varying(255) NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: view_configuration; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.view_configuration (
    id text NOT NULL,
    entity text NOT NULL,
    name text,
    user_id text,
    is_system_default boolean DEFAULT false NOT NULL,
    configuration jsonb NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: workflow_execution; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.workflow_execution (
    id character varying NOT NULL,
    workflow_id character varying NOT NULL,
    transaction_id character varying NOT NULL,
    execution jsonb,
    context jsonb,
    state character varying NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    retention_time integer,
    run_id text DEFAULT '01KP9XWRTR7J4N1S0QMT97ZH3Z'::text NOT NULL
);


--
-- Name: link_module_migrations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.link_module_migrations ALTER COLUMN id SET DEFAULT nextval('public.link_module_migrations_id_seq'::regclass);


--
-- Name: mikro_orm_migrations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mikro_orm_migrations ALTER COLUMN id SET DEFAULT nextval('public.mikro_orm_migrations_id_seq'::regclass);


--
-- Name: order display_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."order" ALTER COLUMN display_id SET DEFAULT nextval('public.order_display_id_seq'::regclass);


--
-- Name: order_change_action ordering; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_change_action ALTER COLUMN ordering SET DEFAULT nextval('public.order_change_action_ordering_seq'::regclass);


--
-- Name: order_claim display_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_claim ALTER COLUMN display_id SET DEFAULT nextval('public.order_claim_display_id_seq'::regclass);


--
-- Name: order_exchange display_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_exchange ALTER COLUMN display_id SET DEFAULT nextval('public.order_exchange_display_id_seq'::regclass);


--
-- Name: return display_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.return ALTER COLUMN display_id SET DEFAULT nextval('public.return_display_id_seq'::regclass);


--
-- Name: script_migrations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.script_migrations ALTER COLUMN id SET DEFAULT nextval('public.script_migrations_id_seq'::regclass);


--
-- Data for Name: account_holder; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.account_holder (id, provider_id, external_id, email, data, metadata, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: api_key; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.api_key (id, token, salt, redacted, title, type, last_used_at, created_by, created_at, revoked_by, revoked_at, updated_at, deleted_at) FROM stdin;
apk_01KP9XXJT7CJ77A1W9AKY04WW0	pk_da6e739612862f693eaf8531bc5522d09595539cc800c49949945e9742be3361		pk_da6***361	Default Publishable API Key	publishable	\N		2026-04-15 21:19:05.032-04	\N	\N	2026-04-15 21:19:05.032-04	\N
\.


--
-- Data for Name: application_method_buy_rules; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.application_method_buy_rules (application_method_id, promotion_rule_id) FROM stdin;
\.


--
-- Data for Name: application_method_target_rules; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.application_method_target_rules (application_method_id, promotion_rule_id) FROM stdin;
\.


--
-- Data for Name: auth_identity; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_identity (id, app_metadata, created_at, updated_at, deleted_at) FROM stdin;
authid_01KP9Y6YRZ2YERSTZG56GZ1XDJ	{"user_id": "user_01KP9Y6YMGRKGZA922G1NRSFWJ"}	2026-04-15 21:24:12.192-04	2026-04-15 21:24:12.201-04	\N
\.


--
-- Data for Name: banner; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.banner (id, title, description, image_url, link, link_text, is_active, "order", created_at, updated_at, deleted_at, image_data) FROM stdin;
01KQ58YZNVYFGHJJM56KR6Y9MH	Lançamento			/lancamentos		t	0	2026-04-26 12:11:34.972-04	2026-04-26 12:11:39.773-04	\N	data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gHYSUNDX1BST0ZJTEUAAQEAAAHIAAAAAAQwAABtbnRyUkdCIFhZWiAH4AABAAEAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAACRyWFlaAAABFAAAABRnWFlaAAABKAAAABRiWFlaAAABPAAAABR3dHB0AAABUAAAABRyVFJDAAABZAAAAChnVFJDAAABZAAAAChiVFJDAAABZAAAAChjcHJ0AAABjAAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAAgAAAAcAHMAUgBHAEJYWVogAAAAAAAAb6IAADj1AAADkFhZWiAAAAAAAABimQAAt4UAABjaWFlaIAAAAAAAACSgAAAPhAAAts9YWVogAAAAAAAA9tYAAQAAAADTLXBhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABtbHVjAAAAAAAAAAEAAAAMZW5VUwAAACAAAAAcAEcAbwBvAGcAbABlACAASQBuAGMALgAgADIAMAAxADb/2wBDAA0JCgsKCA0LCgsODg0PEyAVExISEyccHhcgLikxMC4pLSwzOko+MzZGNywtQFdBRkxOUlNSMj5aYVpQYEpRUk//2wBDAQ4ODhMREyYVFSZPNS01T09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0//wAARCAIVAyADASIAAhEBAxEB/8QAGwABAAIDAQEAAAAAAAAAAAAAAAEDAgQFBgf/xABMEAACAQMCAwUEBgUJBwMEAwAAAQIDBBEhMQUSQQYiUWFxEzKBsRQzkaHB0SNCUuHwFSQ1YnJzgpKyFiU0Q1NjojZ08Qdkk8ImVIP/xAAYAQEBAQEBAAAAAAAAAAAAAAAAAQIDBP/EACMRAQEBAQADAAEEAwEAAAAAAAABEQISITEDEzJBUTNxgWH/2gAMAwEAAhEDEQA/APHgAAAAAAAAAAAABJBIAAAAAAAAAAgAAAAAAkEEgAAAAAAAAAAAAAAAAAAAAAAAAACQAAAAAASAAAAAkgASAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABO+EAwA/P5ABnyJWOuxGNMhbAVAAAAAAAAAAAAAJBBIAAAQSAAAAAAAQAAAAAkAAAAAAAAAAAAAAJAgEgCASAIBIAgEgAAAABIEEgAAAAAAEkAASAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACfEAnyApAAAAAAAAAAAAACSCQAAAAAACCQBBJAAAACSCQAAAAAAAABJAAkEEgAQSAAAAAAAAAAAAAkAAAAAAAAAAABIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEj0I9SfT4AVAgkAAAAAAAAAAABJAAkAAAAAAAAAgAAAJBBIAAAAAAAAAAASQCQIJAAAAAAAAAAAAASiCQAAAAAAAABJAAkEEgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAASE9MMgkCojqABIAAAAAAAAAAAAASQAJAAAgkAQCSAAAAEgAAAAAAAAAASQBIAAAAAAAAAAAAAAABJBIAAAAAAAAAEgCCQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACJT8SCc+AFKJ6kIASCCQAAAAAAAAAAAAAACSAJBBIAAAQCSAJJjGU5KME5SeiS6m3Z8NubrE/ZTjQyuapy6JeJ7rh3AbHhyU4U/aTlqpz1eCW4sjxV/wLifD4KdzazUGs80e8l6tbHOPssJRqU1h6nD4l2W4beNyVF0Kn7VHTPqtiTpcfNgenuuxl1CT+jXNKpHpzpxf4nPq9meL0s/zVTS6wnF5+Gcl2JjkA3nwbia3sLj/wDGzH+SuI//ANG4/wDxsuo0wby4NxOW1hcf5GbVLszxeq1/NeRPrOcVj78k2GOP1JR6KHZC9zmtXowXXlzJmVTgdnZRzVnOtLwfdX3Dyi5XnaVKdWahTi5SfRG7e8GvrK2p3FajmjNZ54PKXk/A6lvTXNGnSpqKk0tD26cLehToSScFDlaa08MGfJcfJQe84n2StLylO54fJUKktYRz3H+WTxl7w+8sKnJd286TzhNrR+j2ZqXUsawAKgQSQAJIJAAACQAAAAAAASQSQAJAAAAAAAAAAAypwnUmoU4ylJ7KKy2dzh3Za8uWp3WLem9cPWT/ACJbg4dOnOrNQpxcpPZJZNu54TeW1H206fND9Zx15fU9haULbhdRwnbQ9m9Paxjr8Ts06dGpBTpOMovrEz5NY+Ug95xPsraXTdS3f0eq/wBlZi/h0+B5i87PcTtJa27qw6Spd5fZuallTHKBM4yhJxnFxkt01hogqAAAAFlC3r3EuWhRqVH/AFItgVg79j2T4hcYlXcLeD35nmWPRHpeH9n7Dhco1YwdaunpOeuH5LoZvUXHgrixu7alCrcW1WlCp7rnFrJQfWbinRvreVvXoxqwlvGWx5Li/Y2rSg63DJusllulLSS9PEToseTBlVp1KNSVOrCUJx0cZLDRiaQAAAAAAAAAAAAAAAAAAAAAAAACxkE5eMZApAABAIlAOoAQAAAAAAAAAAAACQABnRo1biqqVGEpzlskgMCyhb1rmp7OhSnUl4RWT0/CuyTmlU4hN6/8uD+b/I9Ra2NC0pqnb0Y04rwRm9Ljx9h2TuKuJ3lRUY/sx1l+SPQ2XAeH2aTjQjOS/Wn3mdblGhm21rGPs4Tg6bSxJYaMbDLoztKjbnReE31j0Znr0Na4lOhcQuoLPJ3ZpdYkG1HnjmMXh5ysmcbzl7teLj59CZ8tWmqtJpxeqaMotVYa4ytwJVSjVWYyTXkyHTj0wa9S2ptt8iT8VoYKnKOkas18c/MDZ9mkQ4FPfx9bL7iE5/8AVn9i/IC3GSMcrzkqnJ41qSNS4n3GnOf+Zr5AX3VWMY55jzF3W9rWlqml8Sy9mpycVmSx1eSqhQlVqxp0o956IK3+z9tKvde3lHuUtderO1dc1xcQtobzeZPwSMrajCytFCPRZk/FmVnDkhO5n79XSHlH94RfWn+pDSMdEkVtQq03SuKcatOW8ZrKZDepKA4PE+x1pc5qcNqfR6j19nLWD9Oq+88jxHhV9wyfLeUJQTeFPeMvRn0+LwZtxqQdOrCM4PRxksplnSY+QkHveKdjrS6zU4dNW1RvLg9YP8V/Gh47iHDLzhtX2d5QlTb92W8ZejNy6mNQEAqJAAAkgkAAAAAAAACQAAAAAGVOnOrUUKcXKUtEkstno+F9mfaYqX0n/dxfzf5Etwx563t61zU9nb0p1JeEVk9Fw/snOWJ8Qq+zX/Tg8v4s9Pb21K2pqnQpwpxXSKwXxjkzemsa1nY2ljDltaEYeL3b+Jsttoz5BymVV4i04zimnumjT+h1Lao6ljVcPGEtYs6HJkezQGrDiTp4V5RlTf7a1ib1KtQrx5qVSE15Mr9mmsPYpnYW83l00n4x7r+4DarWtCukq1GnUS254pmpLgfDJ+9YW/wgkSrarBYpXVVY2UnzfMySv44SuKLX9am9fvA15dm+Dt62MPhKS/EPs9wmPu2VL45Zvc1x19k/tI5q/hS+8aNH+SOH05d2zoevs0bNOEaMeWKUYrolhGcnVctZQx1Sjr9uTBxk92/kBYppbISedZMqUWtn8RiTAs9pjSKwsFkKz66mvhkpNATfWNlxOny3dCM3jSW0o+jPK8S7G16fNU4dWVaHSnPSX27P7j1XNJdDONSRZbDHy25tbi0q+yuaM6U/CSwVH1itSoXVJ07ilCrB/qyWTzXFOx1KcXU4XUcJJZ9lN5T9H0+JqdM48YCy4t61rWlRuKcqdSO8ZLDKzSAAAAAAAAAAAAAAAAAAAInBBOQKQAARKIRKAglbEErYCMkkEoAAAAAAAAASDb4dYVL6tyru04+/Pw/eA4dw+rf1uWHdgvem9l+895wXhVta0uW3Scv1m3mT9RYcNp21OhGnHlinnBnCsqPG5KHu5Sa9TnbrcjqzXsZJNZi+pK5WtC+tDnhg1knHQgSRW0ZtkIDEwmsproXYMJLxA07au7Gq6VTW3m9P6rN+cHFqpSeUzWq04VIuMllMppVq1g+Vp1bd9OsQOlGpGqsbS8DCUcGEZUbmHtKE0/mhzTjpLVAYvQrnNIzk0+rRTUpTl7k4/ECmrWwnqcu8uXstzpTsJz96uo+kSaPCrWnrNOrL+s9PsCuHbWle7ninF4zrJ7I9BY2VGxp93vVGu9JmyuWKUYxSXRIez5tar7vguoRjGDuZZnpQi9f6/l6FtSfNLyInUzhJYS2RhkAZZIIbAzTMlJGs6mHge1wsgbafgTVp0rmjKjc0o1aUt4yWTWoVVPqbsAPEcf7JTtoTuuFuVSitZUnrKC8vFff6nlT7FPud5aHju1vAYOE+KWEMY1r04r/yX4/abnSWPHAgk0yAEgAAAAAAkAAAABfaWlW7q8lJesnsibGyq3tb2dJafrPwR7Tg/C4UpRpRjpDWXmzNuLIo4RwmnRmqdNZnJd6T3Oxb1qSv6lkliUEnnxL+H00rmtLG2iOG6jXaKtUT2f5GGnflHDJiiamsvUIAAyNgMgYqROQJyMkPBAByGWCAJyxqBkB6gjIzoBGg0I9QBORoYt4McsCx7GJg5BywBYpY1M41MYeTUq1OSm5GVKXPKCWzAca4NbcXtuWolCsl+jqpar18UfN720rWN1O2uYctSDw/PzXkfV7mXs4Rl4M4vajg8eK8P+kW8c3VFZjhazj1j+RrmpY+dgbbg2yAAAAAAAAAAAAAAAAEsgkCkAAESiESgIJWxBK2AglbEDOgDqOoAEgjqSgCJIQA2LK0qXlzGjTW/vPwR7vh9hRo20aNOOOVmp2U4V7Gj7arH9JU1eei6I6VGfs72cHs2c+rrcjpVcU6Sl4I83a1nV4lUnvmWUdnitfktJeh57hetzl7sivdrWK9CqcfIsh7kfQioEadTQwi8smtLBhR1eQNhIiUdDOCJmgNSS1MehZMryBVK3g5c9NypT/agzKNa5g8VIQrR8U+V/YZ7k48wMVcUm8ShUg/OOn2rQKvQz9Ysk4MWkwM/aU2sp5S8E2S5R6Iq5cdWSsgZ8+NsGLl5kJE4Aha+pkkEgBJD2IzqZPYDn1anLWwTXqKNHzZTe6VkyqpNzwgra4dUfNyvxO3DVpHAsu7XR36GskAvJ8kMGvw6SrRnGaUovKaezRTxStiTin5F/CIctHL6hHz7tPweXCeJNQT+jVe9Sfh4x+H5HHPqXG+Hx4xw6taYXtY9+jJ9Jfxp8T5dKMoTlCaalF4afRnSXWbEAYJKh00AAAkAAAABnRpSrVoUqazKbwjA7vZ201+kzWsnyQ9Or/D7SW4seh4bY0rC1hGllTay5Y95+LO1Y8k4yqRWJPdGnfxVOEcbYRhw+4xVxnSej9Tm06NBezVWR5WjP2nE6jzu2epu5qnbTfijydi/wCfZ8WFenpz56VOWd4otRpWVTmoRj1i2jeSCIZizNowkBjklPJgSmBYiTFMyAggyZiAAAEAkhsCMAADF7EPYyexiwK2yuUsGUs5NarLAFfEK2LblTwzb4NP26g/A417Uysb+R1ezW88hXWv/wDhpIp4dXzBRb1RZfP9E0c6hP2U0+gR53tjwT6JcPiFtH9BVffSXuS/JnmD65KFK9tZ0a0VOFRYaZ8045wqpwm/lRll05a05eK/M3zWbHOABpAAAAAAAAAAAAAAJWFuiCegFIAAIlEIkCB0AAAAAAAAAAk6/Z7hzvbxVJx/RUnl+b8Dl0KM7ivCjSWZzeEfROEWELK1p0oLbd+LM9XFkdO1gqcVjwOXcd2/m10kdmKxE4l083VR+ZhtVx2rmjGKe5qcIivbx8TPicueHoTwaObiKfiB7KHuL0MajwjNe6vQorz0YRo15ZeC2hHEUU45pm3SjsBdFaGM9ixbGE9gNWoa82bFQ1qgEwlktRrQepsR2AYGDLcY0AwwMGWNQBjgEsAQHsDGb0AiOs9CyWxhSXUznogOVfrvJmvBZZs3qKaawgq230ro9BbaRb8EefofXxO7F8llVl4QfyA49xP212+qR3LSHs7f4HCso89VSfV5O/J8tu/QDVt6n88ksnju3HCvovEI31KKVK597HSfX7d/tPT2s83j9Te4vw+HFOGVrSeE5x7sse7JbMsuJY+RLckyq0p0K06NWLjOnJxkn0aMTowAEgAAAAAFtrQnc3EKNNazePRdWezsKMY1oQpr9HTWInG4Ba+zoTu5rvT7sPTq/wCPA9Fw6KU9THVakdC/hz2eVvE4sKrpzzlpdcHoZx5qEo+KPNV8QqyS2zoZadm8uPa8Nc1vjDPPWTauVnfJswuH7CdLOkloatunGumB3LB4r1IeDOrFaHHs3/P5LxWTtR2AxkVSLpFMkEYBAAZxZmitGaAkh6MkAYgMAQCGwAwAtwBD2MGZsrk9AKKrwjTrTNivLBzq09GFatd80judm3ickcKSzL4nc7PaVGB07/w8Tm1VhM6d97y9DmVHkIv4dc4nyNlvH+FQ4vw6VPRVY96nLwf5M48qjo14yWh6WzqqrSi/FAfIqtOdGrKlVi4zg3GUXumYnsu3HBuVrilvHR4jWS+6X4fYeNOkusUABQAAAAAAAAAAAAAVAAAAAAAAAAAAAAB0ODcPd/eKLT9lDWb/AAA7nZThfLH6ZWj3pruLwXieupQKbakqdNRSSwbUEcrdbZz0gzz9aWbipnxO9WeKbPOVn+mk/MKou9YNs2eCJOsn4NYNevrTNng7SnFv9oD1v6ppXD1wbPN+jNSXfmEY0oa5NmCwYRjgs2QGeTCb0IyRICioatQ2ahrVEBUtzYps1c6l1NgbMScGMGZgRgxe5kQBix0IZIEMqluZyZhHWQF0FoKmxlHRGFTYDnXaKIbGxdGtB6hVtD65HZuMrhdXHVJfazj231yOzdd3hk/PHzA0LFL2iwdW6lyW5zOHyi6yj1N3iU+WhjyA59k/5yn4s7reIpnn7N/pqZ3pfVgeJ7d8K5K0OJ0YvlqYhVx0l0fx2+B5E+u3VrS4hYVbSt7lWOPTwZ8ovLWrZXlW2rrE6UnF/mb5rFikAk0gAABbaW87q5p0IbzePRdWVHouzlnyUZXk13p92nnw6sluLHVdKNKjGFNYhBcsV5G5Y+8g6XNb4W5FinGWGc23Y/VPM3qSupw88o9K/qzzXFF/O5PyCNWOUs/Anaaa2MqS5qTTRi/d84sK69lrxFY/YR3MaHD4as36f9RP7jvdAMJGhxO9hYWsq01zPaMV+szfkeZ7XN8trHOj5m19hLcjXE8usc6p2iv51G4eyjHpFRz951eD8a+nVPo9eMY1sZTjtL4HI4Ta0riz4hOpTUpwp9zTZ4e32Ip4VGrS4rbT9nNfpEn3X10M7XfrnmyyT47XFuM3NjeujShSceVPvJt5+0049pryM1zUqDXVJNffkp7SY/lZ5xpCJhc21KPA7O4jDFScpRk/HV4+Qtpzzz4zY9Zw2+p8QtVVprDTxKL6M4Fx2hvaVerCKo4hNpZj+8u7JSftLqPRqL+ZxLzW8r5X/Ml8xbcTnieVj2F7xCNnw+NxUXNKSWIrTLaPOVO0N/KTcZU4R8FE3e0nN9AscbY+/COXwunQrUL6FWKnVVFyprGuV4fcLbpxzzOdsdnhfHHdqdKvCMa0YuUWtpY8jnf7S33Wlb4/sy/M1OF0qq4lbv2U0nPEsxez0f3HY41wyyt+F1atG3UJrlw034ovvCzjnrM+tL/aa+X/ACqH+WX5nT4RxerdxuKl37KFOjFSzFNY38/I4PBaNO44pSpVoKcJJ5TzrhM7/F7S3suC3TtaSpuaipY695fmJqdzmXxxzLrtHczqfzaEKdPOnMssWnaOp7RQvIRcH+vHRr1RpcHoU6/FaNKtBShLOYvyizT4hCNK/uKdNYjCpJJeSZJa34c/tx6+vJYyno+uTnVZak2NSU+E0HJ5fLj7HgwnthG3lvpX1R2+AfWJnFSO1wLSaCOpxF8qk/I5U9KcfM6XF3im/M5tT6qIVp3y/RJrc6fA7hyoqL3RoXazQQ4NP2dVxA9TVp07ihOlVipQnFxkn1TPlfHeFz4TxKpbyy6b71OT/Wj/ABofUqM8o5nabhEeLcPcYJfSKWZUn4vw+JZcSx8wBMouMnGSaaeGn0IOjAAAAAAAAAAAAAAqAAAAAAAAAAAAATCEqk4wgsyk8JeZ7/gfDo2VrGGjk9ZPxZwezHDnKf0uon4U/Tq/wPZ0o8qSRjqtSLYothsVxRbEyqu5eKbPOVHmb9T0F5LFJ+h51vIVFT3C6ybhGMv6xTLVF1qv0cUv2gPSQqqpRWGSo4NO22Rux1CMkiJMl6IqlLUDJMSehjEyYFMzXqGxM16gGs9GZ05IxktWcbiiT4nbY53JxaUUtOuq/HyI1zNr0UK1JNL2sMvZcy1LI16MsJVYNvRYktTyVpZVbl26UJQSeXJxfSMPvymXUras5WL9lNqEu/ik48vej9r8ya3+nP7eodWmpOPtI8yWWs6ow9rTfLy1IPm93Elr6HC4hSrfyvdVI0qjTpSUZRi3l+zRRbx9hc0/pFnWl7NSVNJPMWpN509S6eEx6OM41FmE1JeKeTJ7HL7PwqUrOdOpTnBqSeJLxitftydR7FY6mXFdRikYTeWWUgyuRhPYzWxXU2A0bnBrLSRs3BrdQq61+vR177Thr9Ucm0+vR1eJf0ZhdZIDQsdbim+uTa4xPEMFFgv5xFdFqV8Xqc1WMV4gRafXUkd2p9Wjh2cc3VNeB2qzxBARSZ5Xt3wvmhT4nRiu7iFbHh0f4fYeopeJZXoU7u1q29aPNCpFxkvUsuJXx0k2OIWdTh9/WtK3vUpYz4ro/sNY6MJAAF1pbzu7qnQp7zeM+C6s9tCnCmqdGksQgkkjjdmbTko1L2a1l3Kfp1Z3baPNNtmOq1ItjUccIvpxi5KUVgolDMzYorBlW0/qjz3E9arfkegf1bPP3/1jCta1ejWCUu9KL6kW3vsmon7WKW7eEB1uFxxeyX7MVH7DuM4nCHzXdWT6s7jCMJI8x2u961XlL8D1EjzHa737V46S/Az18dPxfvivsmtLr1j/APseiwec7OVY21rf15xbjBRbS36m/a8et7q5p0IUaqlUeE3gS+mvyc29WxxO0azxeab/AFF8jC7r03wKxoRlFzUpSaT21ePmZ9o/6ZqJdIx+RzqlCdOlRrSxy1U3F+jwzN+u3M3mPQ9koSf0mo9I92Pq9f3HEu8fTK2n/Ml8z0/ZmvCrw32cIRi6UuV8v63meYvP+Mr/AN5L5i/E4u91629sY3/CYUtpqEZQfg8Hjf09jeJrNOtTl16HsbvidPh1raupTlP2kdOXGmEvzOXe1LbjdrXqUaU4VreHMpPGWtdDVY/HbPvx0OFcTp8Qo5xyVY+/D8V5GHaH+ha/+H/Ujy3CriVrxGjUWccyjLzT0PUdof6Gr+sf9SLvpnrjx7mOD2df++aPj3v9LPRdoV/uWuv7P+pHnezv9M0fSW39lnou0H9C1/8AD/qRJ8a/J/kjzfA3/vq3/wAX+lmlxX+k7r+9l8za4LL/AHzb511f+lmrxbTilzp/zH8yR0v7v+O1w7+iaPo/mzGWfHQz4cv90UPR/Nhr4G3l6+sUvI7HBtJJnJSOvwjdBG7xh91I0Jv9Gjd4ztA0HqkgMa6zSRr2UXCtJ+Cybddd1IroxxCpIDs2tZOKeTfi+aJ5+1m+Va7HYtquVjIR4vtrwf6NcriNCOKVZ4qJL3Z+Px+Z5U+w3lrSvbSrb11mnUjyyPlHE7Crw2/qWtdawej/AGl0Zvms2NUAGkAAAAAAAAAABUAAAAAAMAAAANrh1nK9uo01lQWs34I1Um2klls9jwbh/wBFt4waXtZ4dR/h8CW4smuxYUI06KUYqKSwkuiN+KMKUOWKRclg5tMoozMUZAad+8UZehwTtcTeKEvQ4nQKdDYtl3Y+bZrG5bLu0/j8wOtb7I3Io1bdaI2loEJvQob1LJvQpzqBbAzZhAzYFMyiZsTNeYGvMxjuZzMFo9gNmkzYi9DVps2IvQCZMqnCEpxnKKcoZ5X4FjZiFEJbGRhN6BGvJ6l1PYob7xfT2Au6FdTYs6FdTYDQuGa7L7jcoYVfZa1zrcQ/o5f2kcqxX6U6nE9OGr+0gNKwkoynJ9EalWXtrtvpEmNb2VCfi9ERRjyUnJ7sDc4dHmu3LpFHRuZ4WDU4ZHlpufiZ1pZmBtUNYFyeGU2/uFrCPLdu+F+1tocSpLvUu5USW8Xs/g/meGPsdSnCvQnRqx5oVIuMk+qZ8s45wupwjiU7eWXTfepS/aj+Zvms2OeW2tvO6uqdCn705Y9PMqPSdl7Plp1L6olr3Kf4v8PtLbhHXcIUKMKFJYhCKijZt04rY149+r6G9T1SObbKEMvLRfCBEUWxCIlpFnnr15ryPRT91nnbv/iJ+oFFLSZco811T/tJ/ZqVQ94vp4+kRfhFv7grf4LrWqPzO4cPgespvxZ3QjFnA7VW06trSrwi37JtSx0Txr9x35HG4/fXFjSpSocmJtxkpLP8dSX43+PfKY8rQu6tChXo0+XlrpKWd9DodnLWdXiKr47lJNt+bWMF9edD+RaF/wDRLd151OV4h3d3026FtHid1T4FO5gqMXGqoRjGGFjHh8TEjv1bZcjm9o1/vit6R+SF7Tz2f4fUWMRlUj9sm/wNx3krjhVe+q29tUrwqqOZUk9MIusrqNzwS5nXt7d/R8uEfZ9xPHh6tlNsk/8AFXZGolUuaWdWoyS9M/mce8/4uvv9ZL5nX4VfVHQvK9O3tqTo0spwp4eemfsNH+UqtRt/RLSUm8t+wTJfizfK11+P2tStwq2q04uXso95eCaWv3HnrW9q2Ua0aKjitDlfMtj2cL6lQ4ZQuLySpqcYp4i98bYOVcVeztefNNQz/VjKPyLYxx16yxwOF20rriFGEVopKUn4JPU9P2g/oav/AIf9SMLe/wCDWsOW3q0qcfKLyyyfEuGXK9hUr05qbS5Wnq8liddW9S58ee7Ot/yzR8Fzf6Wel4pyXdrc2VOWa3s+bl18cr5GX0ChSXPZ0aNKsvdm4beP3HP9hfPilTF1CnUdJNyUOZNZ2wx8S9Tq+TzFvXqWt3GtGK56eXyy02WxXcVp3VzOq13qkm8LzPT8Z4fQVvWu8P22Mtp4Te2xTdUrDhKc6VOLums0/aJy66+Qb/Ul9xs2tvK34fRpS96MdV4MoktTbpXVG7pOVGfNy45sJrBrzWGzTz377V4OvwrocnB1uFrYDb4z7lPzNCCzNeR0OMrNO39WaVNYi2BhU1kTjltvVkPXLLKqxTjEDClojetqmGtTQjoW0ptSA71OSlE4Xazg38pWDq0Y5uaCzHC1nHrH8jo21bDw2byeVkRHxgHpu2fBlZ3avreGKFd95JaRn+/8zzJ0l1gABQAAAAAAABUAABJAAkEAACSAO52fsFOX0uqlyxeKafj4nrrWjy4lvk8lwLiEY01aVXh57j8fI7tK6qW8swlp4PY59fW58egiZo0rW/pXGIt8k/B7P0Ztp4eGQWJEshMlvQDmcVf6GRx+h1eLv9C8eJyVsFQmb1qtKfp+JoZ1wdO0WeT0A6tDYvyUUtFqZOQQmzBasSeRDcC6BmzGGxkwKZlEzYma8wNeZg9zObK8gWweC+MtDWiy6LAuySYIsQEFdR6FrKKr0A11rM2qexqw942obAW9CufUs6FdQDn19yll1fcpewVfZfWnU4o0uGJv9pHKsvrkdPi6zwr/ABIDhQTq1EuiZtVtIpLYwtUiyqsxA3bSajRSJksyTNejLEEi5SCN6i9NC5GlRq5eCyd5RpaOXM/COoG3F6nE7Y8NV/weVWCXtrbM4vxj+svs1+BfV4lUw/ZwUfN6nlO03F604/RFWk3LWeHol4Fn0rz1rQndXFOhT96pLCPdqnC3t4UKaxCnFJHieF3TtL2NXKS91vwz1PVwrzlFS5uZP7y9Jy26MW38TpUaaUVujlUbv2bxOCa8jqWtzRqpKnUWf2XozLTYUQWJeRi0EVzfdPP3n/Ez9TvVNEzg3mtxMCiPvGxDRzl4QKI7ovlpb1X4pIK3+BLEG/M7iOLwRYpI7aCMZbHB7UQlPhinFfV1E36bfNo709jlcbjz8KuY4ziGcemv4Evxri51HnatTPZu3gn/AM+Xyf5mzVjydkaW3eq5+9mhb06l1wqNKlHmdOtKctUklyrdner2k58HtbSdOSjiLbhJN5xl/iYkd+rJn+3O4fTdXs1fR6qXN9iT/A17SaXZ/iEevND73+43lC5sKNe1pW/ckmpxlJNvm0yn8Uc6FKpSsrmg45lUlBrHVLLYWXd/22+EU0uA8QqftLGfRfvMezl3b2latK4qKClFJN511NyyjGn2XrxclzyjNyi3qum3wOPw+2t68pq7qOksd1uSin8Wh/R6s616TjNeirW0rz71H20ZaLOU4s4WeCtrnU8czbeJbY2/jyPQW97aRp07bmUoQhFKT1T0MbirwreqraWP6sWzTlzc9e3mOfh0KtXk5ZU5UUsTjLKl1x5l0qvDJOq6Cj7SpVg6eIe6ubVLTTQ66p29w2rThdKaWnPOlGMSJ2dvQqQhWdGFVpyiqFCPTwePwDflHVyaD/pmTz/yNviYXde1o0nUqQnU77i4upJ65a2z5GhSu7OvcKMbaUYt4505c2MdFkWufPNbXHG/5Mq4M+JpPh9ZPZr8Tl1nKvSqwftIOEfcnUbb16RTK1xGvOjKjKaqpvHO44eENanF9O4vqY/2UaVXSQhxHCUalJqKaipLVbb52FbV5Wq6FjnZZ9Vs63C+hyDs8L2RUbnFI81Ki/Bs0J92CR0+Ia0afqcurrJIIQjlpGVb3kZU1qY1NZgYJELRliWhi1qBsUpnQt62VhnIjLBtUZ9cgb1/Z0uIWNW1rLMKkcej6M+T3trVsrurbV44qU5Yf5n0264vQsaLnXmkl4vc8H2j4tS4veQrUrdU+SPK551mvM1ylcgAG2QAAAAAAAFQAAAAAAABJAAk61hxR4VG5l5Kb/E5JBLNNewhPqmdO04jKCUK3fh96PEWd/Ut2oyzOn4eHod23uYV4c9KXMuvivUxZjcr2NGcKsFOlLmj8jKUsI83a3c6M1KEsP5nYo3kLiPSM/DxINXi0v0a9TmLY2+LT0gvM04PKAlHVsFlw9DlpZZ1bLu1ILyQV1OXCMXuXfqlMwitmUNzEzhuBfAyexESZbAUzNeobEzXqAa02Vv1LJmAVMWXQZSuhZHZBF8S1FNMuWwESNaszZkatXcDCnqzbhsa1JG1EDIrqbMs6FdTYDQr7lD2Lq+5TLYKtsvrkdTi2vC/8SOXY/XHV4nrwxL+sgOVbrQsqLutEUViJjPPP1Asj3Y6h1VT9577JbkPMY+fyNZ6z8XncC91qk017sfBdQlhFFzd21lS57irGL6R6v0R5viPH69zmnbZo0vH9Z/kWTUtdPjHGadrF0aDU62z8I/vPKTnKpOU5ycpS1bfUgG5MZt0OnwzijtsUq2ZUuj6x/ccwFs1HsY1I1IKUGpReqaG2qPLWd7WtJdx5h1i9md60vaN1HuSxP8AZe5zsxuXXatOK1qLUa36WHjnvI7VGtSuafPRmpLquq9Ty8djO3q1KNZTpSakvvIPQ11hM8/cPNzNHXjdxuKT/Vmlqjj1O9cSfUKxii2s8Wj82IRzq9EimdzC4tFOl7nO4p+OOoHb4OsUonYRyeErFNHWWwGM9jncQcXQlTlyqNRODctkn4m7dTjGlJzmoLGr8Eecv7y1UZL6TKpFv3Em1p/HiS1eZtbHDbOHCq03FxqtxTk3pyenib1Svd16kIW8pcso96Uaekdsavf95xVxKlV79C1dSce9zSnLCxszeozu6nNUc3VhLCXLHlUpeKy9vy6Eb6l+1sfyRWqS9tXqN1scrfPhY6669OnnuWU+FW9souHPUnGLWIPCx1XXG/qW29ncLEqk011jJ5+P8LB0YKKilDGFpoXGLa4zs5Qi39Ft6Dxlcq55LX9pppfYzGpbVZSlNV6jUMZfM45a31X4fd17UoRnjmWceJVKnLnWmUn3Uv40+Aw156pYwi3Ou1FSeOebzJy8vHpvoXcP4VbuCua9OU5a8sZyy/jj5HUnZUp1FWuO9OOqSbwvzKqlzyVUlzqCwkkl9niMXyuObxis1ShRoSVOo5cvKvTGdNdEcaVatVm1GtOoowz3ZJY38U2929OnU3eNWt9XqRnR5pw95aJNN+OPQ506Do28oypONalhvMWnjd65/eZv114kxXcufsaSU3NuWJQz+s/JrpkppuSuIwj3Jr9V9Z7aprGuStVKtFxcs4zmWN8PBHtalSsqk0pVFiDUtM50+SI64tgniqk405uLcnzYxq/gaeefCwt9dMYNmtRf0qVOMXhvSKll9cZf4l9rbWlCk5XFRqq3ypPReD6BNxrzlRjCCgsx7rk28yWrTS+Z1rVTjZwU8519564yct0XGtFRhUTSzFx1eVqs6G5YV61ZVY1tORpJP3via5c/y/G2dnhnuo43gdrhvuo04NvilanSjbRnLldSpyx83jY0Jr9Ma/bvK4NbTi2pRuFhrp3ZGHCbz+UbSnWfvpctRea/PcuetR0I6Fb94u2TKXuQSiGjJI1b6/trCnz3FRJvaC1k/gBdg5PEu0FG0zStMVq3WX6sfzOHxLjdzfc0Iv2VF6ckXq/VnMNTn+0tXXV1Xu6vtLio5y8+hSAbZAAAAAAAAAABUCABIIJAAAAAABJAAkypValGanSk4yXgYADuWfFac8QucQl+10f5HYo1NFKMsp6po8WbFteXFq80ajS/Zeq+wzeWpXrrxzr04yWrjua1LzNSz49SeI3MHTfWUdV+ZuVbuzVN3EK9Nw6pPXPoZyrq2tXp2lvKvV2WiXi/A6HD63toUK2OX2kIyxnbKPD8Qvql7Vy+7Tj7kfA9lwt8trar/tR+SFmQl16KLzAwmY0pd1CTyQY4LKa1MUWQAtihLYmKEtgKJmvUL6hrzA156lZZMw+IExLImCLIoC6mW9DCCwWAYSNapubEiie4CktTZiUUlqXrYCSqpsWvYpqAaFd6lUvdLK71K5bBV1h9ab3HruFnwmFSqnyOrGLx0znU0rD6xmPbf/03D++j8mIlWUJRqRUoNSi1lNbNGXLiecHkuB8dXD6cqNzCdSnvDlxmPlr0M7/tRc1242lNUItY5nrL9xfGpr0PEL62soZr1UnuoL3n8DzF72gr1W42sfZRf6z1l+45E5zqTc6kpSk93J5bMTU5TWU5zqTc6kpSk923lmIBpEkEkAAAAJTcWnFtNbNEADqWnGKlJclwueP7XVfmdyyuKVxDnozUn4dUePM6dSdKanTm4yXVPBm8rK91BNNNaMqdNqu0+uqOLZdoZQSjd0+f+tDR/YbXEOOW8rR/RZt1paLRrl8zOVrY1+OcTWHZ20k1tUkuvkjY4escJtV4uT+9nmfN7nqbWPLY2cf+2n9upbMiT3XpeF+4jrLY5PDfcR1lsZVq365qPKo8ze3keep8Mbn7SvCKbei6Lza/A9LWejNGolJ6ks1qdWfGNvb0IQ5afK9uZyjjJjG5nUm4Wskqe3t5xWF4KK6mtOM76q6FHu0o6ylpiXw8PmdextlTjFR0wsc3V+nggfPpSsKM9a9OVXrzVpczfw6FVOwtFcXTdtT95KGY4SXKtn+R020k29ClRzUk4LHNvL7v4wXE2ubO1uaEou3uJqWdOZvEnjbG33EWnFqqq+wvIONXXRrGdsY8Pj9p1Z048jxv45x/8HA4tYVq8nVg26kFhRSwvTz0/Ml9NSy+q3rviVlCknXUlLOVDruUu9VTuwsajj1c4pZ+1nDs7+FrTqTdCHtXJyhUb28np/CYue01STUbeDi1vy7fAmt/p3+I7sLqpUoNwsanKny49ok/DTU515bWk6sHXta1BuXelKPMmsPKys4OFT45fRjyOs+Xmy0nh/bgvpdoqntYSrpyjFvGrztjf4+AXw6javuFVK9KpUoVaXsF9W1PKcfBfYcGlb1ZXEWoSfN7raxl/E9PDiVrdU+eLSrS25E1KT8Ma5+0pu6Va6jClUhTpV4xT5VhKSxnR/h9+CLz1Z6rjKbp2c6ajKEs9/RpyT3XwZhNT5qbxJ03LRy95y3fx1M7z2jrpRlJZxGTk3jbZ5LYKdzQftJxp04tRimnh7JJvTpr8COm/wAq6tWpUpykqi5OZLMMpYf2arwx1Nrhqg6UpJpzWjaWE/h8DmVJQXLJNxez136G/wANrrl9lSpNrPem3r64NRj8k9N/qjt8O0ijix1mjt2GiRp52n26WeAUn4XEf9MjxvCOJT4bd+0ScqctKkPFfme27axz2cb/AGasX80fOzfPxi/X0qlWp3FvCtSkpQmsprqVVakKUXOrNQgt23g8rwPji4dbVqFdTnD3qaXR9UaPEOJ17+o5VZNR/VgtkTxXXZ4j2lSTp2Edf+pJfJHnKtWpWqOpVnKc3u28mANSYloACoAAAAAAAAAAAAAKQAAAAAkgASAAAAAAAAAAAAAHvLJctvbJdKcfkeDPeW2lGgv6kfkZ6a5dqk+6ZNlVJ91GbZhWaLoFEXqXwAuWxEtjJbES2A1qhrTNmqaswKZleTOZikBki6BTEugBfAyzoYRJbAxmyp7mcmV9QLKaLlsUwLkBDKauxcympsBz677xg9jOv7xhLYKvsPrDHtx/6cp/38fkzOwX6Ux7bLPZuPlWi/uZZ9SvnYAOjAAAAAAkgkgAAAAAAEkACSSAgJPXcvLGhD9mnFfceSWrSPYVP+IivDQx01y7vDvcR1Vscuw91HTXumVUXD0ONe3qVFxoOTqTfJCXK8Z9djc4tO7lSnTtaWrXvuSX2HJoV6jvbW3r2/sY0U3hvR7Ja9SWt8z+XZsbWFCjCMViK185PxZvxqxg8btLOEaUasqkW4uLg3hPGc/mbdCllZmtXrjfXz8WVmpg51JKU1LEniKS0X8ePobLwtXjwWSupVUI6LL008BTblrJZkt30+AGbXN1wU1YOVOcYpSytsZX2dS/GNctmtUnKcZQhq1lPGoHkeI2a+kVreEFNzjzRUf1Wln80cm0g6znKW6WyePDX5HY4lU5OJynGT5uVSTx1y1/HoavDaTc601hSk5rHllZOb0S5y0L22jCtNRi4954z6nPccNaZR6fiHJ9IlLlUuZS6eM2edu4Sp3EoTWJRz8CxqXYrt69S3qKrSeJRe3ieqo1f5S4bCSlFVafuyerz08ujR5HKw/E7/Zmj9IjVpVKk1BNPCax/DNMdfNWu0dS1V7Q72NHTcXJQwvDOupy3T5W1J4k8p4Wfieh4fTVDidzbRxSVSCnFLp5fec65s6k7qpVc/bRgsybeHtnVdMmbF569+3PVOcac63LFxptZyubfKXl0ZdYU+a6Tpx5FFZcm9cddNv/AJMrChTuq6pOUuRrMsfH9x23SjRpqnTilGKwkixPydZ6a8E+fJ27DZHGjhSOzY9DTgw7Xxz2YuH4Sg//ACR82Ppnatc3Ze79IP8A84nzM3z8YoADSAAAAAAAAAAAAAAAAAAApAAAAAAAAJIAEgAAAAABIEAkAQe+pbU1/VXyPBHvaW0PKK+Rjprl0aUtNzOUjWhPBlzZZlW1TZtUzUpG3SAvREtiURJga1U1Zm1VNaYFEjAzkYMCUXU/MpW5dBaAXJkSYMZMDGTMepjJ66Ex3AvgWrYrgWoDFlNXYvka9XbzA0K3vGEtjOt7xXLoFbPD1+kJ7aL/APjT8qkDLh61T8yO2Sz2YqeU4fMs+pXzcAHRgAAAAASQSQAAAAAACSABJJiAL7SHtL2hD9qpFfeesnrc/E8xwiPNxS3XhPP2anp85uDHTXLvWPuI6S905tj7iOl+qZVqXDONxJ8l3aVXFOKck8/B/g38Dq3cnHbGfA4t7NVLNNJvleYSSzh4yvvwiVvj67cOWgvaVqjlJrCSWi8kixXblV9nBavZLf8A+Di2t5UvKMXpGMcRqSk+vVfuwdq2jCEYzpxy5ZeOrz/H5sJZn1s0qMnrU2/j+P41vys8sdWt8dDXjUnUbjTkpLrPpH8yzmUFiOuN2VGTnryp5l18jXrv2MMcuYvR51z+Za6kKS72c/e3+ZxuMXzVLWnOKn3Yyz9/w/eLVk2uNUqRqX8v0k589TDb646+mWzDgsfbylCm9ZufNPGiTax69dDUuKkYU/ZR09piK8svVrwM6EKcFOlSrVocsVlxilnPxOb0Z6dK8p4lKcdW4pc0nl7wba+Lfkee4q6cr6XsmtU2+uuWdahQr1IR5Lq51jiKdJPMft9DmXVi6NWXfmpY6xXn+RU59OdokuZZk1k73ZWnCrVrKpRhUj3Y5kk+XST/AAODOHK+uNstHqOy9m1w+tce0knUeFFPG2zzv4mk7uRs21KL7RVI04QpqFLOi65WfyNi+t7e2tbiFODzWak3nL3WTW4YvZcaq+1cuZ0spzk3pleJ0LypGpTnBJOaSlHXdZT+BP4Yt9xzOAU4qwlVwuacms+S/hmxWabeGtNGafC7mELKnHPu1J83jjcvpTTt4cz781zP46lidy7awWeY69jsjkrHMdWyKws7SLPZu8X9RP70fMT6jx5c3Z29X/abPlxvligANIAAAAAAAAAAAAAAAAAACgAAAAAAAAkgASSQSgBJBIEEkEgAAAPd2z5qNOT3cI/I8Ie8pPlhBdHBfIx01yvTLKerKEX0dWZabtPY2qZrU9jZphFyMZGSMGBTUNaZszNaoBRN+BgzOW5X1Azgi6JVHoWIDLJhJ6BsrlL4gQ22y2nk1866l9PXYDYgWorgWxAxkUVTYkjXqgc+usMqZdX6mvnUK6Flpyk9rlnstcPwlB/+SMLJ6ot7ULm7KXeOii//ADRZ9SvmRIB0YQSABAJAAgkAQSABAJAEEgAQSAB0OBRzxWk/BSf3M9B/z0cXs5HN9Ul+zSb+9HZf1iMdfWp8egsHmCOj+qczhz7qOm/dMtOVxOUoU2+dR/ZljZnm6dzKdaVKDjFzaxl91a5+w7vGpV4UZyioTppd6LzlryOLQhTp2ka9a3U5Tk4wftMPPml+f2Ga6/jzFCrVra4c+5V9pmEoxeca4PQ2XEqE5QpwTemXFPX1fVmvTs7KjRUpr9Jo3GK93O2+cbmVrwOjc/pnNPO0dsfZoSavV5v11YX8JvWtFRST5I6yf8fw2TO7pvlcJweVoubbVfZ+/oaK4BRx3bt5itf03T7CafAqEsOlXlKGzdOqn+Br255z/a674nb2/eyqtTHux2Wn3nm7i9q3dxKpOUpylvhaJdUd6fALaT5Eq0Wv1nGUk/vLIdn6FKLblzP9rEs+WzM2Wt83nl5hWsJJVq04tNPlUnKOnlhFtG0yuaFGbqJ6ezrLVemcno6fBqcYte1nr0xLH3lX8lKNZS53JqOE3DTfzTGLfyOfTtq1PGI3cVt7s3hfCZrys690pSuVWoyTwu5OWV9p2KlrcR2lQS/u8v7f3GpGFalCSqRptt6ScZNL7UXGfJx58DjJS5HVqNb4g1r4a5OnZTXD7RUqlGFKeOTNSXK5Ye+En4kUIVKcKkIcklJtuXJoiyVrQq041ru65cYxOlHljp9uoXd9Vz6U6v0qc6U6TdSk0pe00Xlnx3L6Vet9OpwqvSKcmujWMr5m19C4RCEs3NWbl3n3ll/cad9O1hLNCMnLPJmTUljGPwI1srkqpOMXyKSU2tvR5Ozw6c6tu6ji+88uT29EadHh9zf0VOEIwW6b0X57F/DnUpTlQnUU0llcr0EX8mWem4kuZI6dn0Ofy946Np0NvO2eMLPAL7/283/4s+Vn1biizwO+X/29T/Sz5Sb5Z6AAaZAAAAAAAAAAAAAAAAAABQCABIIAEggkAAAJBBIEgACQAAAAA95NYSXgjwa1aPe1NzHTXJF5RtW+5qR3Ny3RlpuwNima8C+mEXmMiVsYsCqZrTNiZrTApmYFkitgZRZnnQqRknoBMpFTZlJlbYVMdzZpdDVi9Tapa4A2YFsSuBbEIiaNeotDZma9RaAc24W5q9TbuTUe4Vu2Uu+jf4xD2nZu+XhQlL7Fn8DmWjxUOtfLm4Bfrxt6i/8AFiI+UEkEnVgAAAAAAAAAAAAAAABBIAHb7NrErmX9RL7zqLWZz+zscW1zU8XFfP8AM6VFc1Q59fW58drh+kUdNvunMstMHRk+4RXC4razlmdKpOUubKUnnHwOTcxuazbqQgoNKMpRzol4+h6C5acsPVGjRuLV1/Y05tSy4vEdMpa6szY3z1Y5lXPtMOckoxXLmOG38M/fg36E3Tt40YUJRqJ8yqyzpp4LOnkb/sqWU5OLb2k0sstsa1CtCPLUesmkpYi21uMW97PjCF3cQpSVVKvlpRfs8v7NDctq3EalupQp059VzycWvLz+0sVzaLuyuaafNy49os58DKzvKNd0lSqyftIOa5ms4Txtv47eBWP+J9rewSjVt4z5225QqY5F4bZfqi6Mm4uMoSWNnKSafx3+0xV3ZtrFzTblLlXfzl+H3ohXNCpVjTpTjPmTeYyWmMefmiomrQt5rXkwltyxx96KJQoRyopf4cR+RlWuLajP2dS4pwl+zKaT+816lehLOK1N4fK8SW/gD2ruIprEZzWP6zNbnclj2uGvTJnVwm1nX1NKvUpJS9pOOI4clnbXQgtqV5U2oyk3nZr/AOCibuqzToc6ay8vP4v8AowjLKikbVBvGsowXiMWXFUby4taLpxtU6ksJ1G197NWVvK4uXUdrUp4156kktfHwZ3KcqEeVOtDmeizJZz/AAimtXsYzgq1VVOb3Z8yaTTSxp6ksanV/iOZToXFN1Jxucrl92Med48GY2dlUp1Pb1Zyk5LOJJrGdzsV7m2o0pVPaxlFPGIyT18Curyyy4yUsaPDLIXq41FjmN+06Gg1ifxN61ZWG9xBc3BryPjQn/pZ8nPrdys8NuF40pL7mfJDfLPQADTIAAAAAAAAAAAAAAAAAS29QNYAAAAAJIAEgAASQSAJIJAEkEgAABlBZnFeLR7upueForNemv6y+Z7mp7xjprkjqzft1oaNPc6FBaGWmzEvplMS6ARatjGRktjFgVTNaobMzXmBryK5F0iuSAxW+5lnzMdmRnzAmT0KW9TObKm9dwrOOMm5R0RpQNuiBuQLolEC+IQlsa9Q2ZbGvU6gc26NSRu3S0yabWgVbbPFRHbl3+F3MX1pSX3M4VB4qI79CPPaVYftQa+4D5GSQSdXMAAAAAAAAAAAgkAAAAHQAD0vAo8vCZS/aqv5I3rb601eErl4LS83J/ebVr9ac79bjtWumDck+4adv0NqT7hBzbl944s+GXFZ1lFwipVJyTc29JJrbp0OtcS77QpsNS40K/DKztbWnCpDmoJ5bb3ynpp5FvC+FVadenVq1KeIVHPEV44/I3aktC6ylkmL51lQ4NGNb2sbiSftfaaRWceGTatOEq2uKNVXE5eyg4KLitVqbVLY2EMieVcZ8FdOMZU68pyU1JqSSTWY5+6JnS4TK3TlQuZKqotRk4rTKiv/ANTrMxYyHlXH4jwiN5cSrOs4uSSxy52TX4nOuOBT7zjcQbc1LWltv5+Z6Sexq1tmMizvqPNcT4bWr8QnXjNcsqbjjmw84awc6fC7qNLFOFNVJQinJTaw03+77D0lZ6mu9SnlXKu7S5rSUlUnBqjpyzx3/MwocKuq0Wn7NNxSzOTeMP8AL1R1Jl9m9UCdWMbbgso1IVJXEcxqKa/R+beN/M24cJcYwzXi5QSUX7PGzhjOuvufebtLYtyTIedcSfZ/Ov0pe9n6r08/IzsuGfQFV/Sc/O09I4xj4naWqKasRhe7ZjlVY4n5GzabmNenq3tnqZWqfMVl1Zrmsqq8YP5HyE+vrW3mvGLPkBrlnoABtkAAAAAAAA1YAAbMYGxLAgIE7AQh0Hr0J03A1gAAAAAAACSCQBJAAkAASAAJBBIFtqs3dFeM4/M9vUPFWCzxC2XjVj80e2mY6a5TT3R0KOyOdS3OjR2MtNmJfAoiXwCLFsYyM0YyApma8y+ZRPcCqRW2Zz0K3lbMDFsxbJeca9PAweq0xkKxmyvOTKfmVgWwfmbdF7amnDfQ26L2A3KbNiBrUzYjsEZS2NeobL2NeoBpXCTWpoyWp0K2zNCfvBUU/eR6Kw9z4HnobnoOHPu/AD5JUg6dScJbxk0/gQbfGYqHGr6KWEriol/mZqHVzAAABAAkAdQIJIJAAhBASCABIAA9fZw9nwm2jt3Ob7dfxLLX6wlrktKEfCnFfciLT3zk27NF4SL5y7hrU3oZ1JYpsDn1pZqGVJ4wUOWajLIPvBVlV90usHlmrWlobPDgO3R2NhGtR2NmIRJgzNmLAqnsadfZm5PY0rl4iwObWfeKWZ1XqYBWEloZ2f1hjJE2rxWA7dHWJlJ4ZFDWIraBGUJCayiiE8MuzlAa1VaCjHEkWTWogtQN1aW8/KLPkB9ek8WlR+EH8j5Ca5ToABtkAAAAAAAAAAAlb5IyAJ+JHXQnH2B7gQT/ABoBrjAGsAAAAAAAAAAJBBIEggAZAglACSCUBt8LWeJ2y/7iZ7KZ5Hgizxa39W/uZ66e5jr61yiD1R06Huo5cPe0OnQ91GWmzAvgUQNiARYYSM+hhICiZRIvmUSAqmVPOdNvAtkVPZvT4gYS0a8fBmEvN+eDOT6/iVyefTZPwCsHqjAylq30MHuBZT30Nql5GnB6paG3R31A3qbNiGxrUzYgEWdCiobHQpqIDTqrRmhVzzHRqLQ0Ky7wVXDc73DXovQ4MNGdzhj0XoB847RxUe0F8l/1m/t1OcdXtTHl7R3q/wC5n7UjlHWOYAAIHUDqBI6gdQIZJDJAhAIACQQBIRBZSXNVhHxaQHtLjuwivCKX3Fdr9YW3ekmUW2lTyOTo68HoV3NTFNkqWImndVNMAYQeW2ZxfeKqa7pZHfICtI6HDo4jk5k3maR2bGGKaA6VMvia8DYgEZEMkh7AVT2NC7fcZvz2Ofee4wOTN94Iwk+8zOIVDIovFYloxWlVAd621ijKstCuzeYI2Ki0COdJ8si2FQrrx7xUptYyBuZyZRRrwqIvpPKTAvuHy8PuH4UpP7mfJD6xfvl4RdyW6oTf/iz5Ob5ToABpkAAAAAAAAAADoMgegEkbk9f3hNZywHTI2QGPADWAAAAAAAAAAEggkAAAJJIJAEkEoDo8BWeL0fJS+TPWM8t2eWeKx8oy+R6iW5jr63z8RT986dD3Ucyn7506GyMq2oF9MohubEEEWFcyzoVz6gUTKJF8ymXiBRUXVFU28Z1wWz/cVTeHs16BVTeMtLVeBhPGW+jWqMnvt6FU5aegEN533IIWrMugCPvaM26Gj2NNbm1RwsYA36b2NiDNWk8mzAIvWxVULUV1EBqVNjRrLU6FRaGlWWoVrpao7HDHsjkfrHU4bLvIDw/bGPL2nu/B8jX+SJxT0nb2mocejJf8yhGT+1r8DzZ0nxigAKiB1A6gSOoHUCGSQyQIQCABAACS6zX88oLp7SO/qUF9l/x1DP8A1I/MD2N4++yii8VNy+70qGtF4kvE5Ojo83cNKq+afoXOf6LJrx70gLYLQyWzJS7pE9IgY0lz10d61WIo4tlHNTPmd6hpFAbENzYhsa8NzYjsEZmLMiGBRU2OdePuM6VQ5t57rA40n32WwawUz99lsNgrLqVz0aZckV1loB1rB5gjfksxOXwyeaaOutYhGjWj5GnOD1wdKrHRms4LIGmm4y3NqhLMljYiVHojKjS5ZIC7iWnBL3/29T/Sz5SfVOK6cCvv/bVP9LPlZvlOgAGmQAAAAAAAAnGzTI6ACdFqPUb7DfqA+wPf94xrqPRAE/kN9Nh03GNANYAAAAAAAAAASAABJBIAlEEgCUQAOv2bWeJvypt/I9LI852ZWeIz8qT+aPRzOfX1vn4Ul3zqUVocyj7506O2hFbUNzYga8DZggjLoVzLGVzAokUyLplMgKJPfxKZba7llRbrHqUyw3lLTdeQVXJrpqUT1LajS0wU7vLAmKMzGJl8AMOps0pZeq+8131LqW3XYDfovTBtQNSi8rLNqmEbMdjGa3MobEyQGpURp1o9TfqI1qsE8gc+a1N3h8mqsTXqxw9jOwf84ivMK4n/ANQYr+ULSfV0Wvsb/M8mez/+ocMx4fVS/wCom/8AK1+J4w6T4xfoACogdQOoEjqB1AhkkMkCEAgAJIAAttXi6ot7c8fmVmdv/wART/tr5ge0u/rWauNc9TbvPrWajx+45OjOU3jBlTjgrgi+CAtXulVV6YL9MFFRc1VR8wNuwh1OzTWInOs4YSOktI6AWQZfA1oPU2YBFpDAApqHMvNmdOocy891gcafvszp7FU332W0wrYXkYVFmJkiJ+6BfwyWG15ncpvMTzthLlrNPxO9RloBlUWhpz0ZvSWhqVohFfMZ0nmRRnYuo7gRxjTgV8//ALef+lnyw+pcb/oC+/uJfI+Wm+U6AAaZAAAAAALcE5AgnTVajG2UNP3gGl0z8SPImOc6bjfIDpnJKi8Z28NCF59NhogI9epOQvHAWzXnuBrAAAAAAAAEkEgAAAJIJAEkEgB1BOAOz2Z/pGp/cv5o9DPc872Z/pGp/dP5o9DPc59fW+fiygu/qdSktDmWy7x1KS0RFbNMvgU0y+IRl0KplxXUQGtMon6F0zXqPfTIFNVrD3Nee72wy2q8LmKJVNGsvXyCqqj9fVmBMnlkfADNE5IRK2AxkZwzlN/ZkwkZwxnUDfovCSRt0zRpSemU8m5TYRtw6GbWhXTLUBTNFE4m3NFE4gaVWOVqVWceW6TeyNupDKZRRi1VfowrR7dw/wBwWr3ca0Vn/DI8EfQ+2nf7Mp9Y1Y/ifPDfPxigANIgdQOoEjqB1AhkkMkCEAgA6gkgCepZbf8AFUn054/Mr6mVH62HTvID2159azUeFnbBt3ms0/JGpJZOTozp6+hfDfQphubFNagZvRFMFzVc+BbUeIkWke9kDqW0cJG29Ea9BYwi6TCM6bNqHQ1KRtQAu6AhEvYCmpscy891nTqbHNu9mBwp/WMspvUrqfWMyg9QrbjqTNd0xg9DN7Aa9CXLcHft5Zijzr0rJnbtJ91AdLdGtWjuXwehjVQRz5ppllBaipEmitQMeOf0Bff3MvkfLT6hx7/09e/3TPl5vlmgANIAAAAAA6fID4AS11SD1fQeaWA2AXwHTA65eo8NNwDy35jyyNvgPNpAPgHjbYleWUQttQNYAAAAAAAAkgASAABJBKAEkE5AEkIlAdjsz/SM/wC6fzR6GfvHnezf9JS/un80egl7xz6+tz42LVd5HVprY5dou8jrUkRV8EXQKol0QjLOhXUehZ0MJxzHIGpPc1qr0ZsTbWdGalWXjnUDVqzynhvGCiTJrSxN4eEVc6b3Cpe4RGVjclYAyRkYxxnBmtgMWTFrxeuhDEd8MDboyy1nTT7zdpS6I0KGnjg26Mk0BvU2XxNSnI2YPQIzexTNeJfjQxcWumUBrOBrSpyddKOdToSovGab9UymEX9Ig2vH4aAcntPJT7LXUZrEqbg0n/bS/E+dn0jtY2+zd7zLXEP9cT5ub5+M0ABpEDqB1AkdQOoEMkhkgQgEAHUDqOoAzpLmqwjnGZJZMDKDcZxaeGnkD3F7uvRGp12Nu86ehqLV7dDk6LKa1NuEcIpoRytS+WkQKK8uhs2iWEaU9Zo37Z8qwB0KPQzlvjJXSexm22EWU9zahsatNmzTYF8diWREMCupsc262Z0Z7HPudmBwK2lRiD1JuViozCIVuU9i7oa9LY2FtgDTr6TTXQ6dhUzBJs51yjZsJ6JAdylIslqa1KWhsKQRr1YGFFam1KKkVKHLLQDV4/8A+nr3+6Z8vPp/aF47O3v93+J8wN8s0ABpAAAAAAJwyABOwCQ69AGFrvj0HTGF6h758PMJaPYCCeug0yOgBrGjTJxldER1x0G2zA1gAAAAAAACSABIAAAEgACQCJRAA6/Zz+kZY/6T+aPQPKkcHsys31X+6fzR6BSlGfdk0c+vrc+Nq0XeR1aKzjBz7aU5Y77+xHSoJprMpNeDZFXqLWCyMX4Ex5YLLxHzZoXPaHg9q2ql/RbW6g+f5ZCOlGOdxUjmm8dDy9bt3w+Lao21xPGzaST+80KvbiUs+zozivNIuU2PVXXdSqwyk98aGncT7kWpPV+J5ifa+pNNOE8PpoVPtPzLDozx6oZTY69abc8Zb9WUxWVqlk5a7R0+tu364JXaC3629T7hlNjpLczSTOYuP2TetGsvgvzLocZ4dJPMqkPWLGU2OhHOrRmsuOc6GlHivD2klcpeqZdG9s5RxC7ovy50TFW5b2FNZlh7dWQmmlySi15NExUlss+IGzbc7zGa0xuX2r5JNVHFLXHeRrUKjUll4Rt09YyxJN4A2Icy1xk2qLlj3X9hqRlmMc751LoZiniKaz0CNxe6ObD1FNKcFhtfEylTyspgIvL0KXGUblNarD0+wspLzwS0/brXTlfzQHF7XNvs1eNrGeT/AFxPmp9M7XprsxeZ/qf64nzLob5+M1IANIgdQOoEjqB1AhkkMkCEAgAHUDqBIBAHt60vaU4S8Yp/cUxWpfVjywhHH6kfkVQ3OTo2qKxEitLCwTB4iUVWBhHWZ0bf3cbPqc+nnm8jbt58ssMDow0M29Nytd5aYJWchGxBmzTZqQybFLXYDbjsJCKwg1oBTUZo19mb08eZq1lHD0f2gefvFiqUI2uIxxJSTaNJN595fYFblF6m1HY0aTnpszchLu6pr4AVXCymY2UuWWDOtKDT7y+01ac+WeYvKA9DSllF/Noc60rZSUso6Cw46PIRKm0ZKWWYJGcU87AaHaZ8vZu8/sJf+SPmR9N7UU5T7N3kY4yoxevgpJv5HzI3z8ZoADSAAAAAAAAJGNdiPQnOgDbQbvCXoQSvP4gPNeAT1zrj1C2JWn7wI03wPTcaenqwvIDWAAAAAAAAAAEggkAAAJBBIAkgAbNneVrKq6lBpNrlaaymjcfHrvpGin48r/M5RJMhrrLtFxKPu1YR9IIwqdoOLVIuLvakU/2MR+9HMAyGra9zcV23Xr1arf7c2/mVAFAkgAAgSgIJAAjqB1AAAASm1s2jONetH3as16SZWANiN/eR2uq3+dlkeJ30HlXVTXxeTTQYwdCPGuIx2uX/AJV+RdS7RcUp7XGfVHKBMhr0NDthxSisNUZ+sX+ZvU+3lykueypyflNo8iBkXa9ku3ks5fD1nyq/uK6nbqs6kZwsYRcU1h1G0848vI8iB4w2uxxPtNxLidvO3rzpwozxzQhDCeHnd6nI6EAqJAIAkgkAB1AAgkgkAiCUAIBIAEEkAe9rLmp05496KKoR1zhHlaXFr6jCMI124R0Skk8Ivhx68itY0pesX+ZjxrXk9LLQpnJvdJ/A4n8v1n71GHwbRH8uSe9BfCRPGrseioVWmoqnTx6GypNtOVOD1xon+Z5in2g5HrbZ/wAf7i7/AGnkn3bVfGf7h402PX0H70cR020M5KUZaKP+U8jT7W1YN4tYP1n+4yl2xuHtaUk/OTY8abHslJ6NbeGEXxzzZWcHgX2w4j0pWyX9l/ma8u1XGG3y3Sin0jTjp9xfGpr6cniOXoaVzxjhtrlV76hGS3jzpv7FqfMbvi3Eb1ctzeVqkP2XLC+xaGoXxPJ9Hrdp+Dxel1zf2YSf4GnV7U8Le1So/wDAzwgHjE16y641w+4WFWcfWDNWN9Z6fzmP+V/kedA8Ya9VSvLZyji5pfGWPmdO3uKU1iFWnL+zJM8ENth4r5PeVpYeqKKVSop4VSePDJ5KlfXdJYhcVEl0byvvLocXvIvPPF+sUTxp5Pe21WbxzSbRvxlLCabPnlPtHxGntKm/WBeu13E0sKNv/kf5k8abHvVOWfeZZFt7tnz2Xa3iklhexj5qH5sr/wBqeM50ukv/APOP5F8aa9n2smodm7tt4bUUvPvI+Zm3fcUvuIYV5czqRjqovRL4I1DUmJboACoAAAAAAAADqAAJ6EBeYAAAT44wOhCJYGsAAAAAAAAAAAAAkEACSSABIAAEkAASQABJAAkEZJAEogASAQA6gnqQAAAAAAEGSAIRIAAAASCABIIJAAAASQAJBBIEEkEgEAgAAAAgkgCSCSAJAAEAEgCSABJBIAAACQQAJBAAkEACQAAAAAAAAAAAAAAAAAAAAAAAAAAAAEogADXAAAAAAAAAAAAAAAAJIAEgACQQAJAIAkEACRkgAZAgASAAJBBIEAAASQSAAAAAAAAAAAAAACSABIIAEggkAAABJAAkEACSAAJIJIAkAAAAAAAAkgASCABIyQAJBAAkEACQAAAAAkgASCMjIEggASAAAAAAAAAAAAAAAAAANcAAAAAAAAAAAAAAAAAAAABIIAEkAASCABIIAEggkASQAJyMkADLIyYkgSSY5GQMgY5JyBIIyAJBGQBIIJAAAAAAAAAAAAAAAAAEkACQQAJBBIEggASQAAJIJAAgASCABIIJAEAASCABIIAEggASCCQABAEjJAAkZIAGWRkxAE5JyYgDLIyQQBlkZIAEgjIyBkDHIyBSAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAJBAAkZIAEkmIAyBiSBOScmIAyyCABOQQAJBAAkEACSTHIyBkCMjIAAAAAAJIAEjJAAkkxJAkEACQQMgSCMjIEgjIyBIIyMgSCMjIEgjIyBIIyMgSCMjIEggZAkEZAEggASAQBIBAEggkAAAAAAAACoAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEgAAAAAAAAAASAAAAAAAAAAJAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACSAABIAAAAAAB/9k=
\.


--
-- Data for Name: capture; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.capture (id, amount, raw_amount, payment_id, created_at, updated_at, deleted_at, created_by, metadata) FROM stdin;
\.


--
-- Data for Name: cart; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.cart (id, region_id, customer_id, sales_channel_id, email, currency_code, shipping_address_id, billing_address_id, metadata, created_at, updated_at, deleted_at, completed_at, locale) FROM stdin;
cart_01KP9YJ0GKK82CVTZ6FW0KK42B	reg_01KP9XXJW4ZG0VCYHMBCMZW4YQ	\N	sc_01KP9XXJRXGGT65H782XD56SVH	\N	eur	\N	\N	\N	2026-04-15 21:30:14.42-04	2026-04-15 21:30:14.42-04	\N	\N	\N
cart_01KQ33MVP7KGA11MYKWW38JW88	reg_01KPA20S5NSBGW8AD90T7HEH4K	cus_01KQ5DE2ZGD5GKGPCKNJ49468C	sc_01KP9XXJRXGGT65H782XD56SVH	smlzanatto64@gmail.com	brl	caaddr_01KQ5DE30BS0336GB3WVRRM39S	caaddr_01KQ5DE30A4BFN59JD1FW0VCY8	\N	2026-04-25 16:00:11.465-04	2026-04-26 14:19:00.141-04	\N	2026-04-26 14:19:00.104-04	\N
cart_01KQ5KWHCMDZR40WS4C208K5RA	reg_01KPA20S5NSBGW8AD90T7HEH4K	cus_01KQ5DE2ZGD5GKGPCKNJ49468C	sc_01KP9XXJRXGGT65H782XD56SVH	smlzanatto64@gmail.com	brl	caaddr_01KQ5KX1QE3SH15PBW6190ZY8X	caaddr_01KQ5KX1QE6T4Z6KD3NP4NK5G1	\N	2026-04-26 15:22:29.143-04	2026-04-26 15:22:54.876-04	\N	2026-04-26 15:22:54.846-04	pt-BR
\.


--
-- Data for Name: cart_address; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.cart_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) FROM stdin;
caaddr_01KQ5DE30A4BFN59JD1FW0VCY8	\N		Samuel	Zanatto	Rua Assaré, 729		Campo Grande	br		79070023		\N	2026-04-26 13:29:44.203-04	2026-04-26 13:29:44.203-04	\N
caaddr_01KQ5DE30BS0336GB3WVRRM39S	\N		Samuel	Zanatto	Rua Assaré, 729		Campo Grande	br		79070023		\N	2026-04-26 13:29:44.203-04	2026-04-26 13:29:44.203-04	\N
caaddr_01KQ5KWHCP36JH2SHJA7REF8ES	\N	\N	\N	\N	\N	\N	\N	br	\N	\N	\N	\N	2026-04-26 15:22:29.142-04	2026-04-26 15:22:29.142-04	\N
caaddr_01KQ5KX1QE6T4Z6KD3NP4NK5G1	\N		Samuel	Zanatto	Rua Assaré, 729		Campo Grande	br		79070023		\N	2026-04-26 15:22:45.87-04	2026-04-26 15:22:45.87-04	\N
caaddr_01KQ5KX1QE3SH15PBW6190ZY8X	\N		Samuel	Zanatto	Rua Assaré, 729		Campo Grande	br		79070023		\N	2026-04-26 15:22:45.87-04	2026-04-26 15:22:45.87-04	\N
\.


--
-- Data for Name: cart_line_item; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.cart_line_item (id, cart_id, title, subtitle, thumbnail, quantity, variant_id, product_id, product_title, product_description, product_subtitle, product_type, product_collection, product_handle, variant_sku, variant_barcode, variant_title, variant_option_values, requires_shipping, is_discountable, is_tax_inclusive, compare_at_unit_price, raw_compare_at_unit_price, unit_price, raw_unit_price, metadata, created_at, updated_at, deleted_at, product_type_id, is_custom_price, is_giftcard) FROM stdin;
cali_01KP9YJ0QP5KWQB9R00QST9SKQ	cart_01KP9YJ0GKK82CVTZ6FW0KK42B	Medusa Sweatshirt	L	https://medusa-public-images.s3.eu-west-1.amazonaws.com/sweatshirt-vintage-front.png	2	variant_01KP9XXK5MWF2AQYSZ4JTRMFE3	prod_01KP9XXK33P2MN4PW6H7AMPSX6	Medusa Sweatshirt	Reimagine the feeling of a classic sweatshirt. With our cotton sweatshirt, everyday essentials no longer have to be ordinary.	\N	\N	\N	sweatshirt	SWEATSHIRT-L	\N	L	\N	t	t	f	\N	\N	10	{"value": "10", "precision": 20}	{}	2026-04-15 21:30:14.647-04	2026-04-15 21:30:34.616-04	2026-04-15 21:30:34.616-04	\N	f	f
cali_01KQ33MW20962FDDCYH2G5EQPK	cart_01KQ33MVP7KGA11MYKWW38JW88	Medusa Sweatshirt	S	https://medusa-public-images.s3.eu-west-1.amazonaws.com/sweatshirt-vintage-front.png	1	variant_01KP9XXK5M9BS479CM0SFNT3D6	prod_01KP9XXK33P2MN4PW6H7AMPSX6	Medusa Sweatshirt	Reimagine the feeling of a classic sweatshirt. With our cotton sweatshirt, everyday essentials no longer have to be ordinary.	\N	\N	\N	sweatshirt	SWEATSHIRT-S	\N	S	\N	t	t	f	\N	\N	10	{"value": "10", "precision": 20}	{}	2026-04-25 16:00:11.841-04	2026-04-25 16:00:14.703-04	2026-04-25 16:00:14.701-04	\N	f	f
cali_01KQ5BTFC6560BS7MQR8507PCK	cart_01KQ33MVP7KGA11MYKWW38JW88	Camiseta Oversized Cristo Vive	M	http://localhost:9000/static/1777152975705-camiseta%20super%20ra%C3%83%C2%A7a%20comprimido.png	1	variant_01KQ394S6AG2EPS0DRX14A43JG	prod_01KQ394S3SVPRBN5HMMGASG417	Camiseta Oversized Cristo Vive			\N	Camisetas	camiseta-cristo-vive	\N	\N	M	\N	t	f	f	\N	\N	64.99	{"value": "64.99", "precision": 20}	{}	2026-04-26 13:01:32.935-04	2026-04-26 13:01:53.291-04	2026-04-26 13:01:53.289-04	\N	f	f
cali_01KQ5CWHMTN9T6QFJZX48MS2XA	cart_01KQ33MVP7KGA11MYKWW38JW88	Camiseta Oversized Cristo Vive	G	http://localhost:9000/static/1777152975705-camiseta%20super%20ra%C3%83%C2%A7a%20comprimido.png	1	variant_01KQ394S6BNC8QKJXA75HCW84K	prod_01KQ394S3SVPRBN5HMMGASG417	Camiseta Oversized Cristo Vive			\N	Camisetas	camiseta-cristo-vive	\N	\N	G	\N	t	f	f	\N	\N	64.99	{"value": "64.99", "precision": 20}	{}	2026-04-26 13:20:09.37-04	2026-04-26 13:20:09.37-04	\N	\N	f	f
cali_01KQ5KWHNDYNK49SC1YSDFGZA5	cart_01KQ5KWHCMDZR40WS4C208K5RA	Camiseta Oversized Cristo Vive	M	http://localhost:9000/static/1777152975705-camiseta%20super%20ra%C3%83%C2%A7a%20comprimido.png	1	variant_01KQ394S6AG2EPS0DRX14A43JG	prod_01KQ394S3SVPRBN5HMMGASG417	Camiseta Oversized Cristo Vive			\N	Camisetas	camiseta-cristo-vive	\N	\N	M	\N	t	f	f	\N	\N	64.99	{"value": "64.99", "precision": 20}	{}	2026-04-26 15:22:29.421-04	2026-04-26 15:22:29.421-04	\N	\N	f	f
\.


--
-- Data for Name: cart_line_item_adjustment; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.cart_line_item_adjustment (id, description, promotion_id, code, amount, raw_amount, provider_id, metadata, created_at, updated_at, deleted_at, item_id, is_tax_inclusive) FROM stdin;
\.


--
-- Data for Name: cart_line_item_tax_line; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.cart_line_item_tax_line (id, description, tax_rate_id, code, rate, provider_id, metadata, created_at, updated_at, deleted_at, item_id) FROM stdin;
\.


--
-- Data for Name: cart_payment_collection; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.cart_payment_collection (cart_id, payment_collection_id, id, created_at, updated_at, deleted_at) FROM stdin;
cart_01KQ33MVP7KGA11MYKWW38JW88	pay_col_01KQ5E1DV5PX507CG1HA1NGAW0	capaycol_01KQ5E1DVJNP7H959Q6QBHWXBB	2026-04-26 13:40:17.905392-04	2026-04-26 13:40:17.905392-04	\N
cart_01KQ5KWHCMDZR40WS4C208K5RA	pay_col_01KQ5KX749WPM6CV5PJFNHSZ97	capaycol_01KQ5KX74FA2SK5T2BTGNZXYE6	2026-04-26 15:22:51.407305-04	2026-04-26 15:22:51.407305-04	\N
\.


--
-- Data for Name: cart_promotion; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.cart_promotion (cart_id, promotion_id, id, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: cart_shipping_method; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.cart_shipping_method (id, cart_id, name, description, amount, raw_amount, is_tax_inclusive, shipping_option_id, data, metadata, created_at, updated_at, deleted_at) FROM stdin;
casm_01KQ5E0R59XMFFT8QZ8RFMN1QH	cart_01KQ33MVP7KGA11MYKWW38JW88	Envio Padrão	\N	20	{"value": "20", "precision": 20}	f	so_01KP9XXK05TKCGKDGWNEA8GGZZ	{}	\N	2026-04-26 13:39:55.689-04	2026-04-26 13:46:59.63-04	2026-04-26 13:46:59.63-04
casm_01KQ5EDP5BNSSTS0YZ5FCDNZ3S	cart_01KQ33MVP7KGA11MYKWW38JW88	Envio Expresso	\N	20	{"value": "20", "precision": 20}	f	so_01KP9XXK06FFXAW568NE6BDEET	{}	\N	2026-04-26 13:46:59.627-04	2026-04-26 13:47:00.298-04	2026-04-26 13:47:00.297-04
casm_01KQ5EDPT4NVJ0CE6R4WMVNK72	cart_01KQ33MVP7KGA11MYKWW38JW88	Envio Padrão	\N	20	{"value": "20", "precision": 20}	f	so_01KP9XXK05TKCGKDGWNEA8GGZZ	{}	\N	2026-04-26 13:47:00.293-04	2026-04-26 13:47:00.829-04	2026-04-26 13:47:00.829-04
casm_01KQ5EDQZ3M69V2GXV0S5XCG6H	cart_01KQ33MVP7KGA11MYKWW38JW88	Envio Padrão	\N	20	{"value": "20", "precision": 20}	f	so_01KP9XXK05TKCGKDGWNEA8GGZZ	{}	\N	2026-04-26 13:47:01.475-04	2026-04-26 13:47:01.475-04	\N
casm_01KQ5EDQAVRTS18N09MNVV910F	cart_01KQ33MVP7KGA11MYKWW38JW88	Envio Expresso	\N	20	{"value": "20", "precision": 20}	f	so_01KP9XXK06FFXAW568NE6BDEET	{}	\N	2026-04-26 13:47:00.827-04	2026-04-26 13:47:01.476-04	2026-04-26 13:47:01.476-04
casm_01KQ5KX4KAQA00RTWC9XV2SHC2	cart_01KQ5KWHCMDZR40WS4C208K5RA	Envio Padrão	\N	20	{"value": "20", "precision": 20}	f	so_01KP9XXK05TKCGKDGWNEA8GGZZ	{}	\N	2026-04-26 15:22:48.81-04	2026-04-26 15:22:48.81-04	\N
\.


--
-- Data for Name: cart_shipping_method_adjustment; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.cart_shipping_method_adjustment (id, description, promotion_id, code, amount, raw_amount, provider_id, metadata, created_at, updated_at, deleted_at, shipping_method_id) FROM stdin;
\.


--
-- Data for Name: cart_shipping_method_tax_line; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.cart_shipping_method_tax_line (id, description, tax_rate_id, code, rate, provider_id, metadata, created_at, updated_at, deleted_at, shipping_method_id) FROM stdin;
\.


--
-- Data for Name: credit_line; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.credit_line (id, cart_id, reference, reference_id, amount, raw_amount, metadata, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: currency; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.currency (code, symbol, symbol_native, decimal_digits, rounding, raw_rounding, name, created_at, updated_at, deleted_at) FROM stdin;
usd	$	$	2	0	{"value": "0", "precision": 20}	US Dollar	2026-04-15 21:18:42.946-04	2026-04-15 21:18:42.946-04	\N
cad	CA$	$	2	0	{"value": "0", "precision": 20}	Canadian Dollar	2026-04-15 21:18:42.947-04	2026-04-15 21:18:42.947-04	\N
eur	€	€	2	0	{"value": "0", "precision": 20}	Euro	2026-04-15 21:18:42.947-04	2026-04-15 21:18:42.947-04	\N
aed	AED	د.إ.‏	2	0	{"value": "0", "precision": 20}	United Arab Emirates Dirham	2026-04-15 21:18:42.948-04	2026-04-15 21:18:42.948-04	\N
afn	Af	؋	0	0	{"value": "0", "precision": 20}	Afghan Afghani	2026-04-15 21:18:42.948-04	2026-04-15 21:18:42.948-04	\N
all	ALL	Lek	0	0	{"value": "0", "precision": 20}	Albanian Lek	2026-04-15 21:18:42.948-04	2026-04-15 21:18:42.948-04	\N
amd	AMD	դր.	0	0	{"value": "0", "precision": 20}	Armenian Dram	2026-04-15 21:18:42.948-04	2026-04-15 21:18:42.948-04	\N
ars	AR$	$	2	0	{"value": "0", "precision": 20}	Argentine Peso	2026-04-15 21:18:42.948-04	2026-04-15 21:18:42.948-04	\N
aud	AU$	$	2	0	{"value": "0", "precision": 20}	Australian Dollar	2026-04-15 21:18:42.948-04	2026-04-15 21:18:42.948-04	\N
azn	man.	ман.	2	0	{"value": "0", "precision": 20}	Azerbaijani Manat	2026-04-15 21:18:42.948-04	2026-04-15 21:18:42.948-04	\N
bam	KM	KM	2	0	{"value": "0", "precision": 20}	Bosnia-Herzegovina Convertible Mark	2026-04-15 21:18:42.948-04	2026-04-15 21:18:42.948-04	\N
bdt	Tk	৳	2	0	{"value": "0", "precision": 20}	Bangladeshi Taka	2026-04-15 21:18:42.949-04	2026-04-15 21:18:42.949-04	\N
bgn	BGN	лв.	2	0	{"value": "0", "precision": 20}	Bulgarian Lev	2026-04-15 21:18:42.949-04	2026-04-15 21:18:42.949-04	\N
bhd	BD	د.ب.‏	3	0	{"value": "0", "precision": 20}	Bahraini Dinar	2026-04-15 21:18:42.949-04	2026-04-15 21:18:42.949-04	\N
bif	FBu	FBu	0	0	{"value": "0", "precision": 20}	Burundian Franc	2026-04-15 21:18:42.949-04	2026-04-15 21:18:42.949-04	\N
bnd	BN$	$	2	0	{"value": "0", "precision": 20}	Brunei Dollar	2026-04-15 21:18:42.949-04	2026-04-15 21:18:42.949-04	\N
bob	Bs	Bs	2	0	{"value": "0", "precision": 20}	Bolivian Boliviano	2026-04-15 21:18:42.949-04	2026-04-15 21:18:42.949-04	\N
brl	R$	R$	2	0	{"value": "0", "precision": 20}	Brazilian Real	2026-04-15 21:18:42.949-04	2026-04-15 21:18:42.949-04	\N
bwp	BWP	P	2	0	{"value": "0", "precision": 20}	Botswanan Pula	2026-04-15 21:18:42.949-04	2026-04-15 21:18:42.949-04	\N
byn	Br	руб.	2	0	{"value": "0", "precision": 20}	Belarusian Ruble	2026-04-15 21:18:42.949-04	2026-04-15 21:18:42.949-04	\N
bzd	BZ$	$	2	0	{"value": "0", "precision": 20}	Belize Dollar	2026-04-15 21:18:42.949-04	2026-04-15 21:18:42.949-04	\N
cdf	CDF	FrCD	2	0	{"value": "0", "precision": 20}	Congolese Franc	2026-04-15 21:18:42.949-04	2026-04-15 21:18:42.949-04	\N
chf	CHF	CHF	2	0.05	{"value": "0.05", "precision": 20}	Swiss Franc	2026-04-15 21:18:42.949-04	2026-04-15 21:18:42.949-04	\N
clp	CL$	$	0	0	{"value": "0", "precision": 20}	Chilean Peso	2026-04-15 21:18:42.949-04	2026-04-15 21:18:42.949-04	\N
cny	CN¥	CN¥	2	0	{"value": "0", "precision": 20}	Chinese Yuan	2026-04-15 21:18:42.949-04	2026-04-15 21:18:42.949-04	\N
cop	CO$	$	0	0	{"value": "0", "precision": 20}	Colombian Peso	2026-04-15 21:18:42.949-04	2026-04-15 21:18:42.949-04	\N
crc	₡	₡	0	0	{"value": "0", "precision": 20}	Costa Rican Colón	2026-04-15 21:18:42.949-04	2026-04-15 21:18:42.949-04	\N
cve	CV$	CV$	2	0	{"value": "0", "precision": 20}	Cape Verdean Escudo	2026-04-15 21:18:42.949-04	2026-04-15 21:18:42.949-04	\N
czk	Kč	Kč	2	0	{"value": "0", "precision": 20}	Czech Republic Koruna	2026-04-15 21:18:42.949-04	2026-04-15 21:18:42.949-04	\N
djf	Fdj	Fdj	0	0	{"value": "0", "precision": 20}	Djiboutian Franc	2026-04-15 21:18:42.949-04	2026-04-15 21:18:42.949-04	\N
dkk	Dkr	kr	2	0	{"value": "0", "precision": 20}	Danish Krone	2026-04-15 21:18:42.949-04	2026-04-15 21:18:42.949-04	\N
dop	RD$	RD$	2	0	{"value": "0", "precision": 20}	Dominican Peso	2026-04-15 21:18:42.949-04	2026-04-15 21:18:42.949-04	\N
dzd	DA	د.ج.‏	2	0	{"value": "0", "precision": 20}	Algerian Dinar	2026-04-15 21:18:42.949-04	2026-04-15 21:18:42.949-04	\N
eek	Ekr	kr	2	0	{"value": "0", "precision": 20}	Estonian Kroon	2026-04-15 21:18:42.949-04	2026-04-15 21:18:42.949-04	\N
egp	EGP	ج.م.‏	2	0	{"value": "0", "precision": 20}	Egyptian Pound	2026-04-15 21:18:42.949-04	2026-04-15 21:18:42.949-04	\N
ern	Nfk	Nfk	2	0	{"value": "0", "precision": 20}	Eritrean Nakfa	2026-04-15 21:18:42.949-04	2026-04-15 21:18:42.949-04	\N
etb	Br	Br	2	0	{"value": "0", "precision": 20}	Ethiopian Birr	2026-04-15 21:18:42.95-04	2026-04-15 21:18:42.95-04	\N
gbp	£	£	2	0	{"value": "0", "precision": 20}	British Pound Sterling	2026-04-15 21:18:42.95-04	2026-04-15 21:18:42.95-04	\N
gel	GEL	GEL	2	0	{"value": "0", "precision": 20}	Georgian Lari	2026-04-15 21:18:42.95-04	2026-04-15 21:18:42.95-04	\N
ghs	GH₵	GH₵	2	0	{"value": "0", "precision": 20}	Ghanaian Cedi	2026-04-15 21:18:42.95-04	2026-04-15 21:18:42.95-04	\N
gnf	FG	FG	0	0	{"value": "0", "precision": 20}	Guinean Franc	2026-04-15 21:18:42.95-04	2026-04-15 21:18:42.95-04	\N
gtq	GTQ	Q	2	0	{"value": "0", "precision": 20}	Guatemalan Quetzal	2026-04-15 21:18:42.95-04	2026-04-15 21:18:42.95-04	\N
hkd	HK$	$	2	0	{"value": "0", "precision": 20}	Hong Kong Dollar	2026-04-15 21:18:42.95-04	2026-04-15 21:18:42.95-04	\N
hnl	HNL	L	2	0	{"value": "0", "precision": 20}	Honduran Lempira	2026-04-15 21:18:42.95-04	2026-04-15 21:18:42.95-04	\N
hrk	kn	kn	2	0	{"value": "0", "precision": 20}	Croatian Kuna	2026-04-15 21:18:42.95-04	2026-04-15 21:18:42.95-04	\N
huf	Ft	Ft	0	0	{"value": "0", "precision": 20}	Hungarian Forint	2026-04-15 21:18:42.95-04	2026-04-15 21:18:42.95-04	\N
idr	Rp	Rp	0	0	{"value": "0", "precision": 20}	Indonesian Rupiah	2026-04-15 21:18:42.95-04	2026-04-15 21:18:42.95-04	\N
ils	₪	₪	2	0	{"value": "0", "precision": 20}	Israeli New Sheqel	2026-04-15 21:18:42.95-04	2026-04-15 21:18:42.95-04	\N
inr	Rs	₹	2	0	{"value": "0", "precision": 20}	Indian Rupee	2026-04-15 21:18:42.95-04	2026-04-15 21:18:42.95-04	\N
iqd	IQD	د.ع.‏	0	0	{"value": "0", "precision": 20}	Iraqi Dinar	2026-04-15 21:18:42.95-04	2026-04-15 21:18:42.95-04	\N
irr	IRR	﷼	0	0	{"value": "0", "precision": 20}	Iranian Rial	2026-04-15 21:18:42.95-04	2026-04-15 21:18:42.95-04	\N
isk	Ikr	kr	0	0	{"value": "0", "precision": 20}	Icelandic Króna	2026-04-15 21:18:42.95-04	2026-04-15 21:18:42.95-04	\N
jmd	J$	$	2	0	{"value": "0", "precision": 20}	Jamaican Dollar	2026-04-15 21:18:42.95-04	2026-04-15 21:18:42.95-04	\N
jod	JD	د.أ.‏	3	0	{"value": "0", "precision": 20}	Jordanian Dinar	2026-04-15 21:18:42.95-04	2026-04-15 21:18:42.95-04	\N
jpy	¥	￥	0	0	{"value": "0", "precision": 20}	Japanese Yen	2026-04-15 21:18:42.95-04	2026-04-15 21:18:42.95-04	\N
kes	Ksh	Ksh	2	0	{"value": "0", "precision": 20}	Kenyan Shilling	2026-04-15 21:18:42.95-04	2026-04-15 21:18:42.95-04	\N
khr	KHR	៛	2	0	{"value": "0", "precision": 20}	Cambodian Riel	2026-04-15 21:18:42.95-04	2026-04-15 21:18:42.95-04	\N
kmf	CF	FC	0	0	{"value": "0", "precision": 20}	Comorian Franc	2026-04-15 21:18:42.95-04	2026-04-15 21:18:42.95-04	\N
krw	₩	₩	0	0	{"value": "0", "precision": 20}	South Korean Won	2026-04-15 21:18:42.95-04	2026-04-15 21:18:42.95-04	\N
kwd	KD	د.ك.‏	3	0	{"value": "0", "precision": 20}	Kuwaiti Dinar	2026-04-15 21:18:42.95-04	2026-04-15 21:18:42.95-04	\N
kzt	KZT	тңг.	2	0	{"value": "0", "precision": 20}	Kazakhstani Tenge	2026-04-15 21:18:42.95-04	2026-04-15 21:18:42.95-04	\N
lbp	LB£	ل.ل.‏	0	0	{"value": "0", "precision": 20}	Lebanese Pound	2026-04-15 21:18:42.95-04	2026-04-15 21:18:42.95-04	\N
lkr	SLRs	SL Re	2	0	{"value": "0", "precision": 20}	Sri Lankan Rupee	2026-04-15 21:18:42.95-04	2026-04-15 21:18:42.95-04	\N
ltl	Lt	Lt	2	0	{"value": "0", "precision": 20}	Lithuanian Litas	2026-04-15 21:18:42.95-04	2026-04-15 21:18:42.95-04	\N
lvl	Ls	Ls	2	0	{"value": "0", "precision": 20}	Latvian Lats	2026-04-15 21:18:42.95-04	2026-04-15 21:18:42.95-04	\N
lyd	LD	د.ل.‏	3	0	{"value": "0", "precision": 20}	Libyan Dinar	2026-04-15 21:18:42.95-04	2026-04-15 21:18:42.95-04	\N
mad	MAD	د.م.‏	2	0	{"value": "0", "precision": 20}	Moroccan Dirham	2026-04-15 21:18:42.95-04	2026-04-15 21:18:42.95-04	\N
mdl	MDL	MDL	2	0	{"value": "0", "precision": 20}	Moldovan Leu	2026-04-15 21:18:42.95-04	2026-04-15 21:18:42.95-04	\N
mga	MGA	MGA	0	0	{"value": "0", "precision": 20}	Malagasy Ariary	2026-04-15 21:18:42.95-04	2026-04-15 21:18:42.95-04	\N
mkd	MKD	MKD	2	0	{"value": "0", "precision": 20}	Macedonian Denar	2026-04-15 21:18:42.951-04	2026-04-15 21:18:42.951-04	\N
mmk	MMK	K	0	0	{"value": "0", "precision": 20}	Myanma Kyat	2026-04-15 21:18:42.951-04	2026-04-15 21:18:42.951-04	\N
mnt	MNT	₮	0	0	{"value": "0", "precision": 20}	Mongolian Tugrig	2026-04-15 21:18:42.951-04	2026-04-15 21:18:42.951-04	\N
mop	MOP$	MOP$	2	0	{"value": "0", "precision": 20}	Macanese Pataca	2026-04-15 21:18:42.951-04	2026-04-15 21:18:42.951-04	\N
mur	MURs	MURs	0	0	{"value": "0", "precision": 20}	Mauritian Rupee	2026-04-15 21:18:42.951-04	2026-04-15 21:18:42.951-04	\N
mwk	K	K	2	0	{"value": "0", "precision": 20}	Malawian Kwacha	2026-04-15 21:18:42.951-04	2026-04-15 21:18:42.951-04	\N
mxn	MX$	$	2	0	{"value": "0", "precision": 20}	Mexican Peso	2026-04-15 21:18:42.951-04	2026-04-15 21:18:42.951-04	\N
myr	RM	RM	2	0	{"value": "0", "precision": 20}	Malaysian Ringgit	2026-04-15 21:18:42.951-04	2026-04-15 21:18:42.951-04	\N
mzn	MTn	MTn	2	0	{"value": "0", "precision": 20}	Mozambican Metical	2026-04-15 21:18:42.951-04	2026-04-15 21:18:42.951-04	\N
nad	N$	N$	2	0	{"value": "0", "precision": 20}	Namibian Dollar	2026-04-15 21:18:42.951-04	2026-04-15 21:18:42.951-04	\N
ngn	₦	₦	2	0	{"value": "0", "precision": 20}	Nigerian Naira	2026-04-15 21:18:42.951-04	2026-04-15 21:18:42.951-04	\N
nio	C$	C$	2	0	{"value": "0", "precision": 20}	Nicaraguan Córdoba	2026-04-15 21:18:42.951-04	2026-04-15 21:18:42.951-04	\N
nok	Nkr	kr	2	0	{"value": "0", "precision": 20}	Norwegian Krone	2026-04-15 21:18:42.951-04	2026-04-15 21:18:42.951-04	\N
npr	NPRs	नेरू	2	0	{"value": "0", "precision": 20}	Nepalese Rupee	2026-04-15 21:18:42.951-04	2026-04-15 21:18:42.951-04	\N
nzd	NZ$	$	2	0	{"value": "0", "precision": 20}	New Zealand Dollar	2026-04-15 21:18:42.951-04	2026-04-15 21:18:42.951-04	\N
omr	OMR	ر.ع.‏	3	0	{"value": "0", "precision": 20}	Omani Rial	2026-04-15 21:18:42.951-04	2026-04-15 21:18:42.951-04	\N
pab	B/.	B/.	2	0	{"value": "0", "precision": 20}	Panamanian Balboa	2026-04-15 21:18:42.951-04	2026-04-15 21:18:42.951-04	\N
pen	S/.	S/.	2	0	{"value": "0", "precision": 20}	Peruvian Nuevo Sol	2026-04-15 21:18:42.951-04	2026-04-15 21:18:42.951-04	\N
php	₱	₱	2	0	{"value": "0", "precision": 20}	Philippine Peso	2026-04-15 21:18:42.951-04	2026-04-15 21:18:42.951-04	\N
pkr	PKRs	₨	0	0	{"value": "0", "precision": 20}	Pakistani Rupee	2026-04-15 21:18:42.951-04	2026-04-15 21:18:42.951-04	\N
pln	zł	zł	2	0	{"value": "0", "precision": 20}	Polish Zloty	2026-04-15 21:18:42.951-04	2026-04-15 21:18:42.951-04	\N
pyg	₲	₲	0	0	{"value": "0", "precision": 20}	Paraguayan Guarani	2026-04-15 21:18:42.951-04	2026-04-15 21:18:42.951-04	\N
qar	QR	ر.ق.‏	2	0	{"value": "0", "precision": 20}	Qatari Rial	2026-04-15 21:18:42.951-04	2026-04-15 21:18:42.951-04	\N
ron	RON	RON	2	0	{"value": "0", "precision": 20}	Romanian Leu	2026-04-15 21:18:42.951-04	2026-04-15 21:18:42.951-04	\N
rsd	din.	дин.	0	0	{"value": "0", "precision": 20}	Serbian Dinar	2026-04-15 21:18:42.951-04	2026-04-15 21:18:42.951-04	\N
rub	RUB	₽.	2	0	{"value": "0", "precision": 20}	Russian Ruble	2026-04-15 21:18:42.951-04	2026-04-15 21:18:42.951-04	\N
rwf	RWF	FR	0	0	{"value": "0", "precision": 20}	Rwandan Franc	2026-04-15 21:18:42.951-04	2026-04-15 21:18:42.951-04	\N
sar	SR	ر.س.‏	2	0	{"value": "0", "precision": 20}	Saudi Riyal	2026-04-15 21:18:42.951-04	2026-04-15 21:18:42.951-04	\N
sdg	SDG	SDG	2	0	{"value": "0", "precision": 20}	Sudanese Pound	2026-04-15 21:18:42.951-04	2026-04-15 21:18:42.951-04	\N
sek	Skr	kr	2	0	{"value": "0", "precision": 20}	Swedish Krona	2026-04-15 21:18:42.951-04	2026-04-15 21:18:42.951-04	\N
sgd	S$	$	2	0	{"value": "0", "precision": 20}	Singapore Dollar	2026-04-15 21:18:42.951-04	2026-04-15 21:18:42.951-04	\N
sos	Ssh	Ssh	0	0	{"value": "0", "precision": 20}	Somali Shilling	2026-04-15 21:18:42.951-04	2026-04-15 21:18:42.951-04	\N
syp	SY£	ل.س.‏	0	0	{"value": "0", "precision": 20}	Syrian Pound	2026-04-15 21:18:42.951-04	2026-04-15 21:18:42.951-04	\N
thb	฿	฿	2	0	{"value": "0", "precision": 20}	Thai Baht	2026-04-15 21:18:42.952-04	2026-04-15 21:18:42.952-04	\N
tnd	DT	د.ت.‏	3	0	{"value": "0", "precision": 20}	Tunisian Dinar	2026-04-15 21:18:42.952-04	2026-04-15 21:18:42.952-04	\N
top	T$	T$	2	0	{"value": "0", "precision": 20}	Tongan Paʻanga	2026-04-15 21:18:42.952-04	2026-04-15 21:18:42.952-04	\N
tjs	TJS	с.	2	0	{"value": "0", "precision": 20}	Tajikistani Somoni	2026-04-15 21:18:42.952-04	2026-04-15 21:18:42.952-04	\N
try	₺	₺	2	0	{"value": "0", "precision": 20}	Turkish Lira	2026-04-15 21:18:42.952-04	2026-04-15 21:18:42.952-04	\N
ttd	TT$	$	2	0	{"value": "0", "precision": 20}	Trinidad and Tobago Dollar	2026-04-15 21:18:42.952-04	2026-04-15 21:18:42.952-04	\N
twd	NT$	NT$	2	0	{"value": "0", "precision": 20}	New Taiwan Dollar	2026-04-15 21:18:42.952-04	2026-04-15 21:18:42.952-04	\N
tzs	TSh	TSh	0	0	{"value": "0", "precision": 20}	Tanzanian Shilling	2026-04-15 21:18:42.952-04	2026-04-15 21:18:42.952-04	\N
uah	₴	₴	2	0	{"value": "0", "precision": 20}	Ukrainian Hryvnia	2026-04-15 21:18:42.952-04	2026-04-15 21:18:42.952-04	\N
ugx	USh	USh	0	0	{"value": "0", "precision": 20}	Ugandan Shilling	2026-04-15 21:18:42.952-04	2026-04-15 21:18:42.952-04	\N
uyu	$U	$	2	0	{"value": "0", "precision": 20}	Uruguayan Peso	2026-04-15 21:18:42.952-04	2026-04-15 21:18:42.952-04	\N
uzs	UZS	UZS	0	0	{"value": "0", "precision": 20}	Uzbekistan Som	2026-04-15 21:18:42.952-04	2026-04-15 21:18:42.952-04	\N
vef	Bs.F.	Bs.F.	2	0	{"value": "0", "precision": 20}	Venezuelan Bolívar	2026-04-15 21:18:42.952-04	2026-04-15 21:18:42.952-04	\N
vnd	₫	₫	0	0	{"value": "0", "precision": 20}	Vietnamese Dong	2026-04-15 21:18:42.952-04	2026-04-15 21:18:42.952-04	\N
xaf	FCFA	FCFA	0	0	{"value": "0", "precision": 20}	CFA Franc BEAC	2026-04-15 21:18:42.952-04	2026-04-15 21:18:42.952-04	\N
xof	CFA	CFA	0	0	{"value": "0", "precision": 20}	CFA Franc BCEAO	2026-04-15 21:18:42.952-04	2026-04-15 21:18:42.952-04	\N
xpf	₣	₣	0	0	{"value": "0", "precision": 20}	CFP Franc	2026-04-15 21:18:42.952-04	2026-04-15 21:18:42.952-04	\N
yer	YR	ر.ي.‏	0	0	{"value": "0", "precision": 20}	Yemeni Rial	2026-04-15 21:18:42.952-04	2026-04-15 21:18:42.952-04	\N
zar	R	R	2	0	{"value": "0", "precision": 20}	South African Rand	2026-04-15 21:18:42.952-04	2026-04-15 21:18:42.952-04	\N
zmk	ZK	ZK	0	0	{"value": "0", "precision": 20}	Zambian Kwacha	2026-04-15 21:18:42.952-04	2026-04-15 21:18:42.952-04	\N
zwl	ZWL$	ZWL$	0	0	{"value": "0", "precision": 20}	Zimbabwean Dollar	2026-04-15 21:18:42.952-04	2026-04-15 21:18:42.952-04	\N
\.


--
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.customer (id, company_name, first_name, last_name, email, phone, has_account, metadata, created_at, updated_at, deleted_at, created_by) FROM stdin;
cus_01KQ5DE2ZGD5GKGPCKNJ49468C	\N	\N	\N	smlzanatto64@gmail.com	\N	f	\N	2026-04-26 13:29:44.177-04	2026-04-26 13:29:44.177-04	\N	\N
\.


--
-- Data for Name: customer_account_holder; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.customer_account_holder (customer_id, account_holder_id, id, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: customer_address; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.customer_address (id, customer_id, address_name, is_default_shipping, is_default_billing, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: customer_group; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.customer_group (id, name, metadata, created_by, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: customer_group_customer; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.customer_group_customer (id, customer_id, customer_group_id, metadata, created_at, updated_at, created_by, deleted_at) FROM stdin;
\.


--
-- Data for Name: fulfillment; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.fulfillment (id, location_id, packed_at, shipped_at, delivered_at, canceled_at, data, provider_id, shipping_option_id, metadata, delivery_address_id, created_at, updated_at, deleted_at, marked_shipped_by, created_by, requires_shipping) FROM stdin;
\.


--
-- Data for Name: fulfillment_address; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.fulfillment_address (id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: fulfillment_item; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.fulfillment_item (id, title, sku, barcode, quantity, raw_quantity, line_item_id, inventory_item_id, fulfillment_id, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: fulfillment_label; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.fulfillment_label (id, tracking_number, tracking_url, label_url, fulfillment_id, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: fulfillment_provider; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.fulfillment_provider (id, is_enabled, created_at, updated_at, deleted_at) FROM stdin;
manual_manual	t	2026-04-15 21:18:43.031-04	2026-04-15 21:18:43.031-04	\N
\.


--
-- Data for Name: fulfillment_set; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.fulfillment_set (id, name, type, metadata, created_at, updated_at, deleted_at) FROM stdin;
fuset_01KP9XXJYM57WTWAT3067QY2PC	European Warehouse delivery	shipping	\N	2026-04-15 21:19:05.173-04	2026-04-15 21:19:05.173-04	\N
fuset_01KQ5EAXPZV4R7RBN423K48BES	Estoque Brasil pick up	pickup	\N	2026-04-26 13:45:29.055-04	2026-04-26 13:45:29.056-04	\N
\.


--
-- Data for Name: geo_zone; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.geo_zone (id, type, country_code, province_code, city, service_zone_id, postal_expression, metadata, created_at, updated_at, deleted_at) FROM stdin;
fgz_01KQ59D5TXZYBQWG82KGGAHPKM	country	br	\N	\N	serzo_01KP9XXJYMGQ9Q9P7MFZBRCMMD	\N	\N	2026-04-26 12:19:20.03-04	2026-04-26 12:19:20.03-04	\N
fgz_01KQ5EBB6X299W1PME9X5YZM20	country	br	\N	\N	serzo_01KQ5EBB6X83ZTMFDKVNP567GF	\N	\N	2026-04-26 13:45:42.877-04	2026-04-26 13:45:42.877-04	\N
\.


--
-- Data for Name: homepage_section; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.homepage_section (id, key, title, type, config, is_active, "order", created_at, updated_at, deleted_at) FROM stdin;
01KQ58ZS2012V5FEVFJSKMM6D3	hero_banner	Banner Principal	hero_banner	{"collection_id": "pcol_01KQ38Q8SHY9MB9TSSBPPG406Y"}	t	0	2026-04-26 12:12:00.96-04	2026-04-26 12:12:18.294-04	\N
01KQ590Y4HW98H8HB3WCV001M5	lancamentos	Lançamentos	single_category_grid	{"collection_id": "pcol_01KQ38Q8SHY9MB9TSSBPPG406Y"}	t	0	2026-04-26 12:12:38.929-04	2026-04-26 12:12:38.929-04	\N
\.


--
-- Data for Name: image; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.image (id, url, metadata, created_at, updated_at, deleted_at, rank, product_id) FROM stdin;
img_01KP9XXK36TJWV2PFGBNA6H633	https://medusa-public-images.s3.eu-west-1.amazonaws.com/tee-black-front.png	\N	2026-04-15 21:19:05.323-04	2026-04-25 17:27:07.97-04	2026-04-25 17:27:07.944-04	0	prod_01KP9XXK336DRTVSEMPQ5CE6S0
img_01KP9XXK36TS4X3YK9B3GH8KD2	https://medusa-public-images.s3.eu-west-1.amazonaws.com/tee-black-back.png	\N	2026-04-15 21:19:05.323-04	2026-04-25 17:27:07.971-04	2026-04-25 17:27:07.944-04	1	prod_01KP9XXK336DRTVSEMPQ5CE6S0
img_01KP9XXK36MN5V8083HXX94EZH	https://medusa-public-images.s3.eu-west-1.amazonaws.com/tee-white-front.png	\N	2026-04-15 21:19:05.323-04	2026-04-25 17:27:07.971-04	2026-04-25 17:27:07.944-04	2	prod_01KP9XXK336DRTVSEMPQ5CE6S0
img_01KP9XXK36G3YS6JF71VHWSHT3	https://medusa-public-images.s3.eu-west-1.amazonaws.com/tee-white-back.png	\N	2026-04-15 21:19:05.323-04	2026-04-25 17:27:07.971-04	2026-04-25 17:27:07.944-04	3	prod_01KP9XXK336DRTVSEMPQ5CE6S0
img_01KP9XXK39KNTG8Q8105BKED35	https://medusa-public-images.s3.eu-west-1.amazonaws.com/sweatpants-gray-front.png	\N	2026-04-15 21:19:05.323-04	2026-04-25 17:27:12.724-04	2026-04-25 17:27:12.714-04	0	prod_01KP9XXK339HBJ8FV0XSZP26TE
img_01KP9XXK39WE40C6X7REN6V7RE	https://medusa-public-images.s3.eu-west-1.amazonaws.com/sweatpants-gray-back.png	\N	2026-04-15 21:19:05.324-04	2026-04-25 17:27:12.725-04	2026-04-25 17:27:12.714-04	1	prod_01KP9XXK339HBJ8FV0XSZP26TE
img_01KP9XXK3AW33AZNG5W14YDZNQ	https://medusa-public-images.s3.eu-west-1.amazonaws.com/shorts-vintage-front.png	\N	2026-04-15 21:19:05.324-04	2026-04-25 17:27:14.645-04	2026-04-25 17:27:14.63-04	0	prod_01KP9XXK33JPQCBPF8GWFGWXET
img_01KP9XXK3AMHXMA92STKYT3KJZ	https://medusa-public-images.s3.eu-west-1.amazonaws.com/shorts-vintage-back.png	\N	2026-04-15 21:19:05.324-04	2026-04-25 17:27:14.645-04	2026-04-25 17:27:14.63-04	1	prod_01KP9XXK33JPQCBPF8GWFGWXET
img_01KP9XXK38RG02KXRATG6GCE9R	https://medusa-public-images.s3.eu-west-1.amazonaws.com/sweatshirt-vintage-front.png	\N	2026-04-15 21:19:05.323-04	2026-04-25 17:27:16.505-04	2026-04-25 17:27:16.495-04	0	prod_01KP9XXK33P2MN4PW6H7AMPSX6
img_01KP9XXK38Y9047VXGBYSJE1E8	https://medusa-public-images.s3.eu-west-1.amazonaws.com/sweatshirt-vintage-back.png	\N	2026-04-15 21:19:05.323-04	2026-04-25 17:27:16.505-04	2026-04-25 17:27:16.495-04	1	prod_01KP9XXK33P2MN4PW6H7AMPSX6
img_01KQ394S3YRSPMP54WAJ5NA4S8	http://localhost:9000/static/1777152975705-camiseta%20super%20ra%C3%83%C2%A7a%20comprimido.png	\N	2026-04-25 17:36:16.001-04	2026-04-25 17:36:16.001-04	\N	0	prod_01KQ394S3SVPRBN5HMMGASG417
\.


--
-- Data for Name: inventory_item; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.inventory_item (id, created_at, updated_at, deleted_at, sku, origin_country, hs_code, mid_code, material, weight, length, height, width, requires_shipping, description, title, thumbnail, metadata) FROM stdin;
iitem_01KP9XXK6H0D3XYEB900QTXM44	2026-04-15 21:19:05.427-04	2026-04-25 17:27:07.864-04	2026-04-25 17:27:07.862-04	SHIRT-L-BLACK	\N	\N	\N	\N	\N	\N	\N	\N	t	L / Black	L / Black	\N	\N
iitem_01KP9XXK6HA6MFV01B0B2M3E7D	2026-04-15 21:19:05.427-04	2026-04-25 17:27:07.886-04	2026-04-25 17:27:07.862-04	SHIRT-L-WHITE	\N	\N	\N	\N	\N	\N	\N	\N	t	L / White	L / White	\N	\N
iitem_01KP9XXK6HJXV6EKR02PRSAXWW	2026-04-15 21:19:05.427-04	2026-04-25 17:27:07.892-04	2026-04-25 17:27:07.862-04	SHIRT-M-BLACK	\N	\N	\N	\N	\N	\N	\N	\N	t	M / Black	M / Black	\N	\N
iitem_01KP9XXK6HT9VQ8PT158SZFS2K	2026-04-15 21:19:05.427-04	2026-04-25 17:27:07.897-04	2026-04-25 17:27:07.862-04	SHIRT-M-WHITE	\N	\N	\N	\N	\N	\N	\N	\N	t	M / White	M / White	\N	\N
iitem_01KP9XXK6HWDTR4VS0N41QB9QP	2026-04-15 21:19:05.427-04	2026-04-25 17:27:07.901-04	2026-04-25 17:27:07.862-04	SHIRT-S-BLACK	\N	\N	\N	\N	\N	\N	\N	\N	t	S / Black	S / Black	\N	\N
iitem_01KP9XXK6H2WCDRFGGY30V49SS	2026-04-15 21:19:05.427-04	2026-04-25 17:27:07.907-04	2026-04-25 17:27:07.862-04	SHIRT-S-WHITE	\N	\N	\N	\N	\N	\N	\N	\N	t	S / White	S / White	\N	\N
iitem_01KP9XXK6H3RHJAN94CGGJEK3P	2026-04-15 21:19:05.428-04	2026-04-25 17:27:07.912-04	2026-04-25 17:27:07.862-04	SHIRT-XL-BLACK	\N	\N	\N	\N	\N	\N	\N	\N	t	XL / Black	XL / Black	\N	\N
iitem_01KP9XXK6HZ6JW7E06GVGZBZBJ	2026-04-15 21:19:05.428-04	2026-04-25 17:27:07.916-04	2026-04-25 17:27:07.862-04	SHIRT-XL-WHITE	\N	\N	\N	\N	\N	\N	\N	\N	t	XL / White	XL / White	\N	\N
iitem_01KP9XXK6JH1T2AWQ1RE93HCP7	2026-04-15 21:19:05.428-04	2026-04-25 17:27:12.687-04	2026-04-25 17:27:12.687-04	SWEATPANTS-L	\N	\N	\N	\N	\N	\N	\N	\N	t	L	L	\N	\N
iitem_01KP9XXK6J5AM100AKPWD642Z2	2026-04-15 21:19:05.428-04	2026-04-25 17:27:12.69-04	2026-04-25 17:27:12.687-04	SWEATPANTS-M	\N	\N	\N	\N	\N	\N	\N	\N	t	M	M	\N	\N
iitem_01KP9XXK6JQZDEQPN3R1HSGM6P	2026-04-15 21:19:05.428-04	2026-04-25 17:27:12.694-04	2026-04-25 17:27:12.687-04	SWEATPANTS-S	\N	\N	\N	\N	\N	\N	\N	\N	t	S	S	\N	\N
iitem_01KP9XXK6JMDNTBHFZWJWW2MAA	2026-04-15 21:19:05.428-04	2026-04-25 17:27:12.698-04	2026-04-25 17:27:12.687-04	SWEATPANTS-XL	\N	\N	\N	\N	\N	\N	\N	\N	t	XL	XL	\N	\N
iitem_01KP9XXK6KZRJTXGYGBXDK1HC9	2026-04-15 21:19:05.428-04	2026-04-25 17:27:14.602-04	2026-04-25 17:27:14.601-04	SHORTS-L	\N	\N	\N	\N	\N	\N	\N	\N	t	L	L	\N	\N
iitem_01KP9XXK6KMTJM6CH7DKQB981C	2026-04-15 21:19:05.428-04	2026-04-25 17:27:14.607-04	2026-04-25 17:27:14.601-04	SHORTS-M	\N	\N	\N	\N	\N	\N	\N	\N	t	M	M	\N	\N
iitem_01KP9XXK6KV1ZCVJ97CPPY3REM	2026-04-15 21:19:05.428-04	2026-04-25 17:27:14.61-04	2026-04-25 17:27:14.601-04	SHORTS-S	\N	\N	\N	\N	\N	\N	\N	\N	t	S	S	\N	\N
iitem_01KP9XXK6KWZME4MFCGGCYNY8A	2026-04-15 21:19:05.428-04	2026-04-25 17:27:14.614-04	2026-04-25 17:27:14.601-04	SHORTS-XL	\N	\N	\N	\N	\N	\N	\N	\N	t	XL	XL	\N	\N
iitem_01KP9XXK6JDD79RHA8231GQQVM	2026-04-15 21:19:05.428-04	2026-04-25 17:27:16.46-04	2026-04-25 17:27:16.46-04	SWEATSHIRT-L	\N	\N	\N	\N	\N	\N	\N	\N	t	L	L	\N	\N
iitem_01KP9XXK6J12TTCB8RSD98QPM0	2026-04-15 21:19:05.428-04	2026-04-25 17:27:16.465-04	2026-04-25 17:27:16.46-04	SWEATSHIRT-M	\N	\N	\N	\N	\N	\N	\N	\N	t	M	M	\N	\N
iitem_01KP9XXK6J9WDVJPF3YKKN7EJF	2026-04-15 21:19:05.428-04	2026-04-25 17:27:16.469-04	2026-04-25 17:27:16.46-04	SWEATSHIRT-S	\N	\N	\N	\N	\N	\N	\N	\N	t	S	S	\N	\N
iitem_01KP9XXK6JE7XK2605WP1QYQSB	2026-04-15 21:19:05.428-04	2026-04-25 17:27:16.475-04	2026-04-25 17:27:16.46-04	SWEATSHIRT-XL	\N	\N	\N	\N	\N	\N	\N	\N	t	XL	XL	\N	\N
iitem_01KQ59T8BYV4Q8F81QHD256E22	2026-04-26 12:26:28.606-04	2026-04-26 12:38:32.287-04	2026-04-26 12:38:32.286-04	CAM-CRISTO-VIVE-OVERSIZED	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	Camiseta Oversized Cristo Vive	\N	\N
iitem_01KQ5AGXS7YRPDHXAGAY4Z337Y	2026-04-26 12:38:51.431-04	2026-04-26 12:38:51.431-04	\N	CAM-CRISTO-VIVE-PP	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	Camiseta Cristo Vive - PP	\N	\N
iitem_01KQ5AHB1SX9T53HXXNGZWK361	2026-04-26 12:39:05.017-04	2026-04-26 12:39:05.017-04	\N	CAM-CRISTO-VIVE-P	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	Camiseta Cristo Vive - P	\N	\N
iitem_01KQ5AHRD49YPRDNR9A62E10NS	2026-04-26 12:39:18.693-04	2026-04-26 12:39:18.693-04	\N	CAM-CRISTO-VIVE-M	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	Camiseta Cristo Vive - M	\N	\N
iitem_01KQ5AJ4C7SNV9TNDF8GZYZYF3	2026-04-26 12:39:30.952-04	2026-04-26 12:39:30.952-04	\N	CAM-CRISTO-VIVE-G	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	Camiseta Cristo Vive - G	\N	\N
iitem_01KQ5AJHPG2NRKQZXDQ7RCQXBK	2026-04-26 12:39:44.592-04	2026-04-26 12:39:44.592-04	\N	CAM-CRISTO-VIVE-GG	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	Camiseta Cristo Vive - GG	\N	\N
\.


--
-- Data for Name: inventory_level; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.inventory_level (id, created_at, updated_at, deleted_at, inventory_item_id, location_id, stocked_quantity, reserved_quantity, incoming_quantity, metadata, raw_stocked_quantity, raw_reserved_quantity, raw_incoming_quantity) FROM stdin;
ilev_01KP9XXKA82B264KXT2E4MXA2X	2026-04-15 21:19:05.547-04	2026-04-25 17:27:07.886-04	2026-04-25 17:27:07.862-04	iitem_01KP9XXK6H0D3XYEB900QTXM44	sloc_01KP9XXJXJS8TKZ9MTY36N7EK3	1000000	0	0	\N	{"value": "1000000", "precision": 20}	{"value": "0", "precision": 20}	{"value": "0", "precision": 20}
ilev_01KP9XXKA9HCEA6JA5MWNEEXGZ	2026-04-15 21:19:05.547-04	2026-04-25 17:27:07.892-04	2026-04-25 17:27:07.862-04	iitem_01KP9XXK6HA6MFV01B0B2M3E7D	sloc_01KP9XXJXJS8TKZ9MTY36N7EK3	1000000	0	0	\N	{"value": "1000000", "precision": 20}	{"value": "0", "precision": 20}	{"value": "0", "precision": 20}
ilev_01KP9XXKA99Z7W661B87492BSY	2026-04-15 21:19:05.547-04	2026-04-25 17:27:07.897-04	2026-04-25 17:27:07.862-04	iitem_01KP9XXK6HJXV6EKR02PRSAXWW	sloc_01KP9XXJXJS8TKZ9MTY36N7EK3	1000000	0	0	\N	{"value": "1000000", "precision": 20}	{"value": "0", "precision": 20}	{"value": "0", "precision": 20}
ilev_01KP9XXKA93G428AXFVX7Y9JQ2	2026-04-15 21:19:05.547-04	2026-04-25 17:27:07.901-04	2026-04-25 17:27:07.862-04	iitem_01KP9XXK6HT9VQ8PT158SZFS2K	sloc_01KP9XXJXJS8TKZ9MTY36N7EK3	1000000	0	0	\N	{"value": "1000000", "precision": 20}	{"value": "0", "precision": 20}	{"value": "0", "precision": 20}
ilev_01KP9XXKA99XD1P86CBQ0P7S17	2026-04-15 21:19:05.547-04	2026-04-25 17:27:07.906-04	2026-04-25 17:27:07.862-04	iitem_01KP9XXK6HWDTR4VS0N41QB9QP	sloc_01KP9XXJXJS8TKZ9MTY36N7EK3	1000000	0	0	\N	{"value": "1000000", "precision": 20}	{"value": "0", "precision": 20}	{"value": "0", "precision": 20}
ilev_01KP9XXKA9KA0W5RGSSC90Q8E6	2026-04-15 21:19:05.547-04	2026-04-25 17:27:07.912-04	2026-04-25 17:27:07.862-04	iitem_01KP9XXK6H2WCDRFGGY30V49SS	sloc_01KP9XXJXJS8TKZ9MTY36N7EK3	1000000	0	0	\N	{"value": "1000000", "precision": 20}	{"value": "0", "precision": 20}	{"value": "0", "precision": 20}
ilev_01KP9XXKAA9EKKGM4FJBHS02ZD	2026-04-15 21:19:05.547-04	2026-04-25 17:27:12.69-04	2026-04-25 17:27:12.687-04	iitem_01KP9XXK6JH1T2AWQ1RE93HCP7	sloc_01KP9XXJXJS8TKZ9MTY36N7EK3	1000000	0	0	\N	{"value": "1000000", "precision": 20}	{"value": "0", "precision": 20}	{"value": "0", "precision": 20}
ilev_01KP9XXKA9N6BT2AHE7FA5RW80	2026-04-15 21:19:05.547-04	2026-04-25 17:27:12.694-04	2026-04-25 17:27:12.687-04	iitem_01KP9XXK6J5AM100AKPWD642Z2	sloc_01KP9XXJXJS8TKZ9MTY36N7EK3	1000000	0	0	\N	{"value": "1000000", "precision": 20}	{"value": "0", "precision": 20}	{"value": "0", "precision": 20}
ilev_01KP9XXKAAVT0MHP7TG24RKRSK	2026-04-15 21:19:05.547-04	2026-04-25 17:27:12.698-04	2026-04-25 17:27:12.687-04	iitem_01KP9XXK6JQZDEQPN3R1HSGM6P	sloc_01KP9XXJXJS8TKZ9MTY36N7EK3	1000000	0	0	\N	{"value": "1000000", "precision": 20}	{"value": "0", "precision": 20}	{"value": "0", "precision": 20}
ilev_01KP9XXKAAWPX63QGHBW9ESR5T	2026-04-15 21:19:05.547-04	2026-04-25 17:27:12.7-04	2026-04-25 17:27:12.687-04	iitem_01KP9XXK6JMDNTBHFZWJWW2MAA	sloc_01KP9XXJXJS8TKZ9MTY36N7EK3	1000000	0	0	\N	{"value": "1000000", "precision": 20}	{"value": "0", "precision": 20}	{"value": "0", "precision": 20}
ilev_01KP9XXKAAH0F92275NWAZ7JZR	2026-04-15 21:19:05.547-04	2026-04-25 17:27:14.607-04	2026-04-25 17:27:14.601-04	iitem_01KP9XXK6KZRJTXGYGBXDK1HC9	sloc_01KP9XXJXJS8TKZ9MTY36N7EK3	1000000	0	0	\N	{"value": "1000000", "precision": 20}	{"value": "0", "precision": 20}	{"value": "0", "precision": 20}
ilev_01KP9XXKAA20ZPD1E308K1PFGM	2026-04-15 21:19:05.547-04	2026-04-25 17:27:14.61-04	2026-04-25 17:27:14.601-04	iitem_01KP9XXK6KMTJM6CH7DKQB981C	sloc_01KP9XXJXJS8TKZ9MTY36N7EK3	1000000	0	0	\N	{"value": "1000000", "precision": 20}	{"value": "0", "precision": 20}	{"value": "0", "precision": 20}
ilev_01KP9XXKAAQY1B1SGQ7J6WVYPT	2026-04-15 21:19:05.547-04	2026-04-25 17:27:14.614-04	2026-04-25 17:27:14.601-04	iitem_01KP9XXK6KV1ZCVJ97CPPY3REM	sloc_01KP9XXJXJS8TKZ9MTY36N7EK3	1000000	0	0	\N	{"value": "1000000", "precision": 20}	{"value": "0", "precision": 20}	{"value": "0", "precision": 20}
ilev_01KP9XXKAA58SEBX23563459BV	2026-04-15 21:19:05.547-04	2026-04-25 17:27:14.617-04	2026-04-25 17:27:14.601-04	iitem_01KP9XXK6KWZME4MFCGGCYNY8A	sloc_01KP9XXJXJS8TKZ9MTY36N7EK3	1000000	0	0	\N	{"value": "1000000", "precision": 20}	{"value": "0", "precision": 20}	{"value": "0", "precision": 20}
ilev_01KP9XXKAAQ4PTXV6TMGB3W5N3	2026-04-15 21:19:05.547-04	2026-04-25 17:27:16.465-04	2026-04-25 17:27:16.46-04	iitem_01KP9XXK6JDD79RHA8231GQQVM	sloc_01KP9XXJXJS8TKZ9MTY36N7EK3	1000000	0	0	\N	{"value": "1000000", "precision": 20}	{"value": "0", "precision": 20}	{"value": "0", "precision": 20}
ilev_01KP9XXKA90899BQ6870JZQAFW	2026-04-15 21:19:05.547-04	2026-04-25 17:27:16.469-04	2026-04-25 17:27:16.46-04	iitem_01KP9XXK6J12TTCB8RSD98QPM0	sloc_01KP9XXJXJS8TKZ9MTY36N7EK3	1000000	0	0	\N	{"value": "1000000", "precision": 20}	{"value": "0", "precision": 20}	{"value": "0", "precision": 20}
ilev_01KP9XXKAA1SZVSEKJ6M58T78M	2026-04-15 21:19:05.547-04	2026-04-25 17:27:16.475-04	2026-04-25 17:27:16.46-04	iitem_01KP9XXK6J9WDVJPF3YKKN7EJF	sloc_01KP9XXJXJS8TKZ9MTY36N7EK3	1000000	0	0	\N	{"value": "1000000", "precision": 20}	{"value": "0", "precision": 20}	{"value": "0", "precision": 20}
ilev_01KP9XXKAAK0CAJBY4X3J5071P	2026-04-15 21:19:05.547-04	2026-04-25 17:27:16.48-04	2026-04-25 17:27:16.46-04	iitem_01KP9XXK6JE7XK2605WP1QYQSB	sloc_01KP9XXJXJS8TKZ9MTY36N7EK3	1000000	0	0	\N	{"value": "1000000", "precision": 20}	{"value": "0", "precision": 20}	{"value": "0", "precision": 20}
ilev_01KP9XXKA99E16GSS5HR18RS3J	2026-04-15 21:19:05.547-04	2026-04-25 17:27:07.915-04	2026-04-25 17:27:07.862-04	iitem_01KP9XXK6H3RHJAN94CGGJEK3P	sloc_01KP9XXJXJS8TKZ9MTY36N7EK3	1000000	0	0	\N	{"value": "1000000", "precision": 20}	{"value": "0", "precision": 20}	{"value": "0", "precision": 20}
ilev_01KP9XXKA9V98JW7Y6PR4Z1P5B	2026-04-15 21:19:05.547-04	2026-04-25 17:27:07.921-04	2026-04-25 17:27:07.862-04	iitem_01KP9XXK6HZ6JW7E06GVGZBZBJ	sloc_01KP9XXJXJS8TKZ9MTY36N7EK3	1000000	0	0	\N	{"value": "1000000", "precision": 20}	{"value": "0", "precision": 20}	{"value": "0", "precision": 20}
ilev_01KQ59XV2A7N741X7T33MFZ242	2026-04-26 12:28:26.058-04	2026-04-26 12:38:32.294-04	2026-04-26 12:38:32.286-04	iitem_01KQ59T8BYV4Q8F81QHD256E22	sloc_01KP9XXJXJS8TKZ9MTY36N7EK3	5	0	0	\N	{"value": "5", "precision": 20}	{"value": "0", "precision": 20}	{"value": "0", "precision": 20}
ilev_01KQ5AK2GNFZA947YXCFEE7W38	2026-04-26 12:40:01.814-04	2026-04-26 12:40:10.563-04	\N	iitem_01KQ5AGXS7YRPDHXAGAY4Z337Y	sloc_01KP9XXJXJS8TKZ9MTY36N7EK3	5	0	0	\N	{"value": "5", "precision": 20}	{"value": "0", "precision": 20}	{"value": "0", "precision": 20}
ilev_01KQ5AKG2HWD97N584G5PHPTW6	2026-04-26 12:40:15.697-04	2026-04-26 12:40:18.79-04	\N	iitem_01KQ5AHB1SX9T53HXXNGZWK361	sloc_01KP9XXJXJS8TKZ9MTY36N7EK3	5	0	0	\N	{"value": "5", "precision": 20}	{"value": "0", "precision": 20}	{"value": "0", "precision": 20}
ilev_01KQ5AM7M84RYCD03WAK8AK4D0	2026-04-26 12:40:39.816-04	2026-04-26 12:40:43.428-04	\N	iitem_01KQ5AJHPG2NRKQZXDQ7RCQXBK	sloc_01KP9XXJXJS8TKZ9MTY36N7EK3	5	0	0	\N	{"value": "5", "precision": 20}	{"value": "0", "precision": 20}	{"value": "0", "precision": 20}
ilev_01KQ5AM02KGC411EHF68D74HVR	2026-04-26 12:40:32.084-04	2026-04-26 15:22:20.775-04	\N	iitem_01KQ5AJ4C7SNV9TNDF8GZYZYF3	sloc_01KP9XXJXJS8TKZ9MTY36N7EK3	5	0	0	\N	{"value": "5", "precision": 20}	{"value": "0", "precision": 20}	{"value": "0", "precision": 20}
ilev_01KQ5AKR8GCVYVMS152XGBMYGX	2026-04-26 12:40:24.08-04	2026-04-26 15:22:54.873-04	\N	iitem_01KQ5AHRD49YPRDNR9A62E10NS	sloc_01KP9XXJXJS8TKZ9MTY36N7EK3	5	1	0	\N	{"value": "5", "precision": 20}	{"value": "1", "precision": 20}	{"value": "0", "precision": 20}
\.


--
-- Data for Name: invite; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.invite (id, email, accepted, token, expires_at, metadata, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: invite_rbac_role; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.invite_rbac_role (invite_id, rbac_role_id, id, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: link_module_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.link_module_migrations (id, table_name, link_descriptor, created_at) FROM stdin;
1	cart_payment_collection	{"toModel": "payment_collection", "toModule": "payment", "fromModel": "cart", "fromModule": "cart"}	2026-04-15 21:18:39.119566
2	cart_promotion	{"toModel": "promotions", "toModule": "promotion", "fromModel": "cart", "fromModule": "cart"}	2026-04-15 21:18:39.130861
3	customer_account_holder	{"toModel": "account_holder", "toModule": "payment", "fromModel": "customer", "fromModule": "customer"}	2026-04-15 21:18:39.138022
4	location_fulfillment_provider	{"toModel": "fulfillment_provider", "toModule": "fulfillment", "fromModel": "location", "fromModule": "stock_location"}	2026-04-15 21:18:39.146556
5	location_fulfillment_set	{"toModel": "fulfillment_set", "toModule": "fulfillment", "fromModel": "location", "fromModule": "stock_location"}	2026-04-15 21:18:39.154607
6	invite_rbac_role	{"toModel": "rbac_role", "toModule": "rbac", "fromModel": "invite", "fromModule": "user"}	2026-04-15 21:18:39.161512
7	order_cart	{"toModel": "cart", "toModule": "cart", "fromModel": "order", "fromModule": "order"}	2026-04-15 21:18:39.168462
8	order_fulfillment	{"toModel": "fulfillments", "toModule": "fulfillment", "fromModel": "order", "fromModule": "order"}	2026-04-15 21:18:39.176557
9	order_payment_collection	{"toModel": "payment_collection", "toModule": "payment", "fromModel": "order", "fromModule": "order"}	2026-04-15 21:18:39.184102
10	order_promotion	{"toModel": "promotions", "toModule": "promotion", "fromModel": "order", "fromModule": "order"}	2026-04-15 21:18:39.192532
11	return_fulfillment	{"toModel": "fulfillments", "toModule": "fulfillment", "fromModel": "return", "fromModule": "order"}	2026-04-15 21:18:39.200109
12	product_sales_channel	{"toModel": "sales_channel", "toModule": "sales_channel", "fromModel": "product", "fromModule": "product"}	2026-04-15 21:18:39.208596
13	product_shipping_profile	{"toModel": "shipping_profile", "toModule": "fulfillment", "fromModel": "product", "fromModule": "product"}	2026-04-15 21:18:39.21566
14	product_variant_inventory_item	{"toModel": "inventory", "toModule": "inventory", "fromModel": "variant", "fromModule": "product"}	2026-04-15 21:18:39.223493
15	product_variant_price_set	{"toModel": "price_set", "toModule": "pricing", "fromModel": "variant", "fromModule": "product"}	2026-04-15 21:18:39.230957
16	publishable_api_key_sales_channel	{"toModel": "sales_channel", "toModule": "sales_channel", "fromModel": "api_key", "fromModule": "api_key"}	2026-04-15 21:18:39.238332
17	region_payment_provider	{"toModel": "payment_provider", "toModule": "payment", "fromModel": "region", "fromModule": "region"}	2026-04-15 21:18:39.246126
18	sales_channel_stock_location	{"toModel": "location", "toModule": "stock_location", "fromModel": "sales_channel", "fromModule": "sales_channel"}	2026-04-15 21:18:39.254201
19	shipping_option_price_set	{"toModel": "price_set", "toModule": "pricing", "fromModel": "shipping_option", "fromModule": "fulfillment"}	2026-04-15 21:18:39.269674
20	user_rbac_role	{"toModel": "rbac_role", "toModule": "rbac", "fromModel": "user", "fromModule": "user"}	2026-04-15 21:18:39.276946
\.


--
-- Data for Name: locale; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.locale (id, code, name, created_at, updated_at, deleted_at) FROM stdin;
loc_01KQ5BQ24CAGK24BWJVG26JK97	en-US	English (United States)	2026-04-26 12:59:41.078-04	2026-04-26 12:59:41.078-04	\N
loc_01KQ5BQ24D4H9472HZ933NGKJF	en-GB	English (United Kingdom)	2026-04-26 12:59:41.078-04	2026-04-26 12:59:41.078-04	\N
loc_01KQ5BQ24D689F7A7SM1FM5X02	en-AU	English (Australia)	2026-04-26 12:59:41.078-04	2026-04-26 12:59:41.078-04	\N
loc_01KQ5BQ24EE5V05HAQ56ZR8S29	en-CA	English (Canada)	2026-04-26 12:59:41.078-04	2026-04-26 12:59:41.078-04	\N
loc_01KQ5BQ24E17B1JV2WHKWCX6J6	es-ES	Spanish (Spain)	2026-04-26 12:59:41.079-04	2026-04-26 12:59:41.079-04	\N
loc_01KQ5BQ24EZDW9R19WNAX9H1PR	es-MX	Spanish (Mexico)	2026-04-26 12:59:41.079-04	2026-04-26 12:59:41.079-04	\N
loc_01KQ5BQ24ERW3NCW7RE4JJQKEM	es-AR	Spanish (Argentina)	2026-04-26 12:59:41.079-04	2026-04-26 12:59:41.079-04	\N
loc_01KQ5BQ24EXS5NWTKH46ZKPKHR	fr-FR	French (France)	2026-04-26 12:59:41.079-04	2026-04-26 12:59:41.079-04	\N
loc_01KQ5BQ24ERE3HDSFNXCP55126	fr-CA	French (Canada)	2026-04-26 12:59:41.079-04	2026-04-26 12:59:41.079-04	\N
loc_01KQ5BQ24E0A13FV5QPC3NWHJY	fr-BE	French (Belgium)	2026-04-26 12:59:41.079-04	2026-04-26 12:59:41.079-04	\N
loc_01KQ5BQ24FACPX4260XZH6K7H3	de-DE	German (Germany)	2026-04-26 12:59:41.079-04	2026-04-26 12:59:41.079-04	\N
loc_01KQ5BQ24F856K682WXVJWY5VH	de-AT	German (Austria)	2026-04-26 12:59:41.079-04	2026-04-26 12:59:41.079-04	\N
loc_01KQ5BQ24F3N2FGXM7TFEM8MA2	de-CH	German (Switzerland)	2026-04-26 12:59:41.079-04	2026-04-26 12:59:41.079-04	\N
loc_01KQ5BQ24F7RE76MECCQNNEWFP	it-IT	Italian (Italy)	2026-04-26 12:59:41.079-04	2026-04-26 12:59:41.079-04	\N
loc_01KQ5BQ24FW5CVYN9YFE60NTP4	pt-BR	Portuguese (Brazil)	2026-04-26 12:59:41.079-04	2026-04-26 12:59:41.079-04	\N
loc_01KQ5BQ24FYFDGWDAZAW8DTH74	pt-PT	Portuguese (Portugal)	2026-04-26 12:59:41.079-04	2026-04-26 12:59:41.079-04	\N
loc_01KQ5BQ24G1RTKWAXJ2M03HPNQ	nl-NL	Dutch (Netherlands)	2026-04-26 12:59:41.079-04	2026-04-26 12:59:41.079-04	\N
loc_01KQ5BQ24GWJKPCFJ0FYSEZVM7	nl-BE	Dutch (Belgium)	2026-04-26 12:59:41.079-04	2026-04-26 12:59:41.079-04	\N
loc_01KQ5BQ24GVQCR7NTJM2Y0B76W	da-DK	Danish (Denmark)	2026-04-26 12:59:41.079-04	2026-04-26 12:59:41.079-04	\N
loc_01KQ5BQ24G9H0G75TV61EFJBVH	sv-SE	Swedish (Sweden)	2026-04-26 12:59:41.079-04	2026-04-26 12:59:41.079-04	\N
loc_01KQ5BQ24GP8Z3VRAGDD3AKEXT	nb-NO	Norwegian Bokmål (Norway)	2026-04-26 12:59:41.079-04	2026-04-26 12:59:41.079-04	\N
loc_01KQ5BQ24GZTABEHJ676H8VKNM	fi-FI	Finnish (Finland)	2026-04-26 12:59:41.079-04	2026-04-26 12:59:41.079-04	\N
loc_01KQ5BQ24G5HD67XXETSEA4K60	pl-PL	Polish (Poland)	2026-04-26 12:59:41.079-04	2026-04-26 12:59:41.079-04	\N
loc_01KQ5BQ24HNFWC8EC8K0YS6AME	lt-LT	Lithuanian (Lithuania)	2026-04-26 12:59:41.079-04	2026-04-26 12:59:41.079-04	\N
loc_01KQ5BQ24HD377VKS6RQ57Y5PG	cs-CZ	Czech (Czech Republic)	2026-04-26 12:59:41.079-04	2026-04-26 12:59:41.079-04	\N
loc_01KQ5BQ24H0T9BKDC4C1XYMNST	sk-SK	Slovak (Slovakia)	2026-04-26 12:59:41.079-04	2026-04-26 12:59:41.079-04	\N
loc_01KQ5BQ24HJSR3669PAQGE9RQ4	hu-HU	Hungarian (Hungary)	2026-04-26 12:59:41.079-04	2026-04-26 12:59:41.079-04	\N
loc_01KQ5BQ24HBWF4Z5NHRRBYEZK3	ro-RO	Romanian (Romania)	2026-04-26 12:59:41.079-04	2026-04-26 12:59:41.079-04	\N
loc_01KQ5BQ24J8ZGAH6N4WGE5SNMC	bg-BG	Bulgarian (Bulgaria)	2026-04-26 12:59:41.079-04	2026-04-26 12:59:41.079-04	\N
loc_01KQ5BQ24JPGQPXRYTY6FNDADQ	el-GR	Greek (Greece)	2026-04-26 12:59:41.079-04	2026-04-26 12:59:41.079-04	\N
loc_01KQ5BQ24JFHD4T1K2WGQVZS64	tr-TR	Turkish (Turkey)	2026-04-26 12:59:41.079-04	2026-04-26 12:59:41.079-04	\N
loc_01KQ5BQ24JZFSHD798W0D8Z0SX	ru-RU	Russian (Russia)	2026-04-26 12:59:41.079-04	2026-04-26 12:59:41.079-04	\N
loc_01KQ5BQ24J1TDSYVF6ZB7D9MXE	uk-UA	Ukrainian (Ukraine)	2026-04-26 12:59:41.079-04	2026-04-26 12:59:41.079-04	\N
loc_01KQ5BQ24JS50EZ51RJM3417SY	ar-SA	Arabic (Saudi Arabia)	2026-04-26 12:59:41.079-04	2026-04-26 12:59:41.079-04	\N
loc_01KQ5BQ24K8FM42C7WHNVJM6A8	ar-AE	Arabic (United Arab Emirates)	2026-04-26 12:59:41.079-04	2026-04-26 12:59:41.079-04	\N
loc_01KQ5BQ24K1N59ZRBP42G31TQ6	ar-EG	Arabic (Egypt)	2026-04-26 12:59:41.079-04	2026-04-26 12:59:41.079-04	\N
loc_01KQ5BQ24KA2XFWPC3HV5WAGBZ	he-IL	Hebrew (Israel)	2026-04-26 12:59:41.079-04	2026-04-26 12:59:41.079-04	\N
loc_01KQ5BQ24KJ5XXHFDRSVRARB7X	hi-IN	Hindi (India)	2026-04-26 12:59:41.079-04	2026-04-26 12:59:41.079-04	\N
loc_01KQ5BQ24K9744C3DZ0QYKJY91	bn-BD	Bengali (Bangladesh)	2026-04-26 12:59:41.079-04	2026-04-26 12:59:41.079-04	\N
loc_01KQ5BQ24MWARZT4F6K2MKH1TG	th-TH	Thai (Thailand)	2026-04-26 12:59:41.079-04	2026-04-26 12:59:41.079-04	\N
loc_01KQ5BQ24MDRDXE2R8VJY5412Y	vi-VN	Vietnamese (Vietnam)	2026-04-26 12:59:41.079-04	2026-04-26 12:59:41.079-04	\N
loc_01KQ5BQ24M0FGZR4PNVDM0D9FG	id-ID	Indonesian (Indonesia)	2026-04-26 12:59:41.079-04	2026-04-26 12:59:41.079-04	\N
loc_01KQ5BQ24M125ZKHSNFAECNYA8	ms-MY	Malay (Malaysia)	2026-04-26 12:59:41.079-04	2026-04-26 12:59:41.079-04	\N
loc_01KQ5BQ24M85RP53W43ZZNE0NQ	tl-PH	Tagalog (Philippines)	2026-04-26 12:59:41.079-04	2026-04-26 12:59:41.079-04	\N
loc_01KQ5BQ24MXP3R65YB0CYF8JY4	zh-CN	Chinese Simplified (China)	2026-04-26 12:59:41.079-04	2026-04-26 12:59:41.079-04	\N
loc_01KQ5BQ24NCZ7E7VQC962R87SK	zh-TW	Chinese Traditional (Taiwan)	2026-04-26 12:59:41.079-04	2026-04-26 12:59:41.079-04	\N
loc_01KQ5BQ24N1KM57ZEYR04ZWAYG	zh-HK	Chinese Traditional (Hong Kong)	2026-04-26 12:59:41.079-04	2026-04-26 12:59:41.079-04	\N
loc_01KQ5BQ24N76AH9Z7R4RF8D91M	ja-JP	Japanese (Japan)	2026-04-26 12:59:41.079-04	2026-04-26 12:59:41.079-04	\N
loc_01KQ5BQ24N0X9Z9RKZK9NQXKH2	ko-KR	Korean (South Korea)	2026-04-26 12:59:41.079-04	2026-04-26 12:59:41.079-04	\N
loc_01KQ5BQ24N7GFHKBA08R28GWHM	ka-GE	Georgian (Georgia)	2026-04-26 12:59:41.079-04	2026-04-26 12:59:41.079-04	\N
loc_01KQ5BQ24NMBEQ4QYZ4AK5NTNS	mn-MN	Mongolian (Mongolia)	2026-04-26 12:59:41.079-04	2026-04-26 12:59:41.079-04	\N
\.


--
-- Data for Name: location_fulfillment_provider; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.location_fulfillment_provider (stock_location_id, fulfillment_provider_id, id, created_at, updated_at, deleted_at) FROM stdin;
sloc_01KP9XXJXJS8TKZ9MTY36N7EK3	manual_manual	locfp_01KP9XXJY5EDN69177Q01786Z4	2026-04-15 21:19:05.157698-04	2026-04-15 21:19:05.157698-04	\N
\.


--
-- Data for Name: location_fulfillment_set; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.location_fulfillment_set (stock_location_id, fulfillment_set_id, id, created_at, updated_at, deleted_at) FROM stdin;
sloc_01KP9XXJXJS8TKZ9MTY36N7EK3	fuset_01KP9XXJYM57WTWAT3067QY2PC	locfs_01KP9XXJZ41Q9ZVEPDJC9DRKAX	2026-04-15 21:19:05.188908-04	2026-04-15 21:19:05.188908-04	\N
sloc_01KP9XXJXJS8TKZ9MTY36N7EK3	fuset_01KQ5EAXPZV4R7RBN423K48BES	locfs_01KQ5EAXQ7JN9J94VEHYP193FS	2026-04-26 13:45:29.063317-04	2026-04-26 13:45:29.063317-04	\N
\.


--
-- Data for Name: mikro_orm_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mikro_orm_migrations (id, name, executed_at) FROM stdin;
1	Migration20240307161216	2026-04-15 21:18:29.626201-04
2	Migration20241210073813	2026-04-15 21:18:29.626201-04
3	Migration20250106142624	2026-04-15 21:18:29.626201-04
4	Migration20250120110820	2026-04-15 21:18:29.626201-04
5	Migration20240307132720	2026-04-15 21:18:29.892432-04
6	Migration20240719123015	2026-04-15 21:18:29.892432-04
7	Migration20241213063611	2026-04-15 21:18:29.892432-04
8	Migration20251010131115	2026-04-15 21:18:29.892432-04
9	InitialSetup20240401153642	2026-04-15 21:18:30.216271-04
10	Migration20240601111544	2026-04-15 21:18:30.216271-04
11	Migration202408271511	2026-04-15 21:18:30.216271-04
12	Migration20241122120331	2026-04-15 21:18:30.216271-04
13	Migration20241125090957	2026-04-15 21:18:30.216271-04
14	Migration20250411073236	2026-04-15 21:18:30.216271-04
15	Migration20250516081326	2026-04-15 21:18:30.216271-04
16	Migration20250910154539	2026-04-15 21:18:30.216271-04
17	Migration20250911092221	2026-04-15 21:18:30.216271-04
18	Migration20250929204438	2026-04-15 21:18:30.216271-04
19	Migration20251008132218	2026-04-15 21:18:30.216271-04
20	Migration20251011090511	2026-04-15 21:18:30.216271-04
21	Migration20230929122253	2026-04-15 21:18:30.734771-04
22	Migration20240322094407	2026-04-15 21:18:30.734771-04
23	Migration20240322113359	2026-04-15 21:18:30.734771-04
24	Migration20240322120125	2026-04-15 21:18:30.734771-04
25	Migration20240626133555	2026-04-15 21:18:30.734771-04
26	Migration20240704094505	2026-04-15 21:18:30.734771-04
27	Migration20241127114534	2026-04-15 21:18:30.734771-04
28	Migration20241127223829	2026-04-15 21:18:30.734771-04
29	Migration20241128055359	2026-04-15 21:18:30.734771-04
30	Migration20241212190401	2026-04-15 21:18:30.734771-04
31	Migration20250408145122	2026-04-15 21:18:30.734771-04
32	Migration20250409122219	2026-04-15 21:18:30.734771-04
33	Migration20251009110625	2026-04-15 21:18:30.734771-04
34	Migration20251112192723	2026-04-15 21:18:30.734771-04
35	Migration20240227120221	2026-04-15 21:18:31.224824-04
36	Migration20240617102917	2026-04-15 21:18:31.224824-04
37	Migration20240624153824	2026-04-15 21:18:31.224824-04
38	Migration20241211061114	2026-04-15 21:18:31.224824-04
39	Migration20250113094144	2026-04-15 21:18:31.224824-04
40	Migration20250120110700	2026-04-15 21:18:31.224824-04
41	Migration20250226130616	2026-04-15 21:18:31.224824-04
42	Migration20250508081510	2026-04-15 21:18:31.224824-04
43	Migration20250828075407	2026-04-15 21:18:31.224824-04
44	Migration20250909083125	2026-04-15 21:18:31.224824-04
45	Migration20250916120552	2026-04-15 21:18:31.224824-04
46	Migration20250917143818	2026-04-15 21:18:31.224824-04
47	Migration20250919122137	2026-04-15 21:18:31.224824-04
48	Migration20251006000000	2026-04-15 21:18:31.224824-04
49	Migration20251015113934	2026-04-15 21:18:31.224824-04
50	Migration20251107050148	2026-04-15 21:18:31.224824-04
51	Migration20240124154000	2026-04-15 21:18:31.984024-04
52	Migration20240524123112	2026-04-15 21:18:31.984024-04
53	Migration20240602110946	2026-04-15 21:18:31.984024-04
54	Migration20241211074630	2026-04-15 21:18:31.984024-04
55	Migration20251010130829	2026-04-15 21:18:31.984024-04
56	Migration20240115152146	2026-04-15 21:18:32.426389-04
57	Migration20240222170223	2026-04-15 21:18:32.667823-04
58	Migration20240831125857	2026-04-15 21:18:32.667823-04
59	Migration20241106085918	2026-04-15 21:18:32.667823-04
60	Migration20241205095237	2026-04-15 21:18:32.667823-04
61	Migration20241216183049	2026-04-15 21:18:32.667823-04
62	Migration20241218091938	2026-04-15 21:18:32.667823-04
63	Migration20250120115059	2026-04-15 21:18:32.667823-04
64	Migration20250212131240	2026-04-15 21:18:32.667823-04
65	Migration20250326151602	2026-04-15 21:18:32.667823-04
66	Migration20250508081553	2026-04-15 21:18:32.667823-04
67	Migration20251017153909	2026-04-15 21:18:32.667823-04
68	Migration20251208130704	2026-04-15 21:18:32.667823-04
69	Migration20240205173216	2026-04-15 21:18:33.079887-04
70	Migration20240624200006	2026-04-15 21:18:33.079887-04
71	Migration20250120110744	2026-04-15 21:18:33.079887-04
72	InitialSetup20240221144943	2026-04-15 21:18:33.390389-04
73	Migration20240604080145	2026-04-15 21:18:33.390389-04
74	Migration20241205122700	2026-04-15 21:18:33.390389-04
75	Migration20251015123842	2026-04-15 21:18:33.390389-04
76	InitialSetup20240227075933	2026-04-15 21:18:33.796281-04
77	Migration20240621145944	2026-04-15 21:18:33.796281-04
78	Migration20241206083313	2026-04-15 21:18:33.796281-04
79	Migration20251202184737	2026-04-15 21:18:33.796281-04
80	Migration20251212161429	2026-04-15 21:18:33.796281-04
81	Migration20240227090331	2026-04-15 21:18:34.035132-04
82	Migration20240710135844	2026-04-15 21:18:34.035132-04
83	Migration20240924114005	2026-04-15 21:18:34.035132-04
84	Migration20241212052837	2026-04-15 21:18:34.035132-04
85	InitialSetup20240228133303	2026-04-15 21:18:34.467139-04
86	Migration20240624082354	2026-04-15 21:18:34.467139-04
87	Migration20240225134525	2026-04-15 21:18:34.749146-04
88	Migration20240806072619	2026-04-15 21:18:34.749146-04
89	Migration20241211151053	2026-04-15 21:18:34.749146-04
90	Migration20250115160517	2026-04-15 21:18:34.749146-04
91	Migration20250120110552	2026-04-15 21:18:34.749146-04
92	Migration20250123122334	2026-04-15 21:18:34.749146-04
93	Migration20250206105639	2026-04-15 21:18:34.749146-04
94	Migration20250207132723	2026-04-15 21:18:34.749146-04
95	Migration20250625084134	2026-04-15 21:18:34.749146-04
96	Migration20250924135437	2026-04-15 21:18:34.749146-04
97	Migration20250929124701	2026-04-15 21:18:34.749146-04
98	Migration20240219102530	2026-04-15 21:18:35.324999-04
99	Migration20240604100512	2026-04-15 21:18:35.324999-04
100	Migration20240715102100	2026-04-15 21:18:35.324999-04
101	Migration20240715174100	2026-04-15 21:18:35.324999-04
102	Migration20240716081800	2026-04-15 21:18:35.324999-04
103	Migration20240801085921	2026-04-15 21:18:35.324999-04
104	Migration20240821164505	2026-04-15 21:18:35.324999-04
105	Migration20240821170920	2026-04-15 21:18:35.324999-04
106	Migration20240827133639	2026-04-15 21:18:35.324999-04
107	Migration20240902195921	2026-04-15 21:18:35.324999-04
108	Migration20240913092514	2026-04-15 21:18:35.324999-04
109	Migration20240930122627	2026-04-15 21:18:35.324999-04
110	Migration20241014142943	2026-04-15 21:18:35.324999-04
111	Migration20241106085223	2026-04-15 21:18:35.324999-04
112	Migration20241129124827	2026-04-15 21:18:35.324999-04
113	Migration20241217162224	2026-04-15 21:18:35.324999-04
114	Migration20250326151554	2026-04-15 21:18:35.324999-04
115	Migration20250522181137	2026-04-15 21:18:35.324999-04
116	Migration20250702095353	2026-04-15 21:18:35.324999-04
117	Migration20250704120229	2026-04-15 21:18:35.324999-04
118	Migration20250910130000	2026-04-15 21:18:35.324999-04
119	Migration20251016160403	2026-04-15 21:18:35.324999-04
120	Migration20251016182939	2026-04-15 21:18:35.324999-04
121	Migration20251017155709	2026-04-15 21:18:35.324999-04
122	Migration20251114100559	2026-04-15 21:18:35.324999-04
123	Migration20251125164002	2026-04-15 21:18:35.324999-04
124	Migration20251210112909	2026-04-15 21:18:35.324999-04
125	Migration20251210112924	2026-04-15 21:18:35.324999-04
126	Migration20251225120947	2026-04-15 21:18:35.324999-04
127	Migration20250717162007	2026-04-15 21:18:36.214369-04
128	Migration20240205025928	2026-04-15 21:18:36.489224-04
129	Migration20240529080336	2026-04-15 21:18:36.489224-04
130	Migration20241202100304	2026-04-15 21:18:36.489224-04
131	Migration20240214033943	2026-04-15 21:18:36.878489-04
132	Migration20240703095850	2026-04-15 21:18:36.878489-04
133	Migration20241202103352	2026-04-15 21:18:36.878489-04
134	Migration20240311145700_InitialSetupMigration	2026-04-15 21:18:37.136143-04
135	Migration20240821170957	2026-04-15 21:18:37.136143-04
136	Migration20240917161003	2026-04-15 21:18:37.136143-04
137	Migration20241217110416	2026-04-15 21:18:37.136143-04
138	Migration20250113122235	2026-04-15 21:18:37.136143-04
139	Migration20250120115002	2026-04-15 21:18:37.136143-04
140	Migration20250822130931	2026-04-15 21:18:37.136143-04
141	Migration20250825132614	2026-04-15 21:18:37.136143-04
142	Migration20251114133146	2026-04-15 21:18:37.136143-04
143	Migration20240509083918_InitialSetupMigration	2026-04-15 21:18:37.705998-04
144	Migration20240628075401	2026-04-15 21:18:37.705998-04
145	Migration20240830094712	2026-04-15 21:18:37.705998-04
146	Migration20250120110514	2026-04-15 21:18:37.705998-04
147	Migration20251028172715	2026-04-15 21:18:37.705998-04
148	Migration20251121123942	2026-04-15 21:18:37.705998-04
149	Migration20251121150408	2026-04-15 21:18:37.705998-04
150	Migration20231228143900	2026-04-15 21:18:38.306887-04
151	Migration20241206101446	2026-04-15 21:18:38.306887-04
152	Migration20250128174331	2026-04-15 21:18:38.306887-04
153	Migration20250505092459	2026-04-15 21:18:38.306887-04
154	Migration20250819104213	2026-04-15 21:18:38.306887-04
155	Migration20250819110924	2026-04-15 21:18:38.306887-04
156	Migration20250908080305	2026-04-15 21:18:38.306887-04
157	Migration20260424035838	2026-04-23 23:58:55.974486-04
158	Migration20260424000001_add_image_data	2026-04-24 00:08:05.677412-04
159	Migration20260425201913	2026-04-25 16:19:34.374981-04
160	Migration20260425210023	2026-04-25 17:01:02.850765-04
161	Migration20251208124155	2026-04-26 12:59:31.423751-04
162	Migration20251215083927	2026-04-26 12:59:31.423751-04
163	Migration20251218140235	2026-04-26 12:59:31.423751-04
164	Migration20260108122757	2026-04-26 12:59:31.423751-04
\.


--
-- Data for Name: notification; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.notification (id, "to", channel, template, data, trigger_type, resource_id, resource_type, receiver_id, original_notification_id, idempotency_key, external_id, provider_id, created_at, updated_at, deleted_at, status, "from", provider_data) FROM stdin;
noti_01KQ5KXAMN87J42DQ58FA3RTEX	smlzanatto64@gmail.com	email	order-placed	{"order": {"id": "order_01KQ5KXAEX3J2PGMMMHA7V60BT", "email": "smlzanatto64@gmail.com", "items": [{"id": "ordli_01KQ5KXAEYS18P7AJ7CS9ZK5SJ", "title": "Camiseta Oversized Cristo Vive", "total": 64.99, "detail": {"id": "orditem_01KQ5KXAEZ9ADQBTR0RP9DCJDA", "item_id": "ordli_01KQ5KXAEYS18P7AJ7CS9ZK5SJ", "version": 1, "metadata": null, "order_id": "order_01KQ5KXAEX3J2PGMMMHA7V60BT", "quantity": 1, "created_at": "2026-04-26T19:22:54.815Z", "deleted_at": null, "unit_price": null, "updated_at": "2026-04-26T19:22:54.815Z", "raw_quantity": {"value": "1", "precision": 20}, "raw_unit_price": null, "shipped_quantity": 0, "delivered_quantity": 0, "fulfilled_quantity": 0, "raw_shipped_quantity": {"value": "0", "precision": 20}, "written_off_quantity": 0, "compare_at_unit_price": null, "raw_delivered_quantity": {"value": "0", "precision": 20}, "raw_fulfilled_quantity": {"value": "0", "precision": 20}, "raw_written_off_quantity": {"value": "0", "precision": 20}, "return_received_quantity": 0, "raw_compare_at_unit_price": null, "return_dismissed_quantity": 0, "return_requested_quantity": 0, "raw_return_received_quantity": {"value": "0", "precision": 20}, "raw_return_dismissed_quantity": {"value": "0", "precision": 20}, "raw_return_requested_quantity": {"value": "0", "precision": 20}}, "metadata": {}, "quantity": 1, "subtitle": "M", "subtotal": 64.99, "raw_total": {"value": "64.99", "precision": 20}, "tax_lines": [], "tax_total": 0, "thumbnail": "http://localhost:9000/static/1777152975705-camiseta%20super%20ra%C3%83%C2%A7a%20comprimido.png", "created_at": "2026-04-26T19:22:54.815Z", "deleted_at": null, "product_id": "prod_01KQ394S3SVPRBN5HMMGASG417", "unit_price": 64.99, "updated_at": "2026-04-26T19:22:54.815Z", "variant_id": "variant_01KQ394S6AG2EPS0DRX14A43JG", "adjustments": [], "is_giftcard": false, "variant_sku": null, "product_type": null, "raw_quantity": {"value": "1", "precision": 20}, "raw_subtotal": {"value": "64.99", "precision": 20}, "product_title": "Camiseta Oversized Cristo Vive", "raw_tax_total": {"value": "0", "precision": 20}, "shipped_total": 0, "variant_title": "M", "discount_total": 0, "original_total": 64.99, "product_handle": "camiseta-cristo-vive", "raw_unit_price": {"value": "64.99", "precision": 20}, "fulfilled_total": 0, "is_custom_price": false, "is_discountable": false, "product_type_id": null, "variant_barcode": null, "write_off_total": 0, "is_tax_inclusive": false, "product_subtitle": "", "refundable_total": 64.99, "discount_subtotal": 0, "original_subtotal": 64.99, "raw_shipped_total": {"value": "0", "precision": 20}, "requires_shipping": true, "discount_tax_total": 0, "original_tax_total": 0, "product_collection": "Camisetas", "raw_discount_total": {"value": "0", "precision": 20}, "raw_original_total": {"value": "64.99", "precision": 20}, "product_description": "", "raw_fulfilled_total": {"value": "0", "precision": 20}, "raw_write_off_total": {"value": "0", "precision": 20}, "raw_refundable_total": {"value": "64.99", "precision": 20}, "compare_at_unit_price": null, "raw_discount_subtotal": {"value": "0", "precision": 20}, "raw_original_subtotal": {"value": "64.99", "precision": 20}, "return_received_total": 0, "variant_option_values": null, "raw_discount_tax_total": {"value": "0", "precision": 20}, "raw_original_tax_total": {"value": "0", "precision": 20}, "return_dismissed_total": 0, "return_requested_total": 0, "raw_compare_at_unit_price": null, "raw_return_received_total": {"value": "0", "precision": 20}, "refundable_total_per_unit": 64.99, "raw_return_dismissed_total": {"value": "0", "precision": 20}, "raw_return_requested_total": {"value": "0", "precision": 20}, "raw_refundable_total_per_unit": {"value": "64.99", "precision": 20}}], "total": 84.99, "customer": {"id": "cus_01KQ5DE2ZGD5GKGPCKNJ49468C", "email": "smlzanatto64@gmail.com", "phone": null, "metadata": null, "last_name": null, "created_at": "2026-04-26T17:29:44.177Z", "created_by": null, "deleted_at": null, "first_name": null, "updated_at": "2026-04-26T17:29:44.177Z", "has_account": false, "company_name": null}, "subtotal": 84.99, "tax_total": 0, "display_id": 2, "item_total": 64.99, "customer_id": "cus_01KQ5DE2ZGD5GKGPCKNJ49468C", "currency_code": "brl", "item_subtotal": 64.99, "discount_total": 0, "item_tax_total": 0, "shipping_total": 20, "billing_address": {"id": "ordaddr_01KQ5KXAETD0Y4WQX69E8BAEGJ", "city": "Campo Grande", "phone": "", "company": "", "metadata": null, "province": "", "address_1": "Rua Assaré, 729", "address_2": "", "last_name": "Zanatto", "created_at": "2026-04-26T19:22:45.870Z", "deleted_at": null, "first_name": "Samuel", "updated_at": "2026-04-26T19:22:45.870Z", "customer_id": null, "postal_code": "79070023", "country_code": "br"}, "shipping_address": {"id": "ordaddr_01KQ5KXAETJMT4ABKJHAR89F14", "city": "Campo Grande", "phone": "", "company": "", "metadata": null, "province": "", "address_1": "Rua Assaré, 729", "address_2": "", "last_name": "Zanatto", "created_at": "2026-04-26T19:22:45.870Z", "deleted_at": null, "first_name": "Samuel", "updated_at": "2026-04-26T19:22:45.870Z", "customer_id": null, "postal_code": "79070023", "country_code": "br"}, "shipping_methods": [{"id": "ordsm_01KQ5KXAEXCSGFJ40PF60CASX8", "data": {}, "name": "Envio Padrão", "total": 20, "amount": 20, "detail": {"id": "ordspmv_01KQ5KXAEX2S5V01B4PZK0RNVN", "version": 1, "claim_id": null, "order_id": "order_01KQ5KXAEX3J2PGMMMHA7V60BT", "return_id": null, "created_at": "2026-04-26T19:22:54.815Z", "deleted_at": null, "updated_at": "2026-04-26T19:22:54.815Z", "exchange_id": null, "shipping_method_id": "ordsm_01KQ5KXAEXCSGFJ40PF60CASX8"}, "metadata": null, "order_id": "order_01KQ5KXAEX3J2PGMMMHA7V60BT", "subtotal": 20, "raw_total": {"value": "20", "precision": 20}, "tax_lines": [], "tax_total": 0, "created_at": "2026-04-26T19:22:54.815Z", "deleted_at": null, "raw_amount": {"value": "20", "precision": 20}, "updated_at": "2026-04-26T19:22:54.815Z", "adjustments": [], "description": null, "raw_subtotal": {"value": "20", "precision": 20}, "raw_tax_total": {"value": "0", "precision": 20}, "discount_total": 0, "original_total": 20, "is_custom_amount": false, "is_tax_inclusive": false, "discount_subtotal": 0, "original_subtotal": 20, "discount_tax_total": 0, "original_tax_total": 0, "raw_discount_total": {"value": "0", "precision": 20}, "raw_original_total": {"value": "20", "precision": 20}, "shipping_option_id": "so_01KP9XXK05TKCGKDGWNEA8GGZZ", "raw_discount_subtotal": {"value": "0", "precision": 20}, "raw_original_subtotal": {"value": "20", "precision": 20}, "raw_discount_tax_total": {"value": "0", "precision": 20}, "raw_original_tax_total": {"value": "0", "precision": 20}}]}}	\N	\N	\N	\N	\N	\N	72f9d19e-b1bf-4b6c-a0e9-b9788a54ff18	resend	2026-04-26 15:22:54.999-04	2026-04-26 15:22:56.165-04	\N	success	\N	\N
\.


--
-- Data for Name: notification_provider; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.notification_provider (id, handle, name, is_enabled, channels, created_at, updated_at, deleted_at) FROM stdin;
local	local	local	f	{feed}	2026-04-15 21:18:43.034-04	2026-04-26 15:02:03.918-04	\N
resend	resend	resend	t	{email}	2026-04-26 15:02:03.926-04	2026-04-26 15:02:03.926-04	\N
\.


--
-- Data for Name: order; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."order" (id, region_id, display_id, customer_id, version, sales_channel_id, status, is_draft_order, email, currency_code, shipping_address_id, billing_address_id, no_notification, metadata, created_at, updated_at, deleted_at, canceled_at, custom_display_id, locale) FROM stdin;
order_01KQ5G89GD45PB0CCYEHRMCQ68	reg_01KPA20S5NSBGW8AD90T7HEH4K	1	cus_01KQ5DE2ZGD5GKGPCKNJ49468C	2	sc_01KP9XXJRXGGT65H782XD56SVH	canceled	f	smlzanatto64@gmail.com	brl	ordaddr_01KQ5G89G72NM0FGKXPJN9C8EV	ordaddr_01KQ5G89G7H68E68ZZVKKF2MPJ	f	\N	2026-04-26 14:18:59.987-04	2026-04-26 15:22:20.974-04	\N	2026-04-26 15:22:20.969-04	\N	\N
order_01KQ5KXAEX3J2PGMMMHA7V60BT	reg_01KPA20S5NSBGW8AD90T7HEH4K	2	cus_01KQ5DE2ZGD5GKGPCKNJ49468C	1	sc_01KP9XXJRXGGT65H782XD56SVH	pending	f	smlzanatto64@gmail.com	brl	ordaddr_01KQ5KXAETJMT4ABKJHAR89F14	ordaddr_01KQ5KXAETD0Y4WQX69E8BAEGJ	f	\N	2026-04-26 15:22:54.815-04	2026-04-26 15:22:54.815-04	\N	\N	\N	pt-BR
\.


--
-- Data for Name: order_address; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.order_address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, metadata, created_at, updated_at, deleted_at) FROM stdin;
ordaddr_01KQ5G89G7H68E68ZZVKKF2MPJ	\N		Samuel	Zanatto	Rua Assaré, 729		Campo Grande	br		79070023		\N	2026-04-26 13:29:44.203-04	2026-04-26 13:29:44.203-04	\N
ordaddr_01KQ5G89G72NM0FGKXPJN9C8EV	\N		Samuel	Zanatto	Rua Assaré, 729		Campo Grande	br		79070023		\N	2026-04-26 13:29:44.203-04	2026-04-26 13:29:44.203-04	\N
ordaddr_01KQ5KXAETD0Y4WQX69E8BAEGJ	\N		Samuel	Zanatto	Rua Assaré, 729		Campo Grande	br		79070023		\N	2026-04-26 15:22:45.87-04	2026-04-26 15:22:45.87-04	\N
ordaddr_01KQ5KXAETJMT4ABKJHAR89F14	\N		Samuel	Zanatto	Rua Assaré, 729		Campo Grande	br		79070023		\N	2026-04-26 15:22:45.87-04	2026-04-26 15:22:45.87-04	\N
\.


--
-- Data for Name: order_cart; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.order_cart (order_id, cart_id, id, created_at, updated_at, deleted_at) FROM stdin;
order_01KQ5G89GD45PB0CCYEHRMCQ68	cart_01KQ33MVP7KGA11MYKWW38JW88	ordercart_01KQ5G89MZKXTNMCF1MYKYKFYB	2026-04-26 14:19:00.126406-04	2026-04-26 14:19:00.126406-04	\N
order_01KQ5KXAEX3J2PGMMMHA7V60BT	cart_01KQ5KWHCMDZR40WS4C208K5RA	ordercart_01KQ5KXAGEXAD4VFWAW0DQHBYF	2026-04-26 15:22:54.861842-04	2026-04-26 15:22:54.861842-04	\N
\.


--
-- Data for Name: order_change; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.order_change (id, order_id, version, description, status, internal_note, created_by, requested_by, requested_at, confirmed_by, confirmed_at, declined_by, declined_reason, metadata, declined_at, canceled_by, canceled_at, created_at, updated_at, change_type, deleted_at, return_id, claim_id, exchange_id, carry_over_promotions) FROM stdin;
ordch_01KQ5KW995633PXWDPG4FGXRF0	order_01KQ5G89GD45PB0CCYEHRMCQ68	2	\N	confirmed	\N	\N	\N	\N	\N	2026-04-26 15:22:20.882-04	\N	\N	\N	\N	\N	\N	2026-04-26 15:22:20.837-04	2026-04-26 15:22:20.92-04	credit_line	\N	\N	\N	\N	\N
\.


--
-- Data for Name: order_change_action; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.order_change_action (id, order_id, version, ordering, order_change_id, reference, reference_id, action, details, amount, raw_amount, internal_note, applied, created_at, updated_at, deleted_at, return_id, claim_id, exchange_id) FROM stdin;
ordchact_01KQ5KW99VX31RWM9KFR06S1GN	order_01KQ5G89GD45PB0CCYEHRMCQ68	2	1	ordch_01KQ5KW995633PXWDPG4FGXRF0	payment_collection	pay_col_01KQ5E1DV5PX507CG1HA1NGAW0	CREDIT_LINE_ADD	{}	0	{"value": "0", "precision": 20}	\N	t	2026-04-26 15:22:20.86-04	2026-04-26 15:22:20.943-04	\N	\N	\N	\N
\.


--
-- Data for Name: order_claim; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.order_claim (id, order_id, return_id, order_version, display_id, type, no_notification, refund_amount, raw_refund_amount, metadata, created_at, updated_at, deleted_at, canceled_at, created_by) FROM stdin;
\.


--
-- Data for Name: order_claim_item; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.order_claim_item (id, claim_id, item_id, is_additional_item, reason, quantity, raw_quantity, note, metadata, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: order_claim_item_image; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.order_claim_item_image (id, claim_item_id, url, metadata, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: order_credit_line; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.order_credit_line (id, order_id, reference, reference_id, amount, raw_amount, metadata, created_at, updated_at, deleted_at, version) FROM stdin;
ordcl_01KQ5KW9BQWXAAKZYBXZHRCSXM	order_01KQ5G89GD45PB0CCYEHRMCQ68	payment_collection	pay_col_01KQ5E1DV5PX507CG1HA1NGAW0	0	{"value": "0", "precision": 20}	{"created_in_version": 2}	2026-04-26 15:22:20.921-04	2026-04-26 15:22:20.921-04	\N	2
\.


--
-- Data for Name: order_exchange; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.order_exchange (id, order_id, return_id, order_version, display_id, no_notification, allow_backorder, difference_due, raw_difference_due, metadata, created_at, updated_at, deleted_at, canceled_at, created_by) FROM stdin;
\.


--
-- Data for Name: order_exchange_item; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.order_exchange_item (id, exchange_id, item_id, quantity, raw_quantity, note, metadata, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: order_fulfillment; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.order_fulfillment (order_id, fulfillment_id, id, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: order_item; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.order_item (id, order_id, version, item_id, quantity, raw_quantity, fulfilled_quantity, raw_fulfilled_quantity, shipped_quantity, raw_shipped_quantity, return_requested_quantity, raw_return_requested_quantity, return_received_quantity, raw_return_received_quantity, return_dismissed_quantity, raw_return_dismissed_quantity, written_off_quantity, raw_written_off_quantity, metadata, created_at, updated_at, deleted_at, delivered_quantity, raw_delivered_quantity, unit_price, raw_unit_price, compare_at_unit_price, raw_compare_at_unit_price) FROM stdin;
orditem_01KQ5G89GH40V3YCRN3567HRRG	order_01KQ5G89GD45PB0CCYEHRMCQ68	1	ordli_01KQ5G89GF7ZCMDMY17MXDSQ06	1	{"value": "1", "precision": 20}	0	{"value": "0", "precision": 20}	0	{"value": "0", "precision": 20}	0	{"value": "0", "precision": 20}	0	{"value": "0", "precision": 20}	0	{"value": "0", "precision": 20}	0	{"value": "0", "precision": 20}	\N	2026-04-26 14:18:59.988-04	2026-04-26 14:18:59.988-04	\N	0	{"value": "0", "precision": 20}	\N	\N	\N	\N
orditem_01KQ5KW9BMB6SFGV4EZCRM1CT5	order_01KQ5G89GD45PB0CCYEHRMCQ68	2	ordli_01KQ5G89GF7ZCMDMY17MXDSQ06	1	{"value": "1", "precision": 20}	0	{"value": "0", "precision": 20}	0	{"value": "0", "precision": 20}	0	{"value": "0", "precision": 20}	0	{"value": "0", "precision": 20}	0	{"value": "0", "precision": 20}	0	{"value": "0", "precision": 20}	\N	2026-04-26 15:22:20.92-04	2026-04-26 15:22:20.92-04	\N	0	{"value": "0", "precision": 20}	64.99	{"value": "64.99", "precision": 20}	\N	\N
orditem_01KQ5KXAEZ9ADQBTR0RP9DCJDA	order_01KQ5KXAEX3J2PGMMMHA7V60BT	1	ordli_01KQ5KXAEYS18P7AJ7CS9ZK5SJ	1	{"value": "1", "precision": 20}	0	{"value": "0", "precision": 20}	0	{"value": "0", "precision": 20}	0	{"value": "0", "precision": 20}	0	{"value": "0", "precision": 20}	0	{"value": "0", "precision": 20}	0	{"value": "0", "precision": 20}	\N	2026-04-26 15:22:54.815-04	2026-04-26 15:22:54.815-04	\N	0	{"value": "0", "precision": 20}	\N	\N	\N	\N
\.


--
-- Data for Name: order_line_item; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.order_line_item (id, totals_id, title, subtitle, thumbnail, variant_id, product_id, product_title, product_description, product_subtitle, product_type, product_collection, product_handle, variant_sku, variant_barcode, variant_title, variant_option_values, requires_shipping, is_discountable, is_tax_inclusive, compare_at_unit_price, raw_compare_at_unit_price, unit_price, raw_unit_price, metadata, created_at, updated_at, deleted_at, is_custom_price, product_type_id, is_giftcard) FROM stdin;
ordli_01KQ5G89GF7ZCMDMY17MXDSQ06	\N	Camiseta Oversized Cristo Vive	G	http://localhost:9000/static/1777152975705-camiseta%20super%20ra%C3%83%C2%A7a%20comprimido.png	variant_01KQ394S6BNC8QKJXA75HCW84K	prod_01KQ394S3SVPRBN5HMMGASG417	Camiseta Oversized Cristo Vive			\N	Camisetas	camiseta-cristo-vive	\N	\N	G	\N	t	f	f	\N	\N	64.99	{"value": "64.99", "precision": 20}	{}	2026-04-26 14:18:59.987-04	2026-04-26 14:18:59.987-04	\N	f	\N	f
ordli_01KQ5KXAEYS18P7AJ7CS9ZK5SJ	\N	Camiseta Oversized Cristo Vive	M	http://localhost:9000/static/1777152975705-camiseta%20super%20ra%C3%83%C2%A7a%20comprimido.png	variant_01KQ394S6AG2EPS0DRX14A43JG	prod_01KQ394S3SVPRBN5HMMGASG417	Camiseta Oversized Cristo Vive			\N	Camisetas	camiseta-cristo-vive	\N	\N	M	\N	t	f	f	\N	\N	64.99	{"value": "64.99", "precision": 20}	{}	2026-04-26 15:22:54.815-04	2026-04-26 15:22:54.815-04	\N	f	\N	f
\.


--
-- Data for Name: order_line_item_adjustment; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.order_line_item_adjustment (id, description, promotion_id, code, amount, raw_amount, provider_id, created_at, updated_at, item_id, deleted_at, is_tax_inclusive, version) FROM stdin;
\.


--
-- Data for Name: order_line_item_tax_line; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.order_line_item_tax_line (id, description, tax_rate_id, code, rate, raw_rate, provider_id, created_at, updated_at, item_id, deleted_at) FROM stdin;
\.


--
-- Data for Name: order_payment_collection; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.order_payment_collection (order_id, payment_collection_id, id, created_at, updated_at, deleted_at) FROM stdin;
order_01KQ5G89GD45PB0CCYEHRMCQ68	pay_col_01KQ5E1DV5PX507CG1HA1NGAW0	ordpay_01KQ5G89N38QJAKW5XGMQHFWQ3	2026-04-26 14:19:00.126481-04	2026-04-26 14:19:00.126481-04	\N
order_01KQ5KXAEX3J2PGMMMHA7V60BT	pay_col_01KQ5KX749WPM6CV5PJFNHSZ97	ordpay_01KQ5KXAGKDXZXN9RD734DWQKR	2026-04-26 15:22:54.861945-04	2026-04-26 15:22:54.861945-04	\N
\.


--
-- Data for Name: order_promotion; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.order_promotion (order_id, promotion_id, id, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: order_shipping; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.order_shipping (id, order_id, version, shipping_method_id, created_at, updated_at, deleted_at, return_id, claim_id, exchange_id) FROM stdin;
ordspmv_01KQ5G89GDQD196X1NR1GGN51M	order_01KQ5G89GD45PB0CCYEHRMCQ68	1	ordsm_01KQ5G89GD4V8CRHXYHSVT1NRK	2026-04-26 14:18:59.989-04	2026-04-26 14:18:59.989-04	\N	\N	\N	\N
ordspmv_01KQ5KW9BPQH8WDX71P8FH96JZ	order_01KQ5G89GD45PB0CCYEHRMCQ68	2	ordsm_01KQ5G89GD4V8CRHXYHSVT1NRK	2026-04-26 14:18:59.989-04	2026-04-26 14:18:59.989-04	\N	\N	\N	\N
ordspmv_01KQ5KXAEX2S5V01B4PZK0RNVN	order_01KQ5KXAEX3J2PGMMMHA7V60BT	1	ordsm_01KQ5KXAEXCSGFJ40PF60CASX8	2026-04-26 15:22:54.815-04	2026-04-26 15:22:54.815-04	\N	\N	\N	\N
\.


--
-- Data for Name: order_shipping_method; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.order_shipping_method (id, name, description, amount, raw_amount, is_tax_inclusive, shipping_option_id, data, metadata, created_at, updated_at, deleted_at, is_custom_amount) FROM stdin;
ordsm_01KQ5G89GD4V8CRHXYHSVT1NRK	Envio Padrão	\N	20	{"value": "20", "precision": 20}	f	so_01KP9XXK05TKCGKDGWNEA8GGZZ	{}	\N	2026-04-26 14:18:59.988-04	2026-04-26 14:18:59.988-04	\N	f
ordsm_01KQ5KXAEXCSGFJ40PF60CASX8	Envio Padrão	\N	20	{"value": "20", "precision": 20}	f	so_01KP9XXK05TKCGKDGWNEA8GGZZ	{}	\N	2026-04-26 15:22:54.815-04	2026-04-26 15:22:54.815-04	\N	f
\.


--
-- Data for Name: order_shipping_method_adjustment; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.order_shipping_method_adjustment (id, description, promotion_id, code, amount, raw_amount, provider_id, created_at, updated_at, shipping_method_id, deleted_at) FROM stdin;
\.


--
-- Data for Name: order_shipping_method_tax_line; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.order_shipping_method_tax_line (id, description, tax_rate_id, code, rate, raw_rate, provider_id, created_at, updated_at, shipping_method_id, deleted_at) FROM stdin;
\.


--
-- Data for Name: order_summary; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.order_summary (id, order_id, version, totals, created_at, updated_at, deleted_at) FROM stdin;
ordsum_01KQ5G89GBCMP8XRW7VJS6XQPP	order_01KQ5G89GD45PB0CCYEHRMCQ68	1	{"paid_total": 0, "raw_paid_total": {"value": "0", "precision": 20}, "refunded_total": 0, "accounting_total": 84.99, "credit_line_total": 0, "transaction_total": 0, "pending_difference": 84.99, "raw_refunded_total": {"value": "0", "precision": 20}, "current_order_total": 84.99, "original_order_total": 84.99, "raw_accounting_total": {"value": "84.99", "precision": 20}, "raw_credit_line_total": {"value": "0", "precision": 20}, "raw_transaction_total": {"value": "0", "precision": 20}, "raw_pending_difference": {"value": "84.99", "precision": 20}, "raw_current_order_total": {"value": "84.99", "precision": 20}, "raw_original_order_total": {"value": "84.99", "precision": 20}}	2026-04-26 14:18:59.988-04	2026-04-26 14:18:59.988-04	\N
ordsum_01KQ5KW9BNC9EDMTXQ40STM4N1	order_01KQ5G89GD45PB0CCYEHRMCQ68	2	{"paid_total": 0, "raw_paid_total": {"value": "0", "precision": 20}, "refunded_total": 0, "accounting_total": 84.99, "credit_line_total": 0, "transaction_total": 0, "pending_difference": 84.99, "raw_refunded_total": {"value": "0", "precision": 20}, "current_order_total": 84.99, "original_order_total": 84.99, "raw_accounting_total": {"value": "84.99", "precision": 20}, "raw_credit_line_total": {"value": "0", "precision": 20}, "raw_transaction_total": {"value": "0", "precision": 20}, "raw_pending_difference": {"value": "84.99", "precision": 20}, "raw_current_order_total": {"value": "84.99", "precision": 20}, "raw_original_order_total": {"value": "84.99", "precision": 20}}	2026-04-26 15:22:20.92-04	2026-04-26 15:22:20.92-04	\N
ordsum_01KQ5KXAEWS3N0KQ6AAC32BDXH	order_01KQ5KXAEX3J2PGMMMHA7V60BT	1	{"paid_total": 0, "raw_paid_total": {"value": "0", "precision": 20}, "refunded_total": 0, "accounting_total": 84.99, "credit_line_total": 0, "transaction_total": 0, "pending_difference": 84.99, "raw_refunded_total": {"value": "0", "precision": 20}, "current_order_total": 84.99, "original_order_total": 84.99, "raw_accounting_total": {"value": "84.99", "precision": 20}, "raw_credit_line_total": {"value": "0", "precision": 20}, "raw_transaction_total": {"value": "0", "precision": 20}, "raw_pending_difference": {"value": "84.99", "precision": 20}, "raw_current_order_total": {"value": "84.99", "precision": 20}, "raw_original_order_total": {"value": "84.99", "precision": 20}}	2026-04-26 15:22:54.815-04	2026-04-26 15:22:54.815-04	\N
\.


--
-- Data for Name: order_transaction; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.order_transaction (id, order_id, version, amount, raw_amount, currency_code, reference, reference_id, created_at, updated_at, deleted_at, return_id, claim_id, exchange_id) FROM stdin;
\.


--
-- Data for Name: payment; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payment (id, amount, raw_amount, currency_code, provider_id, data, created_at, updated_at, deleted_at, captured_at, canceled_at, payment_collection_id, payment_session_id, metadata) FROM stdin;
pay_01KQ5G89PCPHC3GA1APXRJKQSH	84.99	{"value": "84.99", "precision": 20}	brl	pp_system_default	{}	2026-04-26 14:19:00.173-04	2026-04-26 15:22:20.752-04	\N	\N	2026-04-26 15:22:20.734-04	pay_col_01KQ5E1DV5PX507CG1HA1NGAW0	payses_01KQ5E1DX0CRM6YEW7JW8MEW5F	\N
pay_01KQ5KXAHJJFZJ5PQ0JR888BTY	84.99	{"value": "84.99", "precision": 20}	brl	pp_system_default	{}	2026-04-26 15:22:54.898-04	2026-04-26 15:22:54.898-04	\N	\N	\N	pay_col_01KQ5KX749WPM6CV5PJFNHSZ97	payses_01KQ5KX75H3W02WGCMKPC452CH	\N
\.


--
-- Data for Name: payment_collection; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payment_collection (id, currency_code, amount, raw_amount, authorized_amount, raw_authorized_amount, captured_amount, raw_captured_amount, refunded_amount, raw_refunded_amount, created_at, updated_at, deleted_at, completed_at, status, metadata) FROM stdin;
pay_col_01KQ5E1DV5PX507CG1HA1NGAW0	brl	84.99	{"value": "84.99", "precision": 20}	84.99	{"value": "84.99", "precision": 20}	0	{"value": "0", "precision": 20}	0	{"value": "0", "precision": 20}	2026-04-26 13:40:17.894-04	2026-04-26 15:22:20.959-04	\N	\N	canceled	\N
pay_col_01KQ5KX749WPM6CV5PJFNHSZ97	brl	84.99	{"value": "84.99", "precision": 20}	84.99	{"value": "84.99", "precision": 20}	0	{"value": "0", "precision": 20}	0	{"value": "0", "precision": 20}	2026-04-26 15:22:51.401-04	2026-04-26 15:22:54.917-04	\N	\N	authorized	\N
\.


--
-- Data for Name: payment_collection_payment_providers; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payment_collection_payment_providers (payment_collection_id, payment_provider_id) FROM stdin;
\.


--
-- Data for Name: payment_provider; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payment_provider (id, is_enabled, created_at, updated_at, deleted_at) FROM stdin;
pp_system_default	t	2026-04-15 21:18:43.023-04	2026-04-15 21:18:43.023-04	\N
\.


--
-- Data for Name: payment_session; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payment_session (id, currency_code, amount, raw_amount, provider_id, data, context, status, authorized_at, payment_collection_id, metadata, created_at, updated_at, deleted_at) FROM stdin;
payses_01KQ5E1DX0CRM6YEW7JW8MEW5F	brl	84.99	{"value": "84.99", "precision": 20}	pp_system_default	{}	{}	authorized	2026-04-26 14:19:00.168-04	pay_col_01KQ5E1DV5PX507CG1HA1NGAW0	{}	2026-04-26 13:40:17.952-04	2026-04-26 14:19:00.173-04	\N
payses_01KQ5KX75H3W02WGCMKPC452CH	brl	84.99	{"value": "84.99", "precision": 20}	pp_system_default	{}	{}	authorized	2026-04-26 15:22:54.895-04	pay_col_01KQ5KX749WPM6CV5PJFNHSZ97	{}	2026-04-26 15:22:51.441-04	2026-04-26 15:22:54.898-04	\N
\.


--
-- Data for Name: price; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.price (id, title, price_set_id, currency_code, raw_amount, rules_count, created_at, updated_at, deleted_at, price_list_id, amount, min_quantity, max_quantity, raw_min_quantity, raw_max_quantity) FROM stdin;
price_01KP9XXK0MQG5W1YPN7EH8FY78	\N	pset_01KP9XXK0NDPD7Q0QJXZG5B7WM	usd	{"value": "10", "precision": 20}	0	2026-04-15 21:19:05.238-04	2026-04-15 21:19:05.238-04	\N	\N	10	\N	\N	\N	\N
price_01KP9XXK0NWCB2MXTXJ915FSWG	\N	pset_01KP9XXK0NDPD7Q0QJXZG5B7WM	eur	{"value": "10", "precision": 20}	0	2026-04-15 21:19:05.238-04	2026-04-15 21:19:05.238-04	\N	\N	10	\N	\N	\N	\N
price_01KP9XXK0N5NGB4KKMXND14DHV	\N	pset_01KP9XXK0PG83JZRAX5VFRTEE1	usd	{"value": "10", "precision": 20}	0	2026-04-15 21:19:05.239-04	2026-04-15 21:19:05.239-04	\N	\N	10	\N	\N	\N	\N
price_01KP9XXK0NN5AYT3A3RNDES3F0	\N	pset_01KP9XXK0PG83JZRAX5VFRTEE1	eur	{"value": "10", "precision": 20}	0	2026-04-15 21:19:05.239-04	2026-04-15 21:19:05.239-04	\N	\N	10	\N	\N	\N	\N
price_01KP9XXK7X3M4M94W232QR2JD4	\N	pset_01KP9XXK7XAEKESV949E56X186	eur	{"value": "10", "precision": 20}	0	2026-04-15 21:19:05.472-04	2026-04-25 17:27:12.735-04	2026-04-25 17:27:12.73-04	\N	10	\N	\N	\N	\N
price_01KP9XXK7XB3FXDZQ63CN7CQGK	\N	pset_01KP9XXK7XAEKESV949E56X186	usd	{"value": "15", "precision": 20}	0	2026-04-15 21:19:05.472-04	2026-04-25 17:27:12.735-04	2026-04-25 17:27:12.73-04	\N	15	\N	\N	\N	\N
price_01KP9XXK7X1PCBKNW4K3Y8RRHS	\N	pset_01KP9XXK7XPVMQKHWT0V0WRVJG	eur	{"value": "10", "precision": 20}	0	2026-04-15 21:19:05.472-04	2026-04-25 17:27:12.745-04	2026-04-25 17:27:12.73-04	\N	10	\N	\N	\N	\N
price_01KP9XXK7XSSEC80W2RQTGZZ4Z	\N	pset_01KP9XXK7XPVMQKHWT0V0WRVJG	usd	{"value": "15", "precision": 20}	0	2026-04-15 21:19:05.472-04	2026-04-25 17:27:12.745-04	2026-04-25 17:27:12.73-04	\N	15	\N	\N	\N	\N
price_01KP9XXK7X3X9GQWM8P7SAR4M6	\N	pset_01KP9XXK7XB7F7MJDSEXG2ZATG	eur	{"value": "10", "precision": 20}	0	2026-04-15 21:19:05.472-04	2026-04-25 17:27:12.752-04	2026-04-25 17:27:12.73-04	\N	10	\N	\N	\N	\N
price_01KP9XXK7XXFHM3DX84NXK2YJW	\N	pset_01KP9XXK7XB7F7MJDSEXG2ZATG	usd	{"value": "15", "precision": 20}	0	2026-04-15 21:19:05.472-04	2026-04-25 17:27:12.752-04	2026-04-25 17:27:12.73-04	\N	15	\N	\N	\N	\N
price_01KP9XXK7XS8KWBWP6KJHSSSTM	\N	pset_01KP9XXK7YZJDD6S2X24G2RF1K	eur	{"value": "10", "precision": 20}	0	2026-04-15 21:19:05.472-04	2026-04-25 17:27:12.76-04	2026-04-25 17:27:12.73-04	\N	10	\N	\N	\N	\N
price_01KP9XXK7YKTC9N3ZC6VE2QDEP	\N	pset_01KP9XXK7YZJDD6S2X24G2RF1K	usd	{"value": "15", "precision": 20}	0	2026-04-15 21:19:05.472-04	2026-04-25 17:27:12.76-04	2026-04-25 17:27:12.73-04	\N	15	\N	\N	\N	\N
price_01KP9XXK7YXB1QXFK240P78ARG	\N	pset_01KP9XXK7YQDG7YQ178P9AA1XY	eur	{"value": "10", "precision": 20}	0	2026-04-15 21:19:05.472-04	2026-04-25 17:27:14.653-04	2026-04-25 17:27:14.647-04	\N	10	\N	\N	\N	\N
price_01KP9XXK7YTHH3GPXH49GDYPBQ	\N	pset_01KP9XXK7YQDG7YQ178P9AA1XY	usd	{"value": "15", "precision": 20}	0	2026-04-15 21:19:05.472-04	2026-04-25 17:27:14.653-04	2026-04-25 17:27:14.647-04	\N	15	\N	\N	\N	\N
price_01KP9XXK7YS2DVP8PEK807D8NJ	\N	pset_01KP9XXK7Y59GSENVX4D6PGG5M	eur	{"value": "10", "precision": 20}	0	2026-04-15 21:19:05.472-04	2026-04-25 17:27:14.668-04	2026-04-25 17:27:14.647-04	\N	10	\N	\N	\N	\N
price_01KP9XXK7YZ878P7PAA4N96A7G	\N	pset_01KP9XXK7Y59GSENVX4D6PGG5M	usd	{"value": "15", "precision": 20}	0	2026-04-15 21:19:05.472-04	2026-04-25 17:27:14.668-04	2026-04-25 17:27:14.647-04	\N	15	\N	\N	\N	\N
price_01KP9XXK7YPRE3GZXVJ8C77X0S	\N	pset_01KP9XXK7YMNT8V6STSV1FKB5E	eur	{"value": "10", "precision": 20}	0	2026-04-15 21:19:05.472-04	2026-04-25 17:27:14.682-04	2026-04-25 17:27:14.647-04	\N	10	\N	\N	\N	\N
price_01KP9XXK7Y0GGME9JR99VA2W2X	\N	pset_01KP9XXK7YMNT8V6STSV1FKB5E	usd	{"value": "15", "precision": 20}	0	2026-04-15 21:19:05.472-04	2026-04-25 17:27:14.682-04	2026-04-25 17:27:14.647-04	\N	15	\N	\N	\N	\N
price_01KP9XXK7YF264Y3XNE0456C3Z	\N	pset_01KP9XXK7ZZXYM93N2YQ3FA7S6	eur	{"value": "10", "precision": 20}	0	2026-04-15 21:19:05.472-04	2026-04-25 17:27:14.692-04	2026-04-25 17:27:14.647-04	\N	10	\N	\N	\N	\N
price_01KP9XXK7V7JR8SXRRBXDN18HD	\N	pset_01KP9XXK7WH829T2SAKC82FK29	eur	{"value": "10", "precision": 20}	0	2026-04-15 21:19:05.472-04	2026-04-25 17:27:16.51-04	2026-04-25 17:27:16.506-04	\N	10	\N	\N	\N	\N
price_01KP9XXK7WSRT995CZP8KJ51AC	\N	pset_01KP9XXK7WH829T2SAKC82FK29	usd	{"value": "15", "precision": 20}	0	2026-04-15 21:19:05.472-04	2026-04-25 17:27:16.51-04	2026-04-25 17:27:16.506-04	\N	15	\N	\N	\N	\N
price_01KP9XXK7WQKN1SE1HBWXQQ4MD	\N	pset_01KP9XXK7WYCSPN6VNYMRB7DP8	eur	{"value": "10", "precision": 20}	0	2026-04-15 21:19:05.472-04	2026-04-25 17:27:16.522-04	2026-04-25 17:27:16.506-04	\N	10	\N	\N	\N	\N
price_01KP9XXK7W8XHGEGVZ6W7QSZT3	\N	pset_01KP9XXK7WYCSPN6VNYMRB7DP8	usd	{"value": "15", "precision": 20}	0	2026-04-15 21:19:05.472-04	2026-04-25 17:27:16.522-04	2026-04-25 17:27:16.506-04	\N	15	\N	\N	\N	\N
price_01KP9XXK7W5QX90XF5HSNV8G8G	\N	pset_01KP9XXK7WAZHAXB9T20YXQE54	eur	{"value": "10", "precision": 20}	0	2026-04-15 21:19:05.472-04	2026-04-25 17:27:16.531-04	2026-04-25 17:27:16.506-04	\N	10	\N	\N	\N	\N
price_01KP9XXK7WKCA7EK9MFH962J04	\N	pset_01KP9XXK7WAZHAXB9T20YXQE54	usd	{"value": "15", "precision": 20}	0	2026-04-15 21:19:05.472-04	2026-04-25 17:27:16.531-04	2026-04-25 17:27:16.506-04	\N	15	\N	\N	\N	\N
price_01KP9XXK7WDVVSZZ9H4SSXPJ80	\N	pset_01KP9XXK7X7Y1TN0Y8EN4PYQ1J	eur	{"value": "10", "precision": 20}	0	2026-04-15 21:19:05.472-04	2026-04-25 17:27:16.538-04	2026-04-25 17:27:16.506-04	\N	10	\N	\N	\N	\N
price_01KP9XXK7X1DBK4KV7ZYG9NZN9	\N	pset_01KP9XXK7X7Y1TN0Y8EN4PYQ1J	usd	{"value": "15", "precision": 20}	0	2026-04-15 21:19:05.472-04	2026-04-25 17:27:16.538-04	2026-04-25 17:27:16.506-04	\N	15	\N	\N	\N	\N
price_01KP9XXK7S782WNX2H64ANFYN2	\N	pset_01KP9XXK7SHMQY9XXJA7FZTTJT	eur	{"value": "10", "precision": 20}	0	2026-04-15 21:19:05.471-04	2026-04-25 17:27:07.981-04	2026-04-25 17:27:07.973-04	\N	10	\N	\N	\N	\N
price_01KP9XXK7S2B2DQRMXQN3E0CX1	\N	pset_01KP9XXK7SHMQY9XXJA7FZTTJT	usd	{"value": "15", "precision": 20}	0	2026-04-15 21:19:05.471-04	2026-04-25 17:27:07.981-04	2026-04-25 17:27:07.973-04	\N	15	\N	\N	\N	\N
price_01KPA40MHW4K7AQQZHAXND868P	\N	pset_01KP9XXK7SHMQY9XXJA7FZTTJT	brl	{"value": "59.9", "precision": 20}	0	2026-04-15 23:05:36.574-04	2026-04-25 17:27:07.981-04	2026-04-25 17:27:07.973-04	\N	59.9	\N	\N	\N	\N
price_01KP9XXK7S6AC32EW1WBHCG4FQ	\N	pset_01KP9XXK7TS6EJJ6EQ5876KGK0	eur	{"value": "10", "precision": 20}	0	2026-04-15 21:19:05.471-04	2026-04-25 17:27:07.998-04	2026-04-25 17:27:07.973-04	\N	10	\N	\N	\N	\N
price_01KP9XXK7S5QD07JH44D1H4E53	\N	pset_01KP9XXK7TS6EJJ6EQ5876KGK0	usd	{"value": "15", "precision": 20}	0	2026-04-15 21:19:05.471-04	2026-04-25 17:27:07.998-04	2026-04-25 17:27:07.973-04	\N	15	\N	\N	\N	\N
price_01KPA40MHWBKFB95NXBPP05952	\N	pset_01KP9XXK7TS6EJJ6EQ5876KGK0	brl	{"value": "59.9", "precision": 20}	0	2026-04-15 23:05:36.574-04	2026-04-25 17:27:07.998-04	2026-04-25 17:27:07.973-04	\N	59.9	\N	\N	\N	\N
price_01KP9XXK7TYRG59F8MS2SMHE8E	\N	pset_01KP9XXK7TTF9TE8F83F5TFZ5D	eur	{"value": "10", "precision": 20}	0	2026-04-15 21:19:05.471-04	2026-04-25 17:27:08.007-04	2026-04-25 17:27:07.973-04	\N	10	\N	\N	\N	\N
price_01KP9XXK7TSHVVX5N9WM8EQA0X	\N	pset_01KP9XXK7TTF9TE8F83F5TFZ5D	usd	{"value": "15", "precision": 20}	0	2026-04-15 21:19:05.471-04	2026-04-25 17:27:08.007-04	2026-04-25 17:27:07.973-04	\N	15	\N	\N	\N	\N
price_01KPA40MHWAXSRHTH7HWR80S1Y	\N	pset_01KP9XXK7TTF9TE8F83F5TFZ5D	brl	{"value": "59.9", "precision": 20}	0	2026-04-15 23:05:36.574-04	2026-04-25 17:27:08.007-04	2026-04-25 17:27:07.973-04	\N	59.9	\N	\N	\N	\N
price_01KP9XXK7TEH84F4JFB9DF6XMR	\N	pset_01KP9XXK7TXMB4DVWTV2HPC5ZW	eur	{"value": "10", "precision": 20}	0	2026-04-15 21:19:05.471-04	2026-04-25 17:27:08.015-04	2026-04-25 17:27:07.973-04	\N	10	\N	\N	\N	\N
price_01KP9XXK7TMW8D2YS51XE9Z9ZR	\N	pset_01KP9XXK7TXMB4DVWTV2HPC5ZW	usd	{"value": "15", "precision": 20}	0	2026-04-15 21:19:05.471-04	2026-04-25 17:27:08.016-04	2026-04-25 17:27:07.973-04	\N	15	\N	\N	\N	\N
price_01KPA40MHXGWCDBQVN6DY2CH3P	\N	pset_01KP9XXK7TXMB4DVWTV2HPC5ZW	brl	{"value": "59.9", "precision": 20}	0	2026-04-15 23:05:36.574-04	2026-04-25 17:27:08.016-04	2026-04-25 17:27:07.973-04	\N	59.9	\N	\N	\N	\N
price_01KP9XXK7TFFRMT7YJJHBHAHRP	\N	pset_01KP9XXK7VV8S3M5YVKQZ4DDPG	eur	{"value": "10", "precision": 20}	0	2026-04-15 21:19:05.471-04	2026-04-25 17:27:08.024-04	2026-04-25 17:27:07.973-04	\N	10	\N	\N	\N	\N
price_01KP9XXK7TM8D921R19C85GFYH	\N	pset_01KP9XXK7VV8S3M5YVKQZ4DDPG	usd	{"value": "15", "precision": 20}	0	2026-04-15 21:19:05.471-04	2026-04-25 17:27:08.024-04	2026-04-25 17:27:07.973-04	\N	15	\N	\N	\N	\N
price_01KPA40MHXSTW8S9RF40GG2D3X	\N	pset_01KP9XXK7VV8S3M5YVKQZ4DDPG	brl	{"value": "59.9", "precision": 20}	0	2026-04-15 23:05:36.574-04	2026-04-25 17:27:08.024-04	2026-04-25 17:27:07.973-04	\N	59.9	\N	\N	\N	\N
price_01KP9XXK7V9PMDZKMBYDK4MQ7Z	\N	pset_01KP9XXK7VKK0QWM0RBDTNWR06	eur	{"value": "10", "precision": 20}	0	2026-04-15 21:19:05.471-04	2026-04-25 17:27:08.033-04	2026-04-25 17:27:07.973-04	\N	10	\N	\N	\N	\N
price_01KP9XXK7V6C11K1CRDMDB1K7B	\N	pset_01KP9XXK7VKK0QWM0RBDTNWR06	usd	{"value": "15", "precision": 20}	0	2026-04-15 21:19:05.471-04	2026-04-25 17:27:08.033-04	2026-04-25 17:27:07.973-04	\N	15	\N	\N	\N	\N
price_01KPA40MHXBMZWY0HKC2CSF01X	\N	pset_01KP9XXK7VKK0QWM0RBDTNWR06	brl	{"value": "59.9", "precision": 20}	0	2026-04-15 23:05:36.574-04	2026-04-25 17:27:08.033-04	2026-04-25 17:27:07.973-04	\N	59.9	\N	\N	\N	\N
price_01KP9XXK7V273KM040NH3NH5WQ	\N	pset_01KP9XXK7VQN6WWTZB8HG6R7H7	eur	{"value": "10", "precision": 20}	0	2026-04-15 21:19:05.471-04	2026-04-25 17:27:08.044-04	2026-04-25 17:27:07.973-04	\N	10	\N	\N	\N	\N
price_01KP9XXK7V1V6RRWSXNEAAMC3N	\N	pset_01KP9XXK7VQN6WWTZB8HG6R7H7	usd	{"value": "15", "precision": 20}	0	2026-04-15 21:19:05.472-04	2026-04-25 17:27:08.044-04	2026-04-25 17:27:07.973-04	\N	15	\N	\N	\N	\N
price_01KPA40MHXQ1RR5WC0QHR077P3	\N	pset_01KP9XXK7VQN6WWTZB8HG6R7H7	brl	{"value": "59.9", "precision": 20}	0	2026-04-15 23:05:36.574-04	2026-04-25 17:27:08.044-04	2026-04-25 17:27:07.973-04	\N	59.9	\N	\N	\N	\N
price_01KP9XXK7V6WKGP1YEBXVAT4WR	\N	pset_01KP9XXK7VVSD2W0PBB14NT0WK	eur	{"value": "10", "precision": 20}	0	2026-04-15 21:19:05.472-04	2026-04-25 17:27:08.056-04	2026-04-25 17:27:07.973-04	\N	10	\N	\N	\N	\N
price_01KPA412NZK2AJKZ5EEHJQFPRT	\N	pset_01KP9XXK7XAEKESV949E56X186	brl	{"value": "59.9", "precision": 20}	0	2026-04-15 23:05:51.04-04	2026-04-25 17:27:12.735-04	2026-04-25 17:27:12.73-04	\N	59.9	\N	\N	\N	\N
price_01KPA412NZP69Y4D90N38NRCFZ	\N	pset_01KP9XXK7XPVMQKHWT0V0WRVJG	brl	{"value": "59.9", "precision": 20}	0	2026-04-15 23:05:51.04-04	2026-04-25 17:27:12.745-04	2026-04-25 17:27:12.73-04	\N	59.9	\N	\N	\N	\N
price_01KPA412NZ18VP68YRHH2X4MVV	\N	pset_01KP9XXK7XB7F7MJDSEXG2ZATG	brl	{"value": "59.9", "precision": 20}	0	2026-04-15 23:05:51.04-04	2026-04-25 17:27:12.752-04	2026-04-25 17:27:12.73-04	\N	59.9	\N	\N	\N	\N
price_01KPA412NZSEZ4PCFYZYFVCASW	\N	pset_01KP9XXK7YZJDD6S2X24G2RF1K	brl	{"value": "59.9", "precision": 20}	0	2026-04-15 23:05:51.04-04	2026-04-25 17:27:12.76-04	2026-04-25 17:27:12.73-04	\N	59.9	\N	\N	\N	\N
price_01KPA41AHN4JMX549N1X14A62N	\N	pset_01KP9XXK7YQDG7YQ178P9AA1XY	brl	{"value": "59.9", "precision": 20}	0	2026-04-15 23:05:59.094-04	2026-04-25 17:27:14.653-04	2026-04-25 17:27:14.647-04	\N	59.9	\N	\N	\N	\N
price_01KPA41AHPCG2AZDZXTZHT5T43	\N	pset_01KP9XXK7Y59GSENVX4D6PGG5M	brl	{"value": "59.9", "precision": 20}	0	2026-04-15 23:05:59.094-04	2026-04-25 17:27:14.668-04	2026-04-25 17:27:14.647-04	\N	59.9	\N	\N	\N	\N
price_01KPA41AHP03RTAMWNJYQ2R9TX	\N	pset_01KP9XXK7YMNT8V6STSV1FKB5E	brl	{"value": "59.9", "precision": 20}	0	2026-04-15 23:05:59.094-04	2026-04-25 17:27:14.682-04	2026-04-25 17:27:14.647-04	\N	59.9	\N	\N	\N	\N
price_01KP9XXK7Z0XSAP8MBFW516VBW	\N	pset_01KP9XXK7ZZXYM93N2YQ3FA7S6	usd	{"value": "15", "precision": 20}	0	2026-04-15 21:19:05.472-04	2026-04-25 17:27:14.692-04	2026-04-25 17:27:14.647-04	\N	15	\N	\N	\N	\N
price_01KPA41AHPF1XJ229T0CRBASVR	\N	pset_01KP9XXK7ZZXYM93N2YQ3FA7S6	brl	{"value": "59.9", "precision": 20}	0	2026-04-15 23:05:59.094-04	2026-04-25 17:27:14.692-04	2026-04-25 17:27:14.647-04	\N	59.9	\N	\N	\N	\N
price_01KPA41K36196VDY0XWVY8NZTB	\N	pset_01KP9XXK7WH829T2SAKC82FK29	brl	{"value": "59.9", "precision": 20}	0	2026-04-15 23:06:07.847-04	2026-04-25 17:27:16.51-04	2026-04-25 17:27:16.506-04	\N	59.9	\N	\N	\N	\N
price_01KPA41K36HQ5PQKMEQ9Q7YKZK	\N	pset_01KP9XXK7WYCSPN6VNYMRB7DP8	brl	{"value": "59.9", "precision": 20}	0	2026-04-15 23:06:07.847-04	2026-04-25 17:27:16.522-04	2026-04-25 17:27:16.506-04	\N	59.9	\N	\N	\N	\N
price_01KPA41K366FXGVPYEQNZMTW5T	\N	pset_01KP9XXK7WAZHAXB9T20YXQE54	brl	{"value": "59.9", "precision": 20}	0	2026-04-15 23:06:07.847-04	2026-04-25 17:27:16.531-04	2026-04-25 17:27:16.506-04	\N	59.9	\N	\N	\N	\N
price_01KPA41K377PDHB2721S44BZMD	\N	pset_01KP9XXK7X7Y1TN0Y8EN4PYQ1J	brl	{"value": "59.9", "precision": 20}	0	2026-04-15 23:06:07.847-04	2026-04-25 17:27:16.538-04	2026-04-25 17:27:16.506-04	\N	59.9	\N	\N	\N	\N
price_01KP9XXK7VS3XN33NDG3602NM2	\N	pset_01KP9XXK7VVSD2W0PBB14NT0WK	usd	{"value": "15", "precision": 20}	0	2026-04-15 21:19:05.472-04	2026-04-25 17:27:08.056-04	2026-04-25 17:27:07.973-04	\N	15	\N	\N	\N	\N
price_01KPA40MHXRW4Q92NG5K4NJGYH	\N	pset_01KP9XXK7VVSD2W0PBB14NT0WK	brl	{"value": "59.9", "precision": 20}	0	2026-04-15 23:05:36.574-04	2026-04-25 17:27:08.056-04	2026-04-25 17:27:07.973-04	\N	59.9	\N	\N	\N	\N
price_01KQ394S7J1HXPND0M96Q406FT	\N	pset_01KQ394S7J56F2BMNERW8CHNA2	brl	{"value": "64.99", "precision": 20}	1	2026-04-25 17:36:16.117-04	2026-04-25 17:36:16.117-04	\N	\N	64.99	\N	\N	\N	\N
price_01KQ394S7KGRMPMPKX3ETT0WBD	\N	pset_01KQ394S7K3Z94QFG1J78RTR3F	brl	{"value": "64.99", "precision": 20}	1	2026-04-25 17:36:16.118-04	2026-04-25 17:36:16.118-04	\N	\N	64.99	\N	\N	\N	\N
price_01KQ394S7K1AWNFYX08CEABQAA	\N	pset_01KQ394S7K4GM569TGFSW15G7R	brl	{"value": "64.99", "precision": 20}	1	2026-04-25 17:36:16.118-04	2026-04-25 17:36:16.118-04	\N	\N	64.99	\N	\N	\N	\N
price_01KQ394S7M91CFZ26JT2Y9K9QF	\N	pset_01KQ394S7MHETEV4F1XSMBMNKW	brl	{"value": "64.99", "precision": 20}	1	2026-04-25 17:36:16.118-04	2026-04-25 17:36:16.118-04	\N	\N	64.99	\N	\N	\N	\N
price_01KQ394S7MDTAD4FYXDXF3XZBN	\N	pset_01KQ394S7MEV0VH823EC5EWQG0	brl	{"value": "64.99", "precision": 20}	1	2026-04-25 17:36:16.118-04	2026-04-25 17:36:16.118-04	\N	\N	64.99	\N	\N	\N	\N
price_01KQ59ZTB2QGD7MMFZ4PV3W84P	\N	pset_01KQ394S7J56F2BMNERW8CHNA2	brl	{"value": "64.99", "precision": 20}	0	2026-04-26 12:29:30.855-04	2026-04-26 12:29:30.855-04	\N	\N	64.99	\N	\N	\N	\N
price_01KQ5A26VQRM7F4ZCQMVZBJHQB	\N	pset_01KQ394S7K4GM569TGFSW15G7R	brl	{"value": "64.99", "precision": 20}	0	2026-04-26 12:30:49.209-04	2026-04-26 12:30:49.209-04	\N	\N	64.99	\N	\N	\N	\N
price_01KQ5A2FPARY49JEQ9BZS0M5ZB	\N	pset_01KQ394S7MHETEV4F1XSMBMNKW	brl	{"value": "64.99", "precision": 20}	0	2026-04-26 12:30:58.254-04	2026-04-26 12:30:58.254-04	\N	\N	64.99	\N	\N	\N	\N
price_01KQ5A31HNZ6CYBVAK40FJGT24	\N	pset_01KQ394S7MEV0VH823EC5EWQG0	brl	{"value": "64.99", "precision": 20}	0	2026-04-26 12:31:16.538-04	2026-04-26 12:31:16.538-04	\N	\N	64.99	\N	\N	\N	\N
price_01KQ5A3PZFE5TZRA0Z4P85N5DH	\N	pset_01KQ394S7K3Z94QFG1J78RTR3F	brl	{"value": "64.99", "precision": 20}	0	2026-04-26 12:31:38.486-04	2026-04-26 12:31:43.797-04	\N	\N	64.99	\N	\N	\N	\N
price_01KQ5DXSMR4J7S3J46XSZJRG8Z	\N	pset_01KP9XXK0NDPD7Q0QJXZG5B7WM	brl	{"value": "20", "precision": 20}	0	2026-04-26 13:38:18.904-04	2026-04-26 13:38:18.904-04	\N	\N	20	\N	\N	\N	\N
price_01KQ5DY8F3Q6A8SHEDNQYD943D	\N	pset_01KP9XXK0PG83JZRAX5VFRTEE1	brl	{"value": "20", "precision": 20}	0	2026-04-26 13:38:34.083-04	2026-04-26 13:38:34.083-04	\N	\N	20	\N	\N	\N	\N
price_01KQ5EAMAZXZGZ84CDE4MKSF9W	\N	pset_01KP9XXK0NDPD7Q0QJXZG5B7WM	brl	{"value": "20", "precision": 20}	1	2026-04-26 13:45:19.456-04	2026-04-26 13:45:19.456-04	\N	\N	20	\N	\N	\N	\N
price_01KQ5EAS63DQFQ6823FETE3NER	\N	pset_01KP9XXK0PG83JZRAX5VFRTEE1	brl	{"value": "20", "precision": 20}	1	2026-04-26 13:45:24.419-04	2026-04-26 13:45:24.419-04	\N	\N	20	\N	\N	\N	\N
price_01KQ5ECQRQPMWWERM38CPVFCB5	\N	pset_01KQ5ECQRRK3GRTDTMZ8PVJ5R6	brl	{"value": "0", "precision": 20}	0	2026-04-26 13:46:28.505-04	2026-04-26 13:46:28.505-04	\N	\N	0	\N	\N	\N	\N
price_01KQ5ECQRQKV99BR23PYV1Q08D	\N	pset_01KQ5ECQRRK3GRTDTMZ8PVJ5R6	eur	{"value": "0", "precision": 20}	0	2026-04-26 13:46:28.505-04	2026-04-26 13:46:28.505-04	\N	\N	0	\N	\N	\N	\N
price_01KQ5ECQRR0HX6NGZXKJVA21PW	\N	pset_01KQ5ECQRRK3GRTDTMZ8PVJ5R6	usd	{"value": "0", "precision": 20}	0	2026-04-26 13:46:28.505-04	2026-04-26 13:46:28.505-04	\N	\N	0	\N	\N	\N	\N
price_01KQ5ECQRRKJV8ST7FVHMBTJT0	\N	pset_01KQ5ECQRRK3GRTDTMZ8PVJ5R6	brl	{"value": "0", "precision": 20}	1	2026-04-26 13:46:28.505-04	2026-04-26 13:46:28.505-04	\N	\N	0	\N	\N	\N	\N
\.


--
-- Data for Name: price_list; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.price_list (id, status, starts_at, ends_at, rules_count, title, description, type, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: price_list_rule; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.price_list_rule (id, price_list_id, created_at, updated_at, deleted_at, value, attribute) FROM stdin;
\.


--
-- Data for Name: price_preference; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.price_preference (id, attribute, value, is_tax_inclusive, created_at, updated_at, deleted_at) FROM stdin;
prpref_01KP9XXJSWX5TCFRVWGJQ6YZFD	currency_code	eur	f	2026-04-15 21:19:05.02-04	2026-04-15 21:19:05.02-04	\N
prpref_01KP9XXJWTTBB92CHSZ7A5R21E	region_id	reg_01KP9XXJW4ZG0VCYHMBCMZW4YQ	f	2026-04-15 21:19:05.115-04	2026-04-15 21:19:05.115-04	\N
prpref_01KP9YB397M0FKKDYY4KV47ZXD	currency_code	usd	f	2026-04-15 21:26:27.879-04	2026-04-15 21:26:27.879-04	\N
prpref_01KPA1ZAB8SGCXJP94W0DN8PBF	currency_code	brl	f	2026-04-15 22:29:56.201-04	2026-04-15 22:29:56.201-04	\N
prpref_01KPA20S6JV04379K7F9RRTAGA	region_id	reg_01KPA20S5NSBGW8AD90T7HEH4K	f	2026-04-15 22:30:44.178-04	2026-04-15 22:30:44.178-04	\N
\.


--
-- Data for Name: price_rule; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.price_rule (id, value, priority, price_id, created_at, updated_at, deleted_at, attribute, operator) FROM stdin;
prule_01KQ59ZTB3EKTPQA9NH7NHEQ83	reg_01KPA20S5NSBGW8AD90T7HEH4K	0	price_01KQ394S7J1HXPND0M96Q406FT	2026-04-26 12:29:30.855-04	2026-04-26 12:29:30.855-04	\N	region_id	eq
prule_01KQ5A26VQV408N4KA6M3SH4AG	reg_01KPA20S5NSBGW8AD90T7HEH4K	0	price_01KQ394S7K1AWNFYX08CEABQAA	2026-04-26 12:30:49.209-04	2026-04-26 12:30:49.209-04	\N	region_id	eq
prule_01KQ5A2FPAJMJHA81QSST4C5CB	reg_01KPA20S5NSBGW8AD90T7HEH4K	0	price_01KQ394S7M91CFZ26JT2Y9K9QF	2026-04-26 12:30:58.254-04	2026-04-26 12:30:58.254-04	\N	region_id	eq
prule_01KQ5A31HP90YG495NTMXJQNYE	reg_01KPA20S5NSBGW8AD90T7HEH4K	0	price_01KQ394S7MDTAD4FYXDXF3XZBN	2026-04-26 12:31:16.538-04	2026-04-26 12:31:16.538-04	\N	region_id	eq
prule_01KQ5A3W5BXF761HJ2WRCFGK0M	reg_01KPA20S5NSBGW8AD90T7HEH4K	0	price_01KQ394S7KGRMPMPKX3ETT0WBD	2026-04-26 12:31:43.797-04	2026-04-26 12:31:43.797-04	\N	region_id	eq
prule_01KQ5EAMAZZ8N9XSYNM267JMXC	reg_01KPA20S5NSBGW8AD90T7HEH4K	0	price_01KQ5EAMAZXZGZ84CDE4MKSF9W	2026-04-26 13:45:19.456-04	2026-04-26 13:45:19.456-04	\N	region_id	eq
prule_01KQ5EAS62ECP9SG98N71727X9	reg_01KPA20S5NSBGW8AD90T7HEH4K	0	price_01KQ5EAS63DQFQ6823FETE3NER	2026-04-26 13:45:24.419-04	2026-04-26 13:45:24.419-04	\N	region_id	eq
prule_01KQ5ECQRR8JXW0AYN10RK04EX	reg_01KPA20S5NSBGW8AD90T7HEH4K	0	price_01KQ5ECQRRKJV8ST7FVHMBTJT0	2026-04-26 13:46:28.505-04	2026-04-26 13:46:28.505-04	\N	region_id	eq
\.


--
-- Data for Name: price_set; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.price_set (id, created_at, updated_at, deleted_at) FROM stdin;
pset_01KP9XXK0NDPD7Q0QJXZG5B7WM	2026-04-15 21:19:05.238-04	2026-04-15 21:19:05.238-04	\N
pset_01KP9XXK0PG83JZRAX5VFRTEE1	2026-04-15 21:19:05.238-04	2026-04-15 21:19:05.238-04	\N
pset_01KP9XXK7SHMQY9XXJA7FZTTJT	2026-04-15 21:19:05.471-04	2026-04-25 17:27:07.974-04	2026-04-25 17:27:07.973-04
pset_01KP9XXK7TS6EJJ6EQ5876KGK0	2026-04-15 21:19:05.471-04	2026-04-25 17:27:07.991-04	2026-04-25 17:27:07.973-04
pset_01KP9XXK7TTF9TE8F83F5TFZ5D	2026-04-15 21:19:05.471-04	2026-04-25 17:27:08.003-04	2026-04-25 17:27:07.973-04
pset_01KP9XXK7TXMB4DVWTV2HPC5ZW	2026-04-15 21:19:05.471-04	2026-04-25 17:27:08.012-04	2026-04-25 17:27:07.973-04
pset_01KP9XXK7VV8S3M5YVKQZ4DDPG	2026-04-15 21:19:05.471-04	2026-04-25 17:27:08.02-04	2026-04-25 17:27:07.973-04
pset_01KP9XXK7VKK0QWM0RBDTNWR06	2026-04-15 21:19:05.471-04	2026-04-25 17:27:08.029-04	2026-04-25 17:27:07.973-04
pset_01KP9XXK7VQN6WWTZB8HG6R7H7	2026-04-15 21:19:05.471-04	2026-04-25 17:27:08.041-04	2026-04-25 17:27:07.973-04
pset_01KP9XXK7VVSD2W0PBB14NT0WK	2026-04-15 21:19:05.471-04	2026-04-25 17:27:08.051-04	2026-04-25 17:27:07.973-04
pset_01KP9XXK7XAEKESV949E56X186	2026-04-15 21:19:05.471-04	2026-04-25 17:27:12.73-04	2026-04-25 17:27:12.73-04
pset_01KP9XXK7XPVMQKHWT0V0WRVJG	2026-04-15 21:19:05.471-04	2026-04-25 17:27:12.741-04	2026-04-25 17:27:12.73-04
pset_01KP9XXK7XB7F7MJDSEXG2ZATG	2026-04-15 21:19:05.471-04	2026-04-25 17:27:12.749-04	2026-04-25 17:27:12.73-04
pset_01KP9XXK7YZJDD6S2X24G2RF1K	2026-04-15 21:19:05.471-04	2026-04-25 17:27:12.757-04	2026-04-25 17:27:12.73-04
pset_01KP9XXK7YQDG7YQ178P9AA1XY	2026-04-15 21:19:05.471-04	2026-04-25 17:27:14.647-04	2026-04-25 17:27:14.647-04
pset_01KP9XXK7Y59GSENVX4D6PGG5M	2026-04-15 21:19:05.471-04	2026-04-25 17:27:14.664-04	2026-04-25 17:27:14.647-04
pset_01KP9XXK7YMNT8V6STSV1FKB5E	2026-04-15 21:19:05.471-04	2026-04-25 17:27:14.678-04	2026-04-25 17:27:14.647-04
pset_01KP9XXK7ZZXYM93N2YQ3FA7S6	2026-04-15 21:19:05.471-04	2026-04-25 17:27:14.688-04	2026-04-25 17:27:14.647-04
pset_01KP9XXK7WH829T2SAKC82FK29	2026-04-15 21:19:05.471-04	2026-04-25 17:27:16.506-04	2026-04-25 17:27:16.506-04
pset_01KP9XXK7WYCSPN6VNYMRB7DP8	2026-04-15 21:19:05.471-04	2026-04-25 17:27:16.519-04	2026-04-25 17:27:16.506-04
pset_01KP9XXK7WAZHAXB9T20YXQE54	2026-04-15 21:19:05.471-04	2026-04-25 17:27:16.528-04	2026-04-25 17:27:16.506-04
pset_01KP9XXK7X7Y1TN0Y8EN4PYQ1J	2026-04-15 21:19:05.471-04	2026-04-25 17:27:16.535-04	2026-04-25 17:27:16.506-04
pset_01KQ394S7J56F2BMNERW8CHNA2	2026-04-25 17:36:16.117-04	2026-04-25 17:36:16.117-04	\N
pset_01KQ394S7K3Z94QFG1J78RTR3F	2026-04-25 17:36:16.117-04	2026-04-25 17:36:16.117-04	\N
pset_01KQ394S7K4GM569TGFSW15G7R	2026-04-25 17:36:16.117-04	2026-04-25 17:36:16.117-04	\N
pset_01KQ394S7MHETEV4F1XSMBMNKW	2026-04-25 17:36:16.117-04	2026-04-25 17:36:16.117-04	\N
pset_01KQ394S7MEV0VH823EC5EWQG0	2026-04-25 17:36:16.117-04	2026-04-25 17:36:16.117-04	\N
pset_01KQ5ECQRRK3GRTDTMZ8PVJ5R6	2026-04-26 13:46:28.504-04	2026-04-26 13:46:28.504-04	\N
\.


--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.product (id, title, handle, subtitle, description, is_giftcard, status, thumbnail, weight, length, height, width, origin_country, hs_code, mid_code, material, collection_id, type_id, discountable, external_id, created_at, updated_at, deleted_at, metadata) FROM stdin;
prod_01KP9XXK336DRTVSEMPQ5CE6S0	Medusa T-Shirt	t-shirt	\N	Reimagine the feeling of a classic T-shirt. With our cotton T-shirts, everyday essentials no longer have to be ordinary.	f	published	https://medusa-public-images.s3.eu-west-1.amazonaws.com/tee-black-front.png	400	\N	\N	\N	\N	\N	\N	\N	pcol_01KQ37NDXWEV1YWQF31X9CYPR3	\N	t	\N	2026-04-15 21:19:05.322-04	2026-04-25 17:27:07.944-04	2026-04-25 17:27:07.944-04	\N
prod_01KP9XXK339HBJ8FV0XSZP26TE	Medusa Sweatpants	sweatpants	\N	Reimagine the feeling of classic sweatpants. With our cotton sweatpants, everyday essentials no longer have to be ordinary.	f	published	https://medusa-public-images.s3.eu-west-1.amazonaws.com/sweatpants-gray-front.png	400	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2026-04-15 21:19:05.323-04	2026-04-25 17:27:12.715-04	2026-04-25 17:27:12.714-04	\N
prod_01KP9XXK33JPQCBPF8GWFGWXET	Medusa Shorts	shorts	\N	Reimagine the feeling of classic shorts. With our cotton shorts, everyday essentials no longer have to be ordinary.	f	published	https://medusa-public-images.s3.eu-west-1.amazonaws.com/shorts-vintage-front.png	400	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2026-04-15 21:19:05.323-04	2026-04-25 17:27:14.63-04	2026-04-25 17:27:14.63-04	\N
prod_01KP9XXK33P2MN4PW6H7AMPSX6	Medusa Sweatshirt	sweatshirt	\N	Reimagine the feeling of a classic sweatshirt. With our cotton sweatshirt, everyday essentials no longer have to be ordinary.	f	published	https://medusa-public-images.s3.eu-west-1.amazonaws.com/sweatshirt-vintage-front.png	400	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2026-04-15 21:19:05.323-04	2026-04-25 17:27:16.495-04	2026-04-25 17:27:16.495-04	\N
prod_01KQ394S3SVPRBN5HMMGASG417	Camiseta Oversized Cristo Vive	camiseta-cristo-vive			f	published	http://localhost:9000/static/1777152975705-camiseta%20super%20ra%C3%83%C2%A7a%20comprimido.png	\N	\N	\N	\N	\N	\N	\N	\N	pcol_01KQ38Q8SHY9MB9TSSBPPG406Y	\N	f	\N	2026-04-25 17:36:16-04	2026-04-25 17:36:16-04	\N	\N
\.


--
-- Data for Name: product_category; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.product_category (id, name, description, handle, mpath, is_active, is_internal, rank, parent_category_id, created_at, updated_at, deleted_at, metadata) FROM stdin;
pcat_01KP9XXK2MJANKXEVQSZS165J4	Shirts		shirts	pcat_01KP9XXK2MJANKXEVQSZS165J4	t	f	0	\N	2026-04-15 21:19:05.301-04	2026-04-25 17:27:40.25-04	2026-04-25 17:27:40.25-04	\N
pcat_01KP9XXK2N7N8BYAE93HBCRWR6	Merch		merch	pcat_01KP9XXK2N7N8BYAE93HBCRWR6	t	f	2	\N	2026-04-15 21:19:05.302-04	2026-04-25 17:27:42.017-04	2026-04-25 17:27:42.016-04	\N
pcat_01KP9XXK2N9Q3APQRBTYFEFW9X	Pants		pants	pcat_01KP9XXK2N9Q3APQRBTYFEFW9X	t	f	1	\N	2026-04-15 21:19:05.302-04	2026-04-25 17:27:43.536-04	2026-04-25 17:27:43.536-04	\N
pcat_01KP9XXK2NBKE3K1VTGR8RNB7E	Sweatshirts		sweatshirts	pcat_01KP9XXK2NBKE3K1VTGR8RNB7E	t	f	0	\N	2026-04-15 21:19:05.302-04	2026-04-25 17:27:45.232-04	2026-04-25 17:27:45.232-04	\N
pcat_01KQ38Q14H58EG47555Z1WH0E7	Camisetas		camisetas	pcat_01KQ38Q14H58EG47555Z1WH0E7	t	f	0	\N	2026-04-25 17:28:45.458-04	2026-04-25 17:28:45.458-04	\N	\N
\.


--
-- Data for Name: product_category_product; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.product_category_product (product_id, product_category_id) FROM stdin;
prod_01KP9XXK336DRTVSEMPQ5CE6S0	pcat_01KP9XXK2MJANKXEVQSZS165J4
prod_01KP9XXK33P2MN4PW6H7AMPSX6	pcat_01KP9XXK2NBKE3K1VTGR8RNB7E
prod_01KP9XXK339HBJ8FV0XSZP26TE	pcat_01KP9XXK2N9Q3APQRBTYFEFW9X
prod_01KP9XXK33JPQCBPF8GWFGWXET	pcat_01KP9XXK2N7N8BYAE93HBCRWR6
prod_01KQ394S3SVPRBN5HMMGASG417	pcat_01KQ38Q14H58EG47555Z1WH0E7
\.


--
-- Data for Name: product_collection; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.product_collection (id, title, handle, metadata, created_at, updated_at, deleted_at) FROM stdin;
pcol_01KQ37NDXWEV1YWQF31X9CYPR3	Promoções	promocoes	\N	2026-04-25 17:10:24.442251-04	2026-04-25 17:27:36.879-04	2026-04-25 17:27:36.879-04
pcol_01KQ38Q8SHY9MB9TSSBPPG406Y	Camisetas	camisetas	\N	2026-04-25 17:28:53.295936-04	2026-04-25 17:28:53.295936-04	\N
\.


--
-- Data for Name: product_option; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.product_option (id, title, product_id, metadata, created_at, updated_at, deleted_at) FROM stdin;
opt_01KP9XXK35SFJA2359KCJ7GDM7	Size	prod_01KP9XXK336DRTVSEMPQ5CE6S0	\N	2026-04-15 21:19:05.323-04	2026-04-25 17:27:07.971-04	2026-04-25 17:27:07.944-04
opt_01KP9XXK35YE00BXSB78485PED	Color	prod_01KP9XXK336DRTVSEMPQ5CE6S0	\N	2026-04-15 21:19:05.323-04	2026-04-25 17:27:07.971-04	2026-04-25 17:27:07.944-04
opt_01KP9XXK39W9GTPR65YSXYCW43	Size	prod_01KP9XXK339HBJ8FV0XSZP26TE	\N	2026-04-15 21:19:05.323-04	2026-04-25 17:27:12.725-04	2026-04-25 17:27:12.714-04
opt_01KP9XXK393SPWZW5XYSF3Y5M4	Size	prod_01KP9XXK33JPQCBPF8GWFGWXET	\N	2026-04-15 21:19:05.324-04	2026-04-25 17:27:14.645-04	2026-04-25 17:27:14.63-04
opt_01KP9XXK38Z0B6P5TT7D9JC69Q	Size	prod_01KP9XXK33P2MN4PW6H7AMPSX6	\N	2026-04-15 21:19:05.323-04	2026-04-25 17:27:16.505-04	2026-04-25 17:27:16.495-04
opt_01KQ394S3X6Y8AGV2Y9A2HJWQ4	Tamanho	prod_01KQ394S3SVPRBN5HMMGASG417	\N	2026-04-25 17:36:16-04	2026-04-25 17:36:16-04	\N
\.


--
-- Data for Name: product_option_value; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.product_option_value (id, value, option_id, metadata, created_at, updated_at, deleted_at) FROM stdin;
optval_01KP9XXK35AMF9H9XPD49RMGRY	S	opt_01KP9XXK35SFJA2359KCJ7GDM7	\N	2026-04-15 21:19:05.323-04	2026-04-25 17:27:07.994-04	2026-04-25 17:27:07.944-04
optval_01KP9XXK357R6QKE3V0EMBGQHV	M	opt_01KP9XXK35SFJA2359KCJ7GDM7	\N	2026-04-15 21:19:05.323-04	2026-04-25 17:27:07.994-04	2026-04-25 17:27:07.944-04
optval_01KP9XXK351DMHVG3YPX1TDQMZ	L	opt_01KP9XXK35SFJA2359KCJ7GDM7	\N	2026-04-15 21:19:05.323-04	2026-04-25 17:27:07.994-04	2026-04-25 17:27:07.944-04
optval_01KP9XXK35QFCBQ4W5KS0AZA3G	XL	opt_01KP9XXK35SFJA2359KCJ7GDM7	\N	2026-04-15 21:19:05.323-04	2026-04-25 17:27:07.994-04	2026-04-25 17:27:07.944-04
optval_01KP9XXK355DTDVH04SXGZKVBN	Black	opt_01KP9XXK35YE00BXSB78485PED	\N	2026-04-15 21:19:05.323-04	2026-04-25 17:27:07.994-04	2026-04-25 17:27:07.944-04
optval_01KP9XXK35Q3XGKN3CSDAFBB6G	White	opt_01KP9XXK35YE00BXSB78485PED	\N	2026-04-15 21:19:05.323-04	2026-04-25 17:27:07.994-04	2026-04-25 17:27:07.944-04
optval_01KP9XXK38CZ03KW45W1A2Q7SN	S	opt_01KP9XXK39W9GTPR65YSXYCW43	\N	2026-04-15 21:19:05.323-04	2026-04-25 17:27:12.734-04	2026-04-25 17:27:12.714-04
optval_01KP9XXK38XFG6YS5NHPWTE5BE	M	opt_01KP9XXK39W9GTPR65YSXYCW43	\N	2026-04-15 21:19:05.323-04	2026-04-25 17:27:12.734-04	2026-04-25 17:27:12.714-04
optval_01KP9XXK3811SXVNMZ03KRQPC8	L	opt_01KP9XXK39W9GTPR65YSXYCW43	\N	2026-04-15 21:19:05.323-04	2026-04-25 17:27:12.734-04	2026-04-25 17:27:12.714-04
optval_01KP9XXK3843HA6V8MFVC0NMKF	XL	opt_01KP9XXK39W9GTPR65YSXYCW43	\N	2026-04-15 21:19:05.323-04	2026-04-25 17:27:12.734-04	2026-04-25 17:27:12.714-04
optval_01KP9XXK39V8TEBFN3W4NVWQKP	S	opt_01KP9XXK393SPWZW5XYSF3Y5M4	\N	2026-04-15 21:19:05.324-04	2026-04-25 17:27:14.661-04	2026-04-25 17:27:14.63-04
optval_01KP9XXK39K71M94PT44K0QTMQ	M	opt_01KP9XXK393SPWZW5XYSF3Y5M4	\N	2026-04-15 21:19:05.324-04	2026-04-25 17:27:14.661-04	2026-04-25 17:27:14.63-04
optval_01KP9XXK39VQ2Z8SX9FY4RF2FC	L	opt_01KP9XXK393SPWZW5XYSF3Y5M4	\N	2026-04-15 21:19:05.324-04	2026-04-25 17:27:14.661-04	2026-04-25 17:27:14.63-04
optval_01KP9XXK39ZTQ8X22FVJRV2359	XL	opt_01KP9XXK393SPWZW5XYSF3Y5M4	\N	2026-04-15 21:19:05.324-04	2026-04-25 17:27:14.661-04	2026-04-25 17:27:14.63-04
optval_01KP9XXK37TJS9T6GV7GWDQC4D	S	opt_01KP9XXK38Z0B6P5TT7D9JC69Q	\N	2026-04-15 21:19:05.323-04	2026-04-25 17:27:16.516-04	2026-04-25 17:27:16.495-04
optval_01KP9XXK37345DZ9XTFAPF0B2A	M	opt_01KP9XXK38Z0B6P5TT7D9JC69Q	\N	2026-04-15 21:19:05.323-04	2026-04-25 17:27:16.516-04	2026-04-25 17:27:16.495-04
optval_01KP9XXK37YSYNGBSRZPYJ19B1	L	opt_01KP9XXK38Z0B6P5TT7D9JC69Q	\N	2026-04-15 21:19:05.323-04	2026-04-25 17:27:16.516-04	2026-04-25 17:27:16.495-04
optval_01KP9XXK37SN581QNJD74JE62S	XL	opt_01KP9XXK38Z0B6P5TT7D9JC69Q	\N	2026-04-15 21:19:05.323-04	2026-04-25 17:27:16.516-04	2026-04-25 17:27:16.495-04
optval_01KQ394S3WE1RME46RG3YP3KD7	PP	opt_01KQ394S3X6Y8AGV2Y9A2HJWQ4	\N	2026-04-25 17:36:16-04	2026-04-25 17:36:16-04	\N
optval_01KQ394S3WR63SENNFESFWNRWX	P	opt_01KQ394S3X6Y8AGV2Y9A2HJWQ4	\N	2026-04-25 17:36:16.001-04	2026-04-25 17:36:16.001-04	\N
optval_01KQ394S3WNY8V6F8M97P3TM0N	M	opt_01KQ394S3X6Y8AGV2Y9A2HJWQ4	\N	2026-04-25 17:36:16.001-04	2026-04-25 17:36:16.001-04	\N
optval_01KQ394S3X1WNXQRPG45APVDVD	G	opt_01KQ394S3X6Y8AGV2Y9A2HJWQ4	\N	2026-04-25 17:36:16.001-04	2026-04-25 17:36:16.001-04	\N
optval_01KQ394S3X2E801PDQ7PYC3BFJ	GG	opt_01KQ394S3X6Y8AGV2Y9A2HJWQ4	\N	2026-04-25 17:36:16.001-04	2026-04-25 17:36:16.001-04	\N
\.


--
-- Data for Name: product_sales_channel; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.product_sales_channel (product_id, sales_channel_id, id, created_at, updated_at, deleted_at) FROM stdin;
prod_01KP9XXK336DRTVSEMPQ5CE6S0	sc_01KP9XXJRXGGT65H782XD56SVH	prodsc_01KP9XXK4773QHNH0J6JD7ZCSP	2026-04-15 21:19:05.351854-04	2026-04-25 17:27:07.949-04	2026-04-25 17:27:07.949-04
prod_01KP9XXK339HBJ8FV0XSZP26TE	sc_01KP9XXJRXGGT65H782XD56SVH	prodsc_01KP9XXK48WYVTCB4Y5R3KKYYN	2026-04-15 21:19:05.351854-04	2026-04-25 17:27:12.718-04	2026-04-25 17:27:12.717-04
prod_01KP9XXK33JPQCBPF8GWFGWXET	sc_01KP9XXJRXGGT65H782XD56SVH	prodsc_01KP9XXK48PNT5KNNC1DPH0WCS	2026-04-15 21:19:05.351854-04	2026-04-25 17:27:14.636-04	2026-04-25 17:27:14.636-04
prod_01KP9XXK33P2MN4PW6H7AMPSX6	sc_01KP9XXJRXGGT65H782XD56SVH	prodsc_01KP9XXK48GJP9H685C6BBM10M	2026-04-15 21:19:05.351854-04	2026-04-25 17:27:16.498-04	2026-04-25 17:27:16.497-04
prod_01KQ394S3SVPRBN5HMMGASG417	sc_01KP9XXJRXGGT65H782XD56SVH	prodsc_01KQ394S5C5SE5X410C79RQ1N3	2026-04-25 17:36:16.042784-04	2026-04-25 17:36:16.042784-04	\N
\.


--
-- Data for Name: product_shipping_profile; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.product_shipping_profile (product_id, shipping_profile_id, id, created_at, updated_at, deleted_at) FROM stdin;
prod_01KP9XXK336DRTVSEMPQ5CE6S0	sp_01KP9XX3SZ7SG4EJ4HJ2S63AD4	prodsp_01KP9XXK4MCZYSY6RN4AWDWFH4	2026-04-15 21:19:05.364596-04	2026-04-25 17:27:07.952-04	2026-04-25 17:27:07.952-04
prod_01KP9XXK339HBJ8FV0XSZP26TE	sp_01KP9XX3SZ7SG4EJ4HJ2S63AD4	prodsp_01KP9XXK4M0ZQRGQ5HJBCV8526	2026-04-15 21:19:05.364596-04	2026-04-25 17:27:12.72-04	2026-04-25 17:27:12.72-04
prod_01KP9XXK33JPQCBPF8GWFGWXET	sp_01KP9XX3SZ7SG4EJ4HJ2S63AD4	prodsp_01KP9XXK4N1298VPF4W2463K9N	2026-04-15 21:19:05.364596-04	2026-04-25 17:27:14.635-04	2026-04-25 17:27:14.634-04
prod_01KP9XXK33P2MN4PW6H7AMPSX6	sp_01KP9XX3SZ7SG4EJ4HJ2S63AD4	prodsp_01KP9XXK4M87ENM3AP55M33F5E	2026-04-15 21:19:05.364596-04	2026-04-25 17:27:16.498-04	2026-04-25 17:27:16.498-04
prod_01KQ394S3SVPRBN5HMMGASG417	sp_01KP9XX3SZ7SG4EJ4HJ2S63AD4	prodsp_01KQ5FIX0000000000000000000	2026-04-26 14:18:45.978417-04	2026-04-26 14:18:45.978417-04	\N
\.


--
-- Data for Name: product_tag; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.product_tag (id, value, metadata, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: product_tags; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.product_tags (product_id, product_tag_id) FROM stdin;
\.


--
-- Data for Name: product_type; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.product_type (id, value, metadata, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: product_variant; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.product_variant (id, title, sku, barcode, ean, upc, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, metadata, variant_rank, product_id, created_at, updated_at, deleted_at, thumbnail) FROM stdin;
variant_01KP9XXK5N2DPVMN6V4CNT2XMW	S	SHORTS-S	\N	\N	\N	f	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	prod_01KP9XXK33JPQCBPF8GWFGWXET	2026-04-15 21:19:05.399-04	2026-04-25 17:27:14.645-04	2026-04-25 17:27:14.63-04	\N
variant_01KP9XXK5NHMF5R5YKYZYBWY11	M	SHORTS-M	\N	\N	\N	f	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	prod_01KP9XXK33JPQCBPF8GWFGWXET	2026-04-15 21:19:05.399-04	2026-04-25 17:27:14.645-04	2026-04-25 17:27:14.63-04	\N
variant_01KP9XXK5PM94XW49VDD6EW3JJ	L	SHORTS-L	\N	\N	\N	f	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	prod_01KP9XXK33JPQCBPF8GWFGWXET	2026-04-15 21:19:05.399-04	2026-04-25 17:27:14.645-04	2026-04-25 17:27:14.63-04	\N
variant_01KP9XXK5P7B6AEHYX2Q7C2XY1	XL	SHORTS-XL	\N	\N	\N	f	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	prod_01KP9XXK33JPQCBPF8GWFGWXET	2026-04-15 21:19:05.399-04	2026-04-25 17:27:14.645-04	2026-04-25 17:27:14.63-04	\N
variant_01KP9XXK5M9BS479CM0SFNT3D6	S	SWEATSHIRT-S	\N	\N	\N	f	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	prod_01KP9XXK33P2MN4PW6H7AMPSX6	2026-04-15 21:19:05.399-04	2026-04-25 17:27:16.505-04	2026-04-25 17:27:16.495-04	\N
variant_01KP9XXK5MX27HYVECBRYPB7CC	M	SWEATSHIRT-M	\N	\N	\N	f	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	prod_01KP9XXK33P2MN4PW6H7AMPSX6	2026-04-15 21:19:05.399-04	2026-04-25 17:27:16.505-04	2026-04-25 17:27:16.495-04	\N
variant_01KP9XXK5MWF2AQYSZ4JTRMFE3	L	SWEATSHIRT-L	\N	\N	\N	f	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	prod_01KP9XXK33P2MN4PW6H7AMPSX6	2026-04-15 21:19:05.399-04	2026-04-25 17:27:16.505-04	2026-04-25 17:27:16.495-04	\N
variant_01KP9XXK5NRN8ECC9BB7VQBT03	XL	SWEATSHIRT-XL	\N	\N	\N	f	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	prod_01KP9XXK33P2MN4PW6H7AMPSX6	2026-04-15 21:19:05.399-04	2026-04-25 17:27:16.505-04	2026-04-25 17:27:16.495-04	\N
variant_01KP9XXK5JZ512M0VGH34R1YZN	S / Black	SHIRT-S-BLACK	\N	\N	\N	f	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	prod_01KP9XXK336DRTVSEMPQ5CE6S0	2026-04-15 21:19:05.398-04	2026-04-25 17:27:07.97-04	2026-04-25 17:27:07.944-04	\N
variant_01KP9XXK5JG0N9CZA10W0204J5	S / White	SHIRT-S-WHITE	\N	\N	\N	f	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	prod_01KP9XXK336DRTVSEMPQ5CE6S0	2026-04-15 21:19:05.399-04	2026-04-25 17:27:07.97-04	2026-04-25 17:27:07.944-04	\N
variant_01KP9XXK5JXBGEYVP0S7WJRV5E	M / Black	SHIRT-M-BLACK	\N	\N	\N	f	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	prod_01KP9XXK336DRTVSEMPQ5CE6S0	2026-04-15 21:19:05.399-04	2026-04-25 17:27:07.97-04	2026-04-25 17:27:07.944-04	\N
variant_01KP9XXK5K707TV0P42QT5W35Q	M / White	SHIRT-M-WHITE	\N	\N	\N	f	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	prod_01KP9XXK336DRTVSEMPQ5CE6S0	2026-04-15 21:19:05.399-04	2026-04-25 17:27:07.97-04	2026-04-25 17:27:07.944-04	\N
variant_01KP9XXK5KTPH5DBQV4YM3SJV3	L / Black	SHIRT-L-BLACK	\N	\N	\N	f	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	prod_01KP9XXK336DRTVSEMPQ5CE6S0	2026-04-15 21:19:05.399-04	2026-04-25 17:27:07.97-04	2026-04-25 17:27:07.944-04	\N
variant_01KP9XXK5K9J4Z5FHGVPPPZX0T	L / White	SHIRT-L-WHITE	\N	\N	\N	f	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	prod_01KP9XXK336DRTVSEMPQ5CE6S0	2026-04-15 21:19:05.399-04	2026-04-25 17:27:07.97-04	2026-04-25 17:27:07.944-04	\N
variant_01KP9XXK5KQ05ZJ0E88S3VPYCC	XL / Black	SHIRT-XL-BLACK	\N	\N	\N	f	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	prod_01KP9XXK336DRTVSEMPQ5CE6S0	2026-04-15 21:19:05.399-04	2026-04-25 17:27:07.97-04	2026-04-25 17:27:07.944-04	\N
variant_01KP9XXK5MBXR10Q3F1SG3TCTQ	XL / White	SHIRT-XL-WHITE	\N	\N	\N	f	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	prod_01KP9XXK336DRTVSEMPQ5CE6S0	2026-04-15 21:19:05.399-04	2026-04-25 17:27:07.97-04	2026-04-25 17:27:07.944-04	\N
variant_01KP9XXK5NCEHNPSHPY1SPJZC2	S	SWEATPANTS-S	\N	\N	\N	f	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	prod_01KP9XXK339HBJ8FV0XSZP26TE	2026-04-15 21:19:05.399-04	2026-04-25 17:27:12.724-04	2026-04-25 17:27:12.714-04	\N
variant_01KP9XXK5NK16RNNE8MYHQEKJT	M	SWEATPANTS-M	\N	\N	\N	f	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	prod_01KP9XXK339HBJ8FV0XSZP26TE	2026-04-15 21:19:05.399-04	2026-04-25 17:27:12.724-04	2026-04-25 17:27:12.714-04	\N
variant_01KP9XXK5NBBQJABCGVSA4DFAK	L	SWEATPANTS-L	\N	\N	\N	f	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	prod_01KP9XXK339HBJ8FV0XSZP26TE	2026-04-15 21:19:05.399-04	2026-04-25 17:27:12.724-04	2026-04-25 17:27:12.714-04	\N
variant_01KP9XXK5NQKXN3CW357G38SAX	XL	SWEATPANTS-XL	\N	\N	\N	f	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	prod_01KP9XXK339HBJ8FV0XSZP26TE	2026-04-15 21:19:05.399-04	2026-04-25 17:27:12.724-04	2026-04-25 17:27:12.714-04	\N
variant_01KQ394S6AG2EPS0DRX14A43JG	M	\N	\N	\N	\N	f	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	2	prod_01KQ394S3SVPRBN5HMMGASG417	2026-04-25 17:36:16.076-04	2026-04-25 17:36:16.076-04	\N	\N
variant_01KQ394S6BNC8QKJXA75HCW84K	G	\N	\N	\N	\N	f	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	3	prod_01KQ394S3SVPRBN5HMMGASG417	2026-04-25 17:36:16.076-04	2026-04-25 17:36:16.076-04	\N	\N
variant_01KQ394S6BXMXQWR91HPEKP5FF	GG	\N	\N	\N	\N	f	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	4	prod_01KQ394S3SVPRBN5HMMGASG417	2026-04-25 17:36:16.076-04	2026-04-25 17:36:16.076-04	\N	\N
variant_01KQ394S6AX555ZX75P8FHE14N	P	\N	\N	\N	\N	f	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	prod_01KQ394S3SVPRBN5HMMGASG417	2026-04-25 17:36:16.076-04	2026-04-25 17:36:16.076-04	\N	\N
variant_01KQ394S69161FR0SX7THS1KGN	PP	\N	\N	\N	\N	f	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	prod_01KQ394S3SVPRBN5HMMGASG417	2026-04-25 17:36:16.075-04	2026-04-25 17:36:16.075-04	\N	\N
\.


--
-- Data for Name: product_variant_inventory_item; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.product_variant_inventory_item (variant_id, inventory_item_id, id, required_quantity, created_at, updated_at, deleted_at) FROM stdin;
variant_01KP9XXK5JZ512M0VGH34R1YZN	iitem_01KP9XXK6HWDTR4VS0N41QB9QP	pvitem_01KP9XXK79WCBT2056AN2Z4FVP	1	2026-04-15 21:19:05.449468-04	2026-04-25 17:27:07.93-04	2026-04-25 17:27:07.929-04
variant_01KP9XXK5JG0N9CZA10W0204J5	iitem_01KP9XXK6H2WCDRFGGY30V49SS	pvitem_01KP9XXK79A98AD89TQ8S67JB9	1	2026-04-15 21:19:05.449468-04	2026-04-25 17:27:07.93-04	2026-04-25 17:27:07.929-04
variant_01KP9XXK5JXBGEYVP0S7WJRV5E	iitem_01KP9XXK6HJXV6EKR02PRSAXWW	pvitem_01KP9XXK79WBA3EJ7WH11CJPMM	1	2026-04-15 21:19:05.449468-04	2026-04-25 17:27:07.93-04	2026-04-25 17:27:07.929-04
variant_01KP9XXK5K707TV0P42QT5W35Q	iitem_01KP9XXK6HT9VQ8PT158SZFS2K	pvitem_01KP9XXK795VJYVDYWWSXBGAFW	1	2026-04-15 21:19:05.449468-04	2026-04-25 17:27:07.93-04	2026-04-25 17:27:07.929-04
variant_01KP9XXK5KTPH5DBQV4YM3SJV3	iitem_01KP9XXK6H0D3XYEB900QTXM44	pvitem_01KP9XXK7AS5C3G93PCRR46026	1	2026-04-15 21:19:05.449468-04	2026-04-25 17:27:07.93-04	2026-04-25 17:27:07.929-04
variant_01KP9XXK5K9J4Z5FHGVPPPZX0T	iitem_01KP9XXK6HA6MFV01B0B2M3E7D	pvitem_01KP9XXK7AVNAJN0VSNV70Y7TF	1	2026-04-15 21:19:05.449468-04	2026-04-25 17:27:07.93-04	2026-04-25 17:27:07.929-04
variant_01KP9XXK5KQ05ZJ0E88S3VPYCC	iitem_01KP9XXK6H3RHJAN94CGGJEK3P	pvitem_01KP9XXK7AG92S7NQT80MAYWQJ	1	2026-04-15 21:19:05.449468-04	2026-04-25 17:27:07.93-04	2026-04-25 17:27:07.929-04
variant_01KP9XXK5MBXR10Q3F1SG3TCTQ	iitem_01KP9XXK6HZ6JW7E06GVGZBZBJ	pvitem_01KP9XXK7A5HE0ZKXTRE2YPZ6E	1	2026-04-15 21:19:05.449468-04	2026-04-25 17:27:07.93-04	2026-04-25 17:27:07.929-04
variant_01KP9XXK5NCEHNPSHPY1SPJZC2	iitem_01KP9XXK6JQZDEQPN3R1HSGM6P	pvitem_01KP9XXK7BV1XPQ5PHF989SQY7	1	2026-04-15 21:19:05.449468-04	2026-04-25 17:27:12.705-04	2026-04-25 17:27:12.704-04
variant_01KP9XXK5NK16RNNE8MYHQEKJT	iitem_01KP9XXK6J5AM100AKPWD642Z2	pvitem_01KP9XXK7BTN0WZDTEZSQSS3FR	1	2026-04-15 21:19:05.449468-04	2026-04-25 17:27:12.704-04	2026-04-25 17:27:12.704-04
variant_01KP9XXK5NBBQJABCGVSA4DFAK	iitem_01KP9XXK6JH1T2AWQ1RE93HCP7	pvitem_01KP9XXK7BHK0THS3A94RFD5SD	1	2026-04-15 21:19:05.449468-04	2026-04-25 17:27:12.705-04	2026-04-25 17:27:12.704-04
variant_01KP9XXK5NQKXN3CW357G38SAX	iitem_01KP9XXK6JMDNTBHFZWJWW2MAA	pvitem_01KP9XXK7BENFQDYDGHKYG66QD	1	2026-04-15 21:19:05.449468-04	2026-04-25 17:27:12.705-04	2026-04-25 17:27:12.704-04
variant_01KP9XXK5N2DPVMN6V4CNT2XMW	iitem_01KP9XXK6KV1ZCVJ97CPPY3REM	pvitem_01KP9XXK7BVT609WF6AGEGGTE5	1	2026-04-15 21:19:05.449468-04	2026-04-25 17:27:14.622-04	2026-04-25 17:27:14.621-04
variant_01KP9XXK5NHMF5R5YKYZYBWY11	iitem_01KP9XXK6KMTJM6CH7DKQB981C	pvitem_01KP9XXK7BFTM6M2RKE16WCN7N	1	2026-04-15 21:19:05.449468-04	2026-04-25 17:27:14.622-04	2026-04-25 17:27:14.621-04
variant_01KP9XXK5PM94XW49VDD6EW3JJ	iitem_01KP9XXK6KZRJTXGYGBXDK1HC9	pvitem_01KP9XXK7B4AT8X65JPF07RJ11	1	2026-04-15 21:19:05.449468-04	2026-04-25 17:27:14.622-04	2026-04-25 17:27:14.621-04
variant_01KP9XXK5P7B6AEHYX2Q7C2XY1	iitem_01KP9XXK6KWZME4MFCGGCYNY8A	pvitem_01KP9XXK7CHEJ94746GN5R7JD8	1	2026-04-15 21:19:05.449468-04	2026-04-25 17:27:14.622-04	2026-04-25 17:27:14.621-04
variant_01KP9XXK5M9BS479CM0SFNT3D6	iitem_01KP9XXK6J9WDVJPF3YKKN7EJF	pvitem_01KP9XXK7A90SMCPHHJKG1RYBE	1	2026-04-15 21:19:05.449468-04	2026-04-25 17:27:16.485-04	2026-04-25 17:27:16.485-04
variant_01KP9XXK5MX27HYVECBRYPB7CC	iitem_01KP9XXK6J12TTCB8RSD98QPM0	pvitem_01KP9XXK7AFEGSFWYTQ07DSVQM	1	2026-04-15 21:19:05.449468-04	2026-04-25 17:27:16.485-04	2026-04-25 17:27:16.485-04
variant_01KP9XXK5MWF2AQYSZ4JTRMFE3	iitem_01KP9XXK6JDD79RHA8231GQQVM	pvitem_01KP9XXK7ACM4SZM8BANJ7H9G1	1	2026-04-15 21:19:05.449468-04	2026-04-25 17:27:16.485-04	2026-04-25 17:27:16.485-04
variant_01KP9XXK5NRN8ECC9BB7VQBT03	iitem_01KP9XXK6JE7XK2605WP1QYQSB	pvitem_01KP9XXK7BVMT9TF9X2R0R91CW	1	2026-04-15 21:19:05.449468-04	2026-04-25 17:27:16.485-04	2026-04-25 17:27:16.485-04
variant_01KQ394S6AX555ZX75P8FHE14N	iitem_01KQ59T8BYV4Q8F81QHD256E22	pvitem_01KQ5A1FVG5P0FKNMXPNN9M5V7	10	2026-04-26 12:30:25.64801-04	2026-04-26 12:37:43.32-04	2026-04-26 12:37:43.319-04
variant_01KQ394S69161FR0SX7THS1KGN	iitem_01KQ59T8BYV4Q8F81QHD256E22	pvitem_01KQ5A7XN54WVEFGK2F2KPT569	10	2026-04-26 12:27:27.810952-04	2026-04-26 12:37:52.809-04	2026-04-26 12:37:52.808-04
variant_01KQ394S6AG2EPS0DRX14A43JG	iitem_01KQ59T8BYV4Q8F81QHD256E22	pvitem_01KQ5A1Z3BN32MZEE3JRYCMNRV	10	2026-04-26 12:30:41.259257-04	2026-04-26 12:37:58.374-04	2026-04-26 12:37:58.374-04
variant_01KQ394S6BNC8QKJXA75HCW84K	iitem_01KQ59T8BYV4Q8F81QHD256E22	pvitem_01KQ5A2QWAHMKH46MWFNW0TABW	10	2026-04-26 12:31:06.633959-04	2026-04-26 12:38:04.375-04	2026-04-26 12:38:04.375-04
variant_01KQ394S6BXMXQWR91HPEKP5FF	iitem_01KQ59T8BYV4Q8F81QHD256E22	pvitem_01KQ5A3A290EVH4SMP66PXXYSR	10	2026-04-26 12:31:25.256828-04	2026-04-26 12:38:11.203-04	2026-04-26 12:38:11.203-04
variant_01KQ394S69161FR0SX7THS1KGN	iitem_01KQ5AGXS7YRPDHXAGAY4Z337Y	pvitem_01KQ5ANM6DHF4JXXHJM2VJ0G88	1	2026-04-26 12:41:25.453196-04	2026-04-26 12:41:25.453196-04	\N
variant_01KQ394S6AX555ZX75P8FHE14N	iitem_01KQ5AHB1SX9T53HXXNGZWK361	pvitem_01KQ5APAQFKYJ8Q0EY91YZ02W7	1	2026-04-26 12:41:48.527041-04	2026-04-26 12:41:48.527041-04	\N
variant_01KQ394S6AG2EPS0DRX14A43JG	iitem_01KQ5AHRD49YPRDNR9A62E10NS	pvitem_01KQ5APKTCFAF39SK0JMBJAT6J	1	2026-04-26 12:41:57.836694-04	2026-04-26 12:41:57.836694-04	\N
variant_01KQ394S6BNC8QKJXA75HCW84K	iitem_01KQ5AJ4C7SNV9TNDF8GZYZYF3	pvitem_01KQ5APWYB49XBYCASF5H1864P	1	2026-04-26 12:42:07.179119-04	2026-04-26 12:42:07.179119-04	\N
variant_01KQ394S6BXMXQWR91HPEKP5FF	iitem_01KQ5AJHPG2NRKQZXDQ7RCQXBK	pvitem_01KQ5AQ5MVG063X4MRF0AXRHJ8	1	2026-04-26 12:42:16.09113-04	2026-04-26 12:42:16.09113-04	\N
\.


--
-- Data for Name: product_variant_option; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.product_variant_option (variant_id, option_value_id) FROM stdin;
variant_01KP9XXK5JZ512M0VGH34R1YZN	optval_01KP9XXK35AMF9H9XPD49RMGRY
variant_01KP9XXK5JZ512M0VGH34R1YZN	optval_01KP9XXK355DTDVH04SXGZKVBN
variant_01KP9XXK5JG0N9CZA10W0204J5	optval_01KP9XXK35AMF9H9XPD49RMGRY
variant_01KP9XXK5JG0N9CZA10W0204J5	optval_01KP9XXK35Q3XGKN3CSDAFBB6G
variant_01KP9XXK5JXBGEYVP0S7WJRV5E	optval_01KP9XXK357R6QKE3V0EMBGQHV
variant_01KP9XXK5JXBGEYVP0S7WJRV5E	optval_01KP9XXK355DTDVH04SXGZKVBN
variant_01KP9XXK5K707TV0P42QT5W35Q	optval_01KP9XXK357R6QKE3V0EMBGQHV
variant_01KP9XXK5K707TV0P42QT5W35Q	optval_01KP9XXK35Q3XGKN3CSDAFBB6G
variant_01KP9XXK5KTPH5DBQV4YM3SJV3	optval_01KP9XXK351DMHVG3YPX1TDQMZ
variant_01KP9XXK5KTPH5DBQV4YM3SJV3	optval_01KP9XXK355DTDVH04SXGZKVBN
variant_01KP9XXK5K9J4Z5FHGVPPPZX0T	optval_01KP9XXK351DMHVG3YPX1TDQMZ
variant_01KP9XXK5K9J4Z5FHGVPPPZX0T	optval_01KP9XXK35Q3XGKN3CSDAFBB6G
variant_01KP9XXK5KQ05ZJ0E88S3VPYCC	optval_01KP9XXK35QFCBQ4W5KS0AZA3G
variant_01KP9XXK5KQ05ZJ0E88S3VPYCC	optval_01KP9XXK355DTDVH04SXGZKVBN
variant_01KP9XXK5MBXR10Q3F1SG3TCTQ	optval_01KP9XXK35QFCBQ4W5KS0AZA3G
variant_01KP9XXK5MBXR10Q3F1SG3TCTQ	optval_01KP9XXK35Q3XGKN3CSDAFBB6G
variant_01KP9XXK5M9BS479CM0SFNT3D6	optval_01KP9XXK37TJS9T6GV7GWDQC4D
variant_01KP9XXK5MX27HYVECBRYPB7CC	optval_01KP9XXK37345DZ9XTFAPF0B2A
variant_01KP9XXK5MWF2AQYSZ4JTRMFE3	optval_01KP9XXK37YSYNGBSRZPYJ19B1
variant_01KP9XXK5NRN8ECC9BB7VQBT03	optval_01KP9XXK37SN581QNJD74JE62S
variant_01KP9XXK5NCEHNPSHPY1SPJZC2	optval_01KP9XXK38CZ03KW45W1A2Q7SN
variant_01KP9XXK5NK16RNNE8MYHQEKJT	optval_01KP9XXK38XFG6YS5NHPWTE5BE
variant_01KP9XXK5NBBQJABCGVSA4DFAK	optval_01KP9XXK3811SXVNMZ03KRQPC8
variant_01KP9XXK5NQKXN3CW357G38SAX	optval_01KP9XXK3843HA6V8MFVC0NMKF
variant_01KP9XXK5N2DPVMN6V4CNT2XMW	optval_01KP9XXK39V8TEBFN3W4NVWQKP
variant_01KP9XXK5NHMF5R5YKYZYBWY11	optval_01KP9XXK39K71M94PT44K0QTMQ
variant_01KP9XXK5PM94XW49VDD6EW3JJ	optval_01KP9XXK39VQ2Z8SX9FY4RF2FC
variant_01KP9XXK5P7B6AEHYX2Q7C2XY1	optval_01KP9XXK39ZTQ8X22FVJRV2359
variant_01KQ394S69161FR0SX7THS1KGN	optval_01KQ394S3WE1RME46RG3YP3KD7
variant_01KQ394S6AX555ZX75P8FHE14N	optval_01KQ394S3WR63SENNFESFWNRWX
variant_01KQ394S6AG2EPS0DRX14A43JG	optval_01KQ394S3WNY8V6F8M97P3TM0N
variant_01KQ394S6BNC8QKJXA75HCW84K	optval_01KQ394S3X1WNXQRPG45APVDVD
variant_01KQ394S6BXMXQWR91HPEKP5FF	optval_01KQ394S3X2E801PDQ7PYC3BFJ
\.


--
-- Data for Name: product_variant_price_set; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.product_variant_price_set (variant_id, price_set_id, id, created_at, updated_at, deleted_at) FROM stdin;
variant_01KP9XXK5JZ512M0VGH34R1YZN	pset_01KP9XXK7SHMQY9XXJA7FZTTJT	pvps_01KP9XXK99S1BS7FMGJD61KVMV	2026-04-15 21:19:05.514001-04	2026-04-25 17:27:07.948-04	2026-04-25 17:27:07.947-04
variant_01KP9XXK5JG0N9CZA10W0204J5	pset_01KP9XXK7TS6EJJ6EQ5876KGK0	pvps_01KP9XXK9AWB5B1N3MCYH18MPX	2026-04-15 21:19:05.514001-04	2026-04-25 17:27:07.948-04	2026-04-25 17:27:07.947-04
variant_01KP9XXK5JXBGEYVP0S7WJRV5E	pset_01KP9XXK7TTF9TE8F83F5TFZ5D	pvps_01KP9XXK9AE9ZT9X0M5PKE1TEV	2026-04-15 21:19:05.514001-04	2026-04-25 17:27:07.948-04	2026-04-25 17:27:07.947-04
variant_01KP9XXK5K707TV0P42QT5W35Q	pset_01KP9XXK7TXMB4DVWTV2HPC5ZW	pvps_01KP9XXK9A2GWBEG8CVEKV5JTE	2026-04-15 21:19:05.514001-04	2026-04-25 17:27:07.948-04	2026-04-25 17:27:07.947-04
variant_01KP9XXK5KTPH5DBQV4YM3SJV3	pset_01KP9XXK7VV8S3M5YVKQZ4DDPG	pvps_01KP9XXK9A10W3S3J1263Y5JRF	2026-04-15 21:19:05.514001-04	2026-04-25 17:27:07.948-04	2026-04-25 17:27:07.947-04
variant_01KP9XXK5K9J4Z5FHGVPPPZX0T	pset_01KP9XXK7VKK0QWM0RBDTNWR06	pvps_01KP9XXK9ANZ4AKST8E0KH87E3	2026-04-15 21:19:05.514001-04	2026-04-25 17:27:07.948-04	2026-04-25 17:27:07.947-04
variant_01KP9XXK5KQ05ZJ0E88S3VPYCC	pset_01KP9XXK7VQN6WWTZB8HG6R7H7	pvps_01KP9XXK9AHWZ0RPPRH347WZ6D	2026-04-15 21:19:05.514001-04	2026-04-25 17:27:07.948-04	2026-04-25 17:27:07.947-04
variant_01KP9XXK5MBXR10Q3F1SG3TCTQ	pset_01KP9XXK7VVSD2W0PBB14NT0WK	pvps_01KP9XXK9AH2SSPFG25APNBZ6Z	2026-04-15 21:19:05.514001-04	2026-04-25 17:27:07.948-04	2026-04-25 17:27:07.947-04
variant_01KP9XXK5NCEHNPSHPY1SPJZC2	pset_01KP9XXK7XAEKESV949E56X186	pvps_01KP9XXK9BV4919E3XDMC8ZBHF	2026-04-15 21:19:05.514001-04	2026-04-25 17:27:12.717-04	2026-04-25 17:27:12.716-04
variant_01KP9XXK5NK16RNNE8MYHQEKJT	pset_01KP9XXK7XPVMQKHWT0V0WRVJG	pvps_01KP9XXK9BMKG42KKTGXVVV5Y3	2026-04-15 21:19:05.514001-04	2026-04-25 17:27:12.717-04	2026-04-25 17:27:12.716-04
variant_01KP9XXK5NBBQJABCGVSA4DFAK	pset_01KP9XXK7XB7F7MJDSEXG2ZATG	pvps_01KP9XXK9B242F61T29JWK1WM5	2026-04-15 21:19:05.514001-04	2026-04-25 17:27:12.717-04	2026-04-25 17:27:12.716-04
variant_01KP9XXK5NQKXN3CW357G38SAX	pset_01KP9XXK7YZJDD6S2X24G2RF1K	pvps_01KP9XXK9B2H4B6426FNJP8NJM	2026-04-15 21:19:05.514001-04	2026-04-25 17:27:12.717-04	2026-04-25 17:27:12.716-04
variant_01KP9XXK5N2DPVMN6V4CNT2XMW	pset_01KP9XXK7YQDG7YQ178P9AA1XY	pvps_01KP9XXK9B32TJPAX4Q7EZG888	2026-04-15 21:19:05.514001-04	2026-04-25 17:27:14.633-04	2026-04-25 17:27:14.633-04
variant_01KP9XXK5NHMF5R5YKYZYBWY11	pset_01KP9XXK7Y59GSENVX4D6PGG5M	pvps_01KP9XXK9B4V47GX0D9ATN9FRH	2026-04-15 21:19:05.514001-04	2026-04-25 17:27:14.633-04	2026-04-25 17:27:14.633-04
variant_01KP9XXK5PM94XW49VDD6EW3JJ	pset_01KP9XXK7YMNT8V6STSV1FKB5E	pvps_01KP9XXK9B147CXG8K7AFSPG7C	2026-04-15 21:19:05.514001-04	2026-04-25 17:27:14.633-04	2026-04-25 17:27:14.633-04
variant_01KP9XXK5P7B6AEHYX2Q7C2XY1	pset_01KP9XXK7ZZXYM93N2YQ3FA7S6	pvps_01KP9XXK9BX1ZPGFKF3GVN9MP0	2026-04-15 21:19:05.514001-04	2026-04-25 17:27:14.633-04	2026-04-25 17:27:14.633-04
variant_01KP9XXK5M9BS479CM0SFNT3D6	pset_01KP9XXK7WH829T2SAKC82FK29	pvps_01KP9XXK9AYYAZ33ZDVF7Y487S	2026-04-15 21:19:05.514001-04	2026-04-25 17:27:16.497-04	2026-04-25 17:27:16.496-04
variant_01KP9XXK5MX27HYVECBRYPB7CC	pset_01KP9XXK7WYCSPN6VNYMRB7DP8	pvps_01KP9XXK9BV2KKR0WYYZFV0D8N	2026-04-15 21:19:05.514001-04	2026-04-25 17:27:16.497-04	2026-04-25 17:27:16.496-04
variant_01KP9XXK5MWF2AQYSZ4JTRMFE3	pset_01KP9XXK7WAZHAXB9T20YXQE54	pvps_01KP9XXK9BN53NFPPTGFNYNZT1	2026-04-15 21:19:05.514001-04	2026-04-25 17:27:16.497-04	2026-04-25 17:27:16.496-04
variant_01KP9XXK5NRN8ECC9BB7VQBT03	pset_01KP9XXK7X7Y1TN0Y8EN4PYQ1J	pvps_01KP9XXK9BZS7F7YHQA6WSJYYV	2026-04-15 21:19:05.514001-04	2026-04-25 17:27:16.497-04	2026-04-25 17:27:16.496-04
variant_01KQ394S69161FR0SX7THS1KGN	pset_01KQ394S7J56F2BMNERW8CHNA2	pvps_01KQ394S8RH27M921217BW1YGC	2026-04-25 17:36:16.152051-04	2026-04-25 17:36:16.152051-04	\N
variant_01KQ394S6AX555ZX75P8FHE14N	pset_01KQ394S7K3Z94QFG1J78RTR3F	pvps_01KQ394S8SF58QZYYAHFW0BEFB	2026-04-25 17:36:16.152051-04	2026-04-25 17:36:16.152051-04	\N
variant_01KQ394S6AG2EPS0DRX14A43JG	pset_01KQ394S7K4GM569TGFSW15G7R	pvps_01KQ394S8SR9SMB9B0A4MR4QH9	2026-04-25 17:36:16.152051-04	2026-04-25 17:36:16.152051-04	\N
variant_01KQ394S6BNC8QKJXA75HCW84K	pset_01KQ394S7MHETEV4F1XSMBMNKW	pvps_01KQ394S8SP9ZW6EFDQVYM5K9T	2026-04-25 17:36:16.152051-04	2026-04-25 17:36:16.152051-04	\N
variant_01KQ394S6BXMXQWR91HPEKP5FF	pset_01KQ394S7MEV0VH823EC5EWQG0	pvps_01KQ394S8SMZKHCYAQ1VZV2T6W	2026-04-25 17:36:16.152051-04	2026-04-25 17:36:16.152051-04	\N
\.


--
-- Data for Name: product_variant_product_image; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.product_variant_product_image (id, variant_id, image_id, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: promotion; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.promotion (id, code, campaign_id, is_automatic, type, created_at, updated_at, deleted_at, status, is_tax_inclusive, "limit", used, metadata) FROM stdin;
\.


--
-- Data for Name: promotion_application_method; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.promotion_application_method (id, value, raw_value, max_quantity, apply_to_quantity, buy_rules_min_quantity, type, target_type, allocation, promotion_id, created_at, updated_at, deleted_at, currency_code) FROM stdin;
\.


--
-- Data for Name: promotion_campaign; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.promotion_campaign (id, name, description, campaign_identifier, starts_at, ends_at, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: promotion_campaign_budget; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.promotion_campaign_budget (id, type, campaign_id, "limit", raw_limit, used, raw_used, created_at, updated_at, deleted_at, currency_code, attribute) FROM stdin;
\.


--
-- Data for Name: promotion_campaign_budget_usage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.promotion_campaign_budget_usage (id, attribute_value, used, budget_id, raw_used, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: promotion_promotion_rule; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.promotion_promotion_rule (promotion_id, promotion_rule_id) FROM stdin;
\.


--
-- Data for Name: promotion_rule; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.promotion_rule (id, description, attribute, operator, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: promotion_rule_value; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.promotion_rule_value (id, promotion_rule_id, value, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: provider_identity; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.provider_identity (id, entity_id, provider, auth_identity_id, user_metadata, provider_metadata, created_at, updated_at, deleted_at) FROM stdin;
01KP9Y6YRZZHNP762B7JS5DH1Z	projeto.superraca@gmail.com	emailpass	authid_01KP9Y6YRZ2YERSTZG56GZ1XDJ	\N	{"password": "c2NyeXB0AA8AAAAIAAAAAYwdu3o/yapyIFxwBbnWZFi620OxUDLCdS/xLdB/4HOTHK1mwHFrEZ5uOUH546cjx/hBkOwMePVbdjMY+Bz4klj8RvejXkWOQXqh8RvI5Qz1"}	2026-04-15 21:24:12.192-04	2026-04-15 21:24:12.192-04	\N
\.


--
-- Data for Name: publishable_api_key_sales_channel; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.publishable_api_key_sales_channel (publishable_key_id, sales_channel_id, id, created_at, updated_at, deleted_at) FROM stdin;
apk_01KP9XXJT7CJ77A1W9AKY04WW0	sc_01KP9XXJRXGGT65H782XD56SVH	pksc_01KP9XXK27SG4PGAZV1YYSNMQT	2026-04-15 21:19:05.042992-04	2026-04-15 21:19:05.042992-04	\N
\.


--
-- Data for Name: refund; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.refund (id, amount, raw_amount, payment_id, created_at, updated_at, deleted_at, created_by, metadata, refund_reason_id, note) FROM stdin;
\.


--
-- Data for Name: refund_reason; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.refund_reason (id, label, description, metadata, created_at, updated_at, deleted_at, code) FROM stdin;
refr_01KP9XWNHSV3S2CDNH5CJG56R8	Shipping Issue	Refund due to lost, delayed, or misdelivered shipment	\N	2026-04-15 21:18:34.749146-04	2026-04-15 21:18:34.749146-04	\N	shipping_issue
refr_01KP9XWNHS3HQ9T129E3QF3DKC	Customer Care Adjustment	Refund given as goodwill or compensation for inconvenience	\N	2026-04-15 21:18:34.749146-04	2026-04-15 21:18:34.749146-04	\N	customer_care_adjustment
refr_01KP9XWNHSZWWFFTFRTTJV6K9X	Pricing Error	Refund to correct an overcharge, missing discount, or incorrect price	\N	2026-04-15 21:18:34.749146-04	2026-04-15 21:18:34.749146-04	\N	pricing_error
\.


--
-- Data for Name: region; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.region (id, name, currency_code, metadata, created_at, updated_at, deleted_at, automatic_taxes) FROM stdin;
reg_01KPA20S5NSBGW8AD90T7HEH4K	Brazil	brl	\N	2026-04-15 22:30:44.15-04	2026-04-15 22:30:44.15-04	\N	t
reg_01KP9XXJW4ZG0VCYHMBCMZW4YQ	Europe	eur	\N	2026-04-15 21:19:05.097-04	2026-04-26 13:21:36.37-04	2026-04-26 13:21:36.369-04	t
\.


--
-- Data for Name: region_country; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.region_country (iso_2, iso_3, num_code, name, display_name, region_id, metadata, created_at, updated_at, deleted_at) FROM stdin;
af	afg	004	AFGHANISTAN	Afghanistan	\N	\N	2026-04-15 21:18:42.997-04	2026-04-15 21:18:42.997-04	\N
al	alb	008	ALBANIA	Albania	\N	\N	2026-04-15 21:18:42.997-04	2026-04-15 21:18:42.997-04	\N
dz	dza	012	ALGERIA	Algeria	\N	\N	2026-04-15 21:18:42.997-04	2026-04-15 21:18:42.998-04	\N
as	asm	016	AMERICAN SAMOA	American Samoa	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
ad	and	020	ANDORRA	Andorra	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
ao	ago	024	ANGOLA	Angola	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
ai	aia	660	ANGUILLA	Anguilla	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
aq	ata	010	ANTARCTICA	Antarctica	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
ag	atg	028	ANTIGUA AND BARBUDA	Antigua and Barbuda	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
ar	arg	032	ARGENTINA	Argentina	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
am	arm	051	ARMENIA	Armenia	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
aw	abw	533	ARUBA	Aruba	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
au	aus	036	AUSTRALIA	Australia	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
at	aut	040	AUSTRIA	Austria	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
az	aze	031	AZERBAIJAN	Azerbaijan	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
bs	bhs	044	BAHAMAS	Bahamas	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
bh	bhr	048	BAHRAIN	Bahrain	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
bd	bgd	050	BANGLADESH	Bangladesh	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
bb	brb	052	BARBADOS	Barbados	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
by	blr	112	BELARUS	Belarus	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
be	bel	056	BELGIUM	Belgium	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
bz	blz	084	BELIZE	Belize	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
bj	ben	204	BENIN	Benin	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
bm	bmu	060	BERMUDA	Bermuda	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
bt	btn	064	BHUTAN	Bhutan	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
bo	bol	068	BOLIVIA	Bolivia	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
bq	bes	535	BONAIRE, SINT EUSTATIUS AND SABA	Bonaire, Sint Eustatius and Saba	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
ba	bih	070	BOSNIA AND HERZEGOVINA	Bosnia and Herzegovina	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
bw	bwa	072	BOTSWANA	Botswana	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
bv	bvd	074	BOUVET ISLAND	Bouvet Island	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
io	iot	086	BRITISH INDIAN OCEAN TERRITORY	British Indian Ocean Territory	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
bn	brn	096	BRUNEI DARUSSALAM	Brunei Darussalam	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
bg	bgr	100	BULGARIA	Bulgaria	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
bf	bfa	854	BURKINA FASO	Burkina Faso	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
bi	bdi	108	BURUNDI	Burundi	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
kh	khm	116	CAMBODIA	Cambodia	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
cm	cmr	120	CAMEROON	Cameroon	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
ca	can	124	CANADA	Canada	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
cv	cpv	132	CAPE VERDE	Cape Verde	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
ky	cym	136	CAYMAN ISLANDS	Cayman Islands	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
cf	caf	140	CENTRAL AFRICAN REPUBLIC	Central African Republic	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
td	tcd	148	CHAD	Chad	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
cl	chl	152	CHILE	Chile	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
cn	chn	156	CHINA	China	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
cx	cxr	162	CHRISTMAS ISLAND	Christmas Island	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
cc	cck	166	COCOS (KEELING) ISLANDS	Cocos (Keeling) Islands	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
co	col	170	COLOMBIA	Colombia	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
km	com	174	COMOROS	Comoros	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
cg	cog	178	CONGO	Congo	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
cd	cod	180	CONGO, THE DEMOCRATIC REPUBLIC OF THE	Congo, the Democratic Republic of the	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
ck	cok	184	COOK ISLANDS	Cook Islands	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
cr	cri	188	COSTA RICA	Costa Rica	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
ci	civ	384	COTE D'IVOIRE	Cote D'Ivoire	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
hr	hrv	191	CROATIA	Croatia	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
cu	cub	192	CUBA	Cuba	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
cw	cuw	531	CURAÇAO	Curaçao	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
cy	cyp	196	CYPRUS	Cyprus	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
cz	cze	203	CZECH REPUBLIC	Czech Republic	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
dj	dji	262	DJIBOUTI	Djibouti	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
dm	dma	212	DOMINICA	Dominica	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
do	dom	214	DOMINICAN REPUBLIC	Dominican Republic	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
ec	ecu	218	ECUADOR	Ecuador	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
eg	egy	818	EGYPT	Egypt	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
sv	slv	222	EL SALVADOR	El Salvador	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
gq	gnq	226	EQUATORIAL GUINEA	Equatorial Guinea	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
er	eri	232	ERITREA	Eritrea	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
ee	est	233	ESTONIA	Estonia	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
et	eth	231	ETHIOPIA	Ethiopia	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
fk	flk	238	FALKLAND ISLANDS (MALVINAS)	Falkland Islands (Malvinas)	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
fo	fro	234	FAROE ISLANDS	Faroe Islands	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
fj	fji	242	FIJI	Fiji	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
fi	fin	246	FINLAND	Finland	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
gf	guf	254	FRENCH GUIANA	French Guiana	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
pf	pyf	258	FRENCH POLYNESIA	French Polynesia	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
tf	atf	260	FRENCH SOUTHERN TERRITORIES	French Southern Territories	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
ga	gab	266	GABON	Gabon	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
gm	gmb	270	GAMBIA	Gambia	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
ge	geo	268	GEORGIA	Georgia	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
gh	gha	288	GHANA	Ghana	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
gi	gib	292	GIBRALTAR	Gibraltar	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
gr	grc	300	GREECE	Greece	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
gl	grl	304	GREENLAND	Greenland	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
gd	grd	308	GRENADA	Grenada	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
gp	glp	312	GUADELOUPE	Guadeloupe	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
gu	gum	316	GUAM	Guam	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
gt	gtm	320	GUATEMALA	Guatemala	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
gg	ggy	831	GUERNSEY	Guernsey	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
br	bra	076	BRAZIL	Brazil	reg_01KPA20S5NSBGW8AD90T7HEH4K	\N	2026-04-15 21:18:42.998-04	2026-04-26 13:21:28.23-04	\N
gn	gin	324	GUINEA	Guinea	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
gw	gnb	624	GUINEA-BISSAU	Guinea-Bissau	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
gy	guy	328	GUYANA	Guyana	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
ht	hti	332	HAITI	Haiti	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
hm	hmd	334	HEARD ISLAND AND MCDONALD ISLANDS	Heard Island And Mcdonald Islands	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
va	vat	336	HOLY SEE (VATICAN CITY STATE)	Holy See (Vatican City State)	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
hn	hnd	340	HONDURAS	Honduras	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
hk	hkg	344	HONG KONG	Hong Kong	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
hu	hun	348	HUNGARY	Hungary	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
is	isl	352	ICELAND	Iceland	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
in	ind	356	INDIA	India	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
id	idn	360	INDONESIA	Indonesia	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
ir	irn	364	IRAN, ISLAMIC REPUBLIC OF	Iran, Islamic Republic of	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
iq	irq	368	IRAQ	Iraq	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
ie	irl	372	IRELAND	Ireland	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
im	imn	833	ISLE OF MAN	Isle Of Man	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
il	isr	376	ISRAEL	Israel	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
jm	jam	388	JAMAICA	Jamaica	\N	\N	2026-04-15 21:18:42.998-04	2026-04-15 21:18:42.998-04	\N
jp	jpn	392	JAPAN	Japan	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
je	jey	832	JERSEY	Jersey	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
jo	jor	400	JORDAN	Jordan	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
kz	kaz	398	KAZAKHSTAN	Kazakhstan	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
ke	ken	404	KENYA	Kenya	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
ki	kir	296	KIRIBATI	Kiribati	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
kp	prk	408	KOREA, DEMOCRATIC PEOPLE'S REPUBLIC OF	Korea, Democratic People's Republic of	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
kr	kor	410	KOREA, REPUBLIC OF	Korea, Republic of	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
xk	xkx	900	KOSOVO	Kosovo	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
kw	kwt	414	KUWAIT	Kuwait	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
kg	kgz	417	KYRGYZSTAN	Kyrgyzstan	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
la	lao	418	LAO PEOPLE'S DEMOCRATIC REPUBLIC	Lao People's Democratic Republic	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
lv	lva	428	LATVIA	Latvia	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
lb	lbn	422	LEBANON	Lebanon	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
ls	lso	426	LESOTHO	Lesotho	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
lr	lbr	430	LIBERIA	Liberia	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
ly	lby	434	LIBYA	Libya	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
li	lie	438	LIECHTENSTEIN	Liechtenstein	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
lt	ltu	440	LITHUANIA	Lithuania	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
lu	lux	442	LUXEMBOURG	Luxembourg	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
mo	mac	446	MACAO	Macao	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
mg	mdg	450	MADAGASCAR	Madagascar	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
mw	mwi	454	MALAWI	Malawi	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
my	mys	458	MALAYSIA	Malaysia	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
mv	mdv	462	MALDIVES	Maldives	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
ml	mli	466	MALI	Mali	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
mt	mlt	470	MALTA	Malta	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
mh	mhl	584	MARSHALL ISLANDS	Marshall Islands	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
mq	mtq	474	MARTINIQUE	Martinique	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
mr	mrt	478	MAURITANIA	Mauritania	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
mu	mus	480	MAURITIUS	Mauritius	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
yt	myt	175	MAYOTTE	Mayotte	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
mx	mex	484	MEXICO	Mexico	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
fm	fsm	583	MICRONESIA, FEDERATED STATES OF	Micronesia, Federated States of	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
md	mda	498	MOLDOVA, REPUBLIC OF	Moldova, Republic of	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
mc	mco	492	MONACO	Monaco	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
mn	mng	496	MONGOLIA	Mongolia	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
me	mne	499	MONTENEGRO	Montenegro	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
ms	msr	500	MONTSERRAT	Montserrat	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
ma	mar	504	MOROCCO	Morocco	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
mz	moz	508	MOZAMBIQUE	Mozambique	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
mm	mmr	104	MYANMAR	Myanmar	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
na	nam	516	NAMIBIA	Namibia	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
nr	nru	520	NAURU	Nauru	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
np	npl	524	NEPAL	Nepal	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
nl	nld	528	NETHERLANDS	Netherlands	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
nc	ncl	540	NEW CALEDONIA	New Caledonia	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
nz	nzl	554	NEW ZEALAND	New Zealand	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
ni	nic	558	NICARAGUA	Nicaragua	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
ne	ner	562	NIGER	Niger	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
ng	nga	566	NIGERIA	Nigeria	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
nu	niu	570	NIUE	Niue	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
nf	nfk	574	NORFOLK ISLAND	Norfolk Island	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
mk	mkd	807	NORTH MACEDONIA	North Macedonia	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
mp	mnp	580	NORTHERN MARIANA ISLANDS	Northern Mariana Islands	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
no	nor	578	NORWAY	Norway	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
om	omn	512	OMAN	Oman	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
pk	pak	586	PAKISTAN	Pakistan	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
pw	plw	585	PALAU	Palau	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
ps	pse	275	PALESTINIAN TERRITORY, OCCUPIED	Palestinian Territory, Occupied	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
pa	pan	591	PANAMA	Panama	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
pg	png	598	PAPUA NEW GUINEA	Papua New Guinea	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
py	pry	600	PARAGUAY	Paraguay	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
pe	per	604	PERU	Peru	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
ph	phl	608	PHILIPPINES	Philippines	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
pn	pcn	612	PITCAIRN	Pitcairn	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
pl	pol	616	POLAND	Poland	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
pt	prt	620	PORTUGAL	Portugal	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
pr	pri	630	PUERTO RICO	Puerto Rico	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
qa	qat	634	QATAR	Qatar	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
re	reu	638	REUNION	Reunion	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
ro	rom	642	ROMANIA	Romania	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
ru	rus	643	RUSSIAN FEDERATION	Russian Federation	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
rw	rwa	646	RWANDA	Rwanda	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
bl	blm	652	SAINT BARTHÉLEMY	Saint Barthélemy	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
sh	shn	654	SAINT HELENA	Saint Helena	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
kn	kna	659	SAINT KITTS AND NEVIS	Saint Kitts and Nevis	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
lc	lca	662	SAINT LUCIA	Saint Lucia	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
mf	maf	663	SAINT MARTIN (FRENCH PART)	Saint Martin (French part)	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
pm	spm	666	SAINT PIERRE AND MIQUELON	Saint Pierre and Miquelon	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
vc	vct	670	SAINT VINCENT AND THE GRENADINES	Saint Vincent and the Grenadines	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
ws	wsm	882	SAMOA	Samoa	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
sm	smr	674	SAN MARINO	San Marino	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
st	stp	678	SAO TOME AND PRINCIPE	Sao Tome and Principe	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
sa	sau	682	SAUDI ARABIA	Saudi Arabia	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
sn	sen	686	SENEGAL	Senegal	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
rs	srb	688	SERBIA	Serbia	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
sc	syc	690	SEYCHELLES	Seychelles	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
sl	sle	694	SIERRA LEONE	Sierra Leone	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
sg	sgp	702	SINGAPORE	Singapore	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
sx	sxm	534	SINT MAARTEN	Sint Maarten	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
sk	svk	703	SLOVAKIA	Slovakia	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
si	svn	705	SLOVENIA	Slovenia	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
sb	slb	090	SOLOMON ISLANDS	Solomon Islands	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
so	som	706	SOMALIA	Somalia	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
za	zaf	710	SOUTH AFRICA	South Africa	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
gs	sgs	239	SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS	South Georgia and the South Sandwich Islands	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
ss	ssd	728	SOUTH SUDAN	South Sudan	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
lk	lka	144	SRI LANKA	Sri Lanka	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
sd	sdn	729	SUDAN	Sudan	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
sr	sur	740	SURINAME	Suriname	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
sj	sjm	744	SVALBARD AND JAN MAYEN	Svalbard and Jan Mayen	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
sz	swz	748	SWAZILAND	Swaziland	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
ch	che	756	SWITZERLAND	Switzerland	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
sy	syr	760	SYRIAN ARAB REPUBLIC	Syrian Arab Republic	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
tw	twn	158	TAIWAN, PROVINCE OF CHINA	Taiwan, Province of China	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
tj	tjk	762	TAJIKISTAN	Tajikistan	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
tz	tza	834	TANZANIA, UNITED REPUBLIC OF	Tanzania, United Republic of	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
th	tha	764	THAILAND	Thailand	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
tl	tls	626	TIMOR LESTE	Timor Leste	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
tg	tgo	768	TOGO	Togo	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
tk	tkl	772	TOKELAU	Tokelau	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
to	ton	776	TONGA	Tonga	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
tt	tto	780	TRINIDAD AND TOBAGO	Trinidad and Tobago	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
tn	tun	788	TUNISIA	Tunisia	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
tr	tur	792	TURKEY	Turkey	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
tm	tkm	795	TURKMENISTAN	Turkmenistan	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
tc	tca	796	TURKS AND CAICOS ISLANDS	Turks and Caicos Islands	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
tv	tuv	798	TUVALU	Tuvalu	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
ug	uga	800	UGANDA	Uganda	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
ua	ukr	804	UKRAINE	Ukraine	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
ae	are	784	UNITED ARAB EMIRATES	United Arab Emirates	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
us	usa	840	UNITED STATES	United States	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
um	umi	581	UNITED STATES MINOR OUTLYING ISLANDS	United States Minor Outlying Islands	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
uy	ury	858	URUGUAY	Uruguay	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
uz	uzb	860	UZBEKISTAN	Uzbekistan	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
vu	vut	548	VANUATU	Vanuatu	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
ve	ven	862	VENEZUELA	Venezuela	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
vn	vnm	704	VIET NAM	Viet Nam	\N	\N	2026-04-15 21:18:42.999-04	2026-04-15 21:18:42.999-04	\N
vg	vgb	092	VIRGIN ISLANDS, BRITISH	Virgin Islands, British	\N	\N	2026-04-15 21:18:43-04	2026-04-15 21:18:43-04	\N
vi	vir	850	VIRGIN ISLANDS, U.S.	Virgin Islands, U.S.	\N	\N	2026-04-15 21:18:43-04	2026-04-15 21:18:43-04	\N
wf	wlf	876	WALLIS AND FUTUNA	Wallis and Futuna	\N	\N	2026-04-15 21:18:43-04	2026-04-15 21:18:43-04	\N
eh	esh	732	WESTERN SAHARA	Western Sahara	\N	\N	2026-04-15 21:18:43-04	2026-04-15 21:18:43-04	\N
ye	yem	887	YEMEN	Yemen	\N	\N	2026-04-15 21:18:43-04	2026-04-15 21:18:43-04	\N
zm	zmb	894	ZAMBIA	Zambia	\N	\N	2026-04-15 21:18:43-04	2026-04-15 21:18:43-04	\N
zw	zwe	716	ZIMBABWE	Zimbabwe	\N	\N	2026-04-15 21:18:43-04	2026-04-15 21:18:43-04	\N
ax	ala	248	ÅLAND ISLANDS	Åland Islands	\N	\N	2026-04-15 21:18:43-04	2026-04-15 21:18:43-04	\N
dk	dnk	208	DENMARK	Denmark	\N	\N	2026-04-15 21:18:42.998-04	2026-04-26 13:21:36.379-04	\N
fr	fra	250	FRANCE	France	\N	\N	2026-04-15 21:18:42.998-04	2026-04-26 13:21:36.379-04	\N
de	deu	276	GERMANY	Germany	\N	\N	2026-04-15 21:18:42.998-04	2026-04-26 13:21:36.379-04	\N
it	ita	380	ITALY	Italy	\N	\N	2026-04-15 21:18:42.998-04	2026-04-26 13:21:36.379-04	\N
es	esp	724	SPAIN	Spain	\N	\N	2026-04-15 21:18:42.999-04	2026-04-26 13:21:36.379-04	\N
se	swe	752	SWEDEN	Sweden	\N	\N	2026-04-15 21:18:42.999-04	2026-04-26 13:21:36.379-04	\N
gb	gbr	826	UNITED KINGDOM	United Kingdom	\N	\N	2026-04-15 21:18:42.999-04	2026-04-26 13:21:36.379-04	\N
\.


--
-- Data for Name: region_payment_provider; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.region_payment_provider (region_id, payment_provider_id, id, created_at, updated_at, deleted_at) FROM stdin;
reg_01KPA20S5NSBGW8AD90T7HEH4K	pp_system_default	regpp_01KPA20S6M9SMNAP281GREG0VW	2026-04-15 22:30:44.178118-04	2026-04-15 22:30:44.178118-04	\N
reg_01KP9XXJW4ZG0VCYHMBCMZW4YQ	pp_system_default	regpp_01KP9XXJWWEB02VK45WVPFEEFV	2026-04-15 21:19:05.116664-04	2026-04-26 13:21:36.394-04	2026-04-26 13:21:36.393-04
\.


--
-- Data for Name: reservation_item; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.reservation_item (id, created_at, updated_at, deleted_at, line_item_id, location_id, quantity, external_id, description, created_by, metadata, inventory_item_id, allow_backorder, raw_quantity) FROM stdin;
resitem_01KQ5A5AHH3Q31C9GVSTBBWH1H	2026-04-26 12:32:31.285-04	2026-04-26 12:38:32.294-04	2026-04-26 12:38:32.286-04	\N	sloc_01KP9XXJXJS8TKZ9MTY36N7EK3	5	\N		\N	\N	iitem_01KQ59T8BYV4Q8F81QHD256E22	f	{"value": "5", "precision": 20}
resitem_01KQ5G89N8XPS6ZFVWJDKH567J	2026-04-26 14:19:00.146-04	2026-04-26 15:22:20.775-04	2026-04-26 15:22:20.745-04	ordli_01KQ5G89GF7ZCMDMY17MXDSQ06	sloc_01KP9XXJXJS8TKZ9MTY36N7EK3	1	\N	\N	\N	\N	iitem_01KQ5AJ4C7SNV9TNDF8GZYZYF3	f	{"value": "1", "precision": 20}
resitem_01KQ5KXAGHFDNT4J6ED96C8TPB	2026-04-26 15:22:54.873-04	2026-04-26 15:22:54.873-04	\N	ordli_01KQ5KXAEYS18P7AJ7CS9ZK5SJ	sloc_01KP9XXJXJS8TKZ9MTY36N7EK3	1	\N	\N	\N	\N	iitem_01KQ5AHRD49YPRDNR9A62E10NS	f	{"value": "1", "precision": 20}
\.


--
-- Data for Name: return; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.return (id, order_id, claim_id, exchange_id, order_version, display_id, status, no_notification, refund_amount, raw_refund_amount, metadata, created_at, updated_at, deleted_at, received_at, canceled_at, location_id, requested_at, created_by) FROM stdin;
\.


--
-- Data for Name: return_fulfillment; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.return_fulfillment (return_id, fulfillment_id, id, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: return_item; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.return_item (id, return_id, reason_id, item_id, quantity, raw_quantity, received_quantity, raw_received_quantity, note, metadata, created_at, updated_at, deleted_at, damaged_quantity, raw_damaged_quantity) FROM stdin;
\.


--
-- Data for Name: return_reason; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.return_reason (id, value, label, description, metadata, parent_return_reason_id, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: sales_channel; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.sales_channel (id, name, description, is_disabled, metadata, created_at, updated_at, deleted_at) FROM stdin;
sc_01KP9XXJRXGGT65H782XD56SVH	Default Sales Channel	Created by Medusa	f	\N	2026-04-15 21:19:04.989-04	2026-04-15 21:19:04.989-04	\N
\.


--
-- Data for Name: sales_channel_stock_location; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.sales_channel_stock_location (sales_channel_id, stock_location_id, id, created_at, updated_at, deleted_at) FROM stdin;
sc_01KP9XXJRXGGT65H782XD56SVH	sloc_01KP9XXJXJS8TKZ9MTY36N7EK3	scloc_01KP9XXK1TH3YBWYGJJE9HPQ89	2026-04-15 21:19:05.274739-04	2026-04-15 21:19:05.274739-04	\N
\.


--
-- Data for Name: script_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.script_migrations (id, script_name, created_at, finished_at) FROM stdin;
1	migrate-product-shipping-profile.js	2026-04-15 21:18:49.640078-04	2026-04-15 21:18:49.673521-04
2	migrate-tax-region-provider.js	2026-04-15 21:18:49.686038-04	2026-04-15 21:18:49.695392-04
\.


--
-- Data for Name: service_zone; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.service_zone (id, name, metadata, fulfillment_set_id, created_at, updated_at, deleted_at) FROM stdin;
serzo_01KP9XXJYMGQ9Q9P7MFZBRCMMD	Brazil	\N	fuset_01KP9XXJYM57WTWAT3067QY2PC	2026-04-15 21:19:05.173-04	2026-04-26 12:19:30.573-04	\N
serzo_01KQ5EBB6X83ZTMFDKVNP567GF	Retirada	\N	fuset_01KQ5EAXPZV4R7RBN423K48BES	2026-04-26 13:45:42.877-04	2026-04-26 13:45:42.877-04	\N
\.


--
-- Data for Name: shipping_option; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.shipping_option (id, name, price_type, service_zone_id, shipping_profile_id, provider_id, data, metadata, shipping_option_type_id, created_at, updated_at, deleted_at) FROM stdin;
so_01KP9XXK05TKCGKDGWNEA8GGZZ	Envio Padrão	flat	serzo_01KP9XXJYMGQ9Q9P7MFZBRCMMD	sp_01KP9XX3SZ7SG4EJ4HJ2S63AD4	manual_manual	\N	\N	sotype_01KP9XXK04BYC5XT8JE467D5C2	2026-04-15 21:19:05.222-04	2026-04-26 12:18:51.299-04	\N
so_01KP9XXK06FFXAW568NE6BDEET	Envio Expresso	flat	serzo_01KP9XXJYMGQ9Q9P7MFZBRCMMD	sp_01KP9XX3SZ7SG4EJ4HJ2S63AD4	manual_manual	\N	\N	sotype_01KP9XXK05QHG9YRJHCK4YEKYJ	2026-04-15 21:19:05.222-04	2026-04-26 12:19:00.508-04	\N
so_01KQ5ECQRASCWD6RK13KMBNQN9	Retirada	flat	serzo_01KQ5EBB6X83ZTMFDKVNP567GF	sp_01KP9XX3SZ7SG4EJ4HJ2S63AD4	manual_manual	{"id": "manual-fulfillment"}	\N	sotype_01KP9XXK04BYC5XT8JE467D5C2	2026-04-26 13:46:28.491-04	2026-04-26 13:46:28.491-04	\N
\.


--
-- Data for Name: shipping_option_price_set; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.shipping_option_price_set (shipping_option_id, price_set_id, id, created_at, updated_at, deleted_at) FROM stdin;
so_01KP9XXK05TKCGKDGWNEA8GGZZ	pset_01KP9XXK0NDPD7Q0QJXZG5B7WM	sops_01KP9XXK1JJYZPAPYQBMZWE80G	2026-04-15 21:19:05.266905-04	2026-04-15 21:19:05.266905-04	\N
so_01KP9XXK06FFXAW568NE6BDEET	pset_01KP9XXK0PG83JZRAX5VFRTEE1	sops_01KP9XXK1K51VJXGA3BEC4WWC3	2026-04-15 21:19:05.266905-04	2026-04-15 21:19:05.266905-04	\N
so_01KQ5ECQRASCWD6RK13KMBNQN9	pset_01KQ5ECQRRK3GRTDTMZ8PVJ5R6	sops_01KQ5ECQSFWGFGVFM2RW3ZFQ1T	2026-04-26 13:46:28.527539-04	2026-04-26 13:46:28.527539-04	\N
\.


--
-- Data for Name: shipping_option_rule; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.shipping_option_rule (id, attribute, operator, value, shipping_option_id, created_at, updated_at, deleted_at) FROM stdin;
sorul_01KP9XXK05GHRSX54BFPXZVN8Z	enabled_in_store	eq	"true"	so_01KP9XXK05TKCGKDGWNEA8GGZZ	2026-04-15 21:19:05.222-04	2026-04-15 21:19:05.222-04	\N
sorul_01KP9XXK053805QR7J57B5FBJP	is_return	eq	"false"	so_01KP9XXK05TKCGKDGWNEA8GGZZ	2026-04-15 21:19:05.222-04	2026-04-15 21:19:05.222-04	\N
sorul_01KP9XXK05P5EESDY5RJ368MPC	enabled_in_store	eq	"true"	so_01KP9XXK06FFXAW568NE6BDEET	2026-04-15 21:19:05.222-04	2026-04-15 21:19:05.222-04	\N
sorul_01KP9XXK06YYA2F1HTGK1HMK2T	is_return	eq	"false"	so_01KP9XXK06FFXAW568NE6BDEET	2026-04-15 21:19:05.223-04	2026-04-15 21:19:05.223-04	\N
sorul_01KQ5ECQRABSMBNXX48NCXNE1E	is_return	eq	"false"	so_01KQ5ECQRASCWD6RK13KMBNQN9	2026-04-26 13:46:28.491-04	2026-04-26 13:46:28.491-04	\N
sorul_01KQ5ECQRAWNE3XK76WJX42FYV	enabled_in_store	eq	"true"	so_01KQ5ECQRASCWD6RK13KMBNQN9	2026-04-26 13:46:28.491-04	2026-04-26 13:46:28.491-04	\N
\.


--
-- Data for Name: shipping_option_type; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.shipping_option_type (id, label, description, code, created_at, updated_at, deleted_at) FROM stdin;
sotype_01KP9XXK04BYC5XT8JE467D5C2	Standard	Ship in 2-3 days.	standard	2026-04-15 21:19:05.222-04	2026-04-15 21:19:05.222-04	\N
sotype_01KP9XXK05QHG9YRJHCK4YEKYJ	Express	Ship in 24 hours.	express	2026-04-15 21:19:05.222-04	2026-04-15 21:19:05.222-04	\N
\.


--
-- Data for Name: shipping_profile; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.shipping_profile (id, name, type, metadata, created_at, updated_at, deleted_at) FROM stdin;
sp_01KP9XX3SZ7SG4EJ4HJ2S63AD4	Default Shipping Profile	default	\N	2026-04-15 21:18:49.663-04	2026-04-15 21:18:49.663-04	\N
\.


--
-- Data for Name: stock_location; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.stock_location (id, created_at, updated_at, deleted_at, name, address_id, metadata) FROM stdin;
sloc_01KP9XXJXJS8TKZ9MTY36N7EK3	2026-04-15 21:19:05.139-04	2026-04-26 12:18:07.105-04	\N	Estoque Brasil	laddr_01KP9XXJXJE3WJPAFQ0H0A3A70	\N
\.


--
-- Data for Name: stock_location_address; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.stock_location_address (id, created_at, updated_at, deleted_at, address_1, address_2, company, city, country_code, phone, province, postal_code, metadata) FROM stdin;
laddr_01KP9XXJXJE3WJPAFQ0H0A3A70	2026-04-15 21:19:05.138-04	2026-04-26 12:18:07.092-04	\N	R. Sol Nascente, 814				br				\N
\.


--
-- Data for Name: store; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.store (id, name, default_sales_channel_id, default_region_id, default_location_id, metadata, created_at, updated_at, deleted_at) FROM stdin;
store_01KP9XXJSC5XWQ69CPJPNV1Q3B	Loja Super Raça	sc_01KP9XXJRXGGT65H782XD56SVH	reg_01KPA20S5NSBGW8AD90T7HEH4K	sloc_01KP9XXJXJS8TKZ9MTY36N7EK3	\N	2026-04-15 21:19:05.003009-04	2026-04-15 21:19:05.003009-04	\N
\.


--
-- Data for Name: store_currency; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.store_currency (id, currency_code, is_default, store_id, created_at, updated_at, deleted_at) FROM stdin;
stocur_01KQ5D57HQNQS83MVQXWTJR3VV	brl	t	store_01KP9XXJSC5XWQ69CPJPNV1Q3B	2026-04-26 13:24:53.934532-04	2026-04-26 13:24:53.934532-04	\N
stocur_01KQ5D57HQR8PBM7CH34HWQV9P	eur	f	store_01KP9XXJSC5XWQ69CPJPNV1Q3B	2026-04-26 13:24:53.934532-04	2026-04-26 13:24:53.934532-04	\N
stocur_01KQ5D57HRMQ4E4P5HVZCY4PVB	usd	f	store_01KP9XXJSC5XWQ69CPJPNV1Q3B	2026-04-26 13:24:53.934532-04	2026-04-26 13:24:53.934532-04	\N
\.


--
-- Data for Name: store_locale; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.store_locale (id, locale_code, store_id, created_at, updated_at, deleted_at) FROM stdin;
stloc_01KQ5D83BJ5V6D8KNJ24KYNV29	pt-BR	store_01KP9XXJSC5XWQ69CPJPNV1Q3B	2026-04-26 13:26:27.948693-04	2026-04-26 13:26:27.948693-04	\N
\.


--
-- Data for Name: tax_provider; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.tax_provider (id, is_enabled, created_at, updated_at, deleted_at) FROM stdin;
tp_system	t	2026-04-15 21:18:43.02-04	2026-04-15 21:18:43.02-04	\N
\.


--
-- Data for Name: tax_rate; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.tax_rate (id, rate, code, name, is_default, is_combinable, tax_region_id, metadata, created_at, updated_at, created_by, deleted_at) FROM stdin;
\.


--
-- Data for Name: tax_rate_rule; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.tax_rate_rule (id, tax_rate_id, reference_id, reference, metadata, created_at, updated_at, created_by, deleted_at) FROM stdin;
\.


--
-- Data for Name: tax_region; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.tax_region (id, provider_id, country_code, province_code, parent_id, metadata, created_at, updated_at, created_by, deleted_at) FROM stdin;
txreg_01KP9XXJX6QXANR4R7SBC3E5DS	tp_system	gb	\N	\N	\N	2026-04-15 21:19:05.127-04	2026-04-15 21:19:05.127-04	\N	\N
txreg_01KP9XXJX67C69XMN8MSWTME7J	tp_system	de	\N	\N	\N	2026-04-15 21:19:05.127-04	2026-04-15 21:19:05.127-04	\N	\N
txreg_01KP9XXJX6WGQMRVYQF1SPRWRT	tp_system	dk	\N	\N	\N	2026-04-15 21:19:05.127-04	2026-04-15 21:19:05.127-04	\N	\N
txreg_01KP9XXJX6RAP31H4H1EJGAHBZ	tp_system	se	\N	\N	\N	2026-04-15 21:19:05.127-04	2026-04-15 21:19:05.127-04	\N	\N
txreg_01KP9XXJX6FNMFFERVGH67K1ZT	tp_system	fr	\N	\N	\N	2026-04-15 21:19:05.127-04	2026-04-15 21:19:05.127-04	\N	\N
txreg_01KP9XXJX6BZYHZB6DJGFXNSZR	tp_system	es	\N	\N	\N	2026-04-15 21:19:05.127-04	2026-04-15 21:19:05.127-04	\N	\N
txreg_01KP9XXJX66GMT2D9RXBV57MSQ	tp_system	it	\N	\N	\N	2026-04-15 21:19:05.127-04	2026-04-15 21:19:05.127-04	\N	\N
\.


--
-- Data for Name: translation; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.translation (id, reference_id, reference, locale_code, translations, created_at, updated_at, deleted_at, translated_field_count) FROM stdin;
\.


--
-- Data for Name: translation_settings; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.translation_settings (id, entity_type, fields, created_at, updated_at, deleted_at, is_active) FROM stdin;
trset_01KQ5BQ2HTGQHH4BB9P1SKRXSY	product_category	["name", "description"]	2026-04-26 12:59:41.501-04	2026-04-26 12:59:41.501-04	\N	t
trset_01KQ5BQ2HTWGMPNRC51F2D7E78	product_collection	["title"]	2026-04-26 12:59:41.502-04	2026-04-26 12:59:41.502-04	\N	t
trset_01KQ5BQ2HVWA050JFM8D5APWHZ	product_variant	["title", "material"]	2026-04-26 12:59:41.502-04	2026-04-26 12:59:41.502-04	\N	t
trset_01KQ5BQ2HVGJPCWTCDWTN9J5TX	product_option_value	["value"]	2026-04-26 12:59:41.502-04	2026-04-26 12:59:41.502-04	\N	t
trset_01KQ5BQ2HVRKDFVV2P0B86YVH4	product_option	["title"]	2026-04-26 12:59:41.502-04	2026-04-26 12:59:41.502-04	\N	t
trset_01KQ5BQ2HVFARV78437M35N65P	product_tag	["value"]	2026-04-26 12:59:41.502-04	2026-04-26 12:59:41.502-04	\N	t
trset_01KQ5BQ2HVKJ6C5NMVRR7P2X5V	product_type	["value"]	2026-04-26 12:59:41.502-04	2026-04-26 12:59:41.502-04	\N	t
trset_01KQ5BQ2HVWCQ88DFRCHZHQKB7	product	["title", "subtitle", "description", "material"]	2026-04-26 12:59:41.502-04	2026-04-26 12:59:41.502-04	\N	t
trset_01KQ5BQ2HWGV8MAQDTGBJ6TBH7	customer_group	["name"]	2026-04-26 12:59:41.502-04	2026-04-26 12:59:41.502-04	\N	t
trset_01KQ5BQ2HWHSZ2KD1QR5RYW8QJ	region	["name"]	2026-04-26 12:59:41.502-04	2026-04-26 12:59:41.502-04	\N	t
trset_01KQ5BQ2HWTSX21Q9700MBZX3D	tax_rate	["name"]	2026-04-26 12:59:41.502-04	2026-04-26 12:59:41.502-04	\N	t
trset_01KQ5BQ2HWBS7EF1P6HCBZVFPC	refund_reason	["label", "description"]	2026-04-26 12:59:41.502-04	2026-04-26 12:59:41.502-04	\N	t
trset_01KQ5BQ2HWYQ7N4Y0FHHBMKTA1	return_reason	["label", "description"]	2026-04-26 12:59:41.502-04	2026-04-26 12:59:41.502-04	\N	t
trset_01KQ5BQ2HXJ9DVJSM8C22GP16K	shipping_option_type	["label", "description"]	2026-04-26 12:59:41.502-04	2026-04-26 12:59:41.502-04	\N	t
trset_01KQ5BQ2HX6T1DYJZ0HKT1GDEV	shipping_option	["name"]	2026-04-26 12:59:41.502-04	2026-04-26 12:59:41.502-04	\N	t
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."user" (id, first_name, last_name, email, avatar_url, metadata, created_at, updated_at, deleted_at) FROM stdin;
user_01KP9Y6YMGRKGZA922G1NRSFWJ			projeto.superraca@gmail.com	\N	\N	2026-04-15 21:24:12.048-04	2026-04-15 21:26:42.146-04	\N
\.


--
-- Data for Name: user_preference; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.user_preference (id, user_id, key, value, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: user_rbac_role; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.user_rbac_role (user_id, rbac_role_id, id, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: view_configuration; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.view_configuration (id, entity, name, user_id, is_system_default, configuration, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: workflow_execution; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.workflow_execution (id, workflow_id, transaction_id, execution, context, state, created_at, updated_at, deleted_at, retention_time, run_id) FROM stdin;
wf_exec_01KQ5E9KX5WQ4DDQ1K0PR2MGT8	complete-cart	auto-01KQ5E9KWTGSYZ33GAMEY36QM5	{"_v": 0, "runId": "01KQ5E9KWYBS4YX0QW9SG4P3B8", "state": "reverted", "steps": {"_root": {"id": "_root", "next": ["_root.acquire-lock-step"]}, "_root.acquire-lock-step": {"_v": 0, "id": "_root.acquire-lock-step", "next": ["_root.acquire-lock-step.use-query-graph-step", "_root.acquire-lock-step.cart-query"], "uuid": "01KQ5BQXHCW33XHK3BFP1XMA5W", "depth": 1, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777225486259, "compensate": {"state": "reverted", "status": "ok"}, "definition": {"uuid": "01KQ5BQXHCW33XHK3BFP1XMA5W", "store": false, "action": "acquire-lock-step", "noCompensation": false}, "stepFailed": true, "lastAttempt": 1777225486751, "saveResponse": true}, "_root.acquire-lock-step.cart-query": {"_v": 0, "id": "_root.acquire-lock-step.cart-query", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments"], "uuid": "01KQ5BQXHDYHSBFTKPA8WZ4T1Q", "depth": 2, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777225486261, "compensate": {"state": "reverted", "status": "idle"}, "definition": {"uuid": "01KQ5BQXHDYHSBFTKPA8WZ4T1Q", "async": false, "store": false, "action": "cart-query", "noCompensation": true, "compensateAsync": false}, "stepFailed": true, "lastAttempt": 1777225486749, "saveResponse": true}, "_root.acquire-lock-step.use-query-graph-step": {"_v": 0, "id": "_root.acquire-lock-step.use-query-graph-step", "next": [], "uuid": "01KQ5BQXHDYT4885EDYQG9ZBTS", "depth": 2, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777225486261, "compensate": {"state": "reverted", "status": "idle"}, "definition": {"uuid": "01KQ5BQXHDYT4885EDYQG9ZBTS", "store": false, "action": "use-query-graph-step", "noCompensation": true}, "stepFailed": true, "lastAttempt": 1777225486732, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed"], "uuid": "01KQ5BQXHDF8D8RGEGKW5NT1PC", "depth": 3, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777225486325, "compensate": {"state": "reverted", "status": "idle"}, "definition": {"uuid": "01KQ5BQXHDF8D8RGEGKW5NT1PC", "store": false, "action": "validate-cart-payments", "noCompensation": true}, "stepFailed": true, "lastAttempt": 1777225486748, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate"], "uuid": "01KQ5BQXHDFABKB6XA7SV2E03H", "depth": 4, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777225486329, "compensate": {"state": "reverted", "status": "ok"}, "definition": {"uuid": "01KQ5BQXHDFABKB6XA7SV2E03H", "store": false, "action": "compensate-payment-if-needed", "noCompensation": false}, "stepFailed": true, "lastAttempt": 1777225486738, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query"], "uuid": "01KQ5BQXHEM3M10Y0ZWBM6JDYX", "depth": 5, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777225486333, "compensate": {"state": "reverted", "status": "ok"}, "definition": {"uuid": "01KQ5BQXHEM3M10Y0ZWBM6JDYX", "store": false, "action": "validate", "noCompensation": false}, "stepFailed": true, "lastAttempt": 1777225486735, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping"], "uuid": "01KQ5BQXHF1A8H2EHZJBX64FZP", "depth": 6, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777225486338, "compensate": {"state": "reverted", "status": "idle"}, "definition": {"uuid": "01KQ5BQXHF1A8H2EHZJBX64FZP", "async": false, "store": false, "action": "shipping-options-query", "noCompensation": true, "compensateAsync": false}, "stepFailed": true, "lastAttempt": 1777225486733, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders"], "uuid": "01KQ5BQXHFMH0DRNQ6331SFB40", "depth": 7, "invoke": {"state": "failed", "status": "permanent_failure"}, "attempts": 1, "failures": 0, "startedAt": 1777225486346, "compensate": {"state": "reverted", "status": "idle"}, "definition": {"uuid": "01KQ5BQXHFMH0DRNQ6331SFB40", "store": false, "action": "validate-shipping", "noCompensation": true}, "stepFailed": true, "lastAttempt": 1777225486732, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.create-remote-links", "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.update-carts", "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.reserve-inventory-step", "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.register-usage", "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step"], "uuid": "01KQ5BQXHF3T9Q2BTMTR793299", "depth": 8, "invoke": {"state": "not_started", "status": "idle"}, "attempts": 0, "failures": 0, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5BQXHF3T9Q2BTMTR793299", "store": false, "action": "create-orders", "noCompensation": false}, "stepFailed": false, "lastAttempt": null, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.update-carts": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.update-carts", "next": [], "uuid": "01KQ5BQXHFV2T3AE56C4AK816H", "depth": 9, "invoke": {"state": "not_started", "status": "idle"}, "attempts": 0, "failures": 0, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5BQXHFV2T3AE56C4AK816H", "store": false, "action": "update-carts", "noCompensation": false}, "stepFailed": false, "lastAttempt": null, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.register-usage": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.register-usage", "next": [], "uuid": "01KQ5BQXHFR8TXXWCACTJ5RJER", "depth": 9, "invoke": {"state": "not_started", "status": "idle"}, "attempts": 0, "failures": 0, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5BQXHFR8TXXWCACTJ5RJER", "store": false, "action": "register-usage", "noCompensation": false}, "stepFailed": false, "lastAttempt": null, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization"], "uuid": "01KQ5BQXHFWKEWR2FHJQF1900H", "depth": 9, "invoke": {"state": "not_started", "status": "idle"}, "attempts": 0, "failures": 0, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5BQXHFWKEWR2FHJQF1900H", "store": false, "action": "emit-event-step", "noCompensation": false}, "stepFailed": false, "lastAttempt": null, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.create-remote-links": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.create-remote-links", "next": [], "uuid": "01KQ5BQXHF531WE06R86T5X15F", "depth": 9, "invoke": {"state": "not_started", "status": "idle"}, "attempts": 0, "failures": 0, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5BQXHF531WE06R86T5X15F", "store": false, "action": "create-remote-links", "noCompensation": false}, "stepFailed": false, "lastAttempt": null, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.reserve-inventory-step": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.reserve-inventory-step", "next": [], "uuid": "01KQ5BQXHFBDEK5EXZC631TKTA", "depth": 9, "invoke": {"state": "not_started", "status": "idle"}, "attempts": 0, "failures": 0, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5BQXHFBDEK5EXZC631TKTA", "store": false, "action": "reserve-inventory-step", "noCompensation": false}, "stepFailed": false, "lastAttempt": null, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step"], "uuid": "01KQ5BQXHGE5TFWH40GFCTGAGZ", "depth": 10, "invoke": {"state": "not_started", "status": "idle"}, "attempts": 0, "failures": 0, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5BQXHGE5TFWH40GFCTGAGZ", "store": false, "action": "beforePaymentAuthorization", "noCompensation": false}, "stepFailed": false, "lastAttempt": null, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction"], "uuid": "01KQ5BQXHG0YX6EBHTVC76VQ1C", "depth": 11, "invoke": {"state": "not_started", "status": "idle"}, "attempts": 0, "failures": 0, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5BQXHG0YX6EBHTVC76VQ1C", "store": false, "action": "authorize-payment-session-step", "noCompensation": false}, "stepFailed": false, "lastAttempt": null, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction.orderCreated"], "uuid": "01KQ5BQXHGQ5QY99TD4F6YCCYT", "depth": 12, "invoke": {"state": "not_started", "status": "idle"}, "attempts": 0, "failures": 0, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5BQXHGQ5QY99TD4F6YCCYT", "store": false, "action": "add-order-transaction", "noCompensation": false}, "stepFailed": false, "lastAttempt": null, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction.orderCreated": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction.orderCreated", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction.orderCreated.create-order"], "uuid": "01KQ5BQXHGZDGSRAGR4F90G18Z", "depth": 13, "invoke": {"state": "not_started", "status": "idle"}, "attempts": 0, "failures": 0, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5BQXHGZDGSRAGR4F90G18Z", "store": false, "action": "orderCreated", "noCompensation": false}, "stepFailed": false, "lastAttempt": null, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction.orderCreated.create-order": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction.orderCreated.create-order", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction.orderCreated.create-order.release-lock-step"], "uuid": "01KQ5BQXHGDM87EMS8GWSHAFMT", "depth": 14, "invoke": {"state": "not_started", "status": "idle"}, "attempts": 0, "failures": 0, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5BQXHGDM87EMS8GWSHAFMT", "store": false, "action": "create-order", "noCompensation": true}, "stepFailed": false, "lastAttempt": null, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction.orderCreated.create-order.release-lock-step": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction.orderCreated.create-order.release-lock-step", "next": [], "uuid": "01KQ5BQXHG6TQZY83XA72M3EF6", "depth": 15, "invoke": {"state": "not_started", "status": "idle"}, "attempts": 0, "failures": 0, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5BQXHG6TQZY83XA72M3EF6", "store": false, "action": "release-lock-step", "noCompensation": true}, "stepFailed": false, "lastAttempt": null, "saveResponse": true}}, "modelId": "complete-cart", "options": {"name": "complete-cart", "store": true, "idempotent": false, "retentionTime": 259200}, "metadata": {"sourcePath": "F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\core-flows\\\\dist\\\\cart\\\\workflows\\\\complete-cart.js", "eventGroupId": "01KQ5E9KWTA25P7KWXNJ4YTAZT", "preventReleaseEvents": false}, "startedAt": 1777225486258, "definition": {"next": [{"uuid": "01KQ5BQXHDYT4885EDYQG9ZBTS", "action": "use-query-graph-step", "noCompensation": true}, {"next": {"next": {"next": {"next": {"next": {"next": {"next": [{"uuid": "01KQ5BQXHF531WE06R86T5X15F", "action": "create-remote-links", "noCompensation": false}, {"uuid": "01KQ5BQXHFV2T3AE56C4AK816H", "action": "update-carts", "noCompensation": false}, {"uuid": "01KQ5BQXHFBDEK5EXZC631TKTA", "action": "reserve-inventory-step", "noCompensation": false}, {"uuid": "01KQ5BQXHFR8TXXWCACTJ5RJER", "action": "register-usage", "noCompensation": false}, {"next": {"next": {"next": {"next": {"next": {"next": {"uuid": "01KQ5BQXHG6TQZY83XA72M3EF6", "action": "release-lock-step", "noCompensation": true}, "uuid": "01KQ5BQXHGDM87EMS8GWSHAFMT", "action": "create-order", "noCompensation": true}, "uuid": "01KQ5BQXHGZDGSRAGR4F90G18Z", "action": "orderCreated", "noCompensation": false}, "uuid": "01KQ5BQXHGQ5QY99TD4F6YCCYT", "action": "add-order-transaction", "noCompensation": false}, "uuid": "01KQ5BQXHG0YX6EBHTVC76VQ1C", "action": "authorize-payment-session-step", "noCompensation": false}, "uuid": "01KQ5BQXHGE5TFWH40GFCTGAGZ", "action": "beforePaymentAuthorization", "noCompensation": false}, "uuid": "01KQ5BQXHFWKEWR2FHJQF1900H", "action": "emit-event-step", "noCompensation": false}], "uuid": "01KQ5BQXHF3T9Q2BTMTR793299", "action": "create-orders", "noCompensation": false}, "uuid": "01KQ5BQXHFMH0DRNQ6331SFB40", "action": "validate-shipping", "noCompensation": true}, "uuid": "01KQ5BQXHF1A8H2EHZJBX64FZP", "async": false, "action": "shipping-options-query", "noCompensation": true, "compensateAsync": false}, "uuid": "01KQ5BQXHEM3M10Y0ZWBM6JDYX", "action": "validate", "noCompensation": false}, "uuid": "01KQ5BQXHDFABKB6XA7SV2E03H", "action": "compensate-payment-if-needed", "noCompensation": false}, "uuid": "01KQ5BQXHDF8D8RGEGKW5NT1PC", "action": "validate-cart-payments", "noCompensation": true}, "uuid": "01KQ5BQXHDYHSBFTKPA8WZ4T1Q", "async": false, "action": "cart-query", "noCompensation": true, "compensateAsync": false}], "uuid": "01KQ5BQXHCW33XHK3BFP1XMA5W", "action": "acquire-lock-step", "noCompensation": false}, "timedOutAt": null, "hasAsyncSteps": false, "transactionId": "auto-01KQ5E9KWTGSYZ33GAMEY36QM5", "hasFailedSteps": false, "hasSkippedSteps": false, "hasWaitingSteps": false, "hasRevertedSteps": true, "hasSkippedOnFailureSteps": false}	{"data": {"invoke": {"validate": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)"}}, "cart-query": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "output": {"data": {"id": "cart_01KQ33MVP7KGA11MYKWW38JW88", "email": "smlzanatto64@gmail.com", "items": [{"id": "cali_01KQ5CWHMTN9T6QFJZX48MS2XA", "title": "Camiseta Oversized Cristo Vive", "total": 64.99, "cart_id": "cart_01KQ33MVP7KGA11MYKWW38JW88", "variant": {"id": "variant_01KQ394S6BNC8QKJXA75HCW84K", "product": {"id": "prod_01KQ394S3SVPRBN5HMMGASG417", "is_giftcard": false}, "product_id": "prod_01KQ394S3SVPRBN5HMMGASG417", "allow_backorder": false, "inventory_items": [{"inventory": {"id": "iitem_01KQ5AJ4C7SNV9TNDF8GZYZYF3", "location_levels": [{"location_id": "sloc_01KP9XXJXJS8TKZ9MTY36N7EK3", "stock_locations": [{"id": "sloc_01KP9XXJXJS8TKZ9MTY36N7EK3", "name": "Estoque Brasil", "sales_channels": [{"id": "sc_01KP9XXJRXGGT65H782XD56SVH", "name": "Default Sales Channel"}]}], "stocked_quantity": 5, "reserved_quantity": 0, "raw_stocked_quantity": {"value": "5", "precision": 20}, "raw_reserved_quantity": {"value": "0", "precision": 20}}], "requires_shipping": true}, "variant_id": "variant_01KQ394S6BNC8QKJXA75HCW84K", "inventory_item_id": "iitem_01KQ5AJ4C7SNV9TNDF8GZYZYF3", "required_quantity": 1}], "manage_inventory": true}, "metadata": {}, "quantity": 1, "subtitle": "G", "subtotal": 64.99, "raw_total": {"value": "64.99", "precision": 20}, "tax_lines": [], "tax_total": 0, "thumbnail": "http://localhost:9000/static/1777152975705-camiseta%20super%20ra%C3%83%C2%A7a%20comprimido.png", "created_at": "2026-04-26T17:20:09.370Z", "deleted_at": null, "product_id": "prod_01KQ394S3SVPRBN5HMMGASG417", "unit_price": 64.99, "updated_at": "2026-04-26T17:20:09.370Z", "variant_id": "variant_01KQ394S6BNC8QKJXA75HCW84K", "adjustments": [], "is_giftcard": false, "variant_sku": null, "product_type": null, "raw_subtotal": {"value": "64.99", "precision": 20}, "product_title": "Camiseta Oversized Cristo Vive", "raw_tax_total": {"value": "0", "precision": 20}, "variant_title": "G", "discount_total": 0, "original_total": 64.99, "product_handle": "camiseta-cristo-vive", "raw_unit_price": {"value": "64.99", "precision": 20}, "is_custom_price": false, "is_discountable": false, "product_type_id": null, "variant_barcode": null, "is_tax_inclusive": false, "product_subtitle": "", "discount_subtotal": 0, "original_subtotal": 64.99, "requires_shipping": true, "discount_tax_total": 0, "original_tax_total": 0, "product_collection": "Camisetas", "raw_discount_total": {"value": "0", "precision": 20}, "raw_original_total": {"value": "64.99", "precision": 20}, "product_description": "", "compare_at_unit_price": null, "raw_discount_subtotal": {"value": "0", "precision": 20}, "raw_original_subtotal": {"value": "64.99", "precision": 20}, "variant_option_values": null, "raw_discount_tax_total": {"value": "0", "precision": 20}, "raw_original_tax_total": {"value": "0", "precision": 20}, "raw_compare_at_unit_price": null}], "total": 84.99, "locale": null, "region": {"id": "reg_01KPA20S5NSBGW8AD90T7HEH4K", "name": "Brazil", "metadata": null, "created_at": "2026-04-16T02:30:44.150Z", "deleted_at": null, "updated_at": "2026-04-16T02:30:44.150Z", "currency_code": "brl", "automatic_taxes": true}, "customer": {"id": "cus_01KQ5DE2ZGD5GKGPCKNJ49468C", "email": "smlzanatto64@gmail.com", "phone": null, "metadata": null, "last_name": null, "created_at": "2026-04-26T17:29:44.177Z", "created_by": null, "deleted_at": null, "first_name": null, "updated_at": "2026-04-26T17:29:44.177Z", "has_account": false, "company_name": null}, "metadata": null, "subtotal": 84.99, "raw_total": {"value": "84.99", "precision": 20}, "region_id": "reg_01KPA20S5NSBGW8AD90T7HEH4K", "tax_total": 0, "created_at": "2026-04-25T20:00:11.465Z", "item_total": 64.99, "promotions": [], "updated_at": "2026-04-26T17:29:44.204Z", "customer_id": "cus_01KQ5DE2ZGD5GKGPCKNJ49468C", "completed_at": null, "credit_lines": [], "raw_subtotal": {"value": "84.99", "precision": 20}, "currency_code": "brl", "item_subtotal": 64.99, "raw_tax_total": {"value": "0", "precision": 20}, "discount_total": 0, "item_tax_total": 0, "original_total": 84.99, "raw_item_total": {"value": "64.99", "precision": 20}, "shipping_total": 20, "billing_address": {"id": "caaddr_01KQ5DE30A4BFN59JD1FW0VCY8", "city": "Campo Grande", "phone": "", "company": "", "metadata": null, "province": "", "address_1": "Rua Assaré, 729", "address_2": "", "last_name": "Zanatto", "created_at": "2026-04-26T17:29:44.203Z", "deleted_at": null, "first_name": "Samuel", "updated_at": "2026-04-26T17:29:44.203Z", "customer_id": null, "postal_code": "79070023", "country_code": "br"}, "sales_channel_id": "sc_01KP9XXJRXGGT65H782XD56SVH", "shipping_address": {"id": "caaddr_01KQ5DE30BS0336GB3WVRRM39S", "city": "Campo Grande", "phone": "", "company": "", "metadata": null, "province": "", "address_1": "Rua Assaré, 729", "address_2": "", "last_name": "Zanatto", "created_at": "2026-04-26T17:29:44.203Z", "deleted_at": null, "first_name": "Samuel", "updated_at": "2026-04-26T17:29:44.203Z", "customer_id": null, "postal_code": "79070023", "country_code": "br"}, "shipping_methods": [{"id": "casm_01KQ5E0R59XMFFT8QZ8RFMN1QH", "data": {}, "name": "Envio Padrão", "total": 20, "amount": 20, "cart_id": "cart_01KQ33MVP7KGA11MYKWW38JW88", "metadata": null, "subtotal": 20, "raw_total": {"value": "20", "precision": 20}, "tax_lines": [], "tax_total": 0, "created_at": "2026-04-26T17:39:55.689Z", "deleted_at": null, "raw_amount": {"value": "20", "precision": 20}, "updated_at": "2026-04-26T17:39:55.689Z", "adjustments": [], "description": null, "raw_subtotal": {"value": "20", "precision": 20}, "raw_tax_total": {"value": "0", "precision": 20}, "discount_total": 0, "original_total": 20, "is_tax_inclusive": false, "discount_subtotal": 0, "original_subtotal": 20, "discount_tax_total": 0, "original_tax_total": 0, "raw_discount_total": {"value": "0", "precision": 20}, "raw_original_total": {"value": "20", "precision": 20}, "shipping_option_id": "so_01KP9XXK05TKCGKDGWNEA8GGZZ", "raw_discount_subtotal": {"value": "0", "precision": 20}, "raw_original_subtotal": {"value": "20", "precision": 20}, "raw_discount_tax_total": {"value": "0", "precision": 20}, "raw_original_tax_total": {"value": "0", "precision": 20}}], "raw_item_subtotal": {"value": "64.99", "precision": 20}, "shipping_subtotal": 20, "discount_tax_total": 0, "original_tax_total": 0, "payment_collection": {"id": "pay_col_01KQ5E1DV5PX507CG1HA1NGAW0", "amount": 84.99, "status": "not_paid", "metadata": null, "created_at": "2026-04-26T17:40:17.894Z", "deleted_at": null, "raw_amount": {"value": "84.99", "precision": 20}, "updated_at": "2026-04-26T17:40:17.894Z", "completed_at": null, "currency_code": "brl", "captured_amount": null, "refunded_amount": null, "payment_sessions": [{"id": "payses_01KQ5E1DX0CRM6YEW7JW8MEW5F", "data": {}, "amount": 84.99, "status": "pending", "context": {}, "metadata": {}, "created_at": "2026-04-26T17:40:17.952Z", "deleted_at": null, "raw_amount": {"value": "84.99", "precision": 20}, "updated_at": "2026-04-26T17:40:17.952Z", "provider_id": "pp_system_default", "authorized_at": null, "currency_code": "brl", "payment_collection_id": "pay_col_01KQ5E1DV5PX507CG1HA1NGAW0"}], "authorized_amount": null, "raw_captured_amount": null, "raw_refunded_amount": null, "raw_authorized_amount": null}, "raw_discount_total": {"value": "0", "precision": 20}, "raw_item_tax_total": {"value": "0", "precision": 20}, "raw_original_total": {"value": "84.99", "precision": 20}, "raw_shipping_total": {"value": "20", "precision": 20}, "shipping_tax_total": 0, "original_item_total": 64.99, "raw_shipping_subtotal": {"value": "20", "precision": 20}, "original_item_subtotal": 64.99, "raw_discount_tax_total": {"value": "0", "precision": 20}, "raw_original_tax_total": {"value": "0", "precision": 20}, "raw_shipping_tax_total": {"value": "0", "precision": 20}, "original_item_tax_total": 0, "original_shipping_total": 20, "raw_original_item_total": {"value": "64.99", "precision": 20}, "original_shipping_subtotal": 20, "raw_original_item_subtotal": {"value": "64.99", "precision": 20}, "original_shipping_tax_total": 0, "raw_original_item_tax_total": {"value": "0", "precision": 20}, "raw_original_shipping_total": {"value": "20", "precision": 20}, "raw_original_shipping_subtotal": {"value": "20", "precision": 20}, "raw_original_shipping_tax_total": {"value": "0", "precision": 20}}}, "compensateInput": {"data": {"id": "cart_01KQ33MVP7KGA11MYKWW38JW88", "email": "smlzanatto64@gmail.com", "items": [{"id": "cali_01KQ5CWHMTN9T6QFJZX48MS2XA", "title": "Camiseta Oversized Cristo Vive", "total": 64.99, "cart_id": "cart_01KQ33MVP7KGA11MYKWW38JW88", "variant": {"id": "variant_01KQ394S6BNC8QKJXA75HCW84K", "product": {"id": "prod_01KQ394S3SVPRBN5HMMGASG417", "is_giftcard": false}, "product_id": "prod_01KQ394S3SVPRBN5HMMGASG417", "allow_backorder": false, "inventory_items": [{"inventory": {"id": "iitem_01KQ5AJ4C7SNV9TNDF8GZYZYF3", "location_levels": [{"location_id": "sloc_01KP9XXJXJS8TKZ9MTY36N7EK3", "stock_locations": [{"id": "sloc_01KP9XXJXJS8TKZ9MTY36N7EK3", "name": "Estoque Brasil", "sales_channels": [{"id": "sc_01KP9XXJRXGGT65H782XD56SVH", "name": "Default Sales Channel"}]}], "stocked_quantity": 5, "reserved_quantity": 0, "raw_stocked_quantity": {"value": "5", "precision": 20}, "raw_reserved_quantity": {"value": "0", "precision": 20}}], "requires_shipping": true}, "variant_id": "variant_01KQ394S6BNC8QKJXA75HCW84K", "inventory_item_id": "iitem_01KQ5AJ4C7SNV9TNDF8GZYZYF3", "required_quantity": 1}], "manage_inventory": true}, "metadata": {}, "quantity": 1, "subtitle": "G", "subtotal": 64.99, "raw_total": {"value": "64.99", "precision": 20}, "tax_lines": [], "tax_total": 0, "thumbnail": "http://localhost:9000/static/1777152975705-camiseta%20super%20ra%C3%83%C2%A7a%20comprimido.png", "created_at": "2026-04-26T17:20:09.370Z", "deleted_at": null, "product_id": "prod_01KQ394S3SVPRBN5HMMGASG417", "unit_price": 64.99, "updated_at": "2026-04-26T17:20:09.370Z", "variant_id": "variant_01KQ394S6BNC8QKJXA75HCW84K", "adjustments": [], "is_giftcard": false, "variant_sku": null, "product_type": null, "raw_subtotal": {"value": "64.99", "precision": 20}, "product_title": "Camiseta Oversized Cristo Vive", "raw_tax_total": {"value": "0", "precision": 20}, "variant_title": "G", "discount_total": 0, "original_total": 64.99, "product_handle": "camiseta-cristo-vive", "raw_unit_price": {"value": "64.99", "precision": 20}, "is_custom_price": false, "is_discountable": false, "product_type_id": null, "variant_barcode": null, "is_tax_inclusive": false, "product_subtitle": "", "discount_subtotal": 0, "original_subtotal": 64.99, "requires_shipping": true, "discount_tax_total": 0, "original_tax_total": 0, "product_collection": "Camisetas", "raw_discount_total": {"value": "0", "precision": 20}, "raw_original_total": {"value": "64.99", "precision": 20}, "product_description": "", "compare_at_unit_price": null, "raw_discount_subtotal": {"value": "0", "precision": 20}, "raw_original_subtotal": {"value": "64.99", "precision": 20}, "variant_option_values": null, "raw_discount_tax_total": {"value": "0", "precision": 20}, "raw_original_tax_total": {"value": "0", "precision": 20}, "raw_compare_at_unit_price": null}], "total": 84.99, "locale": null, "region": {"id": "reg_01KPA20S5NSBGW8AD90T7HEH4K", "name": "Brazil", "metadata": null, "created_at": "2026-04-16T02:30:44.150Z", "deleted_at": null, "updated_at": "2026-04-16T02:30:44.150Z", "currency_code": "brl", "automatic_taxes": true}, "customer": {"id": "cus_01KQ5DE2ZGD5GKGPCKNJ49468C", "email": "smlzanatto64@gmail.com", "phone": null, "metadata": null, "last_name": null, "created_at": "2026-04-26T17:29:44.177Z", "created_by": null, "deleted_at": null, "first_name": null, "updated_at": "2026-04-26T17:29:44.177Z", "has_account": false, "company_name": null}, "metadata": null, "subtotal": 84.99, "raw_total": {"value": "84.99", "precision": 20}, "region_id": "reg_01KPA20S5NSBGW8AD90T7HEH4K", "tax_total": 0, "created_at": "2026-04-25T20:00:11.465Z", "item_total": 64.99, "promotions": [], "updated_at": "2026-04-26T17:29:44.204Z", "customer_id": "cus_01KQ5DE2ZGD5GKGPCKNJ49468C", "completed_at": null, "credit_lines": [], "raw_subtotal": {"value": "84.99", "precision": 20}, "currency_code": "brl", "item_subtotal": 64.99, "raw_tax_total": {"value": "0", "precision": 20}, "discount_total": 0, "item_tax_total": 0, "original_total": 84.99, "raw_item_total": {"value": "64.99", "precision": 20}, "shipping_total": 20, "billing_address": {"id": "caaddr_01KQ5DE30A4BFN59JD1FW0VCY8", "city": "Campo Grande", "phone": "", "company": "", "metadata": null, "province": "", "address_1": "Rua Assaré, 729", "address_2": "", "last_name": "Zanatto", "created_at": "2026-04-26T17:29:44.203Z", "deleted_at": null, "first_name": "Samuel", "updated_at": "2026-04-26T17:29:44.203Z", "customer_id": null, "postal_code": "79070023", "country_code": "br"}, "sales_channel_id": "sc_01KP9XXJRXGGT65H782XD56SVH", "shipping_address": {"id": "caaddr_01KQ5DE30BS0336GB3WVRRM39S", "city": "Campo Grande", "phone": "", "company": "", "metadata": null, "province": "", "address_1": "Rua Assaré, 729", "address_2": "", "last_name": "Zanatto", "created_at": "2026-04-26T17:29:44.203Z", "deleted_at": null, "first_name": "Samuel", "updated_at": "2026-04-26T17:29:44.203Z", "customer_id": null, "postal_code": "79070023", "country_code": "br"}, "shipping_methods": [{"id": "casm_01KQ5E0R59XMFFT8QZ8RFMN1QH", "data": {}, "name": "Envio Padrão", "total": 20, "amount": 20, "cart_id": "cart_01KQ33MVP7KGA11MYKWW38JW88", "metadata": null, "subtotal": 20, "raw_total": {"value": "20", "precision": 20}, "tax_lines": [], "tax_total": 0, "created_at": "2026-04-26T17:39:55.689Z", "deleted_at": null, "raw_amount": {"value": "20", "precision": 20}, "updated_at": "2026-04-26T17:39:55.689Z", "adjustments": [], "description": null, "raw_subtotal": {"value": "20", "precision": 20}, "raw_tax_total": {"value": "0", "precision": 20}, "discount_total": 0, "original_total": 20, "is_tax_inclusive": false, "discount_subtotal": 0, "original_subtotal": 20, "discount_tax_total": 0, "original_tax_total": 0, "raw_discount_total": {"value": "0", "precision": 20}, "raw_original_total": {"value": "20", "precision": 20}, "shipping_option_id": "so_01KP9XXK05TKCGKDGWNEA8GGZZ", "raw_discount_subtotal": {"value": "0", "precision": 20}, "raw_original_subtotal": {"value": "20", "precision": 20}, "raw_discount_tax_total": {"value": "0", "precision": 20}, "raw_original_tax_total": {"value": "0", "precision": 20}}], "raw_item_subtotal": {"value": "64.99", "precision": 20}, "shipping_subtotal": 20, "discount_tax_total": 0, "original_tax_total": 0, "payment_collection": {"id": "pay_col_01KQ5E1DV5PX507CG1HA1NGAW0", "amount": 84.99, "status": "not_paid", "metadata": null, "created_at": "2026-04-26T17:40:17.894Z", "deleted_at": null, "raw_amount": {"value": "84.99", "precision": 20}, "updated_at": "2026-04-26T17:40:17.894Z", "completed_at": null, "currency_code": "brl", "captured_amount": null, "refunded_amount": null, "payment_sessions": [{"id": "payses_01KQ5E1DX0CRM6YEW7JW8MEW5F", "data": {}, "amount": 84.99, "status": "pending", "context": {}, "metadata": {}, "created_at": "2026-04-26T17:40:17.952Z", "deleted_at": null, "raw_amount": {"value": "84.99", "precision": 20}, "updated_at": "2026-04-26T17:40:17.952Z", "provider_id": "pp_system_default", "authorized_at": null, "currency_code": "brl", "payment_collection_id": "pay_col_01KQ5E1DV5PX507CG1HA1NGAW0"}], "authorized_amount": null, "raw_captured_amount": null, "raw_refunded_amount": null, "raw_authorized_amount": null}, "raw_discount_total": {"value": "0", "precision": 20}, "raw_item_tax_total": {"value": "0", "precision": 20}, "raw_original_total": {"value": "84.99", "precision": 20}, "raw_shipping_total": {"value": "20", "precision": 20}, "shipping_tax_total": 0, "original_item_total": 64.99, "raw_shipping_subtotal": {"value": "20", "precision": 20}, "original_item_subtotal": 64.99, "raw_discount_tax_total": {"value": "0", "precision": 20}, "raw_original_tax_total": {"value": "0", "precision": 20}, "raw_shipping_tax_total": {"value": "0", "precision": 20}, "original_item_tax_total": 0, "original_shipping_total": 20, "raw_original_item_total": {"value": "64.99", "precision": 20}, "original_shipping_subtotal": 20, "raw_original_item_subtotal": {"value": "64.99", "precision": 20}, "original_shipping_tax_total": 0, "raw_original_item_tax_total": {"value": "0", "precision": 20}, "raw_original_shipping_total": {"value": "20", "precision": 20}, "raw_original_shipping_subtotal": {"value": "20", "precision": 20}, "raw_original_shipping_tax_total": {"value": "0", "precision": 20}}}}}, "acquire-lock-step": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "compensateInput": {"keys": ["cart_01KQ33MVP7KGA11MYKWW38JW88"]}}}, "use-query-graph-step": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "output": {}, "compensateInput": {}}}, "shipping-options-query": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "output": {"data": [{"id": "so_01KP9XXK05TKCGKDGWNEA8GGZZ", "shipping_profile_id": "sp_01KP9XX3SZ7SG4EJ4HJ2S63AD4"}]}, "compensateInput": {"data": [{"id": "so_01KP9XXK05TKCGKDGWNEA8GGZZ", "shipping_profile_id": "sp_01KP9XX3SZ7SG4EJ4HJ2S63AD4"}]}}}, "validate-cart-payments": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "output": [{"id": "payses_01KQ5E1DX0CRM6YEW7JW8MEW5F", "data": {}, "amount": 84.99, "status": "pending", "context": {}, "metadata": {}, "created_at": "2026-04-26T17:40:17.952Z", "deleted_at": null, "raw_amount": {"value": "84.99", "precision": 20}, "updated_at": "2026-04-26T17:40:17.952Z", "provider_id": "pp_system_default", "authorized_at": null, "currency_code": "brl", "payment_collection_id": "pay_col_01KQ5E1DV5PX507CG1HA1NGAW0"}], "compensateInput": [{"id": "payses_01KQ5E1DX0CRM6YEW7JW8MEW5F", "data": {}, "amount": 84.99, "status": "pending", "context": {}, "metadata": {}, "created_at": "2026-04-26T17:40:17.952Z", "deleted_at": null, "raw_amount": {"value": "84.99", "precision": 20}, "updated_at": "2026-04-26T17:40:17.952Z", "provider_id": "pp_system_default", "authorized_at": null, "currency_code": "brl", "payment_collection_id": "pay_col_01KQ5E1DV5PX507CG1HA1NGAW0"}]}}, "compensate-payment-if-needed": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "output": "payses_01KQ5E1DX0CRM6YEW7JW8MEW5F", "compensateInput": "payses_01KQ5E1DX0CRM6YEW7JW8MEW5F"}}}, "payload": {"id": "cart_01KQ33MVP7KGA11MYKWW38JW88"}, "compensate": {"validate": {}, "acquire-lock-step": {"output": {"__type": "Symbol(WorkflowStepResponse)"}}, "compensate-payment-if-needed": {}}}, "errors": [{"error": {"date": "2026-04-26T17:44:46.349Z", "name": "Error", "type": "invalid_data", "stack": "Error: The cart items require shipping profiles that are not satisfied by the current shipping methods\\n    at Object.<anonymous> (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\core-flows\\\\src\\\\cart\\\\steps\\\\validate-shipping.ts:107:13)\\n    at invoke (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\workflows-sdk\\\\src\\\\utils\\\\composer\\\\helpers\\\\create-step-handler.ts:91:67)\\n    at processTicksAndRejections (node:internal/process/task_queues:105:5)\\n    at async Object.handle.invoke (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\workflows-sdk\\\\src\\\\utils\\\\composer\\\\create-step.ts:381:12)\\n    at async DistributedTransaction.handler (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\orchestration\\\\src\\\\workflow\\\\workflow-manager.ts:214:16)\\n    at async stepHandler (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\orchestration\\\\src\\\\transaction\\\\transaction-orchestrator.ts:1193:14)\\n    at async Promise.allSettled (index 0)\\n    at async promiseAll (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\utils\\\\src\\\\common\\\\promise-all.ts:27:18)\\n    at async TransactionOrchestrator.executeNext (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\orchestration\\\\src\\\\transaction\\\\transaction-orchestrator.ts:1037:7)\\n    at async executeNext (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\orchestration\\\\src\\\\transaction\\\\transaction-orchestrator.ts:1438:14)\\n    at async TransactionOrchestrator.resume (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\orchestration\\\\src\\\\transaction\\\\transaction-orchestrator.ts:1453:5)\\n    at async LocalWorkflow.run (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\orchestration\\\\src\\\\workflow\\\\local-workflow.ts:375:5)\\n    at async originalExecution (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\workflows-sdk\\\\src\\\\helper\\\\workflow-export.ts:144:26)\\n    at async newRun (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\workflows-sdk\\\\src\\\\helper\\\\workflow-export.ts:226:12)\\n    at async Function.exportedWorkflow.run (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\workflows-sdk\\\\src\\\\helper\\\\workflow-export.ts:502:12)\\n    at async WorkflowOrchestratorService.run (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\workflow-engine-inmemory\\\\src\\\\services\\\\workflow-orchestrator.ts:216:17)\\n    at async WorkflowsModuleService.run (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\workflow-engine-inmemory\\\\src\\\\services\\\\workflows-module.ts:188:17)\\n    at async POST (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\medusa\\\\src\\\\api\\\\store\\\\carts\\\\[id]\\\\complete\\\\route.ts:20:43)\\n    at async POST (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\framework\\\\src\\\\http\\\\utils\\\\wrap-handler.ts:27:14)\\n⮑ sat F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\core-flows\\\\dist\\\\cart\\\\workflows\\\\complete-cart.js: [complete-cart -> validate-shipping (invoke)]", "message": "The cart items require shipping profiles that are not satisfied by the current shipping methods", "__isMedusaError": true}, "action": "validate-shipping", "handlerType": "invoke"}]}	reverted	2026-04-26 17:44:46.245	2026-04-26 17:44:46.761	\N	259200	01KQ5E9KWYBS4YX0QW9SG4P3B8
wf_exec_01KQ5EDW5F6GJFGS9HR6CKH5M6	complete-cart	auto-01KQ5EDW56DD6TZ3P84597VWCN	{"_v": 0, "runId": "01KQ5EDW59127WN1GYNRX9Y18T", "state": "reverted", "steps": {"_root": {"id": "_root", "next": ["_root.acquire-lock-step"]}, "_root.acquire-lock-step": {"_v": 0, "id": "_root.acquire-lock-step", "next": ["_root.acquire-lock-step.use-query-graph-step", "_root.acquire-lock-step.cart-query"], "uuid": "01KQ5BQXHCW33XHK3BFP1XMA5W", "depth": 1, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777225625782, "compensate": {"state": "reverted", "status": "ok"}, "definition": {"uuid": "01KQ5BQXHCW33XHK3BFP1XMA5W", "store": false, "action": "acquire-lock-step", "noCompensation": false}, "stepFailed": true, "lastAttempt": 1777225625900, "saveResponse": true}, "_root.acquire-lock-step.cart-query": {"_v": 0, "id": "_root.acquire-lock-step.cart-query", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments"], "uuid": "01KQ5BQXHDYHSBFTKPA8WZ4T1Q", "depth": 2, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777225625783, "compensate": {"state": "reverted", "status": "idle"}, "definition": {"uuid": "01KQ5BQXHDYHSBFTKPA8WZ4T1Q", "async": false, "store": false, "action": "cart-query", "noCompensation": true, "compensateAsync": false}, "stepFailed": true, "lastAttempt": 1777225625898, "saveResponse": true}, "_root.acquire-lock-step.use-query-graph-step": {"_v": 0, "id": "_root.acquire-lock-step.use-query-graph-step", "next": [], "uuid": "01KQ5BQXHDYT4885EDYQG9ZBTS", "depth": 2, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777225625783, "compensate": {"state": "reverted", "status": "idle"}, "definition": {"uuid": "01KQ5BQXHDYT4885EDYQG9ZBTS", "store": false, "action": "use-query-graph-step", "noCompensation": true}, "stepFailed": true, "lastAttempt": 1777225625882, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed"], "uuid": "01KQ5BQXHDF8D8RGEGKW5NT1PC", "depth": 3, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777225625849, "compensate": {"state": "reverted", "status": "idle"}, "definition": {"uuid": "01KQ5BQXHDF8D8RGEGKW5NT1PC", "store": false, "action": "validate-cart-payments", "noCompensation": true}, "stepFailed": true, "lastAttempt": 1777225625897, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate"], "uuid": "01KQ5BQXHDFABKB6XA7SV2E03H", "depth": 4, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777225625854, "compensate": {"state": "reverted", "status": "ok"}, "definition": {"uuid": "01KQ5BQXHDFABKB6XA7SV2E03H", "store": false, "action": "compensate-payment-if-needed", "noCompensation": false}, "stepFailed": true, "lastAttempt": 1777225625888, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query"], "uuid": "01KQ5BQXHEM3M10Y0ZWBM6JDYX", "depth": 5, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777225625857, "compensate": {"state": "reverted", "status": "ok"}, "definition": {"uuid": "01KQ5BQXHEM3M10Y0ZWBM6JDYX", "store": false, "action": "validate", "noCompensation": false}, "stepFailed": true, "lastAttempt": 1777225625885, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping"], "uuid": "01KQ5BQXHF1A8H2EHZJBX64FZP", "depth": 6, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777225625860, "compensate": {"state": "reverted", "status": "idle"}, "definition": {"uuid": "01KQ5BQXHF1A8H2EHZJBX64FZP", "async": false, "store": false, "action": "shipping-options-query", "noCompensation": true, "compensateAsync": false}, "stepFailed": true, "lastAttempt": 1777225625884, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders"], "uuid": "01KQ5BQXHFMH0DRNQ6331SFB40", "depth": 7, "invoke": {"state": "failed", "status": "permanent_failure"}, "attempts": 1, "failures": 0, "startedAt": 1777225625866, "compensate": {"state": "reverted", "status": "idle"}, "definition": {"uuid": "01KQ5BQXHFMH0DRNQ6331SFB40", "store": false, "action": "validate-shipping", "noCompensation": true}, "stepFailed": true, "lastAttempt": 1777225625882, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.create-remote-links", "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.update-carts", "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.reserve-inventory-step", "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.register-usage", "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step"], "uuid": "01KQ5BQXHF3T9Q2BTMTR793299", "depth": 8, "invoke": {"state": "not_started", "status": "idle"}, "attempts": 0, "failures": 0, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5BQXHF3T9Q2BTMTR793299", "store": false, "action": "create-orders", "noCompensation": false}, "stepFailed": false, "lastAttempt": null, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.update-carts": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.update-carts", "next": [], "uuid": "01KQ5BQXHFV2T3AE56C4AK816H", "depth": 9, "invoke": {"state": "not_started", "status": "idle"}, "attempts": 0, "failures": 0, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5BQXHFV2T3AE56C4AK816H", "store": false, "action": "update-carts", "noCompensation": false}, "stepFailed": false, "lastAttempt": null, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.register-usage": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.register-usage", "next": [], "uuid": "01KQ5BQXHFR8TXXWCACTJ5RJER", "depth": 9, "invoke": {"state": "not_started", "status": "idle"}, "attempts": 0, "failures": 0, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5BQXHFR8TXXWCACTJ5RJER", "store": false, "action": "register-usage", "noCompensation": false}, "stepFailed": false, "lastAttempt": null, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization"], "uuid": "01KQ5BQXHFWKEWR2FHJQF1900H", "depth": 9, "invoke": {"state": "not_started", "status": "idle"}, "attempts": 0, "failures": 0, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5BQXHFWKEWR2FHJQF1900H", "store": false, "action": "emit-event-step", "noCompensation": false}, "stepFailed": false, "lastAttempt": null, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.create-remote-links": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.create-remote-links", "next": [], "uuid": "01KQ5BQXHF531WE06R86T5X15F", "depth": 9, "invoke": {"state": "not_started", "status": "idle"}, "attempts": 0, "failures": 0, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5BQXHF531WE06R86T5X15F", "store": false, "action": "create-remote-links", "noCompensation": false}, "stepFailed": false, "lastAttempt": null, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.reserve-inventory-step": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.reserve-inventory-step", "next": [], "uuid": "01KQ5BQXHFBDEK5EXZC631TKTA", "depth": 9, "invoke": {"state": "not_started", "status": "idle"}, "attempts": 0, "failures": 0, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5BQXHFBDEK5EXZC631TKTA", "store": false, "action": "reserve-inventory-step", "noCompensation": false}, "stepFailed": false, "lastAttempt": null, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step"], "uuid": "01KQ5BQXHGE5TFWH40GFCTGAGZ", "depth": 10, "invoke": {"state": "not_started", "status": "idle"}, "attempts": 0, "failures": 0, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5BQXHGE5TFWH40GFCTGAGZ", "store": false, "action": "beforePaymentAuthorization", "noCompensation": false}, "stepFailed": false, "lastAttempt": null, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction"], "uuid": "01KQ5BQXHG0YX6EBHTVC76VQ1C", "depth": 11, "invoke": {"state": "not_started", "status": "idle"}, "attempts": 0, "failures": 0, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5BQXHG0YX6EBHTVC76VQ1C", "store": false, "action": "authorize-payment-session-step", "noCompensation": false}, "stepFailed": false, "lastAttempt": null, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction.orderCreated"], "uuid": "01KQ5BQXHGQ5QY99TD4F6YCCYT", "depth": 12, "invoke": {"state": "not_started", "status": "idle"}, "attempts": 0, "failures": 0, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5BQXHGQ5QY99TD4F6YCCYT", "store": false, "action": "add-order-transaction", "noCompensation": false}, "stepFailed": false, "lastAttempt": null, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction.orderCreated": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction.orderCreated", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction.orderCreated.create-order"], "uuid": "01KQ5BQXHGZDGSRAGR4F90G18Z", "depth": 13, "invoke": {"state": "not_started", "status": "idle"}, "attempts": 0, "failures": 0, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5BQXHGZDGSRAGR4F90G18Z", "store": false, "action": "orderCreated", "noCompensation": false}, "stepFailed": false, "lastAttempt": null, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction.orderCreated.create-order": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction.orderCreated.create-order", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction.orderCreated.create-order.release-lock-step"], "uuid": "01KQ5BQXHGDM87EMS8GWSHAFMT", "depth": 14, "invoke": {"state": "not_started", "status": "idle"}, "attempts": 0, "failures": 0, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5BQXHGDM87EMS8GWSHAFMT", "store": false, "action": "create-order", "noCompensation": true}, "stepFailed": false, "lastAttempt": null, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction.orderCreated.create-order.release-lock-step": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction.orderCreated.create-order.release-lock-step", "next": [], "uuid": "01KQ5BQXHG6TQZY83XA72M3EF6", "depth": 15, "invoke": {"state": "not_started", "status": "idle"}, "attempts": 0, "failures": 0, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5BQXHG6TQZY83XA72M3EF6", "store": false, "action": "release-lock-step", "noCompensation": true}, "stepFailed": false, "lastAttempt": null, "saveResponse": true}}, "modelId": "complete-cart", "options": {"name": "complete-cart", "store": true, "idempotent": false, "retentionTime": 259200}, "metadata": {"sourcePath": "F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\core-flows\\\\dist\\\\cart\\\\workflows\\\\complete-cart.js", "eventGroupId": "01KQ5EDW56W2ZQ8QN8921FGAYS", "preventReleaseEvents": false}, "startedAt": 1777225625781, "definition": {"next": [{"uuid": "01KQ5BQXHDYT4885EDYQG9ZBTS", "action": "use-query-graph-step", "noCompensation": true}, {"next": {"next": {"next": {"next": {"next": {"next": {"next": [{"uuid": "01KQ5BQXHF531WE06R86T5X15F", "action": "create-remote-links", "noCompensation": false}, {"uuid": "01KQ5BQXHFV2T3AE56C4AK816H", "action": "update-carts", "noCompensation": false}, {"uuid": "01KQ5BQXHFBDEK5EXZC631TKTA", "action": "reserve-inventory-step", "noCompensation": false}, {"uuid": "01KQ5BQXHFR8TXXWCACTJ5RJER", "action": "register-usage", "noCompensation": false}, {"next": {"next": {"next": {"next": {"next": {"next": {"uuid": "01KQ5BQXHG6TQZY83XA72M3EF6", "action": "release-lock-step", "noCompensation": true}, "uuid": "01KQ5BQXHGDM87EMS8GWSHAFMT", "action": "create-order", "noCompensation": true}, "uuid": "01KQ5BQXHGZDGSRAGR4F90G18Z", "action": "orderCreated", "noCompensation": false}, "uuid": "01KQ5BQXHGQ5QY99TD4F6YCCYT", "action": "add-order-transaction", "noCompensation": false}, "uuid": "01KQ5BQXHG0YX6EBHTVC76VQ1C", "action": "authorize-payment-session-step", "noCompensation": false}, "uuid": "01KQ5BQXHGE5TFWH40GFCTGAGZ", "action": "beforePaymentAuthorization", "noCompensation": false}, "uuid": "01KQ5BQXHFWKEWR2FHJQF1900H", "action": "emit-event-step", "noCompensation": false}], "uuid": "01KQ5BQXHF3T9Q2BTMTR793299", "action": "create-orders", "noCompensation": false}, "uuid": "01KQ5BQXHFMH0DRNQ6331SFB40", "action": "validate-shipping", "noCompensation": true}, "uuid": "01KQ5BQXHF1A8H2EHZJBX64FZP", "async": false, "action": "shipping-options-query", "noCompensation": true, "compensateAsync": false}, "uuid": "01KQ5BQXHEM3M10Y0ZWBM6JDYX", "action": "validate", "noCompensation": false}, "uuid": "01KQ5BQXHDFABKB6XA7SV2E03H", "action": "compensate-payment-if-needed", "noCompensation": false}, "uuid": "01KQ5BQXHDF8D8RGEGKW5NT1PC", "action": "validate-cart-payments", "noCompensation": true}, "uuid": "01KQ5BQXHDYHSBFTKPA8WZ4T1Q", "async": false, "action": "cart-query", "noCompensation": true, "compensateAsync": false}], "uuid": "01KQ5BQXHCW33XHK3BFP1XMA5W", "action": "acquire-lock-step", "noCompensation": false}, "timedOutAt": null, "hasAsyncSteps": false, "transactionId": "auto-01KQ5EDW56DD6TZ3P84597VWCN", "hasFailedSteps": false, "hasSkippedSteps": false, "hasWaitingSteps": false, "hasRevertedSteps": true, "hasSkippedOnFailureSteps": false}	{"data": {"invoke": {"validate": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)"}}, "cart-query": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "output": {"data": {"id": "cart_01KQ33MVP7KGA11MYKWW38JW88", "email": "smlzanatto64@gmail.com", "items": [{"id": "cali_01KQ5CWHMTN9T6QFJZX48MS2XA", "title": "Camiseta Oversized Cristo Vive", "total": 64.99, "cart_id": "cart_01KQ33MVP7KGA11MYKWW38JW88", "variant": {"id": "variant_01KQ394S6BNC8QKJXA75HCW84K", "product": {"id": "prod_01KQ394S3SVPRBN5HMMGASG417", "is_giftcard": false}, "product_id": "prod_01KQ394S3SVPRBN5HMMGASG417", "allow_backorder": false, "inventory_items": [{"inventory": {"id": "iitem_01KQ5AJ4C7SNV9TNDF8GZYZYF3", "location_levels": [{"location_id": "sloc_01KP9XXJXJS8TKZ9MTY36N7EK3", "stock_locations": [{"id": "sloc_01KP9XXJXJS8TKZ9MTY36N7EK3", "name": "Estoque Brasil", "sales_channels": [{"id": "sc_01KP9XXJRXGGT65H782XD56SVH", "name": "Default Sales Channel"}]}], "stocked_quantity": 5, "reserved_quantity": 0, "raw_stocked_quantity": {"value": "5", "precision": 20}, "raw_reserved_quantity": {"value": "0", "precision": 20}}], "requires_shipping": true}, "variant_id": "variant_01KQ394S6BNC8QKJXA75HCW84K", "inventory_item_id": "iitem_01KQ5AJ4C7SNV9TNDF8GZYZYF3", "required_quantity": 1}], "manage_inventory": true}, "metadata": {}, "quantity": 1, "subtitle": "G", "subtotal": 64.99, "raw_total": {"value": "64.99", "precision": 20}, "tax_lines": [], "tax_total": 0, "thumbnail": "http://localhost:9000/static/1777152975705-camiseta%20super%20ra%C3%83%C2%A7a%20comprimido.png", "created_at": "2026-04-26T17:20:09.370Z", "deleted_at": null, "product_id": "prod_01KQ394S3SVPRBN5HMMGASG417", "unit_price": 64.99, "updated_at": "2026-04-26T17:20:09.370Z", "variant_id": "variant_01KQ394S6BNC8QKJXA75HCW84K", "adjustments": [], "is_giftcard": false, "variant_sku": null, "product_type": null, "raw_subtotal": {"value": "64.99", "precision": 20}, "product_title": "Camiseta Oversized Cristo Vive", "raw_tax_total": {"value": "0", "precision": 20}, "variant_title": "G", "discount_total": 0, "original_total": 64.99, "product_handle": "camiseta-cristo-vive", "raw_unit_price": {"value": "64.99", "precision": 20}, "is_custom_price": false, "is_discountable": false, "product_type_id": null, "variant_barcode": null, "is_tax_inclusive": false, "product_subtitle": "", "discount_subtotal": 0, "original_subtotal": 64.99, "requires_shipping": true, "discount_tax_total": 0, "original_tax_total": 0, "product_collection": "Camisetas", "raw_discount_total": {"value": "0", "precision": 20}, "raw_original_total": {"value": "64.99", "precision": 20}, "product_description": "", "compare_at_unit_price": null, "raw_discount_subtotal": {"value": "0", "precision": 20}, "raw_original_subtotal": {"value": "64.99", "precision": 20}, "variant_option_values": null, "raw_discount_tax_total": {"value": "0", "precision": 20}, "raw_original_tax_total": {"value": "0", "precision": 20}, "raw_compare_at_unit_price": null}], "total": 84.99, "locale": null, "region": {"id": "reg_01KPA20S5NSBGW8AD90T7HEH4K", "name": "Brazil", "metadata": null, "created_at": "2026-04-16T02:30:44.150Z", "deleted_at": null, "updated_at": "2026-04-16T02:30:44.150Z", "currency_code": "brl", "automatic_taxes": true}, "customer": {"id": "cus_01KQ5DE2ZGD5GKGPCKNJ49468C", "email": "smlzanatto64@gmail.com", "phone": null, "metadata": null, "last_name": null, "created_at": "2026-04-26T17:29:44.177Z", "created_by": null, "deleted_at": null, "first_name": null, "updated_at": "2026-04-26T17:29:44.177Z", "has_account": false, "company_name": null}, "metadata": null, "subtotal": 84.99, "raw_total": {"value": "84.99", "precision": 20}, "region_id": "reg_01KPA20S5NSBGW8AD90T7HEH4K", "tax_total": 0, "created_at": "2026-04-25T20:00:11.465Z", "item_total": 64.99, "promotions": [], "updated_at": "2026-04-26T17:29:44.204Z", "customer_id": "cus_01KQ5DE2ZGD5GKGPCKNJ49468C", "completed_at": null, "credit_lines": [], "raw_subtotal": {"value": "84.99", "precision": 20}, "currency_code": "brl", "item_subtotal": 64.99, "raw_tax_total": {"value": "0", "precision": 20}, "discount_total": 0, "item_tax_total": 0, "original_total": 84.99, "raw_item_total": {"value": "64.99", "precision": 20}, "shipping_total": 20, "billing_address": {"id": "caaddr_01KQ5DE30A4BFN59JD1FW0VCY8", "city": "Campo Grande", "phone": "", "company": "", "metadata": null, "province": "", "address_1": "Rua Assaré, 729", "address_2": "", "last_name": "Zanatto", "created_at": "2026-04-26T17:29:44.203Z", "deleted_at": null, "first_name": "Samuel", "updated_at": "2026-04-26T17:29:44.203Z", "customer_id": null, "postal_code": "79070023", "country_code": "br"}, "sales_channel_id": "sc_01KP9XXJRXGGT65H782XD56SVH", "shipping_address": {"id": "caaddr_01KQ5DE30BS0336GB3WVRRM39S", "city": "Campo Grande", "phone": "", "company": "", "metadata": null, "province": "", "address_1": "Rua Assaré, 729", "address_2": "", "last_name": "Zanatto", "created_at": "2026-04-26T17:29:44.203Z", "deleted_at": null, "first_name": "Samuel", "updated_at": "2026-04-26T17:29:44.203Z", "customer_id": null, "postal_code": "79070023", "country_code": "br"}, "shipping_methods": [{"id": "casm_01KQ5EDQZ3M69V2GXV0S5XCG6H", "data": {}, "name": "Envio Padrão", "total": 20, "amount": 20, "cart_id": "cart_01KQ33MVP7KGA11MYKWW38JW88", "metadata": null, "subtotal": 20, "raw_total": {"value": "20", "precision": 20}, "tax_lines": [], "tax_total": 0, "created_at": "2026-04-26T17:47:01.475Z", "deleted_at": null, "raw_amount": {"value": "20", "precision": 20}, "updated_at": "2026-04-26T17:47:01.475Z", "adjustments": [], "description": null, "raw_subtotal": {"value": "20", "precision": 20}, "raw_tax_total": {"value": "0", "precision": 20}, "discount_total": 0, "original_total": 20, "is_tax_inclusive": false, "discount_subtotal": 0, "original_subtotal": 20, "discount_tax_total": 0, "original_tax_total": 0, "raw_discount_total": {"value": "0", "precision": 20}, "raw_original_total": {"value": "20", "precision": 20}, "shipping_option_id": "so_01KP9XXK05TKCGKDGWNEA8GGZZ", "raw_discount_subtotal": {"value": "0", "precision": 20}, "raw_original_subtotal": {"value": "20", "precision": 20}, "raw_discount_tax_total": {"value": "0", "precision": 20}, "raw_original_tax_total": {"value": "0", "precision": 20}}], "raw_item_subtotal": {"value": "64.99", "precision": 20}, "shipping_subtotal": 20, "discount_tax_total": 0, "original_tax_total": 0, "payment_collection": {"id": "pay_col_01KQ5E1DV5PX507CG1HA1NGAW0", "amount": 84.99, "status": "not_paid", "metadata": null, "created_at": "2026-04-26T17:40:17.894Z", "deleted_at": null, "raw_amount": {"value": "84.99", "precision": 20}, "updated_at": "2026-04-26T17:40:17.894Z", "completed_at": null, "currency_code": "brl", "captured_amount": null, "refunded_amount": null, "payment_sessions": [{"id": "payses_01KQ5E1DX0CRM6YEW7JW8MEW5F", "data": {}, "amount": 84.99, "status": "pending", "context": {}, "metadata": {}, "created_at": "2026-04-26T17:40:17.952Z", "deleted_at": null, "raw_amount": {"value": "84.99", "precision": 20}, "updated_at": "2026-04-26T17:40:17.952Z", "provider_id": "pp_system_default", "authorized_at": null, "currency_code": "brl", "payment_collection_id": "pay_col_01KQ5E1DV5PX507CG1HA1NGAW0"}], "authorized_amount": null, "raw_captured_amount": null, "raw_refunded_amount": null, "raw_authorized_amount": null}, "raw_discount_total": {"value": "0", "precision": 20}, "raw_item_tax_total": {"value": "0", "precision": 20}, "raw_original_total": {"value": "84.99", "precision": 20}, "raw_shipping_total": {"value": "20", "precision": 20}, "shipping_tax_total": 0, "original_item_total": 64.99, "raw_shipping_subtotal": {"value": "20", "precision": 20}, "original_item_subtotal": 64.99, "raw_discount_tax_total": {"value": "0", "precision": 20}, "raw_original_tax_total": {"value": "0", "precision": 20}, "raw_shipping_tax_total": {"value": "0", "precision": 20}, "original_item_tax_total": 0, "original_shipping_total": 20, "raw_original_item_total": {"value": "64.99", "precision": 20}, "original_shipping_subtotal": 20, "raw_original_item_subtotal": {"value": "64.99", "precision": 20}, "original_shipping_tax_total": 0, "raw_original_item_tax_total": {"value": "0", "precision": 20}, "raw_original_shipping_total": {"value": "20", "precision": 20}, "raw_original_shipping_subtotal": {"value": "20", "precision": 20}, "raw_original_shipping_tax_total": {"value": "0", "precision": 20}}}, "compensateInput": {"data": {"id": "cart_01KQ33MVP7KGA11MYKWW38JW88", "email": "smlzanatto64@gmail.com", "items": [{"id": "cali_01KQ5CWHMTN9T6QFJZX48MS2XA", "title": "Camiseta Oversized Cristo Vive", "total": 64.99, "cart_id": "cart_01KQ33MVP7KGA11MYKWW38JW88", "variant": {"id": "variant_01KQ394S6BNC8QKJXA75HCW84K", "product": {"id": "prod_01KQ394S3SVPRBN5HMMGASG417", "is_giftcard": false}, "product_id": "prod_01KQ394S3SVPRBN5HMMGASG417", "allow_backorder": false, "inventory_items": [{"inventory": {"id": "iitem_01KQ5AJ4C7SNV9TNDF8GZYZYF3", "location_levels": [{"location_id": "sloc_01KP9XXJXJS8TKZ9MTY36N7EK3", "stock_locations": [{"id": "sloc_01KP9XXJXJS8TKZ9MTY36N7EK3", "name": "Estoque Brasil", "sales_channels": [{"id": "sc_01KP9XXJRXGGT65H782XD56SVH", "name": "Default Sales Channel"}]}], "stocked_quantity": 5, "reserved_quantity": 0, "raw_stocked_quantity": {"value": "5", "precision": 20}, "raw_reserved_quantity": {"value": "0", "precision": 20}}], "requires_shipping": true}, "variant_id": "variant_01KQ394S6BNC8QKJXA75HCW84K", "inventory_item_id": "iitem_01KQ5AJ4C7SNV9TNDF8GZYZYF3", "required_quantity": 1}], "manage_inventory": true}, "metadata": {}, "quantity": 1, "subtitle": "G", "subtotal": 64.99, "raw_total": {"value": "64.99", "precision": 20}, "tax_lines": [], "tax_total": 0, "thumbnail": "http://localhost:9000/static/1777152975705-camiseta%20super%20ra%C3%83%C2%A7a%20comprimido.png", "created_at": "2026-04-26T17:20:09.370Z", "deleted_at": null, "product_id": "prod_01KQ394S3SVPRBN5HMMGASG417", "unit_price": 64.99, "updated_at": "2026-04-26T17:20:09.370Z", "variant_id": "variant_01KQ394S6BNC8QKJXA75HCW84K", "adjustments": [], "is_giftcard": false, "variant_sku": null, "product_type": null, "raw_subtotal": {"value": "64.99", "precision": 20}, "product_title": "Camiseta Oversized Cristo Vive", "raw_tax_total": {"value": "0", "precision": 20}, "variant_title": "G", "discount_total": 0, "original_total": 64.99, "product_handle": "camiseta-cristo-vive", "raw_unit_price": {"value": "64.99", "precision": 20}, "is_custom_price": false, "is_discountable": false, "product_type_id": null, "variant_barcode": null, "is_tax_inclusive": false, "product_subtitle": "", "discount_subtotal": 0, "original_subtotal": 64.99, "requires_shipping": true, "discount_tax_total": 0, "original_tax_total": 0, "product_collection": "Camisetas", "raw_discount_total": {"value": "0", "precision": 20}, "raw_original_total": {"value": "64.99", "precision": 20}, "product_description": "", "compare_at_unit_price": null, "raw_discount_subtotal": {"value": "0", "precision": 20}, "raw_original_subtotal": {"value": "64.99", "precision": 20}, "variant_option_values": null, "raw_discount_tax_total": {"value": "0", "precision": 20}, "raw_original_tax_total": {"value": "0", "precision": 20}, "raw_compare_at_unit_price": null}], "total": 84.99, "locale": null, "region": {"id": "reg_01KPA20S5NSBGW8AD90T7HEH4K", "name": "Brazil", "metadata": null, "created_at": "2026-04-16T02:30:44.150Z", "deleted_at": null, "updated_at": "2026-04-16T02:30:44.150Z", "currency_code": "brl", "automatic_taxes": true}, "customer": {"id": "cus_01KQ5DE2ZGD5GKGPCKNJ49468C", "email": "smlzanatto64@gmail.com", "phone": null, "metadata": null, "last_name": null, "created_at": "2026-04-26T17:29:44.177Z", "created_by": null, "deleted_at": null, "first_name": null, "updated_at": "2026-04-26T17:29:44.177Z", "has_account": false, "company_name": null}, "metadata": null, "subtotal": 84.99, "raw_total": {"value": "84.99", "precision": 20}, "region_id": "reg_01KPA20S5NSBGW8AD90T7HEH4K", "tax_total": 0, "created_at": "2026-04-25T20:00:11.465Z", "item_total": 64.99, "promotions": [], "updated_at": "2026-04-26T17:29:44.204Z", "customer_id": "cus_01KQ5DE2ZGD5GKGPCKNJ49468C", "completed_at": null, "credit_lines": [], "raw_subtotal": {"value": "84.99", "precision": 20}, "currency_code": "brl", "item_subtotal": 64.99, "raw_tax_total": {"value": "0", "precision": 20}, "discount_total": 0, "item_tax_total": 0, "original_total": 84.99, "raw_item_total": {"value": "64.99", "precision": 20}, "shipping_total": 20, "billing_address": {"id": "caaddr_01KQ5DE30A4BFN59JD1FW0VCY8", "city": "Campo Grande", "phone": "", "company": "", "metadata": null, "province": "", "address_1": "Rua Assaré, 729", "address_2": "", "last_name": "Zanatto", "created_at": "2026-04-26T17:29:44.203Z", "deleted_at": null, "first_name": "Samuel", "updated_at": "2026-04-26T17:29:44.203Z", "customer_id": null, "postal_code": "79070023", "country_code": "br"}, "sales_channel_id": "sc_01KP9XXJRXGGT65H782XD56SVH", "shipping_address": {"id": "caaddr_01KQ5DE30BS0336GB3WVRRM39S", "city": "Campo Grande", "phone": "", "company": "", "metadata": null, "province": "", "address_1": "Rua Assaré, 729", "address_2": "", "last_name": "Zanatto", "created_at": "2026-04-26T17:29:44.203Z", "deleted_at": null, "first_name": "Samuel", "updated_at": "2026-04-26T17:29:44.203Z", "customer_id": null, "postal_code": "79070023", "country_code": "br"}, "shipping_methods": [{"id": "casm_01KQ5EDQZ3M69V2GXV0S5XCG6H", "data": {}, "name": "Envio Padrão", "total": 20, "amount": 20, "cart_id": "cart_01KQ33MVP7KGA11MYKWW38JW88", "metadata": null, "subtotal": 20, "raw_total": {"value": "20", "precision": 20}, "tax_lines": [], "tax_total": 0, "created_at": "2026-04-26T17:47:01.475Z", "deleted_at": null, "raw_amount": {"value": "20", "precision": 20}, "updated_at": "2026-04-26T17:47:01.475Z", "adjustments": [], "description": null, "raw_subtotal": {"value": "20", "precision": 20}, "raw_tax_total": {"value": "0", "precision": 20}, "discount_total": 0, "original_total": 20, "is_tax_inclusive": false, "discount_subtotal": 0, "original_subtotal": 20, "discount_tax_total": 0, "original_tax_total": 0, "raw_discount_total": {"value": "0", "precision": 20}, "raw_original_total": {"value": "20", "precision": 20}, "shipping_option_id": "so_01KP9XXK05TKCGKDGWNEA8GGZZ", "raw_discount_subtotal": {"value": "0", "precision": 20}, "raw_original_subtotal": {"value": "20", "precision": 20}, "raw_discount_tax_total": {"value": "0", "precision": 20}, "raw_original_tax_total": {"value": "0", "precision": 20}}], "raw_item_subtotal": {"value": "64.99", "precision": 20}, "shipping_subtotal": 20, "discount_tax_total": 0, "original_tax_total": 0, "payment_collection": {"id": "pay_col_01KQ5E1DV5PX507CG1HA1NGAW0", "amount": 84.99, "status": "not_paid", "metadata": null, "created_at": "2026-04-26T17:40:17.894Z", "deleted_at": null, "raw_amount": {"value": "84.99", "precision": 20}, "updated_at": "2026-04-26T17:40:17.894Z", "completed_at": null, "currency_code": "brl", "captured_amount": null, "refunded_amount": null, "payment_sessions": [{"id": "payses_01KQ5E1DX0CRM6YEW7JW8MEW5F", "data": {}, "amount": 84.99, "status": "pending", "context": {}, "metadata": {}, "created_at": "2026-04-26T17:40:17.952Z", "deleted_at": null, "raw_amount": {"value": "84.99", "precision": 20}, "updated_at": "2026-04-26T17:40:17.952Z", "provider_id": "pp_system_default", "authorized_at": null, "currency_code": "brl", "payment_collection_id": "pay_col_01KQ5E1DV5PX507CG1HA1NGAW0"}], "authorized_amount": null, "raw_captured_amount": null, "raw_refunded_amount": null, "raw_authorized_amount": null}, "raw_discount_total": {"value": "0", "precision": 20}, "raw_item_tax_total": {"value": "0", "precision": 20}, "raw_original_total": {"value": "84.99", "precision": 20}, "raw_shipping_total": {"value": "20", "precision": 20}, "shipping_tax_total": 0, "original_item_total": 64.99, "raw_shipping_subtotal": {"value": "20", "precision": 20}, "original_item_subtotal": 64.99, "raw_discount_tax_total": {"value": "0", "precision": 20}, "raw_original_tax_total": {"value": "0", "precision": 20}, "raw_shipping_tax_total": {"value": "0", "precision": 20}, "original_item_tax_total": 0, "original_shipping_total": 20, "raw_original_item_total": {"value": "64.99", "precision": 20}, "original_shipping_subtotal": 20, "raw_original_item_subtotal": {"value": "64.99", "precision": 20}, "original_shipping_tax_total": 0, "raw_original_item_tax_total": {"value": "0", "precision": 20}, "raw_original_shipping_total": {"value": "20", "precision": 20}, "raw_original_shipping_subtotal": {"value": "20", "precision": 20}, "raw_original_shipping_tax_total": {"value": "0", "precision": 20}}}}}, "acquire-lock-step": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "compensateInput": {"keys": ["cart_01KQ33MVP7KGA11MYKWW38JW88"]}}}, "use-query-graph-step": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "output": {}, "compensateInput": {}}}, "shipping-options-query": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "output": {"data": [{"id": "so_01KP9XXK05TKCGKDGWNEA8GGZZ", "shipping_profile_id": "sp_01KP9XX3SZ7SG4EJ4HJ2S63AD4"}]}, "compensateInput": {"data": [{"id": "so_01KP9XXK05TKCGKDGWNEA8GGZZ", "shipping_profile_id": "sp_01KP9XX3SZ7SG4EJ4HJ2S63AD4"}]}}}, "validate-cart-payments": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "output": [{"id": "payses_01KQ5E1DX0CRM6YEW7JW8MEW5F", "data": {}, "amount": 84.99, "status": "pending", "context": {}, "metadata": {}, "created_at": "2026-04-26T17:40:17.952Z", "deleted_at": null, "raw_amount": {"value": "84.99", "precision": 20}, "updated_at": "2026-04-26T17:40:17.952Z", "provider_id": "pp_system_default", "authorized_at": null, "currency_code": "brl", "payment_collection_id": "pay_col_01KQ5E1DV5PX507CG1HA1NGAW0"}], "compensateInput": [{"id": "payses_01KQ5E1DX0CRM6YEW7JW8MEW5F", "data": {}, "amount": 84.99, "status": "pending", "context": {}, "metadata": {}, "created_at": "2026-04-26T17:40:17.952Z", "deleted_at": null, "raw_amount": {"value": "84.99", "precision": 20}, "updated_at": "2026-04-26T17:40:17.952Z", "provider_id": "pp_system_default", "authorized_at": null, "currency_code": "brl", "payment_collection_id": "pay_col_01KQ5E1DV5PX507CG1HA1NGAW0"}]}}, "compensate-payment-if-needed": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "output": "payses_01KQ5E1DX0CRM6YEW7JW8MEW5F", "compensateInput": "payses_01KQ5E1DX0CRM6YEW7JW8MEW5F"}}}, "payload": {"id": "cart_01KQ33MVP7KGA11MYKWW38JW88"}, "compensate": {"validate": {}, "acquire-lock-step": {"output": {"__type": "Symbol(WorkflowStepResponse)"}}, "compensate-payment-if-needed": {}}}, "errors": [{"error": {"date": "2026-04-26T17:47:05.868Z", "name": "Error", "type": "invalid_data", "stack": "Error: The cart items require shipping profiles that are not satisfied by the current shipping methods\\n    at Object.<anonymous> (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\core-flows\\\\src\\\\cart\\\\steps\\\\validate-shipping.ts:107:13)\\n    at invoke (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\workflows-sdk\\\\src\\\\utils\\\\composer\\\\helpers\\\\create-step-handler.ts:91:67)\\n    at processTicksAndRejections (node:internal/process/task_queues:105:5)\\n    at async Object.handle.invoke (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\workflows-sdk\\\\src\\\\utils\\\\composer\\\\create-step.ts:381:12)\\n    at async DistributedTransaction.handler (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\orchestration\\\\src\\\\workflow\\\\workflow-manager.ts:214:16)\\n    at async stepHandler (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\orchestration\\\\src\\\\transaction\\\\transaction-orchestrator.ts:1193:14)\\n    at async Promise.allSettled (index 0)\\n    at async promiseAll (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\utils\\\\src\\\\common\\\\promise-all.ts:27:18)\\n    at async TransactionOrchestrator.executeNext (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\orchestration\\\\src\\\\transaction\\\\transaction-orchestrator.ts:1037:7)\\n    at async executeNext (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\orchestration\\\\src\\\\transaction\\\\transaction-orchestrator.ts:1438:14)\\n    at async TransactionOrchestrator.resume (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\orchestration\\\\src\\\\transaction\\\\transaction-orchestrator.ts:1453:5)\\n    at async LocalWorkflow.run (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\orchestration\\\\src\\\\workflow\\\\local-workflow.ts:375:5)\\n    at async originalExecution (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\workflows-sdk\\\\src\\\\helper\\\\workflow-export.ts:144:26)\\n    at async newRun (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\workflows-sdk\\\\src\\\\helper\\\\workflow-export.ts:226:12)\\n    at async Function.exportedWorkflow.run (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\workflows-sdk\\\\src\\\\helper\\\\workflow-export.ts:502:12)\\n    at async WorkflowOrchestratorService.run (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\workflow-engine-inmemory\\\\src\\\\services\\\\workflow-orchestrator.ts:216:17)\\n    at async WorkflowsModuleService.run (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\workflow-engine-inmemory\\\\src\\\\services\\\\workflows-module.ts:188:17)\\n    at async POST (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\medusa\\\\src\\\\api\\\\store\\\\carts\\\\[id]\\\\complete\\\\route.ts:20:43)\\n    at async POST (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\framework\\\\src\\\\http\\\\utils\\\\wrap-handler.ts:27:14)\\n⮑ sat F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\core-flows\\\\dist\\\\cart\\\\workflows\\\\complete-cart.js: [complete-cart -> validate-shipping (invoke)]", "message": "The cart items require shipping profiles that are not satisfied by the current shipping methods", "__isMedusaError": true}, "action": "validate-shipping", "handlerType": "invoke"}]}	reverted	2026-04-26 17:47:05.775	2026-04-26 17:47:05.911	\N	259200	01KQ5EDW59127WN1GYNRX9Y18T
wf_exec_01KQ5EWFN2PF2QJ07GCB2Z3DEH	complete-cart	auto-01KQ5EWFMNM3DH75XF45VTRKYE	{"_v": 0, "runId": "01KQ5EWFMR0S5V3HGYYBVD9G8N", "state": "reverted", "steps": {"_root": {"id": "_root", "next": ["_root.acquire-lock-step"]}, "_root.acquire-lock-step": {"_v": 0, "id": "_root.acquire-lock-step", "next": ["_root.acquire-lock-step.use-query-graph-step", "_root.acquire-lock-step.cart-query"], "uuid": "01KQ5ETMVYGZKSGJF8C49Q64H3", "depth": 1, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777226104501, "compensate": {"state": "reverted", "status": "ok"}, "definition": {"uuid": "01KQ5ETMVYGZKSGJF8C49Q64H3", "store": false, "action": "acquire-lock-step", "noCompensation": false}, "stepFailed": true, "lastAttempt": 1777226104754, "saveResponse": true}, "_root.acquire-lock-step.cart-query": {"_v": 0, "id": "_root.acquire-lock-step.cart-query", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments"], "uuid": "01KQ5ETMVYR6RZWX8SSHCVP6PW", "depth": 2, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777226104503, "compensate": {"state": "reverted", "status": "idle"}, "definition": {"uuid": "01KQ5ETMVYR6RZWX8SSHCVP6PW", "async": false, "store": false, "action": "cart-query", "noCompensation": true, "compensateAsync": false}, "stepFailed": true, "lastAttempt": 1777226104753, "saveResponse": true}, "_root.acquire-lock-step.use-query-graph-step": {"_v": 0, "id": "_root.acquire-lock-step.use-query-graph-step", "next": [], "uuid": "01KQ5ETMVYA6GE6YS1T229YB8G", "depth": 2, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777226104503, "compensate": {"state": "reverted", "status": "idle"}, "definition": {"uuid": "01KQ5ETMVYA6GE6YS1T229YB8G", "store": false, "action": "use-query-graph-step", "noCompensation": true}, "stepFailed": true, "lastAttempt": 1777226104736, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed"], "uuid": "01KQ5ETMVZ1FPDKVTKHCF8QE5H", "depth": 3, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777226104584, "compensate": {"state": "reverted", "status": "idle"}, "definition": {"uuid": "01KQ5ETMVZ1FPDKVTKHCF8QE5H", "store": false, "action": "validate-cart-payments", "noCompensation": true}, "stepFailed": true, "lastAttempt": 1777226104751, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate"], "uuid": "01KQ5ETMVZAFJ4XNPY3ZKFZ8TW", "depth": 4, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777226104590, "compensate": {"state": "reverted", "status": "ok"}, "definition": {"uuid": "01KQ5ETMVZAFJ4XNPY3ZKFZ8TW", "store": false, "action": "compensate-payment-if-needed", "noCompensation": false}, "stepFailed": true, "lastAttempt": 1777226104741, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query"], "uuid": "01KQ5ETMVZ02545E7XD64Z1RH9", "depth": 5, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777226104593, "compensate": {"state": "reverted", "status": "ok"}, "definition": {"uuid": "01KQ5ETMVZ02545E7XD64Z1RH9", "store": false, "action": "validate", "noCompensation": false}, "stepFailed": true, "lastAttempt": 1777226104738, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping"], "uuid": "01KQ5ETMVZ0RSE3DWTJ2JCS0ZJ", "depth": 6, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777226104597, "compensate": {"state": "reverted", "status": "idle"}, "definition": {"uuid": "01KQ5ETMVZ0RSE3DWTJ2JCS0ZJ", "async": false, "store": false, "action": "shipping-options-query", "noCompensation": true, "compensateAsync": false}, "stepFailed": true, "lastAttempt": 1777226104737, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders"], "uuid": "01KQ5ETMW0KWSPGGMJEM1THA13", "depth": 7, "invoke": {"state": "failed", "status": "permanent_failure"}, "attempts": 1, "failures": 0, "startedAt": 1777226104606, "compensate": {"state": "reverted", "status": "idle"}, "definition": {"uuid": "01KQ5ETMW0KWSPGGMJEM1THA13", "store": false, "action": "validate-shipping", "noCompensation": true}, "stepFailed": true, "lastAttempt": 1777226104736, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.create-remote-links", "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.update-carts", "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.reserve-inventory-step", "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.register-usage", "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step"], "uuid": "01KQ5ETMW09SC57XPJXHV2T44Y", "depth": 8, "invoke": {"state": "not_started", "status": "idle"}, "attempts": 0, "failures": 0, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5ETMW09SC57XPJXHV2T44Y", "store": false, "action": "create-orders", "noCompensation": false}, "stepFailed": false, "lastAttempt": null, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.update-carts": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.update-carts", "next": [], "uuid": "01KQ5ETMW0D2Z5M2YPMZ2TF3AW", "depth": 9, "invoke": {"state": "not_started", "status": "idle"}, "attempts": 0, "failures": 0, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5ETMW0D2Z5M2YPMZ2TF3AW", "store": false, "action": "update-carts", "noCompensation": false}, "stepFailed": false, "lastAttempt": null, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.register-usage": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.register-usage", "next": [], "uuid": "01KQ5ETMW0BT66ZTZH34XQGG70", "depth": 9, "invoke": {"state": "not_started", "status": "idle"}, "attempts": 0, "failures": 0, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5ETMW0BT66ZTZH34XQGG70", "store": false, "action": "register-usage", "noCompensation": false}, "stepFailed": false, "lastAttempt": null, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization"], "uuid": "01KQ5ETMW1S7KJ23MYJQHNFW9E", "depth": 9, "invoke": {"state": "not_started", "status": "idle"}, "attempts": 0, "failures": 0, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5ETMW1S7KJ23MYJQHNFW9E", "store": false, "action": "emit-event-step", "noCompensation": false}, "stepFailed": false, "lastAttempt": null, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.create-remote-links": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.create-remote-links", "next": [], "uuid": "01KQ5ETMW0F5KDST047DW72WWZ", "depth": 9, "invoke": {"state": "not_started", "status": "idle"}, "attempts": 0, "failures": 0, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5ETMW0F5KDST047DW72WWZ", "store": false, "action": "create-remote-links", "noCompensation": false}, "stepFailed": false, "lastAttempt": null, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.reserve-inventory-step": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.reserve-inventory-step", "next": [], "uuid": "01KQ5ETMW0SPH90VERVD02GK6X", "depth": 9, "invoke": {"state": "not_started", "status": "idle"}, "attempts": 0, "failures": 0, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5ETMW0SPH90VERVD02GK6X", "store": false, "action": "reserve-inventory-step", "noCompensation": false}, "stepFailed": false, "lastAttempt": null, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step"], "uuid": "01KQ5ETMW1HJ9CH5A7CCFS6V1J", "depth": 10, "invoke": {"state": "not_started", "status": "idle"}, "attempts": 0, "failures": 0, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5ETMW1HJ9CH5A7CCFS6V1J", "store": false, "action": "beforePaymentAuthorization", "noCompensation": false}, "stepFailed": false, "lastAttempt": null, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction"], "uuid": "01KQ5ETMW1G7F3GDQTCQJJ0VMH", "depth": 11, "invoke": {"state": "not_started", "status": "idle"}, "attempts": 0, "failures": 0, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5ETMW1G7F3GDQTCQJJ0VMH", "store": false, "action": "authorize-payment-session-step", "noCompensation": false}, "stepFailed": false, "lastAttempt": null, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction.orderCreated"], "uuid": "01KQ5ETMW1KK6G6MZEZ04CRJP4", "depth": 12, "invoke": {"state": "not_started", "status": "idle"}, "attempts": 0, "failures": 0, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5ETMW1KK6G6MZEZ04CRJP4", "store": false, "action": "add-order-transaction", "noCompensation": false}, "stepFailed": false, "lastAttempt": null, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction.orderCreated": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction.orderCreated", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction.orderCreated.create-order"], "uuid": "01KQ5ETMW1BDB2BMEBFW339TR3", "depth": 13, "invoke": {"state": "not_started", "status": "idle"}, "attempts": 0, "failures": 0, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5ETMW1BDB2BMEBFW339TR3", "store": false, "action": "orderCreated", "noCompensation": false}, "stepFailed": false, "lastAttempt": null, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction.orderCreated.create-order": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction.orderCreated.create-order", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction.orderCreated.create-order.release-lock-step"], "uuid": "01KQ5ETMW1XQHRZGGXDMPSYF85", "depth": 14, "invoke": {"state": "not_started", "status": "idle"}, "attempts": 0, "failures": 0, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5ETMW1XQHRZGGXDMPSYF85", "store": false, "action": "create-order", "noCompensation": true}, "stepFailed": false, "lastAttempt": null, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction.orderCreated.create-order.release-lock-step": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction.orderCreated.create-order.release-lock-step", "next": [], "uuid": "01KQ5ETMW1T1B94S7RABZH7R6E", "depth": 15, "invoke": {"state": "not_started", "status": "idle"}, "attempts": 0, "failures": 0, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5ETMW1T1B94S7RABZH7R6E", "store": false, "action": "release-lock-step", "noCompensation": true}, "stepFailed": false, "lastAttempt": null, "saveResponse": true}}, "modelId": "complete-cart", "options": {"name": "complete-cart", "store": true, "idempotent": false, "retentionTime": 259200}, "metadata": {"sourcePath": "F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\core-flows\\\\dist\\\\cart\\\\workflows\\\\complete-cart.js", "eventGroupId": "01KQ5EWFMNQF365EGN5B44T3DK", "preventReleaseEvents": false}, "startedAt": 1777226104500, "definition": {"next": [{"uuid": "01KQ5ETMVYA6GE6YS1T229YB8G", "action": "use-query-graph-step", "noCompensation": true}, {"next": {"next": {"next": {"next": {"next": {"next": {"next": [{"uuid": "01KQ5ETMW0F5KDST047DW72WWZ", "action": "create-remote-links", "noCompensation": false}, {"uuid": "01KQ5ETMW0D2Z5M2YPMZ2TF3AW", "action": "update-carts", "noCompensation": false}, {"uuid": "01KQ5ETMW0SPH90VERVD02GK6X", "action": "reserve-inventory-step", "noCompensation": false}, {"uuid": "01KQ5ETMW0BT66ZTZH34XQGG70", "action": "register-usage", "noCompensation": false}, {"next": {"next": {"next": {"next": {"next": {"next": {"uuid": "01KQ5ETMW1T1B94S7RABZH7R6E", "action": "release-lock-step", "noCompensation": true}, "uuid": "01KQ5ETMW1XQHRZGGXDMPSYF85", "action": "create-order", "noCompensation": true}, "uuid": "01KQ5ETMW1BDB2BMEBFW339TR3", "action": "orderCreated", "noCompensation": false}, "uuid": "01KQ5ETMW1KK6G6MZEZ04CRJP4", "action": "add-order-transaction", "noCompensation": false}, "uuid": "01KQ5ETMW1G7F3GDQTCQJJ0VMH", "action": "authorize-payment-session-step", "noCompensation": false}, "uuid": "01KQ5ETMW1HJ9CH5A7CCFS6V1J", "action": "beforePaymentAuthorization", "noCompensation": false}, "uuid": "01KQ5ETMW1S7KJ23MYJQHNFW9E", "action": "emit-event-step", "noCompensation": false}], "uuid": "01KQ5ETMW09SC57XPJXHV2T44Y", "action": "create-orders", "noCompensation": false}, "uuid": "01KQ5ETMW0KWSPGGMJEM1THA13", "action": "validate-shipping", "noCompensation": true}, "uuid": "01KQ5ETMVZ0RSE3DWTJ2JCS0ZJ", "async": false, "action": "shipping-options-query", "noCompensation": true, "compensateAsync": false}, "uuid": "01KQ5ETMVZ02545E7XD64Z1RH9", "action": "validate", "noCompensation": false}, "uuid": "01KQ5ETMVZAFJ4XNPY3ZKFZ8TW", "action": "compensate-payment-if-needed", "noCompensation": false}, "uuid": "01KQ5ETMVZ1FPDKVTKHCF8QE5H", "action": "validate-cart-payments", "noCompensation": true}, "uuid": "01KQ5ETMVYR6RZWX8SSHCVP6PW", "async": false, "action": "cart-query", "noCompensation": true, "compensateAsync": false}], "uuid": "01KQ5ETMVYGZKSGJF8C49Q64H3", "action": "acquire-lock-step", "noCompensation": false}, "timedOutAt": null, "hasAsyncSteps": false, "transactionId": "auto-01KQ5EWFMNM3DH75XF45VTRKYE", "hasFailedSteps": false, "hasSkippedSteps": false, "hasWaitingSteps": false, "hasRevertedSteps": true, "hasSkippedOnFailureSteps": false}	{"data": {"invoke": {"validate": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)"}}, "cart-query": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "output": {"data": {"id": "cart_01KQ33MVP7KGA11MYKWW38JW88", "email": "smlzanatto64@gmail.com", "items": [{"id": "cali_01KQ5CWHMTN9T6QFJZX48MS2XA", "title": "Camiseta Oversized Cristo Vive", "total": 64.99, "cart_id": "cart_01KQ33MVP7KGA11MYKWW38JW88", "variant": {"id": "variant_01KQ394S6BNC8QKJXA75HCW84K", "product": {"id": "prod_01KQ394S3SVPRBN5HMMGASG417", "is_giftcard": false}, "product_id": "prod_01KQ394S3SVPRBN5HMMGASG417", "allow_backorder": false, "inventory_items": [{"inventory": {"id": "iitem_01KQ5AJ4C7SNV9TNDF8GZYZYF3", "location_levels": [{"location_id": "sloc_01KP9XXJXJS8TKZ9MTY36N7EK3", "stock_locations": [{"id": "sloc_01KP9XXJXJS8TKZ9MTY36N7EK3", "name": "Estoque Brasil", "sales_channels": [{"id": "sc_01KP9XXJRXGGT65H782XD56SVH", "name": "Default Sales Channel"}]}], "stocked_quantity": 5, "reserved_quantity": 0, "raw_stocked_quantity": {"value": "5", "precision": 20}, "raw_reserved_quantity": {"value": "0", "precision": 20}}], "requires_shipping": true}, "variant_id": "variant_01KQ394S6BNC8QKJXA75HCW84K", "inventory_item_id": "iitem_01KQ5AJ4C7SNV9TNDF8GZYZYF3", "required_quantity": 1}], "manage_inventory": true}, "metadata": {}, "quantity": 1, "subtitle": "G", "subtotal": 64.99, "raw_total": {"value": "64.99", "precision": 20}, "tax_lines": [], "tax_total": 0, "thumbnail": "http://localhost:9000/static/1777152975705-camiseta%20super%20ra%C3%83%C2%A7a%20comprimido.png", "created_at": "2026-04-26T17:20:09.370Z", "deleted_at": null, "product_id": "prod_01KQ394S3SVPRBN5HMMGASG417", "unit_price": 64.99, "updated_at": "2026-04-26T17:20:09.370Z", "variant_id": "variant_01KQ394S6BNC8QKJXA75HCW84K", "adjustments": [], "is_giftcard": false, "variant_sku": null, "product_type": null, "raw_subtotal": {"value": "64.99", "precision": 20}, "product_title": "Camiseta Oversized Cristo Vive", "raw_tax_total": {"value": "0", "precision": 20}, "variant_title": "G", "discount_total": 0, "original_total": 64.99, "product_handle": "camiseta-cristo-vive", "raw_unit_price": {"value": "64.99", "precision": 20}, "is_custom_price": false, "is_discountable": false, "product_type_id": null, "variant_barcode": null, "is_tax_inclusive": false, "product_subtitle": "", "discount_subtotal": 0, "original_subtotal": 64.99, "requires_shipping": true, "discount_tax_total": 0, "original_tax_total": 0, "product_collection": "Camisetas", "raw_discount_total": {"value": "0", "precision": 20}, "raw_original_total": {"value": "64.99", "precision": 20}, "product_description": "", "compare_at_unit_price": null, "raw_discount_subtotal": {"value": "0", "precision": 20}, "raw_original_subtotal": {"value": "64.99", "precision": 20}, "variant_option_values": null, "raw_discount_tax_total": {"value": "0", "precision": 20}, "raw_original_tax_total": {"value": "0", "precision": 20}, "raw_compare_at_unit_price": null}], "total": 84.99, "locale": null, "region": {"id": "reg_01KPA20S5NSBGW8AD90T7HEH4K", "name": "Brazil", "metadata": null, "created_at": "2026-04-16T02:30:44.150Z", "deleted_at": null, "updated_at": "2026-04-16T02:30:44.150Z", "currency_code": "brl", "automatic_taxes": true}, "customer": {"id": "cus_01KQ5DE2ZGD5GKGPCKNJ49468C", "email": "smlzanatto64@gmail.com", "phone": null, "metadata": null, "last_name": null, "created_at": "2026-04-26T17:29:44.177Z", "created_by": null, "deleted_at": null, "first_name": null, "updated_at": "2026-04-26T17:29:44.177Z", "has_account": false, "company_name": null}, "metadata": null, "subtotal": 84.99, "raw_total": {"value": "84.99", "precision": 20}, "region_id": "reg_01KPA20S5NSBGW8AD90T7HEH4K", "tax_total": 0, "created_at": "2026-04-25T20:00:11.465Z", "item_total": 64.99, "promotions": [], "updated_at": "2026-04-26T17:29:44.204Z", "customer_id": "cus_01KQ5DE2ZGD5GKGPCKNJ49468C", "completed_at": null, "credit_lines": [], "raw_subtotal": {"value": "84.99", "precision": 20}, "currency_code": "brl", "item_subtotal": 64.99, "raw_tax_total": {"value": "0", "precision": 20}, "discount_total": 0, "item_tax_total": 0, "original_total": 84.99, "raw_item_total": {"value": "64.99", "precision": 20}, "shipping_total": 20, "billing_address": {"id": "caaddr_01KQ5DE30A4BFN59JD1FW0VCY8", "city": "Campo Grande", "phone": "", "company": "", "metadata": null, "province": "", "address_1": "Rua Assaré, 729", "address_2": "", "last_name": "Zanatto", "created_at": "2026-04-26T17:29:44.203Z", "deleted_at": null, "first_name": "Samuel", "updated_at": "2026-04-26T17:29:44.203Z", "customer_id": null, "postal_code": "79070023", "country_code": "br"}, "sales_channel_id": "sc_01KP9XXJRXGGT65H782XD56SVH", "shipping_address": {"id": "caaddr_01KQ5DE30BS0336GB3WVRRM39S", "city": "Campo Grande", "phone": "", "company": "", "metadata": null, "province": "", "address_1": "Rua Assaré, 729", "address_2": "", "last_name": "Zanatto", "created_at": "2026-04-26T17:29:44.203Z", "deleted_at": null, "first_name": "Samuel", "updated_at": "2026-04-26T17:29:44.203Z", "customer_id": null, "postal_code": "79070023", "country_code": "br"}, "shipping_methods": [{"id": "casm_01KQ5EDQZ3M69V2GXV0S5XCG6H", "data": {}, "name": "Envio Padrão", "total": 20, "amount": 20, "cart_id": "cart_01KQ33MVP7KGA11MYKWW38JW88", "metadata": null, "subtotal": 20, "raw_total": {"value": "20", "precision": 20}, "tax_lines": [], "tax_total": 0, "created_at": "2026-04-26T17:47:01.475Z", "deleted_at": null, "raw_amount": {"value": "20", "precision": 20}, "updated_at": "2026-04-26T17:47:01.475Z", "adjustments": [], "description": null, "raw_subtotal": {"value": "20", "precision": 20}, "raw_tax_total": {"value": "0", "precision": 20}, "discount_total": 0, "original_total": 20, "is_tax_inclusive": false, "discount_subtotal": 0, "original_subtotal": 20, "discount_tax_total": 0, "original_tax_total": 0, "raw_discount_total": {"value": "0", "precision": 20}, "raw_original_total": {"value": "20", "precision": 20}, "shipping_option_id": "so_01KP9XXK05TKCGKDGWNEA8GGZZ", "raw_discount_subtotal": {"value": "0", "precision": 20}, "raw_original_subtotal": {"value": "20", "precision": 20}, "raw_discount_tax_total": {"value": "0", "precision": 20}, "raw_original_tax_total": {"value": "0", "precision": 20}}], "raw_item_subtotal": {"value": "64.99", "precision": 20}, "shipping_subtotal": 20, "discount_tax_total": 0, "original_tax_total": 0, "payment_collection": {"id": "pay_col_01KQ5E1DV5PX507CG1HA1NGAW0", "amount": 84.99, "status": "not_paid", "metadata": null, "created_at": "2026-04-26T17:40:17.894Z", "deleted_at": null, "raw_amount": {"value": "84.99", "precision": 20}, "updated_at": "2026-04-26T17:40:17.894Z", "completed_at": null, "currency_code": "brl", "captured_amount": null, "refunded_amount": null, "payment_sessions": [{"id": "payses_01KQ5E1DX0CRM6YEW7JW8MEW5F", "data": {}, "amount": 84.99, "status": "pending", "context": {}, "metadata": {}, "created_at": "2026-04-26T17:40:17.952Z", "deleted_at": null, "raw_amount": {"value": "84.99", "precision": 20}, "updated_at": "2026-04-26T17:40:17.952Z", "provider_id": "pp_system_default", "authorized_at": null, "currency_code": "brl", "payment_collection_id": "pay_col_01KQ5E1DV5PX507CG1HA1NGAW0"}], "authorized_amount": null, "raw_captured_amount": null, "raw_refunded_amount": null, "raw_authorized_amount": null}, "raw_discount_total": {"value": "0", "precision": 20}, "raw_item_tax_total": {"value": "0", "precision": 20}, "raw_original_total": {"value": "84.99", "precision": 20}, "raw_shipping_total": {"value": "20", "precision": 20}, "shipping_tax_total": 0, "original_item_total": 64.99, "raw_shipping_subtotal": {"value": "20", "precision": 20}, "original_item_subtotal": 64.99, "raw_discount_tax_total": {"value": "0", "precision": 20}, "raw_original_tax_total": {"value": "0", "precision": 20}, "raw_shipping_tax_total": {"value": "0", "precision": 20}, "original_item_tax_total": 0, "original_shipping_total": 20, "raw_original_item_total": {"value": "64.99", "precision": 20}, "original_shipping_subtotal": 20, "raw_original_item_subtotal": {"value": "64.99", "precision": 20}, "original_shipping_tax_total": 0, "raw_original_item_tax_total": {"value": "0", "precision": 20}, "raw_original_shipping_total": {"value": "20", "precision": 20}, "raw_original_shipping_subtotal": {"value": "20", "precision": 20}, "raw_original_shipping_tax_total": {"value": "0", "precision": 20}}}, "compensateInput": {"data": {"id": "cart_01KQ33MVP7KGA11MYKWW38JW88", "email": "smlzanatto64@gmail.com", "items": [{"id": "cali_01KQ5CWHMTN9T6QFJZX48MS2XA", "title": "Camiseta Oversized Cristo Vive", "total": 64.99, "cart_id": "cart_01KQ33MVP7KGA11MYKWW38JW88", "variant": {"id": "variant_01KQ394S6BNC8QKJXA75HCW84K", "product": {"id": "prod_01KQ394S3SVPRBN5HMMGASG417", "is_giftcard": false}, "product_id": "prod_01KQ394S3SVPRBN5HMMGASG417", "allow_backorder": false, "inventory_items": [{"inventory": {"id": "iitem_01KQ5AJ4C7SNV9TNDF8GZYZYF3", "location_levels": [{"location_id": "sloc_01KP9XXJXJS8TKZ9MTY36N7EK3", "stock_locations": [{"id": "sloc_01KP9XXJXJS8TKZ9MTY36N7EK3", "name": "Estoque Brasil", "sales_channels": [{"id": "sc_01KP9XXJRXGGT65H782XD56SVH", "name": "Default Sales Channel"}]}], "stocked_quantity": 5, "reserved_quantity": 0, "raw_stocked_quantity": {"value": "5", "precision": 20}, "raw_reserved_quantity": {"value": "0", "precision": 20}}], "requires_shipping": true}, "variant_id": "variant_01KQ394S6BNC8QKJXA75HCW84K", "inventory_item_id": "iitem_01KQ5AJ4C7SNV9TNDF8GZYZYF3", "required_quantity": 1}], "manage_inventory": true}, "metadata": {}, "quantity": 1, "subtitle": "G", "subtotal": 64.99, "raw_total": {"value": "64.99", "precision": 20}, "tax_lines": [], "tax_total": 0, "thumbnail": "http://localhost:9000/static/1777152975705-camiseta%20super%20ra%C3%83%C2%A7a%20comprimido.png", "created_at": "2026-04-26T17:20:09.370Z", "deleted_at": null, "product_id": "prod_01KQ394S3SVPRBN5HMMGASG417", "unit_price": 64.99, "updated_at": "2026-04-26T17:20:09.370Z", "variant_id": "variant_01KQ394S6BNC8QKJXA75HCW84K", "adjustments": [], "is_giftcard": false, "variant_sku": null, "product_type": null, "raw_subtotal": {"value": "64.99", "precision": 20}, "product_title": "Camiseta Oversized Cristo Vive", "raw_tax_total": {"value": "0", "precision": 20}, "variant_title": "G", "discount_total": 0, "original_total": 64.99, "product_handle": "camiseta-cristo-vive", "raw_unit_price": {"value": "64.99", "precision": 20}, "is_custom_price": false, "is_discountable": false, "product_type_id": null, "variant_barcode": null, "is_tax_inclusive": false, "product_subtitle": "", "discount_subtotal": 0, "original_subtotal": 64.99, "requires_shipping": true, "discount_tax_total": 0, "original_tax_total": 0, "product_collection": "Camisetas", "raw_discount_total": {"value": "0", "precision": 20}, "raw_original_total": {"value": "64.99", "precision": 20}, "product_description": "", "compare_at_unit_price": null, "raw_discount_subtotal": {"value": "0", "precision": 20}, "raw_original_subtotal": {"value": "64.99", "precision": 20}, "variant_option_values": null, "raw_discount_tax_total": {"value": "0", "precision": 20}, "raw_original_tax_total": {"value": "0", "precision": 20}, "raw_compare_at_unit_price": null}], "total": 84.99, "locale": null, "region": {"id": "reg_01KPA20S5NSBGW8AD90T7HEH4K", "name": "Brazil", "metadata": null, "created_at": "2026-04-16T02:30:44.150Z", "deleted_at": null, "updated_at": "2026-04-16T02:30:44.150Z", "currency_code": "brl", "automatic_taxes": true}, "customer": {"id": "cus_01KQ5DE2ZGD5GKGPCKNJ49468C", "email": "smlzanatto64@gmail.com", "phone": null, "metadata": null, "last_name": null, "created_at": "2026-04-26T17:29:44.177Z", "created_by": null, "deleted_at": null, "first_name": null, "updated_at": "2026-04-26T17:29:44.177Z", "has_account": false, "company_name": null}, "metadata": null, "subtotal": 84.99, "raw_total": {"value": "84.99", "precision": 20}, "region_id": "reg_01KPA20S5NSBGW8AD90T7HEH4K", "tax_total": 0, "created_at": "2026-04-25T20:00:11.465Z", "item_total": 64.99, "promotions": [], "updated_at": "2026-04-26T17:29:44.204Z", "customer_id": "cus_01KQ5DE2ZGD5GKGPCKNJ49468C", "completed_at": null, "credit_lines": [], "raw_subtotal": {"value": "84.99", "precision": 20}, "currency_code": "brl", "item_subtotal": 64.99, "raw_tax_total": {"value": "0", "precision": 20}, "discount_total": 0, "item_tax_total": 0, "original_total": 84.99, "raw_item_total": {"value": "64.99", "precision": 20}, "shipping_total": 20, "billing_address": {"id": "caaddr_01KQ5DE30A4BFN59JD1FW0VCY8", "city": "Campo Grande", "phone": "", "company": "", "metadata": null, "province": "", "address_1": "Rua Assaré, 729", "address_2": "", "last_name": "Zanatto", "created_at": "2026-04-26T17:29:44.203Z", "deleted_at": null, "first_name": "Samuel", "updated_at": "2026-04-26T17:29:44.203Z", "customer_id": null, "postal_code": "79070023", "country_code": "br"}, "sales_channel_id": "sc_01KP9XXJRXGGT65H782XD56SVH", "shipping_address": {"id": "caaddr_01KQ5DE30BS0336GB3WVRRM39S", "city": "Campo Grande", "phone": "", "company": "", "metadata": null, "province": "", "address_1": "Rua Assaré, 729", "address_2": "", "last_name": "Zanatto", "created_at": "2026-04-26T17:29:44.203Z", "deleted_at": null, "first_name": "Samuel", "updated_at": "2026-04-26T17:29:44.203Z", "customer_id": null, "postal_code": "79070023", "country_code": "br"}, "shipping_methods": [{"id": "casm_01KQ5EDQZ3M69V2GXV0S5XCG6H", "data": {}, "name": "Envio Padrão", "total": 20, "amount": 20, "cart_id": "cart_01KQ33MVP7KGA11MYKWW38JW88", "metadata": null, "subtotal": 20, "raw_total": {"value": "20", "precision": 20}, "tax_lines": [], "tax_total": 0, "created_at": "2026-04-26T17:47:01.475Z", "deleted_at": null, "raw_amount": {"value": "20", "precision": 20}, "updated_at": "2026-04-26T17:47:01.475Z", "adjustments": [], "description": null, "raw_subtotal": {"value": "20", "precision": 20}, "raw_tax_total": {"value": "0", "precision": 20}, "discount_total": 0, "original_total": 20, "is_tax_inclusive": false, "discount_subtotal": 0, "original_subtotal": 20, "discount_tax_total": 0, "original_tax_total": 0, "raw_discount_total": {"value": "0", "precision": 20}, "raw_original_total": {"value": "20", "precision": 20}, "shipping_option_id": "so_01KP9XXK05TKCGKDGWNEA8GGZZ", "raw_discount_subtotal": {"value": "0", "precision": 20}, "raw_original_subtotal": {"value": "20", "precision": 20}, "raw_discount_tax_total": {"value": "0", "precision": 20}, "raw_original_tax_total": {"value": "0", "precision": 20}}], "raw_item_subtotal": {"value": "64.99", "precision": 20}, "shipping_subtotal": 20, "discount_tax_total": 0, "original_tax_total": 0, "payment_collection": {"id": "pay_col_01KQ5E1DV5PX507CG1HA1NGAW0", "amount": 84.99, "status": "not_paid", "metadata": null, "created_at": "2026-04-26T17:40:17.894Z", "deleted_at": null, "raw_amount": {"value": "84.99", "precision": 20}, "updated_at": "2026-04-26T17:40:17.894Z", "completed_at": null, "currency_code": "brl", "captured_amount": null, "refunded_amount": null, "payment_sessions": [{"id": "payses_01KQ5E1DX0CRM6YEW7JW8MEW5F", "data": {}, "amount": 84.99, "status": "pending", "context": {}, "metadata": {}, "created_at": "2026-04-26T17:40:17.952Z", "deleted_at": null, "raw_amount": {"value": "84.99", "precision": 20}, "updated_at": "2026-04-26T17:40:17.952Z", "provider_id": "pp_system_default", "authorized_at": null, "currency_code": "brl", "payment_collection_id": "pay_col_01KQ5E1DV5PX507CG1HA1NGAW0"}], "authorized_amount": null, "raw_captured_amount": null, "raw_refunded_amount": null, "raw_authorized_amount": null}, "raw_discount_total": {"value": "0", "precision": 20}, "raw_item_tax_total": {"value": "0", "precision": 20}, "raw_original_total": {"value": "84.99", "precision": 20}, "raw_shipping_total": {"value": "20", "precision": 20}, "shipping_tax_total": 0, "original_item_total": 64.99, "raw_shipping_subtotal": {"value": "20", "precision": 20}, "original_item_subtotal": 64.99, "raw_discount_tax_total": {"value": "0", "precision": 20}, "raw_original_tax_total": {"value": "0", "precision": 20}, "raw_shipping_tax_total": {"value": "0", "precision": 20}, "original_item_tax_total": 0, "original_shipping_total": 20, "raw_original_item_total": {"value": "64.99", "precision": 20}, "original_shipping_subtotal": 20, "raw_original_item_subtotal": {"value": "64.99", "precision": 20}, "original_shipping_tax_total": 0, "raw_original_item_tax_total": {"value": "0", "precision": 20}, "raw_original_shipping_total": {"value": "20", "precision": 20}, "raw_original_shipping_subtotal": {"value": "20", "precision": 20}, "raw_original_shipping_tax_total": {"value": "0", "precision": 20}}}}}, "acquire-lock-step": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "compensateInput": {"keys": ["cart_01KQ33MVP7KGA11MYKWW38JW88"]}}}, "use-query-graph-step": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "output": {}, "compensateInput": {}}}, "shipping-options-query": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "output": {"data": [{"id": "so_01KP9XXK05TKCGKDGWNEA8GGZZ", "shipping_profile_id": "sp_01KP9XX3SZ7SG4EJ4HJ2S63AD4"}]}, "compensateInput": {"data": [{"id": "so_01KP9XXK05TKCGKDGWNEA8GGZZ", "shipping_profile_id": "sp_01KP9XX3SZ7SG4EJ4HJ2S63AD4"}]}}}, "validate-cart-payments": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "output": [{"id": "payses_01KQ5E1DX0CRM6YEW7JW8MEW5F", "data": {}, "amount": 84.99, "status": "pending", "context": {}, "metadata": {}, "created_at": "2026-04-26T17:40:17.952Z", "deleted_at": null, "raw_amount": {"value": "84.99", "precision": 20}, "updated_at": "2026-04-26T17:40:17.952Z", "provider_id": "pp_system_default", "authorized_at": null, "currency_code": "brl", "payment_collection_id": "pay_col_01KQ5E1DV5PX507CG1HA1NGAW0"}], "compensateInput": [{"id": "payses_01KQ5E1DX0CRM6YEW7JW8MEW5F", "data": {}, "amount": 84.99, "status": "pending", "context": {}, "metadata": {}, "created_at": "2026-04-26T17:40:17.952Z", "deleted_at": null, "raw_amount": {"value": "84.99", "precision": 20}, "updated_at": "2026-04-26T17:40:17.952Z", "provider_id": "pp_system_default", "authorized_at": null, "currency_code": "brl", "payment_collection_id": "pay_col_01KQ5E1DV5PX507CG1HA1NGAW0"}]}}, "compensate-payment-if-needed": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "output": "payses_01KQ5E1DX0CRM6YEW7JW8MEW5F", "compensateInput": "payses_01KQ5E1DX0CRM6YEW7JW8MEW5F"}}}, "payload": {"id": "cart_01KQ33MVP7KGA11MYKWW38JW88"}, "compensate": {"validate": {}, "acquire-lock-step": {"output": {"__type": "Symbol(WorkflowStepResponse)"}}, "compensate-payment-if-needed": {}}}, "errors": [{"error": {"date": "2026-04-26T17:55:04.609Z", "name": "Error", "type": "invalid_data", "stack": "Error: The cart items require shipping profiles that are not satisfied by the current shipping methods\\n    at Object.<anonymous> (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\core-flows\\\\src\\\\cart\\\\steps\\\\validate-shipping.ts:107:13)\\n    at invoke (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\workflows-sdk\\\\src\\\\utils\\\\composer\\\\helpers\\\\create-step-handler.ts:91:67)\\n    at processTicksAndRejections (node:internal/process/task_queues:105:5)\\n    at async Object.handle.invoke (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\workflows-sdk\\\\src\\\\utils\\\\composer\\\\create-step.ts:381:12)\\n    at async DistributedTransaction.handler (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\orchestration\\\\src\\\\workflow\\\\workflow-manager.ts:214:16)\\n    at async stepHandler (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\orchestration\\\\src\\\\transaction\\\\transaction-orchestrator.ts:1193:14)\\n    at async Promise.allSettled (index 0)\\n    at async promiseAll (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\utils\\\\src\\\\common\\\\promise-all.ts:27:18)\\n    at async TransactionOrchestrator.executeNext (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\orchestration\\\\src\\\\transaction\\\\transaction-orchestrator.ts:1037:7)\\n    at async executeNext (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\orchestration\\\\src\\\\transaction\\\\transaction-orchestrator.ts:1438:14)\\n    at async TransactionOrchestrator.resume (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\orchestration\\\\src\\\\transaction\\\\transaction-orchestrator.ts:1453:5)\\n    at async LocalWorkflow.run (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\orchestration\\\\src\\\\workflow\\\\local-workflow.ts:375:5)\\n    at async originalExecution (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\workflows-sdk\\\\src\\\\helper\\\\workflow-export.ts:144:26)\\n    at async newRun (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\workflows-sdk\\\\src\\\\helper\\\\workflow-export.ts:226:12)\\n    at async Function.exportedWorkflow.run (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\workflows-sdk\\\\src\\\\helper\\\\workflow-export.ts:502:12)\\n    at async WorkflowOrchestratorService.run (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\workflow-engine-inmemory\\\\src\\\\services\\\\workflow-orchestrator.ts:216:17)\\n    at async WorkflowsModuleService.run (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\workflow-engine-inmemory\\\\src\\\\services\\\\workflows-module.ts:188:17)\\n    at async POST (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\medusa\\\\src\\\\api\\\\store\\\\carts\\\\[id]\\\\complete\\\\route.ts:20:43)\\n    at async POST (F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\framework\\\\src\\\\http\\\\utils\\\\wrap-handler.ts:27:14)\\n⮑ sat F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\core-flows\\\\dist\\\\cart\\\\workflows\\\\complete-cart.js: [complete-cart -> validate-shipping (invoke)]", "message": "The cart items require shipping profiles that are not satisfied by the current shipping methods", "__isMedusaError": true}, "action": "validate-shipping", "handlerType": "invoke"}]}	reverted	2026-04-26 17:55:04.483	2026-04-26 17:55:04.764	\N	259200	01KQ5EWFMR0S5V3HGYYBVD9G8N
wf_exec_01KQ5G89CG7CJR6SDH8GPRW77Q	complete-cart	auto-01KQ5G89C7K8M4Y2QP9GDDQ109	{"_v": 0, "runId": "01KQ5G89CAV179B62ZA2XG20EK", "state": "done", "steps": {"_root": {"id": "_root", "next": ["_root.acquire-lock-step"]}, "_root.acquire-lock-step": {"_v": 0, "id": "_root.acquire-lock-step", "next": ["_root.acquire-lock-step.use-query-graph-step", "_root.acquire-lock-step.cart-query"], "uuid": "01KQ5ETMVYGZKSGJF8C49Q64H3", "depth": 1, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777227539861, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5ETMVYGZKSGJF8C49Q64H3", "store": false, "action": "acquire-lock-step", "noCompensation": false}, "stepFailed": false, "lastAttempt": 1777227539861, "saveResponse": true}, "_root.acquire-lock-step.cart-query": {"_v": 0, "id": "_root.acquire-lock-step.cart-query", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments"], "uuid": "01KQ5ETMVYR6RZWX8SSHCVP6PW", "depth": 2, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777227539863, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5ETMVYR6RZWX8SSHCVP6PW", "async": false, "store": false, "action": "cart-query", "noCompensation": true, "compensateAsync": false}, "stepFailed": false, "lastAttempt": 1777227539863, "saveResponse": true}, "_root.acquire-lock-step.use-query-graph-step": {"_v": 0, "id": "_root.acquire-lock-step.use-query-graph-step", "next": [], "uuid": "01KQ5ETMVYA6GE6YS1T229YB8G", "depth": 2, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777227539863, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5ETMVYA6GE6YS1T229YB8G", "store": false, "action": "use-query-graph-step", "noCompensation": true}, "stepFailed": false, "lastAttempt": 1777227539863, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed"], "uuid": "01KQ5ETMVZ1FPDKVTKHCF8QE5H", "depth": 3, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777227539943, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5ETMVZ1FPDKVTKHCF8QE5H", "store": false, "action": "validate-cart-payments", "noCompensation": true}, "stepFailed": false, "lastAttempt": 1777227539943, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate"], "uuid": "01KQ5ETMVZAFJ4XNPY3ZKFZ8TW", "depth": 4, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777227539947, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5ETMVZAFJ4XNPY3ZKFZ8TW", "store": false, "action": "compensate-payment-if-needed", "noCompensation": false}, "stepFailed": false, "lastAttempt": 1777227539947, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query"], "uuid": "01KQ5ETMVZ02545E7XD64Z1RH9", "depth": 5, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777227539952, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5ETMVZ02545E7XD64Z1RH9", "store": false, "action": "validate", "noCompensation": false}, "stepFailed": false, "lastAttempt": 1777227539952, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping"], "uuid": "01KQ5ETMVZ0RSE3DWTJ2JCS0ZJ", "depth": 6, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777227539957, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5ETMVZ0RSE3DWTJ2JCS0ZJ", "async": false, "store": false, "action": "shipping-options-query", "noCompensation": true, "compensateAsync": false}, "stepFailed": false, "lastAttempt": 1777227539957, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders"], "uuid": "01KQ5ETMW0KWSPGGMJEM1THA13", "depth": 7, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777227539966, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5ETMW0KWSPGGMJEM1THA13", "store": false, "action": "validate-shipping", "noCompensation": true}, "stepFailed": false, "lastAttempt": 1777227539966, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.create-remote-links", "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.update-carts", "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.reserve-inventory-step", "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.register-usage", "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step"], "uuid": "01KQ5ETMW09SC57XPJXHV2T44Y", "depth": 8, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777227539968, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5ETMW09SC57XPJXHV2T44Y", "store": false, "action": "create-orders", "noCompensation": false}, "stepFailed": false, "lastAttempt": 1777227539968, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.update-carts": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.update-carts", "next": [], "uuid": "01KQ5ETMW0D2Z5M2YPMZ2TF3AW", "depth": 9, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777227540098, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5ETMW0D2Z5M2YPMZ2TF3AW", "store": false, "action": "update-carts", "noCompensation": false}, "stepFailed": false, "lastAttempt": 1777227540098, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.register-usage": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.register-usage", "next": [], "uuid": "01KQ5ETMW0BT66ZTZH34XQGG70", "depth": 9, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777227540098, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5ETMW0BT66ZTZH34XQGG70", "store": false, "action": "register-usage", "noCompensation": false}, "stepFailed": false, "lastAttempt": 1777227540098, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization"], "uuid": "01KQ5ETMW1S7KJ23MYJQHNFW9E", "depth": 9, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777227540098, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5ETMW1S7KJ23MYJQHNFW9E", "store": false, "action": "emit-event-step", "noCompensation": false}, "stepFailed": false, "lastAttempt": 1777227540098, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.create-remote-links": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.create-remote-links", "next": [], "uuid": "01KQ5ETMW0F5KDST047DW72WWZ", "depth": 9, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777227540098, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5ETMW0F5KDST047DW72WWZ", "store": false, "action": "create-remote-links", "noCompensation": false}, "stepFailed": false, "lastAttempt": 1777227540098, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.reserve-inventory-step": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.reserve-inventory-step", "next": [], "uuid": "01KQ5ETMW0SPH90VERVD02GK6X", "depth": 9, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777227540098, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5ETMW0SPH90VERVD02GK6X", "store": false, "action": "reserve-inventory-step", "noCompensation": false}, "stepFailed": false, "lastAttempt": 1777227540098, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step"], "uuid": "01KQ5ETMW1HJ9CH5A7CCFS6V1J", "depth": 10, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777227540155, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5ETMW1HJ9CH5A7CCFS6V1J", "store": false, "action": "beforePaymentAuthorization", "noCompensation": false}, "stepFailed": false, "lastAttempt": 1777227540155, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction"], "uuid": "01KQ5ETMW1G7F3GDQTCQJJ0VMH", "depth": 11, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777227540159, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5ETMW1G7F3GDQTCQJJ0VMH", "store": false, "action": "authorize-payment-session-step", "noCompensation": false}, "stepFailed": false, "lastAttempt": 1777227540159, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction.orderCreated"], "uuid": "01KQ5ETMW1KK6G6MZEZ04CRJP4", "depth": 12, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777227540213, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5ETMW1KK6G6MZEZ04CRJP4", "store": false, "action": "add-order-transaction", "noCompensation": false}, "stepFailed": false, "lastAttempt": 1777227540213, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction.orderCreated": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction.orderCreated", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction.orderCreated.create-order"], "uuid": "01KQ5ETMW1BDB2BMEBFW339TR3", "depth": 13, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777227540216, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5ETMW1BDB2BMEBFW339TR3", "store": false, "action": "orderCreated", "noCompensation": false}, "stepFailed": false, "lastAttempt": 1777227540216, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction.orderCreated.create-order": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction.orderCreated.create-order", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction.orderCreated.create-order.release-lock-step"], "uuid": "01KQ5ETMW1XQHRZGGXDMPSYF85", "depth": 14, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777227540219, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5ETMW1XQHRZGGXDMPSYF85", "store": false, "action": "create-order", "noCompensation": true}, "stepFailed": false, "lastAttempt": 1777227540219, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction.orderCreated.create-order.release-lock-step": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction.orderCreated.create-order.release-lock-step", "next": [], "uuid": "01KQ5ETMW1T1B94S7RABZH7R6E", "depth": 15, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777227540222, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5ETMW1T1B94S7RABZH7R6E", "store": false, "action": "release-lock-step", "noCompensation": true}, "stepFailed": false, "lastAttempt": 1777227540222, "saveResponse": true}}, "modelId": "complete-cart", "options": {"name": "complete-cart", "store": true, "idempotent": false, "retentionTime": 259200}, "metadata": {"sourcePath": "F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\core-flows\\\\dist\\\\cart\\\\workflows\\\\complete-cart.js", "eventGroupId": "01KQ5G89C73EXJPEYD27AY2WMW", "preventReleaseEvents": false}, "startedAt": 1777227539861, "definition": {"next": [{"uuid": "01KQ5ETMVYA6GE6YS1T229YB8G", "action": "use-query-graph-step", "noCompensation": true}, {"next": {"next": {"next": {"next": {"next": {"next": {"next": [{"uuid": "01KQ5ETMW0F5KDST047DW72WWZ", "action": "create-remote-links", "noCompensation": false}, {"uuid": "01KQ5ETMW0D2Z5M2YPMZ2TF3AW", "action": "update-carts", "noCompensation": false}, {"uuid": "01KQ5ETMW0SPH90VERVD02GK6X", "action": "reserve-inventory-step", "noCompensation": false}, {"uuid": "01KQ5ETMW0BT66ZTZH34XQGG70", "action": "register-usage", "noCompensation": false}, {"next": {"next": {"next": {"next": {"next": {"next": {"uuid": "01KQ5ETMW1T1B94S7RABZH7R6E", "action": "release-lock-step", "noCompensation": true}, "uuid": "01KQ5ETMW1XQHRZGGXDMPSYF85", "action": "create-order", "noCompensation": true}, "uuid": "01KQ5ETMW1BDB2BMEBFW339TR3", "action": "orderCreated", "noCompensation": false}, "uuid": "01KQ5ETMW1KK6G6MZEZ04CRJP4", "action": "add-order-transaction", "noCompensation": false}, "uuid": "01KQ5ETMW1G7F3GDQTCQJJ0VMH", "action": "authorize-payment-session-step", "noCompensation": false}, "uuid": "01KQ5ETMW1HJ9CH5A7CCFS6V1J", "action": "beforePaymentAuthorization", "noCompensation": false}, "uuid": "01KQ5ETMW1S7KJ23MYJQHNFW9E", "action": "emit-event-step", "noCompensation": false}], "uuid": "01KQ5ETMW09SC57XPJXHV2T44Y", "action": "create-orders", "noCompensation": false}, "uuid": "01KQ5ETMW0KWSPGGMJEM1THA13", "action": "validate-shipping", "noCompensation": true}, "uuid": "01KQ5ETMVZ0RSE3DWTJ2JCS0ZJ", "async": false, "action": "shipping-options-query", "noCompensation": true, "compensateAsync": false}, "uuid": "01KQ5ETMVZ02545E7XD64Z1RH9", "action": "validate", "noCompensation": false}, "uuid": "01KQ5ETMVZAFJ4XNPY3ZKFZ8TW", "action": "compensate-payment-if-needed", "noCompensation": false}, "uuid": "01KQ5ETMVZ1FPDKVTKHCF8QE5H", "action": "validate-cart-payments", "noCompensation": true}, "uuid": "01KQ5ETMVYR6RZWX8SSHCVP6PW", "async": false, "action": "cart-query", "noCompensation": true, "compensateAsync": false}], "uuid": "01KQ5ETMVYGZKSGJF8C49Q64H3", "action": "acquire-lock-step", "noCompensation": false}, "timedOutAt": null, "hasAsyncSteps": false, "transactionId": "auto-01KQ5G89C7K8M4Y2QP9GDDQ109", "hasFailedSteps": false, "hasSkippedSteps": false, "hasWaitingSteps": false, "hasRevertedSteps": false, "hasSkippedOnFailureSteps": false}	{"data": {"invoke": {"validate": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)"}}, "cart-query": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "output": {"data": {"id": "cart_01KQ33MVP7KGA11MYKWW38JW88", "email": "smlzanatto64@gmail.com", "items": [{"id": "cali_01KQ5CWHMTN9T6QFJZX48MS2XA", "title": "Camiseta Oversized Cristo Vive", "total": 64.99, "cart_id": "cart_01KQ33MVP7KGA11MYKWW38JW88", "variant": {"id": "variant_01KQ394S6BNC8QKJXA75HCW84K", "product": {"id": "prod_01KQ394S3SVPRBN5HMMGASG417", "is_giftcard": false, "shipping_profile": {"id": "sp_01KP9XX3SZ7SG4EJ4HJ2S63AD4"}}, "product_id": "prod_01KQ394S3SVPRBN5HMMGASG417", "allow_backorder": false, "inventory_items": [{"inventory": {"id": "iitem_01KQ5AJ4C7SNV9TNDF8GZYZYF3", "location_levels": [{"location_id": "sloc_01KP9XXJXJS8TKZ9MTY36N7EK3", "stock_locations": [{"id": "sloc_01KP9XXJXJS8TKZ9MTY36N7EK3", "name": "Estoque Brasil", "sales_channels": [{"id": "sc_01KP9XXJRXGGT65H782XD56SVH", "name": "Default Sales Channel"}]}], "stocked_quantity": 5, "reserved_quantity": 0, "raw_stocked_quantity": {"value": "5", "precision": 20}, "raw_reserved_quantity": {"value": "0", "precision": 20}}], "requires_shipping": true}, "variant_id": "variant_01KQ394S6BNC8QKJXA75HCW84K", "inventory_item_id": "iitem_01KQ5AJ4C7SNV9TNDF8GZYZYF3", "required_quantity": 1}], "manage_inventory": true}, "metadata": {}, "quantity": 1, "subtitle": "G", "subtotal": 64.99, "raw_total": {"value": "64.99", "precision": 20}, "tax_lines": [], "tax_total": 0, "thumbnail": "http://localhost:9000/static/1777152975705-camiseta%20super%20ra%C3%83%C2%A7a%20comprimido.png", "created_at": "2026-04-26T17:20:09.370Z", "deleted_at": null, "product_id": "prod_01KQ394S3SVPRBN5HMMGASG417", "unit_price": 64.99, "updated_at": "2026-04-26T17:20:09.370Z", "variant_id": "variant_01KQ394S6BNC8QKJXA75HCW84K", "adjustments": [], "is_giftcard": false, "variant_sku": null, "product_type": null, "raw_subtotal": {"value": "64.99", "precision": 20}, "product_title": "Camiseta Oversized Cristo Vive", "raw_tax_total": {"value": "0", "precision": 20}, "variant_title": "G", "discount_total": 0, "original_total": 64.99, "product_handle": "camiseta-cristo-vive", "raw_unit_price": {"value": "64.99", "precision": 20}, "is_custom_price": false, "is_discountable": false, "product_type_id": null, "variant_barcode": null, "is_tax_inclusive": false, "product_subtitle": "", "discount_subtotal": 0, "original_subtotal": 64.99, "requires_shipping": true, "discount_tax_total": 0, "original_tax_total": 0, "product_collection": "Camisetas", "raw_discount_total": {"value": "0", "precision": 20}, "raw_original_total": {"value": "64.99", "precision": 20}, "product_description": "", "compare_at_unit_price": null, "raw_discount_subtotal": {"value": "0", "precision": 20}, "raw_original_subtotal": {"value": "64.99", "precision": 20}, "variant_option_values": null, "raw_discount_tax_total": {"value": "0", "precision": 20}, "raw_original_tax_total": {"value": "0", "precision": 20}, "raw_compare_at_unit_price": null}], "total": 84.99, "locale": null, "region": {"id": "reg_01KPA20S5NSBGW8AD90T7HEH4K", "name": "Brazil", "metadata": null, "created_at": "2026-04-16T02:30:44.150Z", "deleted_at": null, "updated_at": "2026-04-16T02:30:44.150Z", "currency_code": "brl", "automatic_taxes": true}, "customer": {"id": "cus_01KQ5DE2ZGD5GKGPCKNJ49468C", "email": "smlzanatto64@gmail.com", "phone": null, "metadata": null, "last_name": null, "created_at": "2026-04-26T17:29:44.177Z", "created_by": null, "deleted_at": null, "first_name": null, "updated_at": "2026-04-26T17:29:44.177Z", "has_account": false, "company_name": null}, "metadata": null, "subtotal": 84.99, "raw_total": {"value": "84.99", "precision": 20}, "region_id": "reg_01KPA20S5NSBGW8AD90T7HEH4K", "tax_total": 0, "created_at": "2026-04-25T20:00:11.465Z", "item_total": 64.99, "promotions": [], "updated_at": "2026-04-26T17:29:44.204Z", "customer_id": "cus_01KQ5DE2ZGD5GKGPCKNJ49468C", "completed_at": null, "credit_lines": [], "raw_subtotal": {"value": "84.99", "precision": 20}, "currency_code": "brl", "item_subtotal": 64.99, "raw_tax_total": {"value": "0", "precision": 20}, "discount_total": 0, "item_tax_total": 0, "original_total": 84.99, "raw_item_total": {"value": "64.99", "precision": 20}, "shipping_total": 20, "billing_address": {"id": "caaddr_01KQ5DE30A4BFN59JD1FW0VCY8", "city": "Campo Grande", "phone": "", "company": "", "metadata": null, "province": "", "address_1": "Rua Assaré, 729", "address_2": "", "last_name": "Zanatto", "created_at": "2026-04-26T17:29:44.203Z", "deleted_at": null, "first_name": "Samuel", "updated_at": "2026-04-26T17:29:44.203Z", "customer_id": null, "postal_code": "79070023", "country_code": "br"}, "sales_channel_id": "sc_01KP9XXJRXGGT65H782XD56SVH", "shipping_address": {"id": "caaddr_01KQ5DE30BS0336GB3WVRRM39S", "city": "Campo Grande", "phone": "", "company": "", "metadata": null, "province": "", "address_1": "Rua Assaré, 729", "address_2": "", "last_name": "Zanatto", "created_at": "2026-04-26T17:29:44.203Z", "deleted_at": null, "first_name": "Samuel", "updated_at": "2026-04-26T17:29:44.203Z", "customer_id": null, "postal_code": "79070023", "country_code": "br"}, "shipping_methods": [{"id": "casm_01KQ5EDQZ3M69V2GXV0S5XCG6H", "data": {}, "name": "Envio Padrão", "total": 20, "amount": 20, "cart_id": "cart_01KQ33MVP7KGA11MYKWW38JW88", "metadata": null, "subtotal": 20, "raw_total": {"value": "20", "precision": 20}, "tax_lines": [], "tax_total": 0, "created_at": "2026-04-26T17:47:01.475Z", "deleted_at": null, "raw_amount": {"value": "20", "precision": 20}, "updated_at": "2026-04-26T17:47:01.475Z", "adjustments": [], "description": null, "raw_subtotal": {"value": "20", "precision": 20}, "raw_tax_total": {"value": "0", "precision": 20}, "discount_total": 0, "original_total": 20, "is_tax_inclusive": false, "discount_subtotal": 0, "original_subtotal": 20, "discount_tax_total": 0, "original_tax_total": 0, "raw_discount_total": {"value": "0", "precision": 20}, "raw_original_total": {"value": "20", "precision": 20}, "shipping_option_id": "so_01KP9XXK05TKCGKDGWNEA8GGZZ", "raw_discount_subtotal": {"value": "0", "precision": 20}, "raw_original_subtotal": {"value": "20", "precision": 20}, "raw_discount_tax_total": {"value": "0", "precision": 20}, "raw_original_tax_total": {"value": "0", "precision": 20}}], "raw_item_subtotal": {"value": "64.99", "precision": 20}, "shipping_subtotal": 20, "discount_tax_total": 0, "original_tax_total": 0, "payment_collection": {"id": "pay_col_01KQ5E1DV5PX507CG1HA1NGAW0", "amount": 84.99, "status": "not_paid", "metadata": null, "created_at": "2026-04-26T17:40:17.894Z", "deleted_at": null, "raw_amount": {"value": "84.99", "precision": 20}, "updated_at": "2026-04-26T17:40:17.894Z", "completed_at": null, "currency_code": "brl", "captured_amount": null, "refunded_amount": null, "payment_sessions": [{"id": "payses_01KQ5E1DX0CRM6YEW7JW8MEW5F", "data": {}, "amount": 84.99, "status": "pending", "context": {}, "metadata": {}, "created_at": "2026-04-26T17:40:17.952Z", "deleted_at": null, "raw_amount": {"value": "84.99", "precision": 20}, "updated_at": "2026-04-26T17:40:17.952Z", "provider_id": "pp_system_default", "authorized_at": null, "currency_code": "brl", "payment_collection_id": "pay_col_01KQ5E1DV5PX507CG1HA1NGAW0"}], "authorized_amount": null, "raw_captured_amount": null, "raw_refunded_amount": null, "raw_authorized_amount": null}, "raw_discount_total": {"value": "0", "precision": 20}, "raw_item_tax_total": {"value": "0", "precision": 20}, "raw_original_total": {"value": "84.99", "precision": 20}, "raw_shipping_total": {"value": "20", "precision": 20}, "shipping_tax_total": 0, "original_item_total": 64.99, "raw_shipping_subtotal": {"value": "20", "precision": 20}, "original_item_subtotal": 64.99, "raw_discount_tax_total": {"value": "0", "precision": 20}, "raw_original_tax_total": {"value": "0", "precision": 20}, "raw_shipping_tax_total": {"value": "0", "precision": 20}, "original_item_tax_total": 0, "original_shipping_total": 20, "raw_original_item_total": {"value": "64.99", "precision": 20}, "original_shipping_subtotal": 20, "raw_original_item_subtotal": {"value": "64.99", "precision": 20}, "original_shipping_tax_total": 0, "raw_original_item_tax_total": {"value": "0", "precision": 20}, "raw_original_shipping_total": {"value": "20", "precision": 20}, "raw_original_shipping_subtotal": {"value": "20", "precision": 20}, "raw_original_shipping_tax_total": {"value": "0", "precision": 20}}}, "compensateInput": {"data": {"id": "cart_01KQ33MVP7KGA11MYKWW38JW88", "email": "smlzanatto64@gmail.com", "items": [{"id": "cali_01KQ5CWHMTN9T6QFJZX48MS2XA", "title": "Camiseta Oversized Cristo Vive", "total": 64.99, "cart_id": "cart_01KQ33MVP7KGA11MYKWW38JW88", "variant": {"id": "variant_01KQ394S6BNC8QKJXA75HCW84K", "product": {"id": "prod_01KQ394S3SVPRBN5HMMGASG417", "is_giftcard": false, "shipping_profile": {"id": "sp_01KP9XX3SZ7SG4EJ4HJ2S63AD4"}}, "product_id": "prod_01KQ394S3SVPRBN5HMMGASG417", "allow_backorder": false, "inventory_items": [{"inventory": {"id": "iitem_01KQ5AJ4C7SNV9TNDF8GZYZYF3", "location_levels": [{"location_id": "sloc_01KP9XXJXJS8TKZ9MTY36N7EK3", "stock_locations": [{"id": "sloc_01KP9XXJXJS8TKZ9MTY36N7EK3", "name": "Estoque Brasil", "sales_channels": [{"id": "sc_01KP9XXJRXGGT65H782XD56SVH", "name": "Default Sales Channel"}]}], "stocked_quantity": 5, "reserved_quantity": 0, "raw_stocked_quantity": {"value": "5", "precision": 20}, "raw_reserved_quantity": {"value": "0", "precision": 20}}], "requires_shipping": true}, "variant_id": "variant_01KQ394S6BNC8QKJXA75HCW84K", "inventory_item_id": "iitem_01KQ5AJ4C7SNV9TNDF8GZYZYF3", "required_quantity": 1}], "manage_inventory": true}, "metadata": {}, "quantity": 1, "subtitle": "G", "subtotal": 64.99, "raw_total": {"value": "64.99", "precision": 20}, "tax_lines": [], "tax_total": 0, "thumbnail": "http://localhost:9000/static/1777152975705-camiseta%20super%20ra%C3%83%C2%A7a%20comprimido.png", "created_at": "2026-04-26T17:20:09.370Z", "deleted_at": null, "product_id": "prod_01KQ394S3SVPRBN5HMMGASG417", "unit_price": 64.99, "updated_at": "2026-04-26T17:20:09.370Z", "variant_id": "variant_01KQ394S6BNC8QKJXA75HCW84K", "adjustments": [], "is_giftcard": false, "variant_sku": null, "product_type": null, "raw_subtotal": {"value": "64.99", "precision": 20}, "product_title": "Camiseta Oversized Cristo Vive", "raw_tax_total": {"value": "0", "precision": 20}, "variant_title": "G", "discount_total": 0, "original_total": 64.99, "product_handle": "camiseta-cristo-vive", "raw_unit_price": {"value": "64.99", "precision": 20}, "is_custom_price": false, "is_discountable": false, "product_type_id": null, "variant_barcode": null, "is_tax_inclusive": false, "product_subtitle": "", "discount_subtotal": 0, "original_subtotal": 64.99, "requires_shipping": true, "discount_tax_total": 0, "original_tax_total": 0, "product_collection": "Camisetas", "raw_discount_total": {"value": "0", "precision": 20}, "raw_original_total": {"value": "64.99", "precision": 20}, "product_description": "", "compare_at_unit_price": null, "raw_discount_subtotal": {"value": "0", "precision": 20}, "raw_original_subtotal": {"value": "64.99", "precision": 20}, "variant_option_values": null, "raw_discount_tax_total": {"value": "0", "precision": 20}, "raw_original_tax_total": {"value": "0", "precision": 20}, "raw_compare_at_unit_price": null}], "total": 84.99, "locale": null, "region": {"id": "reg_01KPA20S5NSBGW8AD90T7HEH4K", "name": "Brazil", "metadata": null, "created_at": "2026-04-16T02:30:44.150Z", "deleted_at": null, "updated_at": "2026-04-16T02:30:44.150Z", "currency_code": "brl", "automatic_taxes": true}, "customer": {"id": "cus_01KQ5DE2ZGD5GKGPCKNJ49468C", "email": "smlzanatto64@gmail.com", "phone": null, "metadata": null, "last_name": null, "created_at": "2026-04-26T17:29:44.177Z", "created_by": null, "deleted_at": null, "first_name": null, "updated_at": "2026-04-26T17:29:44.177Z", "has_account": false, "company_name": null}, "metadata": null, "subtotal": 84.99, "raw_total": {"value": "84.99", "precision": 20}, "region_id": "reg_01KPA20S5NSBGW8AD90T7HEH4K", "tax_total": 0, "created_at": "2026-04-25T20:00:11.465Z", "item_total": 64.99, "promotions": [], "updated_at": "2026-04-26T17:29:44.204Z", "customer_id": "cus_01KQ5DE2ZGD5GKGPCKNJ49468C", "completed_at": null, "credit_lines": [], "raw_subtotal": {"value": "84.99", "precision": 20}, "currency_code": "brl", "item_subtotal": 64.99, "raw_tax_total": {"value": "0", "precision": 20}, "discount_total": 0, "item_tax_total": 0, "original_total": 84.99, "raw_item_total": {"value": "64.99", "precision": 20}, "shipping_total": 20, "billing_address": {"id": "caaddr_01KQ5DE30A4BFN59JD1FW0VCY8", "city": "Campo Grande", "phone": "", "company": "", "metadata": null, "province": "", "address_1": "Rua Assaré, 729", "address_2": "", "last_name": "Zanatto", "created_at": "2026-04-26T17:29:44.203Z", "deleted_at": null, "first_name": "Samuel", "updated_at": "2026-04-26T17:29:44.203Z", "customer_id": null, "postal_code": "79070023", "country_code": "br"}, "sales_channel_id": "sc_01KP9XXJRXGGT65H782XD56SVH", "shipping_address": {"id": "caaddr_01KQ5DE30BS0336GB3WVRRM39S", "city": "Campo Grande", "phone": "", "company": "", "metadata": null, "province": "", "address_1": "Rua Assaré, 729", "address_2": "", "last_name": "Zanatto", "created_at": "2026-04-26T17:29:44.203Z", "deleted_at": null, "first_name": "Samuel", "updated_at": "2026-04-26T17:29:44.203Z", "customer_id": null, "postal_code": "79070023", "country_code": "br"}, "shipping_methods": [{"id": "casm_01KQ5EDQZ3M69V2GXV0S5XCG6H", "data": {}, "name": "Envio Padrão", "total": 20, "amount": 20, "cart_id": "cart_01KQ33MVP7KGA11MYKWW38JW88", "metadata": null, "subtotal": 20, "raw_total": {"value": "20", "precision": 20}, "tax_lines": [], "tax_total": 0, "created_at": "2026-04-26T17:47:01.475Z", "deleted_at": null, "raw_amount": {"value": "20", "precision": 20}, "updated_at": "2026-04-26T17:47:01.475Z", "adjustments": [], "description": null, "raw_subtotal": {"value": "20", "precision": 20}, "raw_tax_total": {"value": "0", "precision": 20}, "discount_total": 0, "original_total": 20, "is_tax_inclusive": false, "discount_subtotal": 0, "original_subtotal": 20, "discount_tax_total": 0, "original_tax_total": 0, "raw_discount_total": {"value": "0", "precision": 20}, "raw_original_total": {"value": "20", "precision": 20}, "shipping_option_id": "so_01KP9XXK05TKCGKDGWNEA8GGZZ", "raw_discount_subtotal": {"value": "0", "precision": 20}, "raw_original_subtotal": {"value": "20", "precision": 20}, "raw_discount_tax_total": {"value": "0", "precision": 20}, "raw_original_tax_total": {"value": "0", "precision": 20}}], "raw_item_subtotal": {"value": "64.99", "precision": 20}, "shipping_subtotal": 20, "discount_tax_total": 0, "original_tax_total": 0, "payment_collection": {"id": "pay_col_01KQ5E1DV5PX507CG1HA1NGAW0", "amount": 84.99, "status": "not_paid", "metadata": null, "created_at": "2026-04-26T17:40:17.894Z", "deleted_at": null, "raw_amount": {"value": "84.99", "precision": 20}, "updated_at": "2026-04-26T17:40:17.894Z", "completed_at": null, "currency_code": "brl", "captured_amount": null, "refunded_amount": null, "payment_sessions": [{"id": "payses_01KQ5E1DX0CRM6YEW7JW8MEW5F", "data": {}, "amount": 84.99, "status": "pending", "context": {}, "metadata": {}, "created_at": "2026-04-26T17:40:17.952Z", "deleted_at": null, "raw_amount": {"value": "84.99", "precision": 20}, "updated_at": "2026-04-26T17:40:17.952Z", "provider_id": "pp_system_default", "authorized_at": null, "currency_code": "brl", "payment_collection_id": "pay_col_01KQ5E1DV5PX507CG1HA1NGAW0"}], "authorized_amount": null, "raw_captured_amount": null, "raw_refunded_amount": null, "raw_authorized_amount": null}, "raw_discount_total": {"value": "0", "precision": 20}, "raw_item_tax_total": {"value": "0", "precision": 20}, "raw_original_total": {"value": "84.99", "precision": 20}, "raw_shipping_total": {"value": "20", "precision": 20}, "shipping_tax_total": 0, "original_item_total": 64.99, "raw_shipping_subtotal": {"value": "20", "precision": 20}, "original_item_subtotal": 64.99, "raw_discount_tax_total": {"value": "0", "precision": 20}, "raw_original_tax_total": {"value": "0", "precision": 20}, "raw_shipping_tax_total": {"value": "0", "precision": 20}, "original_item_tax_total": 0, "original_shipping_total": 20, "raw_original_item_total": {"value": "64.99", "precision": 20}, "original_shipping_subtotal": 20, "raw_original_item_subtotal": {"value": "64.99", "precision": 20}, "original_shipping_tax_total": 0, "raw_original_item_tax_total": {"value": "0", "precision": 20}, "raw_original_shipping_total": {"value": "20", "precision": 20}, "raw_original_shipping_subtotal": {"value": "20", "precision": 20}, "raw_original_shipping_tax_total": {"value": "0", "precision": 20}}}}}, "create-order": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "output": {"id": "order_01KQ5G89GD45PB0CCYEHRMCQ68", "email": "smlzanatto64@gmail.com", "items": [{"id": "ordli_01KQ5G89GF7ZCMDMY17MXDSQ06", "title": "Camiseta Oversized Cristo Vive", "detail": {"id": "orditem_01KQ5G89GH40V3YCRN3567HRRG", "item_id": "ordli_01KQ5G89GF7ZCMDMY17MXDSQ06", "version": 1, "metadata": null, "order_id": "order_01KQ5G89GD45PB0CCYEHRMCQ68", "quantity": 1, "created_at": "2026-04-26T18:18:59.988Z", "deleted_at": null, "unit_price": null, "updated_at": "2026-04-26T18:18:59.988Z", "raw_quantity": {"value": "1", "precision": 20}, "raw_unit_price": null, "shipped_quantity": 0, "delivered_quantity": 0, "fulfilled_quantity": 0, "raw_shipped_quantity": {"value": "0", "precision": 20}, "written_off_quantity": 0, "compare_at_unit_price": null, "raw_delivered_quantity": {"value": "0", "precision": 20}, "raw_fulfilled_quantity": {"value": "0", "precision": 20}, "raw_written_off_quantity": {"value": "0", "precision": 20}, "return_received_quantity": 0, "raw_compare_at_unit_price": null, "return_dismissed_quantity": 0, "return_requested_quantity": 0, "raw_return_received_quantity": {"value": "0", "precision": 20}, "raw_return_dismissed_quantity": {"value": "0", "precision": 20}, "raw_return_requested_quantity": {"value": "0", "precision": 20}}, "metadata": {}, "quantity": 1, "subtitle": "G", "tax_lines": [], "thumbnail": "http://localhost:9000/static/1777152975705-camiseta%20super%20ra%C3%83%C2%A7a%20comprimido.png", "created_at": "2026-04-26T18:18:59.987Z", "deleted_at": null, "product_id": "prod_01KQ394S3SVPRBN5HMMGASG417", "unit_price": 64.99, "updated_at": "2026-04-26T18:18:59.987Z", "variant_id": "variant_01KQ394S6BNC8QKJXA75HCW84K", "adjustments": [], "is_giftcard": false, "variant_sku": null, "product_type": null, "raw_quantity": {"value": "1", "precision": 20}, "product_title": "Camiseta Oversized Cristo Vive", "variant_title": "G", "product_handle": "camiseta-cristo-vive", "raw_unit_price": {"value": "64.99", "precision": 20}, "is_custom_price": false, "is_discountable": false, "product_type_id": null, "variant_barcode": null, "is_tax_inclusive": false, "product_subtitle": "", "requires_shipping": true, "product_collection": "Camisetas", "product_description": "", "compare_at_unit_price": null, "variant_option_values": null, "raw_compare_at_unit_price": null}], "locale": null, "status": "pending", "summary": {"paid_total": 0, "raw_paid_total": {"value": "0", "precision": 20}, "refunded_total": 0, "accounting_total": 84.99, "credit_line_total": 0, "transaction_total": 0, "pending_difference": 84.99, "raw_refunded_total": {"value": "0", "precision": 20}, "current_order_total": 84.99, "original_order_total": 84.99, "raw_accounting_total": {"value": "84.99", "precision": 20}, "raw_credit_line_total": {"value": "0", "precision": 20}, "raw_transaction_total": {"value": "0", "precision": 20}, "raw_pending_difference": {"value": "84.99", "precision": 20}, "raw_current_order_total": {"value": "84.99", "precision": 20}, "raw_original_order_total": {"value": "84.99", "precision": 20}}, "version": 1, "metadata": null, "region_id": "reg_01KPA20S5NSBGW8AD90T7HEH4K", "created_at": "2026-04-26T18:18:59.987Z", "deleted_at": null, "display_id": 1, "updated_at": "2026-04-26T18:18:59.987Z", "canceled_at": null, "customer_id": "cus_01KQ5DE2ZGD5GKGPCKNJ49468C", "credit_lines": [], "transactions": [], "currency_code": "brl", "is_draft_order": false, "billing_address": {"id": "ordaddr_01KQ5G89G7H68E68ZZVKKF2MPJ", "city": "Campo Grande", "phone": "", "company": "", "metadata": null, "province": "", "address_1": "Rua Assaré, 729", "address_2": "", "last_name": "Zanatto", "created_at": "2026-04-26T17:29:44.203Z", "deleted_at": null, "first_name": "Samuel", "updated_at": "2026-04-26T17:29:44.203Z", "customer_id": null, "postal_code": "79070023", "country_code": "br"}, "no_notification": false, "sales_channel_id": "sc_01KP9XXJRXGGT65H782XD56SVH", "shipping_address": {"id": "ordaddr_01KQ5G89G72NM0FGKXPJN9C8EV", "city": "Campo Grande", "phone": "", "company": "", "metadata": null, "province": "", "address_1": "Rua Assaré, 729", "address_2": "", "last_name": "Zanatto", "created_at": "2026-04-26T17:29:44.203Z", "deleted_at": null, "first_name": "Samuel", "updated_at": "2026-04-26T17:29:44.203Z", "customer_id": null, "postal_code": "79070023", "country_code": "br"}, "shipping_methods": [{"id": "ordsm_01KQ5G89GD4V8CRHXYHSVT1NRK", "data": {}, "name": "Envio Padrão", "amount": 20, "detail": {"id": "ordspmv_01KQ5G89GDQD196X1NR1GGN51M", "version": 1, "claim_id": null, "order_id": "order_01KQ5G89GD45PB0CCYEHRMCQ68", "return_id": null, "created_at": "2026-04-26T18:18:59.989Z", "deleted_at": null, "updated_at": "2026-04-26T18:18:59.989Z", "exchange_id": null, "shipping_method_id": "ordsm_01KQ5G89GD4V8CRHXYHSVT1NRK"}, "metadata": null, "order_id": "order_01KQ5G89GD45PB0CCYEHRMCQ68", "tax_lines": [], "created_at": "2026-04-26T18:18:59.988Z", "deleted_at": null, "raw_amount": {"value": "20", "precision": 20}, "updated_at": "2026-04-26T18:18:59.988Z", "adjustments": [], "description": null, "is_custom_amount": false, "is_tax_inclusive": false, "shipping_option_id": "so_01KP9XXK05TKCGKDGWNEA8GGZZ"}], "custom_display_id": null, "billing_address_id": "ordaddr_01KQ5G89G7H68E68ZZVKKF2MPJ", "shipping_address_id": "ordaddr_01KQ5G89G72NM0FGKXPJN9C8EV"}, "compensateInput": {"id": "order_01KQ5G89GD45PB0CCYEHRMCQ68", "email": "smlzanatto64@gmail.com", "items": [{"id": "ordli_01KQ5G89GF7ZCMDMY17MXDSQ06", "title": "Camiseta Oversized Cristo Vive", "detail": {"id": "orditem_01KQ5G89GH40V3YCRN3567HRRG", "item_id": "ordli_01KQ5G89GF7ZCMDMY17MXDSQ06", "version": 1, "metadata": null, "order_id": "order_01KQ5G89GD45PB0CCYEHRMCQ68", "quantity": 1, "created_at": "2026-04-26T18:18:59.988Z", "deleted_at": null, "unit_price": null, "updated_at": "2026-04-26T18:18:59.988Z", "raw_quantity": {"value": "1", "precision": 20}, "raw_unit_price": null, "shipped_quantity": 0, "delivered_quantity": 0, "fulfilled_quantity": 0, "raw_shipped_quantity": {"value": "0", "precision": 20}, "written_off_quantity": 0, "compare_at_unit_price": null, "raw_delivered_quantity": {"value": "0", "precision": 20}, "raw_fulfilled_quantity": {"value": "0", "precision": 20}, "raw_written_off_quantity": {"value": "0", "precision": 20}, "return_received_quantity": 0, "raw_compare_at_unit_price": null, "return_dismissed_quantity": 0, "return_requested_quantity": 0, "raw_return_received_quantity": {"value": "0", "precision": 20}, "raw_return_dismissed_quantity": {"value": "0", "precision": 20}, "raw_return_requested_quantity": {"value": "0", "precision": 20}}, "metadata": {}, "quantity": 1, "subtitle": "G", "tax_lines": [], "thumbnail": "http://localhost:9000/static/1777152975705-camiseta%20super%20ra%C3%83%C2%A7a%20comprimido.png", "created_at": "2026-04-26T18:18:59.987Z", "deleted_at": null, "product_id": "prod_01KQ394S3SVPRBN5HMMGASG417", "unit_price": 64.99, "updated_at": "2026-04-26T18:18:59.987Z", "variant_id": "variant_01KQ394S6BNC8QKJXA75HCW84K", "adjustments": [], "is_giftcard": false, "variant_sku": null, "product_type": null, "raw_quantity": {"value": "1", "precision": 20}, "product_title": "Camiseta Oversized Cristo Vive", "variant_title": "G", "product_handle": "camiseta-cristo-vive", "raw_unit_price": {"value": "64.99", "precision": 20}, "is_custom_price": false, "is_discountable": false, "product_type_id": null, "variant_barcode": null, "is_tax_inclusive": false, "product_subtitle": "", "requires_shipping": true, "product_collection": "Camisetas", "product_description": "", "compare_at_unit_price": null, "variant_option_values": null, "raw_compare_at_unit_price": null}], "locale": null, "status": "pending", "summary": {"paid_total": 0, "raw_paid_total": {"value": "0", "precision": 20}, "refunded_total": 0, "accounting_total": 84.99, "credit_line_total": 0, "transaction_total": 0, "pending_difference": 84.99, "raw_refunded_total": {"value": "0", "precision": 20}, "current_order_total": 84.99, "original_order_total": 84.99, "raw_accounting_total": {"value": "84.99", "precision": 20}, "raw_credit_line_total": {"value": "0", "precision": 20}, "raw_transaction_total": {"value": "0", "precision": 20}, "raw_pending_difference": {"value": "84.99", "precision": 20}, "raw_current_order_total": {"value": "84.99", "precision": 20}, "raw_original_order_total": {"value": "84.99", "precision": 20}}, "version": 1, "metadata": null, "region_id": "reg_01KPA20S5NSBGW8AD90T7HEH4K", "created_at": "2026-04-26T18:18:59.987Z", "deleted_at": null, "display_id": 1, "updated_at": "2026-04-26T18:18:59.987Z", "canceled_at": null, "customer_id": "cus_01KQ5DE2ZGD5GKGPCKNJ49468C", "credit_lines": [], "transactions": [], "currency_code": "brl", "is_draft_order": false, "billing_address": {"id": "ordaddr_01KQ5G89G7H68E68ZZVKKF2MPJ", "city": "Campo Grande", "phone": "", "company": "", "metadata": null, "province": "", "address_1": "Rua Assaré, 729", "address_2": "", "last_name": "Zanatto", "created_at": "2026-04-26T17:29:44.203Z", "deleted_at": null, "first_name": "Samuel", "updated_at": "2026-04-26T17:29:44.203Z", "customer_id": null, "postal_code": "79070023", "country_code": "br"}, "no_notification": false, "sales_channel_id": "sc_01KP9XXJRXGGT65H782XD56SVH", "shipping_address": {"id": "ordaddr_01KQ5G89G72NM0FGKXPJN9C8EV", "city": "Campo Grande", "phone": "", "company": "", "metadata": null, "province": "", "address_1": "Rua Assaré, 729", "address_2": "", "last_name": "Zanatto", "created_at": "2026-04-26T17:29:44.203Z", "deleted_at": null, "first_name": "Samuel", "updated_at": "2026-04-26T17:29:44.203Z", "customer_id": null, "postal_code": "79070023", "country_code": "br"}, "shipping_methods": [{"id": "ordsm_01KQ5G89GD4V8CRHXYHSVT1NRK", "data": {}, "name": "Envio Padrão", "amount": 20, "detail": {"id": "ordspmv_01KQ5G89GDQD196X1NR1GGN51M", "version": 1, "claim_id": null, "order_id": "order_01KQ5G89GD45PB0CCYEHRMCQ68", "return_id": null, "created_at": "2026-04-26T18:18:59.989Z", "deleted_at": null, "updated_at": "2026-04-26T18:18:59.989Z", "exchange_id": null, "shipping_method_id": "ordsm_01KQ5G89GD4V8CRHXYHSVT1NRK"}, "metadata": null, "order_id": "order_01KQ5G89GD45PB0CCYEHRMCQ68", "tax_lines": [], "created_at": "2026-04-26T18:18:59.988Z", "deleted_at": null, "raw_amount": {"value": "20", "precision": 20}, "updated_at": "2026-04-26T18:18:59.988Z", "adjustments": [], "description": null, "is_custom_amount": false, "is_tax_inclusive": false, "shipping_option_id": "so_01KP9XXK05TKCGKDGWNEA8GGZZ"}], "custom_display_id": null, "billing_address_id": "ordaddr_01KQ5G89G7H68E68ZZVKKF2MPJ", "shipping_address_id": "ordaddr_01KQ5G89G72NM0FGKXPJN9C8EV"}}}, "orderCreated": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)"}}, "update-carts": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "output": [{"id": "cart_01KQ33MVP7KGA11MYKWW38JW88", "email": "smlzanatto64@gmail.com", "locale": null, "metadata": null, "region_id": "reg_01KPA20S5NSBGW8AD90T7HEH4K", "created_at": "2026-04-25T20:00:11.465Z", "deleted_at": null, "updated_at": "2026-04-26T18:19:00.141Z", "customer_id": "cus_01KQ5DE2ZGD5GKGPCKNJ49468C", "completed_at": "2026-04-26T18:19:00.104Z", "currency_code": "brl", "billing_address": {"id": "caaddr_01KQ5DE30A4BFN59JD1FW0VCY8"}, "sales_channel_id": "sc_01KP9XXJRXGGT65H782XD56SVH", "shipping_address": {"id": "caaddr_01KQ5DE30BS0336GB3WVRRM39S"}, "billing_address_id": "caaddr_01KQ5DE30A4BFN59JD1FW0VCY8", "shipping_address_id": "caaddr_01KQ5DE30BS0336GB3WVRRM39S"}], "compensateInput": {"cartsBeforeUpdate": [{"id": "cart_01KQ33MVP7KGA11MYKWW38JW88", "email": "smlzanatto64@gmail.com", "metadata": null, "region_id": "reg_01KPA20S5NSBGW8AD90T7HEH4K", "customer_id": "cus_01KQ5DE2ZGD5GKGPCKNJ49468C", "completed_at": null, "currency_code": "brl", "sales_channel_id": "sc_01KP9XXJRXGGT65H782XD56SVH"}], "addressesBeforeUpdate": []}}}, "create-orders": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "output": [{"id": "order_01KQ5G89GD45PB0CCYEHRMCQ68", "email": "smlzanatto64@gmail.com", "items": [{"id": "ordli_01KQ5G89GF7ZCMDMY17MXDSQ06", "title": "Camiseta Oversized Cristo Vive", "detail": {"id": "orditem_01KQ5G89GH40V3YCRN3567HRRG", "item_id": "ordli_01KQ5G89GF7ZCMDMY17MXDSQ06", "version": 1, "metadata": null, "order_id": "order_01KQ5G89GD45PB0CCYEHRMCQ68", "quantity": 1, "created_at": "2026-04-26T18:18:59.988Z", "deleted_at": null, "unit_price": null, "updated_at": "2026-04-26T18:18:59.988Z", "raw_quantity": {"value": "1", "precision": 20}, "raw_unit_price": null, "shipped_quantity": 0, "delivered_quantity": 0, "fulfilled_quantity": 0, "raw_shipped_quantity": {"value": "0", "precision": 20}, "written_off_quantity": 0, "compare_at_unit_price": null, "raw_delivered_quantity": {"value": "0", "precision": 20}, "raw_fulfilled_quantity": {"value": "0", "precision": 20}, "raw_written_off_quantity": {"value": "0", "precision": 20}, "return_received_quantity": 0, "raw_compare_at_unit_price": null, "return_dismissed_quantity": 0, "return_requested_quantity": 0, "raw_return_received_quantity": {"value": "0", "precision": 20}, "raw_return_dismissed_quantity": {"value": "0", "precision": 20}, "raw_return_requested_quantity": {"value": "0", "precision": 20}}, "metadata": {}, "quantity": 1, "subtitle": "G", "tax_lines": [], "thumbnail": "http://localhost:9000/static/1777152975705-camiseta%20super%20ra%C3%83%C2%A7a%20comprimido.png", "created_at": "2026-04-26T18:18:59.987Z", "deleted_at": null, "product_id": "prod_01KQ394S3SVPRBN5HMMGASG417", "unit_price": 64.99, "updated_at": "2026-04-26T18:18:59.987Z", "variant_id": "variant_01KQ394S6BNC8QKJXA75HCW84K", "adjustments": [], "is_giftcard": false, "variant_sku": null, "product_type": null, "raw_quantity": {"value": "1", "precision": 20}, "product_title": "Camiseta Oversized Cristo Vive", "variant_title": "G", "product_handle": "camiseta-cristo-vive", "raw_unit_price": {"value": "64.99", "precision": 20}, "is_custom_price": false, "is_discountable": false, "product_type_id": null, "variant_barcode": null, "is_tax_inclusive": false, "product_subtitle": "", "requires_shipping": true, "product_collection": "Camisetas", "product_description": "", "compare_at_unit_price": null, "variant_option_values": null, "raw_compare_at_unit_price": null}], "locale": null, "status": "pending", "summary": {"paid_total": 0, "raw_paid_total": {"value": "0", "precision": 20}, "refunded_total": 0, "accounting_total": 84.99, "credit_line_total": 0, "transaction_total": 0, "pending_difference": 84.99, "raw_refunded_total": {"value": "0", "precision": 20}, "current_order_total": 84.99, "original_order_total": 84.99, "raw_accounting_total": {"value": "84.99", "precision": 20}, "raw_credit_line_total": {"value": "0", "precision": 20}, "raw_transaction_total": {"value": "0", "precision": 20}, "raw_pending_difference": {"value": "84.99", "precision": 20}, "raw_current_order_total": {"value": "84.99", "precision": 20}, "raw_original_order_total": {"value": "84.99", "precision": 20}}, "version": 1, "metadata": null, "region_id": "reg_01KPA20S5NSBGW8AD90T7HEH4K", "created_at": "2026-04-26T18:18:59.987Z", "deleted_at": null, "display_id": 1, "updated_at": "2026-04-26T18:18:59.987Z", "canceled_at": null, "customer_id": "cus_01KQ5DE2ZGD5GKGPCKNJ49468C", "credit_lines": [], "transactions": [], "currency_code": "brl", "is_draft_order": false, "billing_address": {"id": "ordaddr_01KQ5G89G7H68E68ZZVKKF2MPJ", "city": "Campo Grande", "phone": "", "company": "", "metadata": null, "province": "", "address_1": "Rua Assaré, 729", "address_2": "", "last_name": "Zanatto", "created_at": "2026-04-26T17:29:44.203Z", "deleted_at": null, "first_name": "Samuel", "updated_at": "2026-04-26T17:29:44.203Z", "customer_id": null, "postal_code": "79070023", "country_code": "br"}, "no_notification": false, "sales_channel_id": "sc_01KP9XXJRXGGT65H782XD56SVH", "shipping_address": {"id": "ordaddr_01KQ5G89G72NM0FGKXPJN9C8EV", "city": "Campo Grande", "phone": "", "company": "", "metadata": null, "province": "", "address_1": "Rua Assaré, 729", "address_2": "", "last_name": "Zanatto", "created_at": "2026-04-26T17:29:44.203Z", "deleted_at": null, "first_name": "Samuel", "updated_at": "2026-04-26T17:29:44.203Z", "customer_id": null, "postal_code": "79070023", "country_code": "br"}, "shipping_methods": [{"id": "ordsm_01KQ5G89GD4V8CRHXYHSVT1NRK", "data": {}, "name": "Envio Padrão", "amount": 20, "detail": {"id": "ordspmv_01KQ5G89GDQD196X1NR1GGN51M", "version": 1, "claim_id": null, "order_id": "order_01KQ5G89GD45PB0CCYEHRMCQ68", "return_id": null, "created_at": "2026-04-26T18:18:59.989Z", "deleted_at": null, "updated_at": "2026-04-26T18:18:59.989Z", "exchange_id": null, "shipping_method_id": "ordsm_01KQ5G89GD4V8CRHXYHSVT1NRK"}, "metadata": null, "order_id": "order_01KQ5G89GD45PB0CCYEHRMCQ68", "tax_lines": [], "created_at": "2026-04-26T18:18:59.988Z", "deleted_at": null, "raw_amount": {"value": "20", "precision": 20}, "updated_at": "2026-04-26T18:18:59.988Z", "adjustments": [], "description": null, "is_custom_amount": false, "is_tax_inclusive": false, "shipping_option_id": "so_01KP9XXK05TKCGKDGWNEA8GGZZ"}], "custom_display_id": null, "billing_address_id": "ordaddr_01KQ5G89G7H68E68ZZVKKF2MPJ", "shipping_address_id": "ordaddr_01KQ5G89G72NM0FGKXPJN9C8EV"}], "compensateInput": ["order_01KQ5G89GD45PB0CCYEHRMCQ68"]}}, "register-usage": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "output": null, "compensateInput": {"computedActions": [], "registrationContext": {"customer_id": "cus_01KQ5DE2ZGD5GKGPCKNJ49468C", "customer_email": "smlzanatto64@gmail.com"}}}}, "emit-event-step": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "output": {"eventName": "order.placed", "eventGroupId": "01KQ5G89C73EXJPEYD27AY2WMW"}, "compensateInput": {"eventName": "order.placed", "eventGroupId": "01KQ5G89C73EXJPEYD27AY2WMW"}}}, "acquire-lock-step": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "compensateInput": {"keys": ["cart_01KQ33MVP7KGA11MYKWW38JW88"]}}}, "release-lock-step": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "output": true, "compensateInput": true}}, "validate-shipping": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)"}}, "create-remote-links": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "output": [{"cart": {"cart_id": "cart_01KQ33MVP7KGA11MYKWW38JW88"}, "order": {"order_id": "order_01KQ5G89GD45PB0CCYEHRMCQ68"}}, {"order": {"order_id": "order_01KQ5G89GD45PB0CCYEHRMCQ68"}, "payment": {"payment_collection_id": "pay_col_01KQ5E1DV5PX507CG1HA1NGAW0"}}], "compensateInput": [{"cart": {"cart_id": "cart_01KQ33MVP7KGA11MYKWW38JW88"}, "order": {"order_id": "order_01KQ5G89GD45PB0CCYEHRMCQ68"}}, {"order": {"order_id": "order_01KQ5G89GD45PB0CCYEHRMCQ68"}, "payment": {"payment_collection_id": "pay_col_01KQ5E1DV5PX507CG1HA1NGAW0"}}]}}, "use-query-graph-step": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "output": {}, "compensateInput": {}}}, "add-order-transaction": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "output": null, "compensateInput": null}}, "reserve-inventory-step": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "output": [{"id": "resitem_01KQ5G89N8XPS6ZFVWJDKH567J", "metadata": null, "quantity": 1, "created_at": "2026-04-26T18:19:00.146Z", "created_by": null, "deleted_at": null, "updated_at": "2026-04-26T18:19:00.146Z", "description": null, "external_id": null, "location_id": "sloc_01KP9XXJXJS8TKZ9MTY36N7EK3", "line_item_id": "ordli_01KQ5G89GF7ZCMDMY17MXDSQ06", "raw_quantity": {"value": "1", "precision": 20}, "allow_backorder": false, "inventory_item_id": "iitem_01KQ5AJ4C7SNV9TNDF8GZYZYF3"}], "compensateInput": {"reservations": ["resitem_01KQ5G89N8XPS6ZFVWJDKH567J"], "inventoryItemIds": ["iitem_01KQ5AJ4C7SNV9TNDF8GZYZYF3"]}}}, "shipping-options-query": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "output": {"data": [{"id": "so_01KP9XXK05TKCGKDGWNEA8GGZZ", "shipping_profile_id": "sp_01KP9XX3SZ7SG4EJ4HJ2S63AD4"}]}, "compensateInput": {"data": [{"id": "so_01KP9XXK05TKCGKDGWNEA8GGZZ", "shipping_profile_id": "sp_01KP9XX3SZ7SG4EJ4HJ2S63AD4"}]}}}, "validate-cart-payments": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "output": [{"id": "payses_01KQ5E1DX0CRM6YEW7JW8MEW5F", "data": {}, "amount": 84.99, "status": "pending", "context": {}, "metadata": {}, "created_at": "2026-04-26T17:40:17.952Z", "deleted_at": null, "raw_amount": {"value": "84.99", "precision": 20}, "updated_at": "2026-04-26T17:40:17.952Z", "provider_id": "pp_system_default", "authorized_at": null, "currency_code": "brl", "payment_collection_id": "pay_col_01KQ5E1DV5PX507CG1HA1NGAW0"}], "compensateInput": [{"id": "payses_01KQ5E1DX0CRM6YEW7JW8MEW5F", "data": {}, "amount": 84.99, "status": "pending", "context": {}, "metadata": {}, "created_at": "2026-04-26T17:40:17.952Z", "deleted_at": null, "raw_amount": {"value": "84.99", "precision": 20}, "updated_at": "2026-04-26T17:40:17.952Z", "provider_id": "pp_system_default", "authorized_at": null, "currency_code": "brl", "payment_collection_id": "pay_col_01KQ5E1DV5PX507CG1HA1NGAW0"}]}}, "beforePaymentAuthorization": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)"}}, "compensate-payment-if-needed": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "output": "payses_01KQ5E1DX0CRM6YEW7JW8MEW5F", "compensateInput": "payses_01KQ5E1DX0CRM6YEW7JW8MEW5F"}}, "authorize-payment-session-step": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "output": {"id": "pay_01KQ5G89PCPHC3GA1APXRJKQSH", "data": {}, "amount": 84.99, "captures": [], "metadata": null, "created_at": "2026-04-26T18:19:00.173Z", "deleted_at": null, "raw_amount": {"value": "84.99", "precision": 20}, "updated_at": "2026-04-26T18:19:00.173Z", "canceled_at": null, "captured_at": null, "provider_id": "pp_system_default", "currency_code": "brl", "payment_collection": {"id": "pay_col_01KQ5E1DV5PX507CG1HA1NGAW0"}, "payment_session_id": "payses_01KQ5E1DX0CRM6YEW7JW8MEW5F", "payment_collection_id": "pay_col_01KQ5E1DV5PX507CG1HA1NGAW0"}, "compensateInput": {"id": "pay_01KQ5G89PCPHC3GA1APXRJKQSH", "data": {}, "amount": 84.99, "captures": [], "metadata": null, "created_at": "2026-04-26T18:19:00.173Z", "deleted_at": null, "raw_amount": {"value": "84.99", "precision": 20}, "updated_at": "2026-04-26T18:19:00.173Z", "canceled_at": null, "captured_at": null, "provider_id": "pp_system_default", "currency_code": "brl", "payment_collection": {"id": "pay_col_01KQ5E1DV5PX507CG1HA1NGAW0"}, "payment_session_id": "payses_01KQ5E1DX0CRM6YEW7JW8MEW5F", "payment_collection_id": "pay_col_01KQ5E1DV5PX507CG1HA1NGAW0"}}}}, "payload": {"id": "cart_01KQ33MVP7KGA11MYKWW38JW88"}, "compensate": {}}, "errors": []}	done	2026-04-26 18:18:59.856	2026-04-26 18:19:00.234	\N	259200	01KQ5G89CAV179B62ZA2XG20EK
wf_exec_01KQ5KXACKMRSF3CF4TV948W9J	complete-cart	auto-01KQ5KXACAY0G7VN6B7B7EGXBY	{"_v": 0, "runId": "01KQ5KXACC6NFJSMHP0WHA3GMA", "state": "done", "steps": {"_root": {"id": "_root", "next": ["_root.acquire-lock-step"]}, "_root.acquire-lock-step": {"_v": 0, "id": "_root.acquire-lock-step", "next": ["_root.acquire-lock-step.use-query-graph-step", "_root.acquire-lock-step.cart-query"], "uuid": "01KQ5KPM63ZEAHYXFRWRFH21SP", "depth": 1, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777231374747, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5KPM63ZEAHYXFRWRFH21SP", "store": false, "action": "acquire-lock-step", "noCompensation": false}, "stepFailed": false, "lastAttempt": 1777231374747, "saveResponse": true}, "_root.acquire-lock-step.cart-query": {"_v": 0, "id": "_root.acquire-lock-step.cart-query", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments"], "uuid": "01KQ5KPM63PQDRXFNG27VQW0BT", "depth": 2, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777231374749, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5KPM63PQDRXFNG27VQW0BT", "async": false, "store": false, "action": "cart-query", "noCompensation": true, "compensateAsync": false}, "stepFailed": false, "lastAttempt": 1777231374749, "saveResponse": true}, "_root.acquire-lock-step.use-query-graph-step": {"_v": 0, "id": "_root.acquire-lock-step.use-query-graph-step", "next": [], "uuid": "01KQ5KPM631D0SCMW5W6NE78ZQ", "depth": 2, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777231374749, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5KPM631D0SCMW5W6NE78ZQ", "store": false, "action": "use-query-graph-step", "noCompensation": true}, "stepFailed": false, "lastAttempt": 1777231374748, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed"], "uuid": "01KQ5KPM63B5SD58JBJRY4KY2B", "depth": 3, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777231374787, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5KPM63B5SD58JBJRY4KY2B", "store": false, "action": "validate-cart-payments", "noCompensation": true}, "stepFailed": false, "lastAttempt": 1777231374787, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate"], "uuid": "01KQ5KPM63BMY9MF062B9CBMKY", "depth": 4, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777231374790, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5KPM63BMY9MF062B9CBMKY", "store": false, "action": "compensate-payment-if-needed", "noCompensation": false}, "stepFailed": false, "lastAttempt": 1777231374790, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query"], "uuid": "01KQ5KPM64NHC1E3WQ2XYYF5KB", "depth": 5, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777231374793, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5KPM64NHC1E3WQ2XYYF5KB", "store": false, "action": "validate", "noCompensation": false}, "stepFailed": false, "lastAttempt": 1777231374793, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping"], "uuid": "01KQ5KPM643H92SV0CCMSPD0BT", "depth": 6, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777231374795, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5KPM643H92SV0CCMSPD0BT", "async": false, "store": false, "action": "shipping-options-query", "noCompensation": true, "compensateAsync": false}, "stepFailed": false, "lastAttempt": 1777231374795, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders"], "uuid": "01KQ5KPM65PTWMBMCYKQQX2R1N", "depth": 7, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777231374801, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5KPM65PTWMBMCYKQQX2R1N", "store": false, "action": "validate-shipping", "noCompensation": true}, "stepFailed": false, "lastAttempt": 1777231374801, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.create-remote-links", "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.update-carts", "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.reserve-inventory-step", "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.register-usage", "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step"], "uuid": "01KQ5KPM65WWW5DWEY5GSQQDGV", "depth": 8, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777231374805, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5KPM65WWW5DWEY5GSQQDGV", "store": false, "action": "create-orders", "noCompensation": false}, "stepFailed": false, "lastAttempt": 1777231374805, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.update-carts": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.update-carts", "next": [], "uuid": "01KQ5KPM65JMH144G4Y1K42AES", "depth": 9, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777231374842, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5KPM65JMH144G4Y1K42AES", "store": false, "action": "update-carts", "noCompensation": false}, "stepFailed": false, "lastAttempt": 1777231374842, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.register-usage": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.register-usage", "next": [], "uuid": "01KQ5KPM66NC3Z4KB32CJ7R5DM", "depth": 9, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777231374842, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5KPM66NC3Z4KB32CJ7R5DM", "store": false, "action": "register-usage", "noCompensation": false}, "stepFailed": false, "lastAttempt": 1777231374842, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization"], "uuid": "01KQ5KPM66A9V3H0V3SQVYC02D", "depth": 9, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777231374842, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5KPM66A9V3H0V3SQVYC02D", "store": false, "action": "emit-event-step", "noCompensation": false}, "stepFailed": false, "lastAttempt": 1777231374842, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.create-remote-links": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.create-remote-links", "next": [], "uuid": "01KQ5KPM65KK1TV29VRP78EGDH", "depth": 9, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777231374842, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5KPM65KK1TV29VRP78EGDH", "store": false, "action": "create-remote-links", "noCompensation": false}, "stepFailed": false, "lastAttempt": 1777231374842, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.reserve-inventory-step": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.reserve-inventory-step", "next": [], "uuid": "01KQ5KPM66JY14434G8GPGCQBM", "depth": 9, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777231374842, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5KPM66JY14434G8GPGCQBM", "store": false, "action": "reserve-inventory-step", "noCompensation": false}, "stepFailed": false, "lastAttempt": 1777231374842, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step"], "uuid": "01KQ5KPM66ZPVW9QNPTQ6E3BXC", "depth": 10, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777231374885, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5KPM66ZPVW9QNPTQ6E3BXC", "store": false, "action": "beforePaymentAuthorization", "noCompensation": false}, "stepFailed": false, "lastAttempt": 1777231374885, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction"], "uuid": "01KQ5KPM67M6SGJZMT72CVRD2D", "depth": 11, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777231374887, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5KPM67M6SGJZMT72CVRD2D", "store": false, "action": "authorize-payment-session-step", "noCompensation": false}, "stepFailed": false, "lastAttempt": 1777231374887, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction.orderCreated"], "uuid": "01KQ5KPM67NJ4074JNJ8WS68ZH", "depth": 12, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777231374925, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5KPM67NJ4074JNJ8WS68ZH", "store": false, "action": "add-order-transaction", "noCompensation": false}, "stepFailed": false, "lastAttempt": 1777231374925, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction.orderCreated": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction.orderCreated", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction.orderCreated.create-order"], "uuid": "01KQ5KPM67JRBS9VWJD6GVJH89", "depth": 13, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777231374928, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5KPM67JRBS9VWJD6GVJH89", "store": false, "action": "orderCreated", "noCompensation": false}, "stepFailed": false, "lastAttempt": 1777231374928, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction.orderCreated.create-order": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction.orderCreated.create-order", "next": ["_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction.orderCreated.create-order.release-lock-step"], "uuid": "01KQ5KPM67FEA5M6Q51QB51H3T", "depth": 14, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777231374931, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5KPM67FEA5M6Q51QB51H3T", "store": false, "action": "create-order", "noCompensation": true}, "stepFailed": false, "lastAttempt": 1777231374931, "saveResponse": true}, "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction.orderCreated.create-order.release-lock-step": {"_v": 0, "id": "_root.acquire-lock-step.cart-query.validate-cart-payments.compensate-payment-if-needed.validate.shipping-options-query.validate-shipping.create-orders.emit-event-step.beforePaymentAuthorization.authorize-payment-session-step.add-order-transaction.orderCreated.create-order.release-lock-step", "next": [], "uuid": "01KQ5KPM67KF507A3KAPYWKZQ1", "depth": 15, "invoke": {"state": "done", "status": "ok"}, "attempts": 1, "failures": 0, "startedAt": 1777231374933, "compensate": {"state": "dormant", "status": "idle"}, "definition": {"uuid": "01KQ5KPM67KF507A3KAPYWKZQ1", "store": false, "action": "release-lock-step", "noCompensation": true}, "stepFailed": false, "lastAttempt": 1777231374933, "saveResponse": true}}, "modelId": "complete-cart", "options": {"name": "complete-cart", "store": true, "idempotent": false, "retentionTime": 259200}, "metadata": {"sourcePath": "F:\\\\superracaloja\\\\medusa\\\\super-raca-store\\\\node_modules\\\\@medusajs\\\\core-flows\\\\dist\\\\cart\\\\workflows\\\\complete-cart.js", "eventGroupId": "01KQ5KXACB0Z1HNTNAGVGYTTTA", "preventReleaseEvents": false}, "startedAt": 1777231374747, "definition": {"next": [{"uuid": "01KQ5KPM631D0SCMW5W6NE78ZQ", "action": "use-query-graph-step", "noCompensation": true}, {"next": {"next": {"next": {"next": {"next": {"next": {"next": [{"uuid": "01KQ5KPM65KK1TV29VRP78EGDH", "action": "create-remote-links", "noCompensation": false}, {"uuid": "01KQ5KPM65JMH144G4Y1K42AES", "action": "update-carts", "noCompensation": false}, {"uuid": "01KQ5KPM66JY14434G8GPGCQBM", "action": "reserve-inventory-step", "noCompensation": false}, {"uuid": "01KQ5KPM66NC3Z4KB32CJ7R5DM", "action": "register-usage", "noCompensation": false}, {"next": {"next": {"next": {"next": {"next": {"next": {"uuid": "01KQ5KPM67KF507A3KAPYWKZQ1", "action": "release-lock-step", "noCompensation": true}, "uuid": "01KQ5KPM67FEA5M6Q51QB51H3T", "action": "create-order", "noCompensation": true}, "uuid": "01KQ5KPM67JRBS9VWJD6GVJH89", "action": "orderCreated", "noCompensation": false}, "uuid": "01KQ5KPM67NJ4074JNJ8WS68ZH", "action": "add-order-transaction", "noCompensation": false}, "uuid": "01KQ5KPM67M6SGJZMT72CVRD2D", "action": "authorize-payment-session-step", "noCompensation": false}, "uuid": "01KQ5KPM66ZPVW9QNPTQ6E3BXC", "action": "beforePaymentAuthorization", "noCompensation": false}, "uuid": "01KQ5KPM66A9V3H0V3SQVYC02D", "action": "emit-event-step", "noCompensation": false}], "uuid": "01KQ5KPM65WWW5DWEY5GSQQDGV", "action": "create-orders", "noCompensation": false}, "uuid": "01KQ5KPM65PTWMBMCYKQQX2R1N", "action": "validate-shipping", "noCompensation": true}, "uuid": "01KQ5KPM643H92SV0CCMSPD0BT", "async": false, "action": "shipping-options-query", "noCompensation": true, "compensateAsync": false}, "uuid": "01KQ5KPM64NHC1E3WQ2XYYF5KB", "action": "validate", "noCompensation": false}, "uuid": "01KQ5KPM63BMY9MF062B9CBMKY", "action": "compensate-payment-if-needed", "noCompensation": false}, "uuid": "01KQ5KPM63B5SD58JBJRY4KY2B", "action": "validate-cart-payments", "noCompensation": true}, "uuid": "01KQ5KPM63PQDRXFNG27VQW0BT", "async": false, "action": "cart-query", "noCompensation": true, "compensateAsync": false}], "uuid": "01KQ5KPM63ZEAHYXFRWRFH21SP", "action": "acquire-lock-step", "noCompensation": false}, "timedOutAt": null, "hasAsyncSteps": false, "transactionId": "auto-01KQ5KXACAY0G7VN6B7B7EGXBY", "hasFailedSteps": false, "hasSkippedSteps": false, "hasWaitingSteps": false, "hasRevertedSteps": false, "hasSkippedOnFailureSteps": false}	{"data": {"invoke": {"validate": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)"}}, "cart-query": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "output": {"data": {"id": "cart_01KQ5KWHCMDZR40WS4C208K5RA", "email": "smlzanatto64@gmail.com", "items": [{"id": "cali_01KQ5KWHNDYNK49SC1YSDFGZA5", "title": "Camiseta Oversized Cristo Vive", "total": 64.99, "cart_id": "cart_01KQ5KWHCMDZR40WS4C208K5RA", "variant": {"id": "variant_01KQ394S6AG2EPS0DRX14A43JG", "product": {"id": "prod_01KQ394S3SVPRBN5HMMGASG417", "is_giftcard": false, "shipping_profile": {"id": "sp_01KP9XX3SZ7SG4EJ4HJ2S63AD4"}}, "product_id": "prod_01KQ394S3SVPRBN5HMMGASG417", "allow_backorder": false, "inventory_items": [{"inventory": {"id": "iitem_01KQ5AHRD49YPRDNR9A62E10NS", "location_levels": [{"location_id": "sloc_01KP9XXJXJS8TKZ9MTY36N7EK3", "stock_locations": [{"id": "sloc_01KP9XXJXJS8TKZ9MTY36N7EK3", "name": "Estoque Brasil", "sales_channels": [{"id": "sc_01KP9XXJRXGGT65H782XD56SVH", "name": "Default Sales Channel"}]}], "stocked_quantity": 5, "reserved_quantity": 0, "raw_stocked_quantity": {"value": "5", "precision": 20}, "raw_reserved_quantity": {"value": "0", "precision": 20}}], "requires_shipping": true}, "variant_id": "variant_01KQ394S6AG2EPS0DRX14A43JG", "inventory_item_id": "iitem_01KQ5AHRD49YPRDNR9A62E10NS", "required_quantity": 1}], "manage_inventory": true}, "metadata": {}, "quantity": 1, "subtitle": "M", "subtotal": 64.99, "raw_total": {"value": "64.99", "precision": 20}, "tax_lines": [], "tax_total": 0, "thumbnail": "http://localhost:9000/static/1777152975705-camiseta%20super%20ra%C3%83%C2%A7a%20comprimido.png", "created_at": "2026-04-26T19:22:29.421Z", "deleted_at": null, "product_id": "prod_01KQ394S3SVPRBN5HMMGASG417", "unit_price": 64.99, "updated_at": "2026-04-26T19:22:29.421Z", "variant_id": "variant_01KQ394S6AG2EPS0DRX14A43JG", "adjustments": [], "is_giftcard": false, "variant_sku": null, "product_type": null, "raw_subtotal": {"value": "64.99", "precision": 20}, "product_title": "Camiseta Oversized Cristo Vive", "raw_tax_total": {"value": "0", "precision": 20}, "variant_title": "M", "discount_total": 0, "original_total": 64.99, "product_handle": "camiseta-cristo-vive", "raw_unit_price": {"value": "64.99", "precision": 20}, "is_custom_price": false, "is_discountable": false, "product_type_id": null, "variant_barcode": null, "is_tax_inclusive": false, "product_subtitle": "", "discount_subtotal": 0, "original_subtotal": 64.99, "requires_shipping": true, "discount_tax_total": 0, "original_tax_total": 0, "product_collection": "Camisetas", "raw_discount_total": {"value": "0", "precision": 20}, "raw_original_total": {"value": "64.99", "precision": 20}, "product_description": "", "compare_at_unit_price": null, "raw_discount_subtotal": {"value": "0", "precision": 20}, "raw_original_subtotal": {"value": "64.99", "precision": 20}, "variant_option_values": null, "raw_discount_tax_total": {"value": "0", "precision": 20}, "raw_original_tax_total": {"value": "0", "precision": 20}, "raw_compare_at_unit_price": null}], "total": 84.99, "locale": "pt-BR", "region": {"id": "reg_01KPA20S5NSBGW8AD90T7HEH4K", "name": "Brazil", "metadata": null, "created_at": "2026-04-16T02:30:44.150Z", "deleted_at": null, "updated_at": "2026-04-16T02:30:44.150Z", "currency_code": "brl", "automatic_taxes": true}, "customer": {"id": "cus_01KQ5DE2ZGD5GKGPCKNJ49468C", "email": "smlzanatto64@gmail.com", "phone": null, "metadata": null, "last_name": null, "created_at": "2026-04-26T17:29:44.177Z", "created_by": null, "deleted_at": null, "first_name": null, "updated_at": "2026-04-26T17:29:44.177Z", "has_account": false, "company_name": null}, "metadata": null, "subtotal": 84.99, "raw_total": {"value": "84.99", "precision": 20}, "region_id": "reg_01KPA20S5NSBGW8AD90T7HEH4K", "tax_total": 0, "created_at": "2026-04-26T19:22:29.143Z", "item_total": 64.99, "promotions": [], "updated_at": "2026-04-26T19:22:45.870Z", "customer_id": "cus_01KQ5DE2ZGD5GKGPCKNJ49468C", "completed_at": null, "credit_lines": [], "raw_subtotal": {"value": "84.99", "precision": 20}, "currency_code": "brl", "item_subtotal": 64.99, "raw_tax_total": {"value": "0", "precision": 20}, "discount_total": 0, "item_tax_total": 0, "original_total": 84.99, "raw_item_total": {"value": "64.99", "precision": 20}, "shipping_total": 20, "billing_address": {"id": "caaddr_01KQ5KX1QE6T4Z6KD3NP4NK5G1", "city": "Campo Grande", "phone": "", "company": "", "metadata": null, "province": "", "address_1": "Rua Assaré, 729", "address_2": "", "last_name": "Zanatto", "created_at": "2026-04-26T19:22:45.870Z", "deleted_at": null, "first_name": "Samuel", "updated_at": "2026-04-26T19:22:45.870Z", "customer_id": null, "postal_code": "79070023", "country_code": "br"}, "sales_channel_id": "sc_01KP9XXJRXGGT65H782XD56SVH", "shipping_address": {"id": "caaddr_01KQ5KX1QE3SH15PBW6190ZY8X", "city": "Campo Grande", "phone": "", "company": "", "metadata": null, "province": "", "address_1": "Rua Assaré, 729", "address_2": "", "last_name": "Zanatto", "created_at": "2026-04-26T19:22:45.870Z", "deleted_at": null, "first_name": "Samuel", "updated_at": "2026-04-26T19:22:45.870Z", "customer_id": null, "postal_code": "79070023", "country_code": "br"}, "shipping_methods": [{"id": "casm_01KQ5KX4KAQA00RTWC9XV2SHC2", "data": {}, "name": "Envio Padrão", "total": 20, "amount": 20, "cart_id": "cart_01KQ5KWHCMDZR40WS4C208K5RA", "metadata": null, "subtotal": 20, "raw_total": {"value": "20", "precision": 20}, "tax_lines": [], "tax_total": 0, "created_at": "2026-04-26T19:22:48.810Z", "deleted_at": null, "raw_amount": {"value": "20", "precision": 20}, "updated_at": "2026-04-26T19:22:48.810Z", "adjustments": [], "description": null, "raw_subtotal": {"value": "20", "precision": 20}, "raw_tax_total": {"value": "0", "precision": 20}, "discount_total": 0, "original_total": 20, "is_tax_inclusive": false, "discount_subtotal": 0, "original_subtotal": 20, "discount_tax_total": 0, "original_tax_total": 0, "raw_discount_total": {"value": "0", "precision": 20}, "raw_original_total": {"value": "20", "precision": 20}, "shipping_option_id": "so_01KP9XXK05TKCGKDGWNEA8GGZZ", "raw_discount_subtotal": {"value": "0", "precision": 20}, "raw_original_subtotal": {"value": "20", "precision": 20}, "raw_discount_tax_total": {"value": "0", "precision": 20}, "raw_original_tax_total": {"value": "0", "precision": 20}}], "raw_item_subtotal": {"value": "64.99", "precision": 20}, "shipping_subtotal": 20, "discount_tax_total": 0, "original_tax_total": 0, "payment_collection": {"id": "pay_col_01KQ5KX749WPM6CV5PJFNHSZ97", "amount": 84.99, "status": "not_paid", "metadata": null, "created_at": "2026-04-26T19:22:51.401Z", "deleted_at": null, "raw_amount": {"value": "84.99", "precision": 20}, "updated_at": "2026-04-26T19:22:51.401Z", "completed_at": null, "currency_code": "brl", "captured_amount": null, "refunded_amount": null, "payment_sessions": [{"id": "payses_01KQ5KX75H3W02WGCMKPC452CH", "data": {}, "amount": 84.99, "status": "pending", "context": {}, "metadata": {}, "created_at": "2026-04-26T19:22:51.441Z", "deleted_at": null, "raw_amount": {"value": "84.99", "precision": 20}, "updated_at": "2026-04-26T19:22:51.441Z", "provider_id": "pp_system_default", "authorized_at": null, "currency_code": "brl", "payment_collection_id": "pay_col_01KQ5KX749WPM6CV5PJFNHSZ97"}], "authorized_amount": null, "raw_captured_amount": null, "raw_refunded_amount": null, "raw_authorized_amount": null}, "raw_discount_total": {"value": "0", "precision": 20}, "raw_item_tax_total": {"value": "0", "precision": 20}, "raw_original_total": {"value": "84.99", "precision": 20}, "raw_shipping_total": {"value": "20", "precision": 20}, "shipping_tax_total": 0, "original_item_total": 64.99, "raw_shipping_subtotal": {"value": "20", "precision": 20}, "original_item_subtotal": 64.99, "raw_discount_tax_total": {"value": "0", "precision": 20}, "raw_original_tax_total": {"value": "0", "precision": 20}, "raw_shipping_tax_total": {"value": "0", "precision": 20}, "original_item_tax_total": 0, "original_shipping_total": 20, "raw_original_item_total": {"value": "64.99", "precision": 20}, "original_shipping_subtotal": 20, "raw_original_item_subtotal": {"value": "64.99", "precision": 20}, "original_shipping_tax_total": 0, "raw_original_item_tax_total": {"value": "0", "precision": 20}, "raw_original_shipping_total": {"value": "20", "precision": 20}, "raw_original_shipping_subtotal": {"value": "20", "precision": 20}, "raw_original_shipping_tax_total": {"value": "0", "precision": 20}}}, "compensateInput": {"data": {"id": "cart_01KQ5KWHCMDZR40WS4C208K5RA", "email": "smlzanatto64@gmail.com", "items": [{"id": "cali_01KQ5KWHNDYNK49SC1YSDFGZA5", "title": "Camiseta Oversized Cristo Vive", "total": 64.99, "cart_id": "cart_01KQ5KWHCMDZR40WS4C208K5RA", "variant": {"id": "variant_01KQ394S6AG2EPS0DRX14A43JG", "product": {"id": "prod_01KQ394S3SVPRBN5HMMGASG417", "is_giftcard": false, "shipping_profile": {"id": "sp_01KP9XX3SZ7SG4EJ4HJ2S63AD4"}}, "product_id": "prod_01KQ394S3SVPRBN5HMMGASG417", "allow_backorder": false, "inventory_items": [{"inventory": {"id": "iitem_01KQ5AHRD49YPRDNR9A62E10NS", "location_levels": [{"location_id": "sloc_01KP9XXJXJS8TKZ9MTY36N7EK3", "stock_locations": [{"id": "sloc_01KP9XXJXJS8TKZ9MTY36N7EK3", "name": "Estoque Brasil", "sales_channels": [{"id": "sc_01KP9XXJRXGGT65H782XD56SVH", "name": "Default Sales Channel"}]}], "stocked_quantity": 5, "reserved_quantity": 0, "raw_stocked_quantity": {"value": "5", "precision": 20}, "raw_reserved_quantity": {"value": "0", "precision": 20}}], "requires_shipping": true}, "variant_id": "variant_01KQ394S6AG2EPS0DRX14A43JG", "inventory_item_id": "iitem_01KQ5AHRD49YPRDNR9A62E10NS", "required_quantity": 1}], "manage_inventory": true}, "metadata": {}, "quantity": 1, "subtitle": "M", "subtotal": 64.99, "raw_total": {"value": "64.99", "precision": 20}, "tax_lines": [], "tax_total": 0, "thumbnail": "http://localhost:9000/static/1777152975705-camiseta%20super%20ra%C3%83%C2%A7a%20comprimido.png", "created_at": "2026-04-26T19:22:29.421Z", "deleted_at": null, "product_id": "prod_01KQ394S3SVPRBN5HMMGASG417", "unit_price": 64.99, "updated_at": "2026-04-26T19:22:29.421Z", "variant_id": "variant_01KQ394S6AG2EPS0DRX14A43JG", "adjustments": [], "is_giftcard": false, "variant_sku": null, "product_type": null, "raw_subtotal": {"value": "64.99", "precision": 20}, "product_title": "Camiseta Oversized Cristo Vive", "raw_tax_total": {"value": "0", "precision": 20}, "variant_title": "M", "discount_total": 0, "original_total": 64.99, "product_handle": "camiseta-cristo-vive", "raw_unit_price": {"value": "64.99", "precision": 20}, "is_custom_price": false, "is_discountable": false, "product_type_id": null, "variant_barcode": null, "is_tax_inclusive": false, "product_subtitle": "", "discount_subtotal": 0, "original_subtotal": 64.99, "requires_shipping": true, "discount_tax_total": 0, "original_tax_total": 0, "product_collection": "Camisetas", "raw_discount_total": {"value": "0", "precision": 20}, "raw_original_total": {"value": "64.99", "precision": 20}, "product_description": "", "compare_at_unit_price": null, "raw_discount_subtotal": {"value": "0", "precision": 20}, "raw_original_subtotal": {"value": "64.99", "precision": 20}, "variant_option_values": null, "raw_discount_tax_total": {"value": "0", "precision": 20}, "raw_original_tax_total": {"value": "0", "precision": 20}, "raw_compare_at_unit_price": null}], "total": 84.99, "locale": "pt-BR", "region": {"id": "reg_01KPA20S5NSBGW8AD90T7HEH4K", "name": "Brazil", "metadata": null, "created_at": "2026-04-16T02:30:44.150Z", "deleted_at": null, "updated_at": "2026-04-16T02:30:44.150Z", "currency_code": "brl", "automatic_taxes": true}, "customer": {"id": "cus_01KQ5DE2ZGD5GKGPCKNJ49468C", "email": "smlzanatto64@gmail.com", "phone": null, "metadata": null, "last_name": null, "created_at": "2026-04-26T17:29:44.177Z", "created_by": null, "deleted_at": null, "first_name": null, "updated_at": "2026-04-26T17:29:44.177Z", "has_account": false, "company_name": null}, "metadata": null, "subtotal": 84.99, "raw_total": {"value": "84.99", "precision": 20}, "region_id": "reg_01KPA20S5NSBGW8AD90T7HEH4K", "tax_total": 0, "created_at": "2026-04-26T19:22:29.143Z", "item_total": 64.99, "promotions": [], "updated_at": "2026-04-26T19:22:45.870Z", "customer_id": "cus_01KQ5DE2ZGD5GKGPCKNJ49468C", "completed_at": null, "credit_lines": [], "raw_subtotal": {"value": "84.99", "precision": 20}, "currency_code": "brl", "item_subtotal": 64.99, "raw_tax_total": {"value": "0", "precision": 20}, "discount_total": 0, "item_tax_total": 0, "original_total": 84.99, "raw_item_total": {"value": "64.99", "precision": 20}, "shipping_total": 20, "billing_address": {"id": "caaddr_01KQ5KX1QE6T4Z6KD3NP4NK5G1", "city": "Campo Grande", "phone": "", "company": "", "metadata": null, "province": "", "address_1": "Rua Assaré, 729", "address_2": "", "last_name": "Zanatto", "created_at": "2026-04-26T19:22:45.870Z", "deleted_at": null, "first_name": "Samuel", "updated_at": "2026-04-26T19:22:45.870Z", "customer_id": null, "postal_code": "79070023", "country_code": "br"}, "sales_channel_id": "sc_01KP9XXJRXGGT65H782XD56SVH", "shipping_address": {"id": "caaddr_01KQ5KX1QE3SH15PBW6190ZY8X", "city": "Campo Grande", "phone": "", "company": "", "metadata": null, "province": "", "address_1": "Rua Assaré, 729", "address_2": "", "last_name": "Zanatto", "created_at": "2026-04-26T19:22:45.870Z", "deleted_at": null, "first_name": "Samuel", "updated_at": "2026-04-26T19:22:45.870Z", "customer_id": null, "postal_code": "79070023", "country_code": "br"}, "shipping_methods": [{"id": "casm_01KQ5KX4KAQA00RTWC9XV2SHC2", "data": {}, "name": "Envio Padrão", "total": 20, "amount": 20, "cart_id": "cart_01KQ5KWHCMDZR40WS4C208K5RA", "metadata": null, "subtotal": 20, "raw_total": {"value": "20", "precision": 20}, "tax_lines": [], "tax_total": 0, "created_at": "2026-04-26T19:22:48.810Z", "deleted_at": null, "raw_amount": {"value": "20", "precision": 20}, "updated_at": "2026-04-26T19:22:48.810Z", "adjustments": [], "description": null, "raw_subtotal": {"value": "20", "precision": 20}, "raw_tax_total": {"value": "0", "precision": 20}, "discount_total": 0, "original_total": 20, "is_tax_inclusive": false, "discount_subtotal": 0, "original_subtotal": 20, "discount_tax_total": 0, "original_tax_total": 0, "raw_discount_total": {"value": "0", "precision": 20}, "raw_original_total": {"value": "20", "precision": 20}, "shipping_option_id": "so_01KP9XXK05TKCGKDGWNEA8GGZZ", "raw_discount_subtotal": {"value": "0", "precision": 20}, "raw_original_subtotal": {"value": "20", "precision": 20}, "raw_discount_tax_total": {"value": "0", "precision": 20}, "raw_original_tax_total": {"value": "0", "precision": 20}}], "raw_item_subtotal": {"value": "64.99", "precision": 20}, "shipping_subtotal": 20, "discount_tax_total": 0, "original_tax_total": 0, "payment_collection": {"id": "pay_col_01KQ5KX749WPM6CV5PJFNHSZ97", "amount": 84.99, "status": "not_paid", "metadata": null, "created_at": "2026-04-26T19:22:51.401Z", "deleted_at": null, "raw_amount": {"value": "84.99", "precision": 20}, "updated_at": "2026-04-26T19:22:51.401Z", "completed_at": null, "currency_code": "brl", "captured_amount": null, "refunded_amount": null, "payment_sessions": [{"id": "payses_01KQ5KX75H3W02WGCMKPC452CH", "data": {}, "amount": 84.99, "status": "pending", "context": {}, "metadata": {}, "created_at": "2026-04-26T19:22:51.441Z", "deleted_at": null, "raw_amount": {"value": "84.99", "precision": 20}, "updated_at": "2026-04-26T19:22:51.441Z", "provider_id": "pp_system_default", "authorized_at": null, "currency_code": "brl", "payment_collection_id": "pay_col_01KQ5KX749WPM6CV5PJFNHSZ97"}], "authorized_amount": null, "raw_captured_amount": null, "raw_refunded_amount": null, "raw_authorized_amount": null}, "raw_discount_total": {"value": "0", "precision": 20}, "raw_item_tax_total": {"value": "0", "precision": 20}, "raw_original_total": {"value": "84.99", "precision": 20}, "raw_shipping_total": {"value": "20", "precision": 20}, "shipping_tax_total": 0, "original_item_total": 64.99, "raw_shipping_subtotal": {"value": "20", "precision": 20}, "original_item_subtotal": 64.99, "raw_discount_tax_total": {"value": "0", "precision": 20}, "raw_original_tax_total": {"value": "0", "precision": 20}, "raw_shipping_tax_total": {"value": "0", "precision": 20}, "original_item_tax_total": 0, "original_shipping_total": 20, "raw_original_item_total": {"value": "64.99", "precision": 20}, "original_shipping_subtotal": 20, "raw_original_item_subtotal": {"value": "64.99", "precision": 20}, "original_shipping_tax_total": 0, "raw_original_item_tax_total": {"value": "0", "precision": 20}, "raw_original_shipping_total": {"value": "20", "precision": 20}, "raw_original_shipping_subtotal": {"value": "20", "precision": 20}, "raw_original_shipping_tax_total": {"value": "0", "precision": 20}}}}}, "create-order": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "output": {"id": "order_01KQ5KXAEX3J2PGMMMHA7V60BT", "email": "smlzanatto64@gmail.com", "items": [{"id": "ordli_01KQ5KXAEYS18P7AJ7CS9ZK5SJ", "title": "Camiseta Oversized Cristo Vive", "detail": {"id": "orditem_01KQ5KXAEZ9ADQBTR0RP9DCJDA", "item_id": "ordli_01KQ5KXAEYS18P7AJ7CS9ZK5SJ", "version": 1, "metadata": null, "order_id": "order_01KQ5KXAEX3J2PGMMMHA7V60BT", "quantity": 1, "created_at": "2026-04-26T19:22:54.815Z", "deleted_at": null, "unit_price": null, "updated_at": "2026-04-26T19:22:54.815Z", "raw_quantity": {"value": "1", "precision": 20}, "raw_unit_price": null, "shipped_quantity": 0, "delivered_quantity": 0, "fulfilled_quantity": 0, "raw_shipped_quantity": {"value": "0", "precision": 20}, "written_off_quantity": 0, "compare_at_unit_price": null, "raw_delivered_quantity": {"value": "0", "precision": 20}, "raw_fulfilled_quantity": {"value": "0", "precision": 20}, "raw_written_off_quantity": {"value": "0", "precision": 20}, "return_received_quantity": 0, "raw_compare_at_unit_price": null, "return_dismissed_quantity": 0, "return_requested_quantity": 0, "raw_return_received_quantity": {"value": "0", "precision": 20}, "raw_return_dismissed_quantity": {"value": "0", "precision": 20}, "raw_return_requested_quantity": {"value": "0", "precision": 20}}, "metadata": {}, "quantity": 1, "subtitle": "M", "tax_lines": [], "thumbnail": "http://localhost:9000/static/1777152975705-camiseta%20super%20ra%C3%83%C2%A7a%20comprimido.png", "created_at": "2026-04-26T19:22:54.815Z", "deleted_at": null, "product_id": "prod_01KQ394S3SVPRBN5HMMGASG417", "unit_price": 64.99, "updated_at": "2026-04-26T19:22:54.815Z", "variant_id": "variant_01KQ394S6AG2EPS0DRX14A43JG", "adjustments": [], "is_giftcard": false, "variant_sku": null, "product_type": null, "raw_quantity": {"value": "1", "precision": 20}, "product_title": "Camiseta Oversized Cristo Vive", "variant_title": "M", "product_handle": "camiseta-cristo-vive", "raw_unit_price": {"value": "64.99", "precision": 20}, "is_custom_price": false, "is_discountable": false, "product_type_id": null, "variant_barcode": null, "is_tax_inclusive": false, "product_subtitle": "", "requires_shipping": true, "product_collection": "Camisetas", "product_description": "", "compare_at_unit_price": null, "variant_option_values": null, "raw_compare_at_unit_price": null}], "locale": "pt-BR", "status": "pending", "summary": {"paid_total": 0, "raw_paid_total": {"value": "0", "precision": 20}, "refunded_total": 0, "accounting_total": 84.99, "credit_line_total": 0, "transaction_total": 0, "pending_difference": 84.99, "raw_refunded_total": {"value": "0", "precision": 20}, "current_order_total": 84.99, "original_order_total": 84.99, "raw_accounting_total": {"value": "84.99", "precision": 20}, "raw_credit_line_total": {"value": "0", "precision": 20}, "raw_transaction_total": {"value": "0", "precision": 20}, "raw_pending_difference": {"value": "84.99", "precision": 20}, "raw_current_order_total": {"value": "84.99", "precision": 20}, "raw_original_order_total": {"value": "84.99", "precision": 20}}, "version": 1, "metadata": null, "region_id": "reg_01KPA20S5NSBGW8AD90T7HEH4K", "created_at": "2026-04-26T19:22:54.815Z", "deleted_at": null, "display_id": 2, "updated_at": "2026-04-26T19:22:54.815Z", "canceled_at": null, "customer_id": "cus_01KQ5DE2ZGD5GKGPCKNJ49468C", "credit_lines": [], "transactions": [], "currency_code": "brl", "is_draft_order": false, "billing_address": {"id": "ordaddr_01KQ5KXAETD0Y4WQX69E8BAEGJ", "city": "Campo Grande", "phone": "", "company": "", "metadata": null, "province": "", "address_1": "Rua Assaré, 729", "address_2": "", "last_name": "Zanatto", "created_at": "2026-04-26T19:22:45.870Z", "deleted_at": null, "first_name": "Samuel", "updated_at": "2026-04-26T19:22:45.870Z", "customer_id": null, "postal_code": "79070023", "country_code": "br"}, "no_notification": false, "sales_channel_id": "sc_01KP9XXJRXGGT65H782XD56SVH", "shipping_address": {"id": "ordaddr_01KQ5KXAETJMT4ABKJHAR89F14", "city": "Campo Grande", "phone": "", "company": "", "metadata": null, "province": "", "address_1": "Rua Assaré, 729", "address_2": "", "last_name": "Zanatto", "created_at": "2026-04-26T19:22:45.870Z", "deleted_at": null, "first_name": "Samuel", "updated_at": "2026-04-26T19:22:45.870Z", "customer_id": null, "postal_code": "79070023", "country_code": "br"}, "shipping_methods": [{"id": "ordsm_01KQ5KXAEXCSGFJ40PF60CASX8", "data": {}, "name": "Envio Padrão", "amount": 20, "detail": {"id": "ordspmv_01KQ5KXAEX2S5V01B4PZK0RNVN", "version": 1, "claim_id": null, "order_id": "order_01KQ5KXAEX3J2PGMMMHA7V60BT", "return_id": null, "created_at": "2026-04-26T19:22:54.815Z", "deleted_at": null, "updated_at": "2026-04-26T19:22:54.815Z", "exchange_id": null, "shipping_method_id": "ordsm_01KQ5KXAEXCSGFJ40PF60CASX8"}, "metadata": null, "order_id": "order_01KQ5KXAEX3J2PGMMMHA7V60BT", "tax_lines": [], "created_at": "2026-04-26T19:22:54.815Z", "deleted_at": null, "raw_amount": {"value": "20", "precision": 20}, "updated_at": "2026-04-26T19:22:54.815Z", "adjustments": [], "description": null, "is_custom_amount": false, "is_tax_inclusive": false, "shipping_option_id": "so_01KP9XXK05TKCGKDGWNEA8GGZZ"}], "custom_display_id": null, "billing_address_id": "ordaddr_01KQ5KXAETD0Y4WQX69E8BAEGJ", "shipping_address_id": "ordaddr_01KQ5KXAETJMT4ABKJHAR89F14"}, "compensateInput": {"id": "order_01KQ5KXAEX3J2PGMMMHA7V60BT", "email": "smlzanatto64@gmail.com", "items": [{"id": "ordli_01KQ5KXAEYS18P7AJ7CS9ZK5SJ", "title": "Camiseta Oversized Cristo Vive", "detail": {"id": "orditem_01KQ5KXAEZ9ADQBTR0RP9DCJDA", "item_id": "ordli_01KQ5KXAEYS18P7AJ7CS9ZK5SJ", "version": 1, "metadata": null, "order_id": "order_01KQ5KXAEX3J2PGMMMHA7V60BT", "quantity": 1, "created_at": "2026-04-26T19:22:54.815Z", "deleted_at": null, "unit_price": null, "updated_at": "2026-04-26T19:22:54.815Z", "raw_quantity": {"value": "1", "precision": 20}, "raw_unit_price": null, "shipped_quantity": 0, "delivered_quantity": 0, "fulfilled_quantity": 0, "raw_shipped_quantity": {"value": "0", "precision": 20}, "written_off_quantity": 0, "compare_at_unit_price": null, "raw_delivered_quantity": {"value": "0", "precision": 20}, "raw_fulfilled_quantity": {"value": "0", "precision": 20}, "raw_written_off_quantity": {"value": "0", "precision": 20}, "return_received_quantity": 0, "raw_compare_at_unit_price": null, "return_dismissed_quantity": 0, "return_requested_quantity": 0, "raw_return_received_quantity": {"value": "0", "precision": 20}, "raw_return_dismissed_quantity": {"value": "0", "precision": 20}, "raw_return_requested_quantity": {"value": "0", "precision": 20}}, "metadata": {}, "quantity": 1, "subtitle": "M", "tax_lines": [], "thumbnail": "http://localhost:9000/static/1777152975705-camiseta%20super%20ra%C3%83%C2%A7a%20comprimido.png", "created_at": "2026-04-26T19:22:54.815Z", "deleted_at": null, "product_id": "prod_01KQ394S3SVPRBN5HMMGASG417", "unit_price": 64.99, "updated_at": "2026-04-26T19:22:54.815Z", "variant_id": "variant_01KQ394S6AG2EPS0DRX14A43JG", "adjustments": [], "is_giftcard": false, "variant_sku": null, "product_type": null, "raw_quantity": {"value": "1", "precision": 20}, "product_title": "Camiseta Oversized Cristo Vive", "variant_title": "M", "product_handle": "camiseta-cristo-vive", "raw_unit_price": {"value": "64.99", "precision": 20}, "is_custom_price": false, "is_discountable": false, "product_type_id": null, "variant_barcode": null, "is_tax_inclusive": false, "product_subtitle": "", "requires_shipping": true, "product_collection": "Camisetas", "product_description": "", "compare_at_unit_price": null, "variant_option_values": null, "raw_compare_at_unit_price": null}], "locale": "pt-BR", "status": "pending", "summary": {"paid_total": 0, "raw_paid_total": {"value": "0", "precision": 20}, "refunded_total": 0, "accounting_total": 84.99, "credit_line_total": 0, "transaction_total": 0, "pending_difference": 84.99, "raw_refunded_total": {"value": "0", "precision": 20}, "current_order_total": 84.99, "original_order_total": 84.99, "raw_accounting_total": {"value": "84.99", "precision": 20}, "raw_credit_line_total": {"value": "0", "precision": 20}, "raw_transaction_total": {"value": "0", "precision": 20}, "raw_pending_difference": {"value": "84.99", "precision": 20}, "raw_current_order_total": {"value": "84.99", "precision": 20}, "raw_original_order_total": {"value": "84.99", "precision": 20}}, "version": 1, "metadata": null, "region_id": "reg_01KPA20S5NSBGW8AD90T7HEH4K", "created_at": "2026-04-26T19:22:54.815Z", "deleted_at": null, "display_id": 2, "updated_at": "2026-04-26T19:22:54.815Z", "canceled_at": null, "customer_id": "cus_01KQ5DE2ZGD5GKGPCKNJ49468C", "credit_lines": [], "transactions": [], "currency_code": "brl", "is_draft_order": false, "billing_address": {"id": "ordaddr_01KQ5KXAETD0Y4WQX69E8BAEGJ", "city": "Campo Grande", "phone": "", "company": "", "metadata": null, "province": "", "address_1": "Rua Assaré, 729", "address_2": "", "last_name": "Zanatto", "created_at": "2026-04-26T19:22:45.870Z", "deleted_at": null, "first_name": "Samuel", "updated_at": "2026-04-26T19:22:45.870Z", "customer_id": null, "postal_code": "79070023", "country_code": "br"}, "no_notification": false, "sales_channel_id": "sc_01KP9XXJRXGGT65H782XD56SVH", "shipping_address": {"id": "ordaddr_01KQ5KXAETJMT4ABKJHAR89F14", "city": "Campo Grande", "phone": "", "company": "", "metadata": null, "province": "", "address_1": "Rua Assaré, 729", "address_2": "", "last_name": "Zanatto", "created_at": "2026-04-26T19:22:45.870Z", "deleted_at": null, "first_name": "Samuel", "updated_at": "2026-04-26T19:22:45.870Z", "customer_id": null, "postal_code": "79070023", "country_code": "br"}, "shipping_methods": [{"id": "ordsm_01KQ5KXAEXCSGFJ40PF60CASX8", "data": {}, "name": "Envio Padrão", "amount": 20, "detail": {"id": "ordspmv_01KQ5KXAEX2S5V01B4PZK0RNVN", "version": 1, "claim_id": null, "order_id": "order_01KQ5KXAEX3J2PGMMMHA7V60BT", "return_id": null, "created_at": "2026-04-26T19:22:54.815Z", "deleted_at": null, "updated_at": "2026-04-26T19:22:54.815Z", "exchange_id": null, "shipping_method_id": "ordsm_01KQ5KXAEXCSGFJ40PF60CASX8"}, "metadata": null, "order_id": "order_01KQ5KXAEX3J2PGMMMHA7V60BT", "tax_lines": [], "created_at": "2026-04-26T19:22:54.815Z", "deleted_at": null, "raw_amount": {"value": "20", "precision": 20}, "updated_at": "2026-04-26T19:22:54.815Z", "adjustments": [], "description": null, "is_custom_amount": false, "is_tax_inclusive": false, "shipping_option_id": "so_01KP9XXK05TKCGKDGWNEA8GGZZ"}], "custom_display_id": null, "billing_address_id": "ordaddr_01KQ5KXAETD0Y4WQX69E8BAEGJ", "shipping_address_id": "ordaddr_01KQ5KXAETJMT4ABKJHAR89F14"}}}, "orderCreated": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)"}}, "update-carts": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "output": [{"id": "cart_01KQ5KWHCMDZR40WS4C208K5RA", "email": "smlzanatto64@gmail.com", "locale": "pt-BR", "metadata": null, "region_id": "reg_01KPA20S5NSBGW8AD90T7HEH4K", "created_at": "2026-04-26T19:22:29.143Z", "deleted_at": null, "updated_at": "2026-04-26T19:22:54.876Z", "customer_id": "cus_01KQ5DE2ZGD5GKGPCKNJ49468C", "completed_at": "2026-04-26T19:22:54.846Z", "currency_code": "brl", "billing_address": {"id": "caaddr_01KQ5KX1QE6T4Z6KD3NP4NK5G1"}, "sales_channel_id": "sc_01KP9XXJRXGGT65H782XD56SVH", "shipping_address": {"id": "caaddr_01KQ5KX1QE3SH15PBW6190ZY8X"}, "billing_address_id": "caaddr_01KQ5KX1QE6T4Z6KD3NP4NK5G1", "shipping_address_id": "caaddr_01KQ5KX1QE3SH15PBW6190ZY8X"}], "compensateInput": {"cartsBeforeUpdate": [{"id": "cart_01KQ5KWHCMDZR40WS4C208K5RA", "email": "smlzanatto64@gmail.com", "metadata": null, "region_id": "reg_01KPA20S5NSBGW8AD90T7HEH4K", "customer_id": "cus_01KQ5DE2ZGD5GKGPCKNJ49468C", "completed_at": null, "currency_code": "brl", "sales_channel_id": "sc_01KP9XXJRXGGT65H782XD56SVH"}], "addressesBeforeUpdate": []}}}, "create-orders": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "output": [{"id": "order_01KQ5KXAEX3J2PGMMMHA7V60BT", "email": "smlzanatto64@gmail.com", "items": [{"id": "ordli_01KQ5KXAEYS18P7AJ7CS9ZK5SJ", "title": "Camiseta Oversized Cristo Vive", "detail": {"id": "orditem_01KQ5KXAEZ9ADQBTR0RP9DCJDA", "item_id": "ordli_01KQ5KXAEYS18P7AJ7CS9ZK5SJ", "version": 1, "metadata": null, "order_id": "order_01KQ5KXAEX3J2PGMMMHA7V60BT", "quantity": 1, "created_at": "2026-04-26T19:22:54.815Z", "deleted_at": null, "unit_price": null, "updated_at": "2026-04-26T19:22:54.815Z", "raw_quantity": {"value": "1", "precision": 20}, "raw_unit_price": null, "shipped_quantity": 0, "delivered_quantity": 0, "fulfilled_quantity": 0, "raw_shipped_quantity": {"value": "0", "precision": 20}, "written_off_quantity": 0, "compare_at_unit_price": null, "raw_delivered_quantity": {"value": "0", "precision": 20}, "raw_fulfilled_quantity": {"value": "0", "precision": 20}, "raw_written_off_quantity": {"value": "0", "precision": 20}, "return_received_quantity": 0, "raw_compare_at_unit_price": null, "return_dismissed_quantity": 0, "return_requested_quantity": 0, "raw_return_received_quantity": {"value": "0", "precision": 20}, "raw_return_dismissed_quantity": {"value": "0", "precision": 20}, "raw_return_requested_quantity": {"value": "0", "precision": 20}}, "metadata": {}, "quantity": 1, "subtitle": "M", "tax_lines": [], "thumbnail": "http://localhost:9000/static/1777152975705-camiseta%20super%20ra%C3%83%C2%A7a%20comprimido.png", "created_at": "2026-04-26T19:22:54.815Z", "deleted_at": null, "product_id": "prod_01KQ394S3SVPRBN5HMMGASG417", "unit_price": 64.99, "updated_at": "2026-04-26T19:22:54.815Z", "variant_id": "variant_01KQ394S6AG2EPS0DRX14A43JG", "adjustments": [], "is_giftcard": false, "variant_sku": null, "product_type": null, "raw_quantity": {"value": "1", "precision": 20}, "product_title": "Camiseta Oversized Cristo Vive", "variant_title": "M", "product_handle": "camiseta-cristo-vive", "raw_unit_price": {"value": "64.99", "precision": 20}, "is_custom_price": false, "is_discountable": false, "product_type_id": null, "variant_barcode": null, "is_tax_inclusive": false, "product_subtitle": "", "requires_shipping": true, "product_collection": "Camisetas", "product_description": "", "compare_at_unit_price": null, "variant_option_values": null, "raw_compare_at_unit_price": null}], "locale": "pt-BR", "status": "pending", "summary": {"paid_total": 0, "raw_paid_total": {"value": "0", "precision": 20}, "refunded_total": 0, "accounting_total": 84.99, "credit_line_total": 0, "transaction_total": 0, "pending_difference": 84.99, "raw_refunded_total": {"value": "0", "precision": 20}, "current_order_total": 84.99, "original_order_total": 84.99, "raw_accounting_total": {"value": "84.99", "precision": 20}, "raw_credit_line_total": {"value": "0", "precision": 20}, "raw_transaction_total": {"value": "0", "precision": 20}, "raw_pending_difference": {"value": "84.99", "precision": 20}, "raw_current_order_total": {"value": "84.99", "precision": 20}, "raw_original_order_total": {"value": "84.99", "precision": 20}}, "version": 1, "metadata": null, "region_id": "reg_01KPA20S5NSBGW8AD90T7HEH4K", "created_at": "2026-04-26T19:22:54.815Z", "deleted_at": null, "display_id": 2, "updated_at": "2026-04-26T19:22:54.815Z", "canceled_at": null, "customer_id": "cus_01KQ5DE2ZGD5GKGPCKNJ49468C", "credit_lines": [], "transactions": [], "currency_code": "brl", "is_draft_order": false, "billing_address": {"id": "ordaddr_01KQ5KXAETD0Y4WQX69E8BAEGJ", "city": "Campo Grande", "phone": "", "company": "", "metadata": null, "province": "", "address_1": "Rua Assaré, 729", "address_2": "", "last_name": "Zanatto", "created_at": "2026-04-26T19:22:45.870Z", "deleted_at": null, "first_name": "Samuel", "updated_at": "2026-04-26T19:22:45.870Z", "customer_id": null, "postal_code": "79070023", "country_code": "br"}, "no_notification": false, "sales_channel_id": "sc_01KP9XXJRXGGT65H782XD56SVH", "shipping_address": {"id": "ordaddr_01KQ5KXAETJMT4ABKJHAR89F14", "city": "Campo Grande", "phone": "", "company": "", "metadata": null, "province": "", "address_1": "Rua Assaré, 729", "address_2": "", "last_name": "Zanatto", "created_at": "2026-04-26T19:22:45.870Z", "deleted_at": null, "first_name": "Samuel", "updated_at": "2026-04-26T19:22:45.870Z", "customer_id": null, "postal_code": "79070023", "country_code": "br"}, "shipping_methods": [{"id": "ordsm_01KQ5KXAEXCSGFJ40PF60CASX8", "data": {}, "name": "Envio Padrão", "amount": 20, "detail": {"id": "ordspmv_01KQ5KXAEX2S5V01B4PZK0RNVN", "version": 1, "claim_id": null, "order_id": "order_01KQ5KXAEX3J2PGMMMHA7V60BT", "return_id": null, "created_at": "2026-04-26T19:22:54.815Z", "deleted_at": null, "updated_at": "2026-04-26T19:22:54.815Z", "exchange_id": null, "shipping_method_id": "ordsm_01KQ5KXAEXCSGFJ40PF60CASX8"}, "metadata": null, "order_id": "order_01KQ5KXAEX3J2PGMMMHA7V60BT", "tax_lines": [], "created_at": "2026-04-26T19:22:54.815Z", "deleted_at": null, "raw_amount": {"value": "20", "precision": 20}, "updated_at": "2026-04-26T19:22:54.815Z", "adjustments": [], "description": null, "is_custom_amount": false, "is_tax_inclusive": false, "shipping_option_id": "so_01KP9XXK05TKCGKDGWNEA8GGZZ"}], "custom_display_id": null, "billing_address_id": "ordaddr_01KQ5KXAETD0Y4WQX69E8BAEGJ", "shipping_address_id": "ordaddr_01KQ5KXAETJMT4ABKJHAR89F14"}], "compensateInput": ["order_01KQ5KXAEX3J2PGMMMHA7V60BT"]}}, "register-usage": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "output": null, "compensateInput": {"computedActions": [], "registrationContext": {"customer_id": "cus_01KQ5DE2ZGD5GKGPCKNJ49468C", "customer_email": "smlzanatto64@gmail.com"}}}}, "emit-event-step": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "output": {"eventName": "order.placed", "eventGroupId": "01KQ5KXACB0Z1HNTNAGVGYTTTA"}, "compensateInput": {"eventName": "order.placed", "eventGroupId": "01KQ5KXACB0Z1HNTNAGVGYTTTA"}}}, "acquire-lock-step": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "compensateInput": {"keys": ["cart_01KQ5KWHCMDZR40WS4C208K5RA"]}}}, "release-lock-step": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "output": true, "compensateInput": true}}, "validate-shipping": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)"}}, "create-remote-links": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "output": [{"cart": {"cart_id": "cart_01KQ5KWHCMDZR40WS4C208K5RA"}, "order": {"order_id": "order_01KQ5KXAEX3J2PGMMMHA7V60BT"}}, {"order": {"order_id": "order_01KQ5KXAEX3J2PGMMMHA7V60BT"}, "payment": {"payment_collection_id": "pay_col_01KQ5KX749WPM6CV5PJFNHSZ97"}}], "compensateInput": [{"cart": {"cart_id": "cart_01KQ5KWHCMDZR40WS4C208K5RA"}, "order": {"order_id": "order_01KQ5KXAEX3J2PGMMMHA7V60BT"}}, {"order": {"order_id": "order_01KQ5KXAEX3J2PGMMMHA7V60BT"}, "payment": {"payment_collection_id": "pay_col_01KQ5KX749WPM6CV5PJFNHSZ97"}}]}}, "use-query-graph-step": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "output": {}, "compensateInput": {}}}, "add-order-transaction": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "output": null, "compensateInput": null}}, "reserve-inventory-step": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "output": [{"id": "resitem_01KQ5KXAGHFDNT4J6ED96C8TPB", "metadata": null, "quantity": 1, "created_at": "2026-04-26T19:22:54.873Z", "created_by": null, "deleted_at": null, "updated_at": "2026-04-26T19:22:54.873Z", "description": null, "external_id": null, "location_id": "sloc_01KP9XXJXJS8TKZ9MTY36N7EK3", "line_item_id": "ordli_01KQ5KXAEYS18P7AJ7CS9ZK5SJ", "raw_quantity": {"value": "1", "precision": 20}, "allow_backorder": false, "inventory_item_id": "iitem_01KQ5AHRD49YPRDNR9A62E10NS"}], "compensateInput": {"reservations": ["resitem_01KQ5KXAGHFDNT4J6ED96C8TPB"], "inventoryItemIds": ["iitem_01KQ5AHRD49YPRDNR9A62E10NS"]}}}, "shipping-options-query": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "output": {"data": [{"id": "so_01KP9XXK05TKCGKDGWNEA8GGZZ", "shipping_profile_id": "sp_01KP9XX3SZ7SG4EJ4HJ2S63AD4"}]}, "compensateInput": {"data": [{"id": "so_01KP9XXK05TKCGKDGWNEA8GGZZ", "shipping_profile_id": "sp_01KP9XX3SZ7SG4EJ4HJ2S63AD4"}]}}}, "validate-cart-payments": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "output": [{"id": "payses_01KQ5KX75H3W02WGCMKPC452CH", "data": {}, "amount": 84.99, "status": "pending", "context": {}, "metadata": {}, "created_at": "2026-04-26T19:22:51.441Z", "deleted_at": null, "raw_amount": {"value": "84.99", "precision": 20}, "updated_at": "2026-04-26T19:22:51.441Z", "provider_id": "pp_system_default", "authorized_at": null, "currency_code": "brl", "payment_collection_id": "pay_col_01KQ5KX749WPM6CV5PJFNHSZ97"}], "compensateInput": [{"id": "payses_01KQ5KX75H3W02WGCMKPC452CH", "data": {}, "amount": 84.99, "status": "pending", "context": {}, "metadata": {}, "created_at": "2026-04-26T19:22:51.441Z", "deleted_at": null, "raw_amount": {"value": "84.99", "precision": 20}, "updated_at": "2026-04-26T19:22:51.441Z", "provider_id": "pp_system_default", "authorized_at": null, "currency_code": "brl", "payment_collection_id": "pay_col_01KQ5KX749WPM6CV5PJFNHSZ97"}]}}, "beforePaymentAuthorization": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)"}}, "compensate-payment-if-needed": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "output": "payses_01KQ5KX75H3W02WGCMKPC452CH", "compensateInput": "payses_01KQ5KX75H3W02WGCMKPC452CH"}}, "authorize-payment-session-step": {"__type": "Symbol(WorkflowWorkflowData)", "output": {"__type": "Symbol(WorkflowStepResponse)", "output": {"id": "pay_01KQ5KXAHJJFZJ5PQ0JR888BTY", "data": {}, "amount": 84.99, "captures": [], "metadata": null, "created_at": "2026-04-26T19:22:54.898Z", "deleted_at": null, "raw_amount": {"value": "84.99", "precision": 20}, "updated_at": "2026-04-26T19:22:54.898Z", "canceled_at": null, "captured_at": null, "provider_id": "pp_system_default", "currency_code": "brl", "payment_collection": {"id": "pay_col_01KQ5KX749WPM6CV5PJFNHSZ97"}, "payment_session_id": "payses_01KQ5KX75H3W02WGCMKPC452CH", "payment_collection_id": "pay_col_01KQ5KX749WPM6CV5PJFNHSZ97"}, "compensateInput": {"id": "pay_01KQ5KXAHJJFZJ5PQ0JR888BTY", "data": {}, "amount": 84.99, "captures": [], "metadata": null, "created_at": "2026-04-26T19:22:54.898Z", "deleted_at": null, "raw_amount": {"value": "84.99", "precision": 20}, "updated_at": "2026-04-26T19:22:54.898Z", "canceled_at": null, "captured_at": null, "provider_id": "pp_system_default", "currency_code": "brl", "payment_collection": {"id": "pay_col_01KQ5KX749WPM6CV5PJFNHSZ97"}, "payment_session_id": "payses_01KQ5KX75H3W02WGCMKPC452CH", "payment_collection_id": "pay_col_01KQ5KX749WPM6CV5PJFNHSZ97"}}}}, "payload": {"id": "cart_01KQ5KWHCMDZR40WS4C208K5RA"}, "compensate": {}}, "errors": []}	done	2026-04-26 19:22:54.739	2026-04-26 19:22:54.942	\N	259200	01KQ5KXACC6NFJSMHP0WHA3GMA
\.


--
-- Name: link_module_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.link_module_migrations_id_seq', 140, true);


--
-- Name: mikro_orm_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mikro_orm_migrations_id_seq', 164, true);


--
-- Name: order_change_action_ordering_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.order_change_action_ordering_seq', 1, true);


--
-- Name: order_claim_display_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.order_claim_display_id_seq', 1, false);


--
-- Name: order_display_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.order_display_id_seq', 2, true);


--
-- Name: order_exchange_display_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.order_exchange_display_id_seq', 1, false);


--
-- Name: return_display_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.return_display_id_seq', 1, false);


--
-- Name: script_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.script_migrations_id_seq', 2, true);


--
-- Name: account_holder account_holder_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.account_holder
    ADD CONSTRAINT account_holder_pkey PRIMARY KEY (id);


--
-- Name: api_key api_key_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.api_key
    ADD CONSTRAINT api_key_pkey PRIMARY KEY (id);


--
-- Name: application_method_buy_rules application_method_buy_rules_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.application_method_buy_rules
    ADD CONSTRAINT application_method_buy_rules_pkey PRIMARY KEY (application_method_id, promotion_rule_id);


--
-- Name: application_method_target_rules application_method_target_rules_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.application_method_target_rules
    ADD CONSTRAINT application_method_target_rules_pkey PRIMARY KEY (application_method_id, promotion_rule_id);


--
-- Name: auth_identity auth_identity_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_identity
    ADD CONSTRAINT auth_identity_pkey PRIMARY KEY (id);


--
-- Name: banner banner_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.banner
    ADD CONSTRAINT banner_pkey PRIMARY KEY (id);


--
-- Name: capture capture_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.capture
    ADD CONSTRAINT capture_pkey PRIMARY KEY (id);


--
-- Name: cart_address cart_address_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cart_address
    ADD CONSTRAINT cart_address_pkey PRIMARY KEY (id);


--
-- Name: cart_line_item_adjustment cart_line_item_adjustment_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cart_line_item_adjustment
    ADD CONSTRAINT cart_line_item_adjustment_pkey PRIMARY KEY (id);


--
-- Name: cart_line_item cart_line_item_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cart_line_item
    ADD CONSTRAINT cart_line_item_pkey PRIMARY KEY (id);


--
-- Name: cart_line_item_tax_line cart_line_item_tax_line_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cart_line_item_tax_line
    ADD CONSTRAINT cart_line_item_tax_line_pkey PRIMARY KEY (id);


--
-- Name: cart_payment_collection cart_payment_collection_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cart_payment_collection
    ADD CONSTRAINT cart_payment_collection_pkey PRIMARY KEY (cart_id, payment_collection_id);


--
-- Name: cart cart_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_pkey PRIMARY KEY (id);


--
-- Name: cart_promotion cart_promotion_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cart_promotion
    ADD CONSTRAINT cart_promotion_pkey PRIMARY KEY (cart_id, promotion_id);


--
-- Name: cart_shipping_method_adjustment cart_shipping_method_adjustment_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cart_shipping_method_adjustment
    ADD CONSTRAINT cart_shipping_method_adjustment_pkey PRIMARY KEY (id);


--
-- Name: cart_shipping_method cart_shipping_method_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cart_shipping_method
    ADD CONSTRAINT cart_shipping_method_pkey PRIMARY KEY (id);


--
-- Name: cart_shipping_method_tax_line cart_shipping_method_tax_line_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cart_shipping_method_tax_line
    ADD CONSTRAINT cart_shipping_method_tax_line_pkey PRIMARY KEY (id);


--
-- Name: credit_line credit_line_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.credit_line
    ADD CONSTRAINT credit_line_pkey PRIMARY KEY (id);


--
-- Name: currency currency_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.currency
    ADD CONSTRAINT currency_pkey PRIMARY KEY (code);


--
-- Name: customer_account_holder customer_account_holder_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.customer_account_holder
    ADD CONSTRAINT customer_account_holder_pkey PRIMARY KEY (customer_id, account_holder_id);


--
-- Name: customer_address customer_address_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.customer_address
    ADD CONSTRAINT customer_address_pkey PRIMARY KEY (id);


--
-- Name: customer_group_customer customer_group_customer_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.customer_group_customer
    ADD CONSTRAINT customer_group_customer_pkey PRIMARY KEY (id);


--
-- Name: customer_group customer_group_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.customer_group
    ADD CONSTRAINT customer_group_pkey PRIMARY KEY (id);


--
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);


--
-- Name: fulfillment_address fulfillment_address_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fulfillment_address
    ADD CONSTRAINT fulfillment_address_pkey PRIMARY KEY (id);


--
-- Name: fulfillment_item fulfillment_item_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fulfillment_item
    ADD CONSTRAINT fulfillment_item_pkey PRIMARY KEY (id);


--
-- Name: fulfillment_label fulfillment_label_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fulfillment_label
    ADD CONSTRAINT fulfillment_label_pkey PRIMARY KEY (id);


--
-- Name: fulfillment fulfillment_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fulfillment
    ADD CONSTRAINT fulfillment_pkey PRIMARY KEY (id);


--
-- Name: fulfillment_provider fulfillment_provider_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fulfillment_provider
    ADD CONSTRAINT fulfillment_provider_pkey PRIMARY KEY (id);


--
-- Name: fulfillment_set fulfillment_set_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fulfillment_set
    ADD CONSTRAINT fulfillment_set_pkey PRIMARY KEY (id);


--
-- Name: geo_zone geo_zone_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.geo_zone
    ADD CONSTRAINT geo_zone_pkey PRIMARY KEY (id);


--
-- Name: homepage_section homepage_section_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.homepage_section
    ADD CONSTRAINT homepage_section_pkey PRIMARY KEY (id);


--
-- Name: image image_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_pkey PRIMARY KEY (id);


--
-- Name: inventory_item inventory_item_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.inventory_item
    ADD CONSTRAINT inventory_item_pkey PRIMARY KEY (id);


--
-- Name: inventory_level inventory_level_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.inventory_level
    ADD CONSTRAINT inventory_level_pkey PRIMARY KEY (id);


--
-- Name: invite invite_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.invite
    ADD CONSTRAINT invite_pkey PRIMARY KEY (id);


--
-- Name: invite_rbac_role invite_rbac_role_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.invite_rbac_role
    ADD CONSTRAINT invite_rbac_role_pkey PRIMARY KEY (invite_id, rbac_role_id);


--
-- Name: link_module_migrations link_module_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.link_module_migrations
    ADD CONSTRAINT link_module_migrations_pkey PRIMARY KEY (id);


--
-- Name: link_module_migrations link_module_migrations_table_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.link_module_migrations
    ADD CONSTRAINT link_module_migrations_table_name_key UNIQUE (table_name);


--
-- Name: locale locale_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.locale
    ADD CONSTRAINT locale_pkey PRIMARY KEY (id);


--
-- Name: location_fulfillment_provider location_fulfillment_provider_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.location_fulfillment_provider
    ADD CONSTRAINT location_fulfillment_provider_pkey PRIMARY KEY (stock_location_id, fulfillment_provider_id);


--
-- Name: location_fulfillment_set location_fulfillment_set_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.location_fulfillment_set
    ADD CONSTRAINT location_fulfillment_set_pkey PRIMARY KEY (stock_location_id, fulfillment_set_id);


--
-- Name: mikro_orm_migrations mikro_orm_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mikro_orm_migrations
    ADD CONSTRAINT mikro_orm_migrations_pkey PRIMARY KEY (id);


--
-- Name: notification notification_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.notification
    ADD CONSTRAINT notification_pkey PRIMARY KEY (id);


--
-- Name: notification_provider notification_provider_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.notification_provider
    ADD CONSTRAINT notification_provider_pkey PRIMARY KEY (id);


--
-- Name: order_address order_address_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_address
    ADD CONSTRAINT order_address_pkey PRIMARY KEY (id);


--
-- Name: order_cart order_cart_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_cart
    ADD CONSTRAINT order_cart_pkey PRIMARY KEY (order_id, cart_id);


--
-- Name: order_change_action order_change_action_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_change_action
    ADD CONSTRAINT order_change_action_pkey PRIMARY KEY (id);


--
-- Name: order_change order_change_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_change
    ADD CONSTRAINT order_change_pkey PRIMARY KEY (id);


--
-- Name: order_claim_item_image order_claim_item_image_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_claim_item_image
    ADD CONSTRAINT order_claim_item_image_pkey PRIMARY KEY (id);


--
-- Name: order_claim_item order_claim_item_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_claim_item
    ADD CONSTRAINT order_claim_item_pkey PRIMARY KEY (id);


--
-- Name: order_claim order_claim_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_claim
    ADD CONSTRAINT order_claim_pkey PRIMARY KEY (id);


--
-- Name: order_credit_line order_credit_line_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_credit_line
    ADD CONSTRAINT order_credit_line_pkey PRIMARY KEY (id);


--
-- Name: order_exchange_item order_exchange_item_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_exchange_item
    ADD CONSTRAINT order_exchange_item_pkey PRIMARY KEY (id);


--
-- Name: order_exchange order_exchange_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_exchange
    ADD CONSTRAINT order_exchange_pkey PRIMARY KEY (id);


--
-- Name: order_fulfillment order_fulfillment_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_fulfillment
    ADD CONSTRAINT order_fulfillment_pkey PRIMARY KEY (order_id, fulfillment_id);


--
-- Name: order_item order_item_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_item
    ADD CONSTRAINT order_item_pkey PRIMARY KEY (id);


--
-- Name: order_line_item_adjustment order_line_item_adjustment_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_line_item_adjustment
    ADD CONSTRAINT order_line_item_adjustment_pkey PRIMARY KEY (id);


--
-- Name: order_line_item order_line_item_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_line_item
    ADD CONSTRAINT order_line_item_pkey PRIMARY KEY (id);


--
-- Name: order_line_item_tax_line order_line_item_tax_line_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_line_item_tax_line
    ADD CONSTRAINT order_line_item_tax_line_pkey PRIMARY KEY (id);


--
-- Name: order_payment_collection order_payment_collection_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_payment_collection
    ADD CONSTRAINT order_payment_collection_pkey PRIMARY KEY (order_id, payment_collection_id);


--
-- Name: order order_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."order"
    ADD CONSTRAINT order_pkey PRIMARY KEY (id);


--
-- Name: order_promotion order_promotion_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_promotion
    ADD CONSTRAINT order_promotion_pkey PRIMARY KEY (order_id, promotion_id);


--
-- Name: order_shipping_method_adjustment order_shipping_method_adjustment_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_shipping_method_adjustment
    ADD CONSTRAINT order_shipping_method_adjustment_pkey PRIMARY KEY (id);


--
-- Name: order_shipping_method order_shipping_method_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_shipping_method
    ADD CONSTRAINT order_shipping_method_pkey PRIMARY KEY (id);


--
-- Name: order_shipping_method_tax_line order_shipping_method_tax_line_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_shipping_method_tax_line
    ADD CONSTRAINT order_shipping_method_tax_line_pkey PRIMARY KEY (id);


--
-- Name: order_shipping order_shipping_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_shipping
    ADD CONSTRAINT order_shipping_pkey PRIMARY KEY (id);


--
-- Name: order_summary order_summary_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_summary
    ADD CONSTRAINT order_summary_pkey PRIMARY KEY (id);


--
-- Name: order_transaction order_transaction_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_transaction
    ADD CONSTRAINT order_transaction_pkey PRIMARY KEY (id);


--
-- Name: payment_collection_payment_providers payment_collection_payment_providers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment_collection_payment_providers
    ADD CONSTRAINT payment_collection_payment_providers_pkey PRIMARY KEY (payment_collection_id, payment_provider_id);


--
-- Name: payment_collection payment_collection_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment_collection
    ADD CONSTRAINT payment_collection_pkey PRIMARY KEY (id);


--
-- Name: payment payment_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_pkey PRIMARY KEY (id);


--
-- Name: payment_provider payment_provider_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment_provider
    ADD CONSTRAINT payment_provider_pkey PRIMARY KEY (id);


--
-- Name: payment_session payment_session_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment_session
    ADD CONSTRAINT payment_session_pkey PRIMARY KEY (id);


--
-- Name: price_list price_list_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.price_list
    ADD CONSTRAINT price_list_pkey PRIMARY KEY (id);


--
-- Name: price_list_rule price_list_rule_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.price_list_rule
    ADD CONSTRAINT price_list_rule_pkey PRIMARY KEY (id);


--
-- Name: price price_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.price
    ADD CONSTRAINT price_pkey PRIMARY KEY (id);


--
-- Name: price_preference price_preference_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.price_preference
    ADD CONSTRAINT price_preference_pkey PRIMARY KEY (id);


--
-- Name: price_rule price_rule_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.price_rule
    ADD CONSTRAINT price_rule_pkey PRIMARY KEY (id);


--
-- Name: price_set price_set_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.price_set
    ADD CONSTRAINT price_set_pkey PRIMARY KEY (id);


--
-- Name: product_category product_category_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.product_category
    ADD CONSTRAINT product_category_pkey PRIMARY KEY (id);


--
-- Name: product_category_product product_category_product_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.product_category_product
    ADD CONSTRAINT product_category_product_pkey PRIMARY KEY (product_id, product_category_id);


--
-- Name: product_collection product_collection_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.product_collection
    ADD CONSTRAINT product_collection_pkey PRIMARY KEY (id);


--
-- Name: product_option product_option_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.product_option
    ADD CONSTRAINT product_option_pkey PRIMARY KEY (id);


--
-- Name: product_option_value product_option_value_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.product_option_value
    ADD CONSTRAINT product_option_value_pkey PRIMARY KEY (id);


--
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);


--
-- Name: product_sales_channel product_sales_channel_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.product_sales_channel
    ADD CONSTRAINT product_sales_channel_pkey PRIMARY KEY (product_id, sales_channel_id);


--
-- Name: product_shipping_profile product_shipping_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.product_shipping_profile
    ADD CONSTRAINT product_shipping_profile_pkey PRIMARY KEY (product_id, shipping_profile_id);


--
-- Name: product_tag product_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.product_tag
    ADD CONSTRAINT product_tag_pkey PRIMARY KEY (id);


--
-- Name: product_tags product_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.product_tags
    ADD CONSTRAINT product_tags_pkey PRIMARY KEY (product_id, product_tag_id);


--
-- Name: product_type product_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.product_type
    ADD CONSTRAINT product_type_pkey PRIMARY KEY (id);


--
-- Name: product_variant_inventory_item product_variant_inventory_item_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.product_variant_inventory_item
    ADD CONSTRAINT product_variant_inventory_item_pkey PRIMARY KEY (variant_id, inventory_item_id);


--
-- Name: product_variant_option product_variant_option_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.product_variant_option
    ADD CONSTRAINT product_variant_option_pkey PRIMARY KEY (variant_id, option_value_id);


--
-- Name: product_variant product_variant_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.product_variant
    ADD CONSTRAINT product_variant_pkey PRIMARY KEY (id);


--
-- Name: product_variant_price_set product_variant_price_set_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.product_variant_price_set
    ADD CONSTRAINT product_variant_price_set_pkey PRIMARY KEY (variant_id, price_set_id);


--
-- Name: product_variant_product_image product_variant_product_image_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.product_variant_product_image
    ADD CONSTRAINT product_variant_product_image_pkey PRIMARY KEY (id);


--
-- Name: promotion_application_method promotion_application_method_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.promotion_application_method
    ADD CONSTRAINT promotion_application_method_pkey PRIMARY KEY (id);


--
-- Name: promotion_campaign_budget promotion_campaign_budget_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.promotion_campaign_budget
    ADD CONSTRAINT promotion_campaign_budget_pkey PRIMARY KEY (id);


--
-- Name: promotion_campaign_budget_usage promotion_campaign_budget_usage_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.promotion_campaign_budget_usage
    ADD CONSTRAINT promotion_campaign_budget_usage_pkey PRIMARY KEY (id);


--
-- Name: promotion_campaign promotion_campaign_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.promotion_campaign
    ADD CONSTRAINT promotion_campaign_pkey PRIMARY KEY (id);


--
-- Name: promotion promotion_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.promotion
    ADD CONSTRAINT promotion_pkey PRIMARY KEY (id);


--
-- Name: promotion_promotion_rule promotion_promotion_rule_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.promotion_promotion_rule
    ADD CONSTRAINT promotion_promotion_rule_pkey PRIMARY KEY (promotion_id, promotion_rule_id);


--
-- Name: promotion_rule promotion_rule_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.promotion_rule
    ADD CONSTRAINT promotion_rule_pkey PRIMARY KEY (id);


--
-- Name: promotion_rule_value promotion_rule_value_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.promotion_rule_value
    ADD CONSTRAINT promotion_rule_value_pkey PRIMARY KEY (id);


--
-- Name: provider_identity provider_identity_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.provider_identity
    ADD CONSTRAINT provider_identity_pkey PRIMARY KEY (id);


--
-- Name: publishable_api_key_sales_channel publishable_api_key_sales_channel_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.publishable_api_key_sales_channel
    ADD CONSTRAINT publishable_api_key_sales_channel_pkey PRIMARY KEY (publishable_key_id, sales_channel_id);


--
-- Name: refund refund_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.refund
    ADD CONSTRAINT refund_pkey PRIMARY KEY (id);


--
-- Name: refund_reason refund_reason_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.refund_reason
    ADD CONSTRAINT refund_reason_pkey PRIMARY KEY (id);


--
-- Name: region_country region_country_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.region_country
    ADD CONSTRAINT region_country_pkey PRIMARY KEY (iso_2);


--
-- Name: region_payment_provider region_payment_provider_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.region_payment_provider
    ADD CONSTRAINT region_payment_provider_pkey PRIMARY KEY (region_id, payment_provider_id);


--
-- Name: region region_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.region
    ADD CONSTRAINT region_pkey PRIMARY KEY (id);


--
-- Name: reservation_item reservation_item_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.reservation_item
    ADD CONSTRAINT reservation_item_pkey PRIMARY KEY (id);


--
-- Name: return_fulfillment return_fulfillment_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.return_fulfillment
    ADD CONSTRAINT return_fulfillment_pkey PRIMARY KEY (return_id, fulfillment_id);


--
-- Name: return_item return_item_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.return_item
    ADD CONSTRAINT return_item_pkey PRIMARY KEY (id);


--
-- Name: return return_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.return
    ADD CONSTRAINT return_pkey PRIMARY KEY (id);


--
-- Name: return_reason return_reason_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.return_reason
    ADD CONSTRAINT return_reason_pkey PRIMARY KEY (id);


--
-- Name: sales_channel sales_channel_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sales_channel
    ADD CONSTRAINT sales_channel_pkey PRIMARY KEY (id);


--
-- Name: sales_channel_stock_location sales_channel_stock_location_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sales_channel_stock_location
    ADD CONSTRAINT sales_channel_stock_location_pkey PRIMARY KEY (sales_channel_id, stock_location_id);


--
-- Name: script_migrations script_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.script_migrations
    ADD CONSTRAINT script_migrations_pkey PRIMARY KEY (id);


--
-- Name: service_zone service_zone_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_zone
    ADD CONSTRAINT service_zone_pkey PRIMARY KEY (id);


--
-- Name: shipping_option shipping_option_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.shipping_option
    ADD CONSTRAINT shipping_option_pkey PRIMARY KEY (id);


--
-- Name: shipping_option_price_set shipping_option_price_set_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.shipping_option_price_set
    ADD CONSTRAINT shipping_option_price_set_pkey PRIMARY KEY (shipping_option_id, price_set_id);


--
-- Name: shipping_option_rule shipping_option_rule_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.shipping_option_rule
    ADD CONSTRAINT shipping_option_rule_pkey PRIMARY KEY (id);


--
-- Name: shipping_option_type shipping_option_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.shipping_option_type
    ADD CONSTRAINT shipping_option_type_pkey PRIMARY KEY (id);


--
-- Name: shipping_profile shipping_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.shipping_profile
    ADD CONSTRAINT shipping_profile_pkey PRIMARY KEY (id);


--
-- Name: stock_location_address stock_location_address_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_location_address
    ADD CONSTRAINT stock_location_address_pkey PRIMARY KEY (id);


--
-- Name: stock_location stock_location_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_location
    ADD CONSTRAINT stock_location_pkey PRIMARY KEY (id);


--
-- Name: store_currency store_currency_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.store_currency
    ADD CONSTRAINT store_currency_pkey PRIMARY KEY (id);


--
-- Name: store_locale store_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.store_locale
    ADD CONSTRAINT store_locale_pkey PRIMARY KEY (id);


--
-- Name: store store_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.store
    ADD CONSTRAINT store_pkey PRIMARY KEY (id);


--
-- Name: tax_provider tax_provider_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tax_provider
    ADD CONSTRAINT tax_provider_pkey PRIMARY KEY (id);


--
-- Name: tax_rate tax_rate_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tax_rate
    ADD CONSTRAINT tax_rate_pkey PRIMARY KEY (id);


--
-- Name: tax_rate_rule tax_rate_rule_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tax_rate_rule
    ADD CONSTRAINT tax_rate_rule_pkey PRIMARY KEY (id);


--
-- Name: tax_region tax_region_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tax_region
    ADD CONSTRAINT tax_region_pkey PRIMARY KEY (id);


--
-- Name: translation translation_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.translation
    ADD CONSTRAINT translation_pkey PRIMARY KEY (id);


--
-- Name: translation_settings translation_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.translation_settings
    ADD CONSTRAINT translation_settings_pkey PRIMARY KEY (id);


--
-- Name: user user_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- Name: user_preference user_preference_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_preference
    ADD CONSTRAINT user_preference_pkey PRIMARY KEY (id);


--
-- Name: user_rbac_role user_rbac_role_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_rbac_role
    ADD CONSTRAINT user_rbac_role_pkey PRIMARY KEY (user_id, rbac_role_id);


--
-- Name: view_configuration view_configuration_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.view_configuration
    ADD CONSTRAINT view_configuration_pkey PRIMARY KEY (id);


--
-- Name: workflow_execution workflow_execution_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.workflow_execution
    ADD CONSTRAINT workflow_execution_pkey PRIMARY KEY (workflow_id, transaction_id, run_id);


--
-- Name: IDX_account_holder_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_account_holder_deleted_at" ON public.account_holder USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_account_holder_id_5cb3a0c0; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_account_holder_id_5cb3a0c0" ON public.customer_account_holder USING btree (account_holder_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_account_holder_provider_id_external_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "IDX_account_holder_provider_id_external_id_unique" ON public.account_holder USING btree (provider_id, external_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_api_key_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_api_key_deleted_at" ON public.api_key USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_api_key_redacted; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_api_key_redacted" ON public.api_key USING btree (redacted) WHERE (deleted_at IS NULL);


--
-- Name: IDX_api_key_revoked_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_api_key_revoked_at" ON public.api_key USING btree (revoked_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_api_key_token_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "IDX_api_key_token_unique" ON public.api_key USING btree (token);


--
-- Name: IDX_api_key_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_api_key_type" ON public.api_key USING btree (type);


--
-- Name: IDX_application_method_allocation; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_application_method_allocation" ON public.promotion_application_method USING btree (allocation);


--
-- Name: IDX_application_method_target_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_application_method_target_type" ON public.promotion_application_method USING btree (target_type);


--
-- Name: IDX_application_method_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_application_method_type" ON public.promotion_application_method USING btree (type);


--
-- Name: IDX_auth_identity_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_auth_identity_deleted_at" ON public.auth_identity USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_banner_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_banner_deleted_at" ON public.banner USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_campaign_budget_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_campaign_budget_type" ON public.promotion_campaign_budget USING btree (type);


--
-- Name: IDX_capture_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_capture_deleted_at" ON public.capture USING btree (deleted_at);


--
-- Name: IDX_capture_payment_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_capture_payment_id" ON public.capture USING btree (payment_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_cart_address_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_cart_address_deleted_at" ON public.cart_address USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_cart_billing_address_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_cart_billing_address_id" ON public.cart USING btree (billing_address_id) WHERE ((deleted_at IS NULL) AND (billing_address_id IS NOT NULL));


--
-- Name: IDX_cart_credit_line_reference_reference_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_cart_credit_line_reference_reference_id" ON public.credit_line USING btree (reference, reference_id) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_cart_currency_code; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_cart_currency_code" ON public.cart USING btree (currency_code);


--
-- Name: IDX_cart_customer_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_cart_customer_id" ON public.cart USING btree (customer_id) WHERE ((deleted_at IS NULL) AND (customer_id IS NOT NULL));


--
-- Name: IDX_cart_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_cart_deleted_at" ON public.cart USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_cart_id_-4a39f6c9; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_cart_id_-4a39f6c9" ON public.cart_payment_collection USING btree (cart_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_cart_id_-71069c16; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_cart_id_-71069c16" ON public.order_cart USING btree (cart_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_cart_id_-a9d4a70b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_cart_id_-a9d4a70b" ON public.cart_promotion USING btree (cart_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_cart_line_item_adjustment_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_cart_line_item_adjustment_deleted_at" ON public.cart_line_item_adjustment USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_cart_line_item_adjustment_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_cart_line_item_adjustment_item_id" ON public.cart_line_item_adjustment USING btree (item_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_cart_line_item_cart_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_cart_line_item_cart_id" ON public.cart_line_item USING btree (cart_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_cart_line_item_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_cart_line_item_deleted_at" ON public.cart_line_item USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_cart_line_item_tax_line_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_cart_line_item_tax_line_deleted_at" ON public.cart_line_item_tax_line USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_cart_line_item_tax_line_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_cart_line_item_tax_line_item_id" ON public.cart_line_item_tax_line USING btree (item_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_cart_region_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_cart_region_id" ON public.cart USING btree (region_id) WHERE ((deleted_at IS NULL) AND (region_id IS NOT NULL));


--
-- Name: IDX_cart_sales_channel_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_cart_sales_channel_id" ON public.cart USING btree (sales_channel_id) WHERE ((deleted_at IS NULL) AND (sales_channel_id IS NOT NULL));


--
-- Name: IDX_cart_shipping_address_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_cart_shipping_address_id" ON public.cart USING btree (shipping_address_id) WHERE ((deleted_at IS NULL) AND (shipping_address_id IS NOT NULL));


--
-- Name: IDX_cart_shipping_method_adjustment_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_cart_shipping_method_adjustment_deleted_at" ON public.cart_shipping_method_adjustment USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_cart_shipping_method_adjustment_shipping_method_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_cart_shipping_method_adjustment_shipping_method_id" ON public.cart_shipping_method_adjustment USING btree (shipping_method_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_cart_shipping_method_cart_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_cart_shipping_method_cart_id" ON public.cart_shipping_method USING btree (cart_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_cart_shipping_method_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_cart_shipping_method_deleted_at" ON public.cart_shipping_method USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_cart_shipping_method_tax_line_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_cart_shipping_method_tax_line_deleted_at" ON public.cart_shipping_method_tax_line USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_cart_shipping_method_tax_line_shipping_method_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_cart_shipping_method_tax_line_shipping_method_id" ON public.cart_shipping_method_tax_line USING btree (shipping_method_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_category_handle_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "IDX_category_handle_unique" ON public.product_category USING btree (handle) WHERE (deleted_at IS NULL);


--
-- Name: IDX_collection_handle_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "IDX_collection_handle_unique" ON public.product_collection USING btree (handle) WHERE (deleted_at IS NULL);


--
-- Name: IDX_credit_line_cart_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_credit_line_cart_id" ON public.credit_line USING btree (cart_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_credit_line_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_credit_line_deleted_at" ON public.credit_line USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_customer_address_customer_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_customer_address_customer_id" ON public.customer_address USING btree (customer_id);


--
-- Name: IDX_customer_address_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_customer_address_deleted_at" ON public.customer_address USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_customer_address_unique_customer_billing; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "IDX_customer_address_unique_customer_billing" ON public.customer_address USING btree (customer_id) WHERE (is_default_billing = true);


--
-- Name: IDX_customer_address_unique_customer_shipping; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "IDX_customer_address_unique_customer_shipping" ON public.customer_address USING btree (customer_id) WHERE (is_default_shipping = true);


--
-- Name: IDX_customer_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_customer_deleted_at" ON public.customer USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_customer_email_has_account_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "IDX_customer_email_has_account_unique" ON public.customer USING btree (email, has_account) WHERE (deleted_at IS NULL);


--
-- Name: IDX_customer_group_customer_customer_group_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_customer_group_customer_customer_group_id" ON public.customer_group_customer USING btree (customer_group_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_customer_group_customer_customer_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_customer_group_customer_customer_id" ON public.customer_group_customer USING btree (customer_id);


--
-- Name: IDX_customer_group_customer_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_customer_group_customer_deleted_at" ON public.customer_group_customer USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_customer_group_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_customer_group_deleted_at" ON public.customer_group USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_customer_group_name_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "IDX_customer_group_name_unique" ON public.customer_group USING btree (name) WHERE (deleted_at IS NULL);


--
-- Name: IDX_customer_id_5cb3a0c0; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_customer_id_5cb3a0c0" ON public.customer_account_holder USING btree (customer_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_deleted_at_-1d67bae40; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_deleted_at_-1d67bae40" ON public.publishable_api_key_sales_channel USING btree (deleted_at);


--
-- Name: IDX_deleted_at_-1e5992737; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_deleted_at_-1e5992737" ON public.location_fulfillment_provider USING btree (deleted_at);


--
-- Name: IDX_deleted_at_-31ea43a; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_deleted_at_-31ea43a" ON public.return_fulfillment USING btree (deleted_at);


--
-- Name: IDX_deleted_at_-4a39f6c9; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_deleted_at_-4a39f6c9" ON public.cart_payment_collection USING btree (deleted_at);


--
-- Name: IDX_deleted_at_-71069c16; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_deleted_at_-71069c16" ON public.order_cart USING btree (deleted_at);


--
-- Name: IDX_deleted_at_-71518339; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_deleted_at_-71518339" ON public.order_promotion USING btree (deleted_at);


--
-- Name: IDX_deleted_at_-85069d44; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_deleted_at_-85069d44" ON public.invite_rbac_role USING btree (deleted_at);


--
-- Name: IDX_deleted_at_-a9d4a70b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_deleted_at_-a9d4a70b" ON public.cart_promotion USING btree (deleted_at);


--
-- Name: IDX_deleted_at_-e88adb96; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_deleted_at_-e88adb96" ON public.location_fulfillment_set USING btree (deleted_at);


--
-- Name: IDX_deleted_at_-e8d2543e; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_deleted_at_-e8d2543e" ON public.order_fulfillment USING btree (deleted_at);


--
-- Name: IDX_deleted_at_17a262437; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_deleted_at_17a262437" ON public.product_shipping_profile USING btree (deleted_at);


--
-- Name: IDX_deleted_at_17b4c4e35; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_deleted_at_17b4c4e35" ON public.product_variant_inventory_item USING btree (deleted_at);


--
-- Name: IDX_deleted_at_1c934dab0; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_deleted_at_1c934dab0" ON public.region_payment_provider USING btree (deleted_at);


--
-- Name: IDX_deleted_at_20b454295; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_deleted_at_20b454295" ON public.product_sales_channel USING btree (deleted_at);


--
-- Name: IDX_deleted_at_26d06f470; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_deleted_at_26d06f470" ON public.sales_channel_stock_location USING btree (deleted_at);


--
-- Name: IDX_deleted_at_52b23597; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_deleted_at_52b23597" ON public.product_variant_price_set USING btree (deleted_at);


--
-- Name: IDX_deleted_at_5cb3a0c0; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_deleted_at_5cb3a0c0" ON public.customer_account_holder USING btree (deleted_at);


--
-- Name: IDX_deleted_at_64ff0c4c; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_deleted_at_64ff0c4c" ON public.user_rbac_role USING btree (deleted_at);


--
-- Name: IDX_deleted_at_ba32fa9c; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_deleted_at_ba32fa9c" ON public.shipping_option_price_set USING btree (deleted_at);


--
-- Name: IDX_deleted_at_f42b9949; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_deleted_at_f42b9949" ON public.order_payment_collection USING btree (deleted_at);


--
-- Name: IDX_fulfillment_address_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_fulfillment_address_deleted_at" ON public.fulfillment_address USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_fulfillment_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_fulfillment_deleted_at" ON public.fulfillment USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_fulfillment_id_-31ea43a; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_fulfillment_id_-31ea43a" ON public.return_fulfillment USING btree (fulfillment_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_fulfillment_id_-e8d2543e; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_fulfillment_id_-e8d2543e" ON public.order_fulfillment USING btree (fulfillment_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_fulfillment_item_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_fulfillment_item_deleted_at" ON public.fulfillment_item USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_fulfillment_item_fulfillment_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_fulfillment_item_fulfillment_id" ON public.fulfillment_item USING btree (fulfillment_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_fulfillment_item_inventory_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_fulfillment_item_inventory_item_id" ON public.fulfillment_item USING btree (inventory_item_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_fulfillment_item_line_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_fulfillment_item_line_item_id" ON public.fulfillment_item USING btree (line_item_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_fulfillment_label_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_fulfillment_label_deleted_at" ON public.fulfillment_label USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_fulfillment_label_fulfillment_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_fulfillment_label_fulfillment_id" ON public.fulfillment_label USING btree (fulfillment_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_fulfillment_location_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_fulfillment_location_id" ON public.fulfillment USING btree (location_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_fulfillment_provider_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_fulfillment_provider_deleted_at" ON public.fulfillment_provider USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_fulfillment_provider_id_-1e5992737; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_fulfillment_provider_id_-1e5992737" ON public.location_fulfillment_provider USING btree (fulfillment_provider_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_fulfillment_set_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_fulfillment_set_deleted_at" ON public.fulfillment_set USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_fulfillment_set_id_-e88adb96; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_fulfillment_set_id_-e88adb96" ON public.location_fulfillment_set USING btree (fulfillment_set_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_fulfillment_set_name_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "IDX_fulfillment_set_name_unique" ON public.fulfillment_set USING btree (name) WHERE (deleted_at IS NULL);


--
-- Name: IDX_fulfillment_shipping_option_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_fulfillment_shipping_option_id" ON public.fulfillment USING btree (shipping_option_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_geo_zone_city; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_geo_zone_city" ON public.geo_zone USING btree (city) WHERE ((deleted_at IS NULL) AND (city IS NOT NULL));


--
-- Name: IDX_geo_zone_country_code; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_geo_zone_country_code" ON public.geo_zone USING btree (country_code) WHERE (deleted_at IS NULL);


--
-- Name: IDX_geo_zone_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_geo_zone_deleted_at" ON public.geo_zone USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_geo_zone_province_code; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_geo_zone_province_code" ON public.geo_zone USING btree (province_code) WHERE ((deleted_at IS NULL) AND (province_code IS NOT NULL));


--
-- Name: IDX_geo_zone_service_zone_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_geo_zone_service_zone_id" ON public.geo_zone USING btree (service_zone_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_homepage_section_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_homepage_section_deleted_at" ON public.homepage_section USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_id_-1d67bae40; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_id_-1d67bae40" ON public.publishable_api_key_sales_channel USING btree (id);


--
-- Name: IDX_id_-1e5992737; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_id_-1e5992737" ON public.location_fulfillment_provider USING btree (id);


--
-- Name: IDX_id_-31ea43a; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_id_-31ea43a" ON public.return_fulfillment USING btree (id);


--
-- Name: IDX_id_-4a39f6c9; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_id_-4a39f6c9" ON public.cart_payment_collection USING btree (id);


--
-- Name: IDX_id_-71069c16; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_id_-71069c16" ON public.order_cart USING btree (id);


--
-- Name: IDX_id_-71518339; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_id_-71518339" ON public.order_promotion USING btree (id);


--
-- Name: IDX_id_-85069d44; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_id_-85069d44" ON public.invite_rbac_role USING btree (id);


--
-- Name: IDX_id_-a9d4a70b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_id_-a9d4a70b" ON public.cart_promotion USING btree (id);


--
-- Name: IDX_id_-e88adb96; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_id_-e88adb96" ON public.location_fulfillment_set USING btree (id);


--
-- Name: IDX_id_-e8d2543e; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_id_-e8d2543e" ON public.order_fulfillment USING btree (id);


--
-- Name: IDX_id_17a262437; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_id_17a262437" ON public.product_shipping_profile USING btree (id);


--
-- Name: IDX_id_17b4c4e35; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_id_17b4c4e35" ON public.product_variant_inventory_item USING btree (id);


--
-- Name: IDX_id_1c934dab0; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_id_1c934dab0" ON public.region_payment_provider USING btree (id);


--
-- Name: IDX_id_20b454295; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_id_20b454295" ON public.product_sales_channel USING btree (id);


--
-- Name: IDX_id_26d06f470; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_id_26d06f470" ON public.sales_channel_stock_location USING btree (id);


--
-- Name: IDX_id_52b23597; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_id_52b23597" ON public.product_variant_price_set USING btree (id);


--
-- Name: IDX_id_5cb3a0c0; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_id_5cb3a0c0" ON public.customer_account_holder USING btree (id);


--
-- Name: IDX_id_64ff0c4c; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_id_64ff0c4c" ON public.user_rbac_role USING btree (id);


--
-- Name: IDX_id_ba32fa9c; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_id_ba32fa9c" ON public.shipping_option_price_set USING btree (id);


--
-- Name: IDX_id_f42b9949; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_id_f42b9949" ON public.order_payment_collection USING btree (id);


--
-- Name: IDX_image_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_image_deleted_at" ON public.image USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_image_product_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_image_product_id" ON public.image USING btree (product_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_inventory_item_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_inventory_item_deleted_at" ON public.inventory_item USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_inventory_item_id_17b4c4e35; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_inventory_item_id_17b4c4e35" ON public.product_variant_inventory_item USING btree (inventory_item_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_inventory_item_sku; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "IDX_inventory_item_sku" ON public.inventory_item USING btree (sku) WHERE (deleted_at IS NULL);


--
-- Name: IDX_inventory_level_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_inventory_level_deleted_at" ON public.inventory_level USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_inventory_level_inventory_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_inventory_level_inventory_item_id" ON public.inventory_level USING btree (inventory_item_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_inventory_level_location_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_inventory_level_location_id" ON public.inventory_level USING btree (location_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_inventory_level_location_id_inventory_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "IDX_inventory_level_location_id_inventory_item_id" ON public.inventory_level USING btree (inventory_item_id, location_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_invite_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_invite_deleted_at" ON public.invite USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_invite_email_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "IDX_invite_email_unique" ON public.invite USING btree (email) WHERE (deleted_at IS NULL);


--
-- Name: IDX_invite_id_-85069d44; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_invite_id_-85069d44" ON public.invite_rbac_role USING btree (invite_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_invite_token; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_invite_token" ON public.invite USING btree (token) WHERE (deleted_at IS NULL);


--
-- Name: IDX_line_item_adjustment_promotion_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_line_item_adjustment_promotion_id" ON public.cart_line_item_adjustment USING btree (promotion_id) WHERE ((deleted_at IS NULL) AND (promotion_id IS NOT NULL));


--
-- Name: IDX_line_item_product_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_line_item_product_id" ON public.cart_line_item USING btree (product_id) WHERE ((deleted_at IS NULL) AND (product_id IS NOT NULL));


--
-- Name: IDX_line_item_product_type_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_line_item_product_type_id" ON public.order_line_item USING btree (product_type_id) WHERE ((deleted_at IS NULL) AND (product_type_id IS NOT NULL));


--
-- Name: IDX_line_item_tax_line_tax_rate_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_line_item_tax_line_tax_rate_id" ON public.cart_line_item_tax_line USING btree (tax_rate_id) WHERE ((deleted_at IS NULL) AND (tax_rate_id IS NOT NULL));


--
-- Name: IDX_line_item_variant_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_line_item_variant_id" ON public.cart_line_item USING btree (variant_id) WHERE ((deleted_at IS NULL) AND (variant_id IS NOT NULL));


--
-- Name: IDX_locale_code_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "IDX_locale_code_unique" ON public.locale USING btree (code) WHERE (deleted_at IS NULL);


--
-- Name: IDX_locale_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_locale_deleted_at" ON public.locale USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_notification_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_notification_deleted_at" ON public.notification USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_notification_idempotency_key_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "IDX_notification_idempotency_key_unique" ON public.notification USING btree (idempotency_key) WHERE (deleted_at IS NULL);


--
-- Name: IDX_notification_provider_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_notification_provider_deleted_at" ON public.notification_provider USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_notification_provider_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_notification_provider_id" ON public.notification USING btree (provider_id);


--
-- Name: IDX_notification_receiver_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_notification_receiver_id" ON public.notification USING btree (receiver_id);


--
-- Name: IDX_option_product_id_title_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "IDX_option_product_id_title_unique" ON public.product_option USING btree (product_id, title) WHERE (deleted_at IS NULL);


--
-- Name: IDX_option_value_option_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "IDX_option_value_option_id_unique" ON public.product_option_value USING btree (option_id, value) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_address_customer_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_address_customer_id" ON public.order_address USING btree (customer_id);


--
-- Name: IDX_order_address_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_address_deleted_at" ON public.order_address USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_billing_address_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_billing_address_id" ON public."order" USING btree (billing_address_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_change_action_claim_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_change_action_claim_id" ON public.order_change_action USING btree (claim_id) WHERE ((claim_id IS NOT NULL) AND (deleted_at IS NULL));


--
-- Name: IDX_order_change_action_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_change_action_deleted_at" ON public.order_change_action USING btree (deleted_at);


--
-- Name: IDX_order_change_action_exchange_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_change_action_exchange_id" ON public.order_change_action USING btree (exchange_id) WHERE ((exchange_id IS NOT NULL) AND (deleted_at IS NULL));


--
-- Name: IDX_order_change_action_order_change_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_change_action_order_change_id" ON public.order_change_action USING btree (order_change_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_change_action_order_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_change_action_order_id" ON public.order_change_action USING btree (order_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_change_action_ordering; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_change_action_ordering" ON public.order_change_action USING btree (ordering) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_change_action_return_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_change_action_return_id" ON public.order_change_action USING btree (return_id) WHERE ((return_id IS NOT NULL) AND (deleted_at IS NULL));


--
-- Name: IDX_order_change_change_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_change_change_type" ON public.order_change USING btree (change_type);


--
-- Name: IDX_order_change_claim_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_change_claim_id" ON public.order_change USING btree (claim_id) WHERE ((claim_id IS NOT NULL) AND (deleted_at IS NULL));


--
-- Name: IDX_order_change_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_change_deleted_at" ON public.order_change USING btree (deleted_at);


--
-- Name: IDX_order_change_exchange_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_change_exchange_id" ON public.order_change USING btree (exchange_id) WHERE ((exchange_id IS NOT NULL) AND (deleted_at IS NULL));


--
-- Name: IDX_order_change_order_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_change_order_id" ON public.order_change USING btree (order_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_change_order_id_version; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_change_order_id_version" ON public.order_change USING btree (order_id, version);


--
-- Name: IDX_order_change_return_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_change_return_id" ON public.order_change USING btree (return_id) WHERE ((return_id IS NOT NULL) AND (deleted_at IS NULL));


--
-- Name: IDX_order_change_status; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_change_status" ON public.order_change USING btree (status) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_change_version; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_change_version" ON public.order_change USING btree (order_id, version) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_claim_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_claim_deleted_at" ON public.order_claim USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_claim_display_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_claim_display_id" ON public.order_claim USING btree (display_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_claim_item_claim_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_claim_item_claim_id" ON public.order_claim_item USING btree (claim_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_claim_item_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_claim_item_deleted_at" ON public.order_claim_item USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_claim_item_image_claim_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_claim_item_image_claim_item_id" ON public.order_claim_item_image USING btree (claim_item_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_claim_item_image_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_claim_item_image_deleted_at" ON public.order_claim_item_image USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_order_claim_item_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_claim_item_item_id" ON public.order_claim_item USING btree (item_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_claim_order_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_claim_order_id" ON public.order_claim USING btree (order_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_claim_return_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_claim_return_id" ON public.order_claim USING btree (return_id) WHERE ((return_id IS NOT NULL) AND (deleted_at IS NULL));


--
-- Name: IDX_order_credit_line_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_credit_line_deleted_at" ON public.order_credit_line USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_order_credit_line_order_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_credit_line_order_id" ON public.order_credit_line USING btree (order_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_credit_line_order_id_version; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_credit_line_order_id_version" ON public.order_credit_line USING btree (order_id, version) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_currency_code; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_currency_code" ON public."order" USING btree (currency_code) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_custom_display_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "IDX_order_custom_display_id" ON public."order" USING btree (custom_display_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_customer_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_customer_id" ON public."order" USING btree (customer_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_deleted_at" ON public."order" USING btree (deleted_at);


--
-- Name: IDX_order_display_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_display_id" ON public."order" USING btree (display_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_exchange_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_exchange_deleted_at" ON public.order_exchange USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_exchange_display_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_exchange_display_id" ON public.order_exchange USING btree (display_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_exchange_item_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_exchange_item_deleted_at" ON public.order_exchange_item USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_exchange_item_exchange_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_exchange_item_exchange_id" ON public.order_exchange_item USING btree (exchange_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_exchange_item_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_exchange_item_item_id" ON public.order_exchange_item USING btree (item_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_exchange_order_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_exchange_order_id" ON public.order_exchange USING btree (order_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_exchange_return_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_exchange_return_id" ON public.order_exchange USING btree (return_id) WHERE ((return_id IS NOT NULL) AND (deleted_at IS NULL));


--
-- Name: IDX_order_id_-71069c16; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_id_-71069c16" ON public.order_cart USING btree (order_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_id_-71518339; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_id_-71518339" ON public.order_promotion USING btree (order_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_id_-e8d2543e; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_id_-e8d2543e" ON public.order_fulfillment USING btree (order_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_id_f42b9949; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_id_f42b9949" ON public.order_payment_collection USING btree (order_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_is_draft_order; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_is_draft_order" ON public."order" USING btree (is_draft_order) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_item_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_item_deleted_at" ON public.order_item USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_order_item_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_item_item_id" ON public.order_item USING btree (item_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_item_order_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_item_order_id" ON public.order_item USING btree (order_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_item_order_id_version; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_item_order_id_version" ON public.order_item USING btree (order_id, version) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_line_item_adjustment_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_line_item_adjustment_item_id" ON public.order_line_item_adjustment USING btree (item_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_line_item_product_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_line_item_product_id" ON public.order_line_item USING btree (product_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_line_item_tax_line_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_line_item_tax_line_item_id" ON public.order_line_item_tax_line USING btree (item_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_line_item_variant_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_line_item_variant_id" ON public.order_line_item USING btree (variant_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_region_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_region_id" ON public."order" USING btree (region_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_sales_channel_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_sales_channel_id" ON public."order" USING btree (sales_channel_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_shipping_address_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_shipping_address_id" ON public."order" USING btree (shipping_address_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_shipping_claim_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_shipping_claim_id" ON public.order_shipping USING btree (claim_id) WHERE ((claim_id IS NOT NULL) AND (deleted_at IS NULL));


--
-- Name: IDX_order_shipping_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_shipping_deleted_at" ON public.order_shipping USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_order_shipping_exchange_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_shipping_exchange_id" ON public.order_shipping USING btree (exchange_id) WHERE ((exchange_id IS NOT NULL) AND (deleted_at IS NULL));


--
-- Name: IDX_order_shipping_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_shipping_item_id" ON public.order_shipping USING btree (shipping_method_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_shipping_method_adjustment_shipping_method_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_shipping_method_adjustment_shipping_method_id" ON public.order_shipping_method_adjustment USING btree (shipping_method_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_shipping_method_shipping_option_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_shipping_method_shipping_option_id" ON public.order_shipping_method USING btree (shipping_option_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_shipping_method_tax_line_shipping_method_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_shipping_method_tax_line_shipping_method_id" ON public.order_shipping_method_tax_line USING btree (shipping_method_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_shipping_order_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_shipping_order_id" ON public.order_shipping USING btree (order_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_shipping_order_id_version; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_shipping_order_id_version" ON public.order_shipping USING btree (order_id, version) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_shipping_return_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_shipping_return_id" ON public.order_shipping USING btree (return_id) WHERE ((return_id IS NOT NULL) AND (deleted_at IS NULL));


--
-- Name: IDX_order_shipping_shipping_method_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_shipping_shipping_method_id" ON public.order_shipping USING btree (shipping_method_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_summary_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_summary_deleted_at" ON public.order_summary USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_order_summary_order_id_version; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_summary_order_id_version" ON public.order_summary USING btree (order_id, version) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_transaction_claim_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_transaction_claim_id" ON public.order_transaction USING btree (claim_id) WHERE ((claim_id IS NOT NULL) AND (deleted_at IS NULL));


--
-- Name: IDX_order_transaction_currency_code; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_transaction_currency_code" ON public.order_transaction USING btree (currency_code) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_transaction_exchange_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_transaction_exchange_id" ON public.order_transaction USING btree (exchange_id) WHERE ((exchange_id IS NOT NULL) AND (deleted_at IS NULL));


--
-- Name: IDX_order_transaction_order_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_transaction_order_id" ON public.order_transaction USING btree (order_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_transaction_order_id_version; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_transaction_order_id_version" ON public.order_transaction USING btree (order_id, version) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_transaction_reference_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_transaction_reference_id" ON public.order_transaction USING btree (reference_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_order_transaction_return_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_order_transaction_return_id" ON public.order_transaction USING btree (return_id) WHERE ((return_id IS NOT NULL) AND (deleted_at IS NULL));


--
-- Name: IDX_payment_collection_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_payment_collection_deleted_at" ON public.payment_collection USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_payment_collection_id_-4a39f6c9; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_payment_collection_id_-4a39f6c9" ON public.cart_payment_collection USING btree (payment_collection_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_payment_collection_id_f42b9949; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_payment_collection_id_f42b9949" ON public.order_payment_collection USING btree (payment_collection_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_payment_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_payment_deleted_at" ON public.payment USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_payment_payment_collection_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_payment_payment_collection_id" ON public.payment USING btree (payment_collection_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_payment_payment_session_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_payment_payment_session_id" ON public.payment USING btree (payment_session_id);


--
-- Name: IDX_payment_payment_session_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "IDX_payment_payment_session_id_unique" ON public.payment USING btree (payment_session_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_payment_provider_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_payment_provider_deleted_at" ON public.payment_provider USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_payment_provider_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_payment_provider_id" ON public.payment USING btree (provider_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_payment_provider_id_1c934dab0; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_payment_provider_id_1c934dab0" ON public.region_payment_provider USING btree (payment_provider_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_payment_session_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_payment_session_deleted_at" ON public.payment_session USING btree (deleted_at);


--
-- Name: IDX_payment_session_payment_collection_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_payment_session_payment_collection_id" ON public.payment_session USING btree (payment_collection_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_price_currency_code; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_price_currency_code" ON public.price USING btree (currency_code) WHERE (deleted_at IS NULL);


--
-- Name: IDX_price_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_price_deleted_at" ON public.price USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_price_list_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_price_list_deleted_at" ON public.price_list USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_price_list_id_status_starts_at_ends_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_price_list_id_status_starts_at_ends_at" ON public.price_list USING btree (id, status, starts_at, ends_at) WHERE ((deleted_at IS NULL) AND (status = 'active'::text));


--
-- Name: IDX_price_list_rule_attribute; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_price_list_rule_attribute" ON public.price_list_rule USING btree (attribute) WHERE (deleted_at IS NULL);


--
-- Name: IDX_price_list_rule_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_price_list_rule_deleted_at" ON public.price_list_rule USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_price_list_rule_price_list_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_price_list_rule_price_list_id" ON public.price_list_rule USING btree (price_list_id) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_price_list_rule_value; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_price_list_rule_value" ON public.price_list_rule USING gin (value) WHERE (deleted_at IS NULL);


--
-- Name: IDX_price_preference_attribute_value; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "IDX_price_preference_attribute_value" ON public.price_preference USING btree (attribute, value) WHERE (deleted_at IS NULL);


--
-- Name: IDX_price_preference_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_price_preference_deleted_at" ON public.price_preference USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_price_price_list_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_price_price_list_id" ON public.price USING btree (price_list_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_price_price_set_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_price_price_set_id" ON public.price USING btree (price_set_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_price_rule_attribute; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_price_rule_attribute" ON public.price_rule USING btree (attribute) WHERE (deleted_at IS NULL);


--
-- Name: IDX_price_rule_attribute_value; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_price_rule_attribute_value" ON public.price_rule USING btree (attribute, value) WHERE (deleted_at IS NULL);


--
-- Name: IDX_price_rule_attribute_value_price_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_price_rule_attribute_value_price_id" ON public.price_rule USING btree (attribute, value, price_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_price_rule_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_price_rule_deleted_at" ON public.price_rule USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_price_rule_operator; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_price_rule_operator" ON public.price_rule USING btree (operator);


--
-- Name: IDX_price_rule_operator_value; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_price_rule_operator_value" ON public.price_rule USING btree (operator, value) WHERE (deleted_at IS NULL);


--
-- Name: IDX_price_rule_price_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_price_rule_price_id" ON public.price_rule USING btree (price_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_price_rule_price_id_attribute_operator_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "IDX_price_rule_price_id_attribute_operator_unique" ON public.price_rule USING btree (price_id, attribute, operator) WHERE (deleted_at IS NULL);


--
-- Name: IDX_price_set_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_price_set_deleted_at" ON public.price_set USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_price_set_id_52b23597; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_price_set_id_52b23597" ON public.product_variant_price_set USING btree (price_set_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_price_set_id_ba32fa9c; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_price_set_id_ba32fa9c" ON public.shipping_option_price_set USING btree (price_set_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_product_category_parent_category_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_product_category_parent_category_id" ON public.product_category USING btree (parent_category_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_product_category_path; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_product_category_path" ON public.product_category USING btree (mpath) WHERE (deleted_at IS NULL);


--
-- Name: IDX_product_collection_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_product_collection_deleted_at" ON public.product_collection USING btree (deleted_at);


--
-- Name: IDX_product_collection_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_product_collection_id" ON public.product USING btree (collection_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_product_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_product_deleted_at" ON public.product USING btree (deleted_at);


--
-- Name: IDX_product_handle_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "IDX_product_handle_unique" ON public.product USING btree (handle) WHERE (deleted_at IS NULL);


--
-- Name: IDX_product_id_17a262437; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_product_id_17a262437" ON public.product_shipping_profile USING btree (product_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_product_id_20b454295; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_product_id_20b454295" ON public.product_sales_channel USING btree (product_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_product_image_rank; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_product_image_rank" ON public.image USING btree (rank) WHERE (deleted_at IS NULL);


--
-- Name: IDX_product_image_rank_product_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_product_image_rank_product_id" ON public.image USING btree (rank, product_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_product_image_url; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_product_image_url" ON public.image USING btree (url) WHERE (deleted_at IS NULL);


--
-- Name: IDX_product_image_url_rank_product_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_product_image_url_rank_product_id" ON public.image USING btree (url, rank, product_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_product_option_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_product_option_deleted_at" ON public.product_option USING btree (deleted_at);


--
-- Name: IDX_product_option_product_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_product_option_product_id" ON public.product_option USING btree (product_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_product_option_value_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_product_option_value_deleted_at" ON public.product_option_value USING btree (deleted_at);


--
-- Name: IDX_product_option_value_option_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_product_option_value_option_id" ON public.product_option_value USING btree (option_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_product_status; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_product_status" ON public.product USING btree (status) WHERE (deleted_at IS NULL);


--
-- Name: IDX_product_tag_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_product_tag_deleted_at" ON public.product_tag USING btree (deleted_at);


--
-- Name: IDX_product_type_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_product_type_deleted_at" ON public.product_type USING btree (deleted_at);


--
-- Name: IDX_product_type_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_product_type_id" ON public.product USING btree (type_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_product_variant_barcode_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "IDX_product_variant_barcode_unique" ON public.product_variant USING btree (barcode) WHERE (deleted_at IS NULL);


--
-- Name: IDX_product_variant_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_product_variant_deleted_at" ON public.product_variant USING btree (deleted_at);


--
-- Name: IDX_product_variant_ean_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "IDX_product_variant_ean_unique" ON public.product_variant USING btree (ean) WHERE (deleted_at IS NULL);


--
-- Name: IDX_product_variant_id_product_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_product_variant_id_product_id" ON public.product_variant USING btree (id, product_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_product_variant_product_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_product_variant_product_id" ON public.product_variant USING btree (product_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_product_variant_product_image_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_product_variant_product_image_deleted_at" ON public.product_variant_product_image USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_product_variant_product_image_image_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_product_variant_product_image_image_id" ON public.product_variant_product_image USING btree (image_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_product_variant_product_image_variant_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_product_variant_product_image_variant_id" ON public.product_variant_product_image USING btree (variant_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_product_variant_sku_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "IDX_product_variant_sku_unique" ON public.product_variant USING btree (sku) WHERE (deleted_at IS NULL);


--
-- Name: IDX_product_variant_upc_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "IDX_product_variant_upc_unique" ON public.product_variant USING btree (upc) WHERE (deleted_at IS NULL);


--
-- Name: IDX_promotion_application_method_currency_code; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_promotion_application_method_currency_code" ON public.promotion_application_method USING btree (currency_code) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_promotion_application_method_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_promotion_application_method_deleted_at" ON public.promotion_application_method USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_promotion_application_method_promotion_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "IDX_promotion_application_method_promotion_id_unique" ON public.promotion_application_method USING btree (promotion_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_promotion_campaign_budget_campaign_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "IDX_promotion_campaign_budget_campaign_id_unique" ON public.promotion_campaign_budget USING btree (campaign_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_promotion_campaign_budget_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_promotion_campaign_budget_deleted_at" ON public.promotion_campaign_budget USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_promotion_campaign_budget_usage_attribute_value_budget_id_u; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "IDX_promotion_campaign_budget_usage_attribute_value_budget_id_u" ON public.promotion_campaign_budget_usage USING btree (attribute_value, budget_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_promotion_campaign_budget_usage_budget_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_promotion_campaign_budget_usage_budget_id" ON public.promotion_campaign_budget_usage USING btree (budget_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_promotion_campaign_budget_usage_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_promotion_campaign_budget_usage_deleted_at" ON public.promotion_campaign_budget_usage USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_promotion_campaign_campaign_identifier_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "IDX_promotion_campaign_campaign_identifier_unique" ON public.promotion_campaign USING btree (campaign_identifier) WHERE (deleted_at IS NULL);


--
-- Name: IDX_promotion_campaign_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_promotion_campaign_deleted_at" ON public.promotion_campaign USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_promotion_campaign_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_promotion_campaign_id" ON public.promotion USING btree (campaign_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_promotion_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_promotion_deleted_at" ON public.promotion USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_promotion_id_-71518339; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_promotion_id_-71518339" ON public.order_promotion USING btree (promotion_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_promotion_id_-a9d4a70b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_promotion_id_-a9d4a70b" ON public.cart_promotion USING btree (promotion_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_promotion_is_automatic; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_promotion_is_automatic" ON public.promotion USING btree (is_automatic) WHERE (deleted_at IS NULL);


--
-- Name: IDX_promotion_rule_attribute; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_promotion_rule_attribute" ON public.promotion_rule USING btree (attribute);


--
-- Name: IDX_promotion_rule_attribute_operator; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_promotion_rule_attribute_operator" ON public.promotion_rule USING btree (attribute, operator) WHERE (deleted_at IS NULL);


--
-- Name: IDX_promotion_rule_attribute_operator_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_promotion_rule_attribute_operator_id" ON public.promotion_rule USING btree (operator, attribute, id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_promotion_rule_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_promotion_rule_deleted_at" ON public.promotion_rule USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_promotion_rule_operator; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_promotion_rule_operator" ON public.promotion_rule USING btree (operator);


--
-- Name: IDX_promotion_rule_value_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_promotion_rule_value_deleted_at" ON public.promotion_rule_value USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_promotion_rule_value_promotion_rule_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_promotion_rule_value_promotion_rule_id" ON public.promotion_rule_value USING btree (promotion_rule_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_promotion_rule_value_rule_id_value; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_promotion_rule_value_rule_id_value" ON public.promotion_rule_value USING btree (promotion_rule_id, value) WHERE (deleted_at IS NULL);


--
-- Name: IDX_promotion_rule_value_value; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_promotion_rule_value_value" ON public.promotion_rule_value USING btree (value) WHERE (deleted_at IS NULL);


--
-- Name: IDX_promotion_status; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_promotion_status" ON public.promotion USING btree (status) WHERE (deleted_at IS NULL);


--
-- Name: IDX_promotion_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_promotion_type" ON public.promotion USING btree (type);


--
-- Name: IDX_provider_identity_auth_identity_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_provider_identity_auth_identity_id" ON public.provider_identity USING btree (auth_identity_id);


--
-- Name: IDX_provider_identity_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_provider_identity_deleted_at" ON public.provider_identity USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_provider_identity_provider_entity_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "IDX_provider_identity_provider_entity_id" ON public.provider_identity USING btree (entity_id, provider);


--
-- Name: IDX_publishable_key_id_-1d67bae40; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_publishable_key_id_-1d67bae40" ON public.publishable_api_key_sales_channel USING btree (publishable_key_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_rbac_role_id_-85069d44; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_rbac_role_id_-85069d44" ON public.invite_rbac_role USING btree (rbac_role_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_rbac_role_id_64ff0c4c; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_rbac_role_id_64ff0c4c" ON public.user_rbac_role USING btree (rbac_role_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_refund_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_refund_deleted_at" ON public.refund USING btree (deleted_at);


--
-- Name: IDX_refund_payment_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_refund_payment_id" ON public.refund USING btree (payment_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_refund_reason_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_refund_reason_deleted_at" ON public.refund_reason USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_refund_refund_reason_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_refund_refund_reason_id" ON public.refund USING btree (refund_reason_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_region_country_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_region_country_deleted_at" ON public.region_country USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_region_country_region_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_region_country_region_id" ON public.region_country USING btree (region_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_region_country_region_id_iso_2_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "IDX_region_country_region_id_iso_2_unique" ON public.region_country USING btree (region_id, iso_2);


--
-- Name: IDX_region_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_region_deleted_at" ON public.region USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_region_id_1c934dab0; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_region_id_1c934dab0" ON public.region_payment_provider USING btree (region_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_reservation_item_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_reservation_item_deleted_at" ON public.reservation_item USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_reservation_item_inventory_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_reservation_item_inventory_item_id" ON public.reservation_item USING btree (inventory_item_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_reservation_item_line_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_reservation_item_line_item_id" ON public.reservation_item USING btree (line_item_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_reservation_item_location_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_reservation_item_location_id" ON public.reservation_item USING btree (location_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_return_claim_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_return_claim_id" ON public.return USING btree (claim_id) WHERE ((claim_id IS NOT NULL) AND (deleted_at IS NULL));


--
-- Name: IDX_return_display_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_return_display_id" ON public.return USING btree (display_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_return_exchange_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_return_exchange_id" ON public.return USING btree (exchange_id) WHERE ((exchange_id IS NOT NULL) AND (deleted_at IS NULL));


--
-- Name: IDX_return_id_-31ea43a; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_return_id_-31ea43a" ON public.return_fulfillment USING btree (return_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_return_item_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_return_item_deleted_at" ON public.return_item USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_return_item_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_return_item_item_id" ON public.return_item USING btree (item_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_return_item_reason_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_return_item_reason_id" ON public.return_item USING btree (reason_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_return_item_return_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_return_item_return_id" ON public.return_item USING btree (return_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_return_order_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_return_order_id" ON public.return USING btree (order_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_return_reason_parent_return_reason_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_return_reason_parent_return_reason_id" ON public.return_reason USING btree (parent_return_reason_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_return_reason_value; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_return_reason_value" ON public.return_reason USING btree (value) WHERE (deleted_at IS NULL);


--
-- Name: IDX_sales_channel_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_sales_channel_deleted_at" ON public.sales_channel USING btree (deleted_at);


--
-- Name: IDX_sales_channel_id_-1d67bae40; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_sales_channel_id_-1d67bae40" ON public.publishable_api_key_sales_channel USING btree (sales_channel_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_sales_channel_id_20b454295; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_sales_channel_id_20b454295" ON public.product_sales_channel USING btree (sales_channel_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_sales_channel_id_26d06f470; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_sales_channel_id_26d06f470" ON public.sales_channel_stock_location USING btree (sales_channel_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_service_zone_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_service_zone_deleted_at" ON public.service_zone USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_service_zone_fulfillment_set_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_service_zone_fulfillment_set_id" ON public.service_zone USING btree (fulfillment_set_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_service_zone_name_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "IDX_service_zone_name_unique" ON public.service_zone USING btree (name) WHERE (deleted_at IS NULL);


--
-- Name: IDX_shipping_method_adjustment_promotion_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_shipping_method_adjustment_promotion_id" ON public.cart_shipping_method_adjustment USING btree (promotion_id) WHERE ((deleted_at IS NULL) AND (promotion_id IS NOT NULL));


--
-- Name: IDX_shipping_method_option_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_shipping_method_option_id" ON public.cart_shipping_method USING btree (shipping_option_id) WHERE ((deleted_at IS NULL) AND (shipping_option_id IS NOT NULL));


--
-- Name: IDX_shipping_method_tax_line_tax_rate_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_shipping_method_tax_line_tax_rate_id" ON public.cart_shipping_method_tax_line USING btree (tax_rate_id) WHERE ((deleted_at IS NULL) AND (tax_rate_id IS NOT NULL));


--
-- Name: IDX_shipping_option_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_shipping_option_deleted_at" ON public.shipping_option USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_shipping_option_id_ba32fa9c; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_shipping_option_id_ba32fa9c" ON public.shipping_option_price_set USING btree (shipping_option_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_shipping_option_provider_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_shipping_option_provider_id" ON public.shipping_option USING btree (provider_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_shipping_option_rule_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_shipping_option_rule_deleted_at" ON public.shipping_option_rule USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_shipping_option_rule_shipping_option_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_shipping_option_rule_shipping_option_id" ON public.shipping_option_rule USING btree (shipping_option_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_shipping_option_service_zone_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_shipping_option_service_zone_id" ON public.shipping_option USING btree (service_zone_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_shipping_option_shipping_option_type_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_shipping_option_shipping_option_type_id" ON public.shipping_option USING btree (shipping_option_type_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_shipping_option_shipping_profile_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_shipping_option_shipping_profile_id" ON public.shipping_option USING btree (shipping_profile_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_shipping_option_type_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_shipping_option_type_deleted_at" ON public.shipping_option_type USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_shipping_profile_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_shipping_profile_deleted_at" ON public.shipping_profile USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_shipping_profile_id_17a262437; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_shipping_profile_id_17a262437" ON public.product_shipping_profile USING btree (shipping_profile_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_shipping_profile_name_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "IDX_shipping_profile_name_unique" ON public.shipping_profile USING btree (name) WHERE (deleted_at IS NULL);


--
-- Name: IDX_single_default_region; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "IDX_single_default_region" ON public.tax_rate USING btree (tax_region_id) WHERE ((is_default = true) AND (deleted_at IS NULL));


--
-- Name: IDX_stock_location_address_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_stock_location_address_deleted_at" ON public.stock_location_address USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_stock_location_address_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "IDX_stock_location_address_id_unique" ON public.stock_location USING btree (address_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_stock_location_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_stock_location_deleted_at" ON public.stock_location USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_stock_location_id_-1e5992737; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_stock_location_id_-1e5992737" ON public.location_fulfillment_provider USING btree (stock_location_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_stock_location_id_-e88adb96; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_stock_location_id_-e88adb96" ON public.location_fulfillment_set USING btree (stock_location_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_stock_location_id_26d06f470; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_stock_location_id_26d06f470" ON public.sales_channel_stock_location USING btree (stock_location_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_store_currency_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_store_currency_deleted_at" ON public.store_currency USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_store_currency_store_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_store_currency_store_id" ON public.store_currency USING btree (store_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_store_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_store_deleted_at" ON public.store USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_store_locale_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_store_locale_deleted_at" ON public.store_locale USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_store_locale_store_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_store_locale_store_id" ON public.store_locale USING btree (store_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_tag_value_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "IDX_tag_value_unique" ON public.product_tag USING btree (value) WHERE (deleted_at IS NULL);


--
-- Name: IDX_tax_provider_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_tax_provider_deleted_at" ON public.tax_provider USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_tax_rate_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_tax_rate_deleted_at" ON public.tax_rate USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_tax_rate_rule_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_tax_rate_rule_deleted_at" ON public.tax_rate_rule USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_tax_rate_rule_reference_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_tax_rate_rule_reference_id" ON public.tax_rate_rule USING btree (reference_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_tax_rate_rule_tax_rate_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_tax_rate_rule_tax_rate_id" ON public.tax_rate_rule USING btree (tax_rate_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_tax_rate_rule_unique_rate_reference; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "IDX_tax_rate_rule_unique_rate_reference" ON public.tax_rate_rule USING btree (tax_rate_id, reference_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_tax_rate_tax_region_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_tax_rate_tax_region_id" ON public.tax_rate USING btree (tax_region_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_tax_region_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_tax_region_deleted_at" ON public.tax_region USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_tax_region_parent_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_tax_region_parent_id" ON public.tax_region USING btree (parent_id);


--
-- Name: IDX_tax_region_provider_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_tax_region_provider_id" ON public.tax_region USING btree (provider_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_tax_region_unique_country_nullable_province; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "IDX_tax_region_unique_country_nullable_province" ON public.tax_region USING btree (country_code) WHERE ((province_code IS NULL) AND (deleted_at IS NULL));


--
-- Name: IDX_tax_region_unique_country_province; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "IDX_tax_region_unique_country_province" ON public.tax_region USING btree (country_code, province_code) WHERE (deleted_at IS NULL);


--
-- Name: IDX_translation_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_translation_deleted_at" ON public.translation USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_translation_locale_code; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_translation_locale_code" ON public.translation USING btree (locale_code) WHERE (deleted_at IS NULL);


--
-- Name: IDX_translation_reference_id_locale_code_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "IDX_translation_reference_id_locale_code_unique" ON public.translation USING btree (reference_id, locale_code) WHERE (deleted_at IS NULL);


--
-- Name: IDX_translation_reference_id_reference; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_translation_reference_id_reference" ON public.translation USING btree (reference_id, reference) WHERE (deleted_at IS NULL);


--
-- Name: IDX_translation_reference_id_reference_locale_code; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_translation_reference_id_reference_locale_code" ON public.translation USING btree (reference_id, reference, locale_code) WHERE (deleted_at IS NULL);


--
-- Name: IDX_translation_reference_locale_code; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_translation_reference_locale_code" ON public.translation USING btree (reference, locale_code) WHERE (deleted_at IS NULL);


--
-- Name: IDX_translation_settings_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_translation_settings_deleted_at" ON public.translation_settings USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_translation_settings_entity_type_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "IDX_translation_settings_entity_type_unique" ON public.translation_settings USING btree (entity_type) WHERE (deleted_at IS NULL);


--
-- Name: IDX_type_value_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "IDX_type_value_unique" ON public.product_type USING btree (value) WHERE (deleted_at IS NULL);


--
-- Name: IDX_unique_promotion_code; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "IDX_unique_promotion_code" ON public.promotion USING btree (code) WHERE (deleted_at IS NULL);


--
-- Name: IDX_user_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_user_deleted_at" ON public."user" USING btree (deleted_at) WHERE (deleted_at IS NOT NULL);


--
-- Name: IDX_user_email_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "IDX_user_email_unique" ON public."user" USING btree (email) WHERE (deleted_at IS NULL);


--
-- Name: IDX_user_id_64ff0c4c; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_user_id_64ff0c4c" ON public.user_rbac_role USING btree (user_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_user_preference_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_user_preference_deleted_at" ON public.user_preference USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_user_preference_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_user_preference_user_id" ON public.user_preference USING btree (user_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_user_preference_user_id_key_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "IDX_user_preference_user_id_key_unique" ON public.user_preference USING btree (user_id, key) WHERE (deleted_at IS NULL);


--
-- Name: IDX_variant_id_17b4c4e35; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_variant_id_17b4c4e35" ON public.product_variant_inventory_item USING btree (variant_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_variant_id_52b23597; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_variant_id_52b23597" ON public.product_variant_price_set USING btree (variant_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_view_configuration_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_view_configuration_deleted_at" ON public.view_configuration USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_view_configuration_entity_is_system_default; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_view_configuration_entity_is_system_default" ON public.view_configuration USING btree (entity, is_system_default) WHERE (deleted_at IS NULL);


--
-- Name: IDX_view_configuration_entity_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_view_configuration_entity_user_id" ON public.view_configuration USING btree (entity, user_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_view_configuration_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_view_configuration_user_id" ON public.view_configuration USING btree (user_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_workflow_execution_deleted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_workflow_execution_deleted_at" ON public.workflow_execution USING btree (deleted_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_workflow_execution_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_workflow_execution_id" ON public.workflow_execution USING btree (id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_workflow_execution_retention_time_updated_at_state; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_workflow_execution_retention_time_updated_at_state" ON public.workflow_execution USING btree (retention_time, updated_at, state) WHERE ((deleted_at IS NULL) AND (retention_time IS NOT NULL));


--
-- Name: IDX_workflow_execution_run_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_workflow_execution_run_id" ON public.workflow_execution USING btree (run_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_workflow_execution_state; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_workflow_execution_state" ON public.workflow_execution USING btree (state) WHERE (deleted_at IS NULL);


--
-- Name: IDX_workflow_execution_state_updated_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_workflow_execution_state_updated_at" ON public.workflow_execution USING btree (state, updated_at) WHERE (deleted_at IS NULL);


--
-- Name: IDX_workflow_execution_transaction_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_workflow_execution_transaction_id" ON public.workflow_execution USING btree (transaction_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_workflow_execution_updated_at_retention_time; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_workflow_execution_updated_at_retention_time" ON public.workflow_execution USING btree (updated_at, retention_time) WHERE ((deleted_at IS NULL) AND (retention_time IS NOT NULL) AND ((state)::text = ANY ((ARRAY['done'::character varying, 'failed'::character varying, 'reverted'::character varying])::text[])));


--
-- Name: IDX_workflow_execution_workflow_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_workflow_execution_workflow_id" ON public.workflow_execution USING btree (workflow_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_workflow_execution_workflow_id_transaction_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_workflow_execution_workflow_id_transaction_id" ON public.workflow_execution USING btree (workflow_id, transaction_id) WHERE (deleted_at IS NULL);


--
-- Name: IDX_workflow_execution_workflow_id_transaction_id_run_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "IDX_workflow_execution_workflow_id_transaction_id_run_id_unique" ON public.workflow_execution USING btree (workflow_id, transaction_id, run_id) WHERE (deleted_at IS NULL);


--
-- Name: idx_script_name_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX idx_script_name_unique ON public.script_migrations USING btree (script_name);


--
-- Name: tax_rate_rule FK_tax_rate_rule_tax_rate_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tax_rate_rule
    ADD CONSTRAINT "FK_tax_rate_rule_tax_rate_id" FOREIGN KEY (tax_rate_id) REFERENCES public.tax_rate(id) ON DELETE CASCADE;


--
-- Name: tax_rate FK_tax_rate_tax_region_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tax_rate
    ADD CONSTRAINT "FK_tax_rate_tax_region_id" FOREIGN KEY (tax_region_id) REFERENCES public.tax_region(id) ON DELETE CASCADE;


--
-- Name: tax_region FK_tax_region_parent_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tax_region
    ADD CONSTRAINT "FK_tax_region_parent_id" FOREIGN KEY (parent_id) REFERENCES public.tax_region(id) ON DELETE CASCADE;


--
-- Name: tax_region FK_tax_region_provider_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tax_region
    ADD CONSTRAINT "FK_tax_region_provider_id" FOREIGN KEY (provider_id) REFERENCES public.tax_provider(id) ON DELETE SET NULL;


--
-- Name: application_method_buy_rules application_method_buy_rules_application_method_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.application_method_buy_rules
    ADD CONSTRAINT application_method_buy_rules_application_method_id_foreign FOREIGN KEY (application_method_id) REFERENCES public.promotion_application_method(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: application_method_buy_rules application_method_buy_rules_promotion_rule_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.application_method_buy_rules
    ADD CONSTRAINT application_method_buy_rules_promotion_rule_id_foreign FOREIGN KEY (promotion_rule_id) REFERENCES public.promotion_rule(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: application_method_target_rules application_method_target_rules_application_method_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.application_method_target_rules
    ADD CONSTRAINT application_method_target_rules_application_method_id_foreign FOREIGN KEY (application_method_id) REFERENCES public.promotion_application_method(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: application_method_target_rules application_method_target_rules_promotion_rule_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.application_method_target_rules
    ADD CONSTRAINT application_method_target_rules_promotion_rule_id_foreign FOREIGN KEY (promotion_rule_id) REFERENCES public.promotion_rule(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: capture capture_payment_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.capture
    ADD CONSTRAINT capture_payment_id_foreign FOREIGN KEY (payment_id) REFERENCES public.payment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cart cart_billing_address_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_billing_address_id_foreign FOREIGN KEY (billing_address_id) REFERENCES public.cart_address(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: cart_line_item_adjustment cart_line_item_adjustment_item_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cart_line_item_adjustment
    ADD CONSTRAINT cart_line_item_adjustment_item_id_foreign FOREIGN KEY (item_id) REFERENCES public.cart_line_item(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cart_line_item cart_line_item_cart_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cart_line_item
    ADD CONSTRAINT cart_line_item_cart_id_foreign FOREIGN KEY (cart_id) REFERENCES public.cart(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cart_line_item_tax_line cart_line_item_tax_line_item_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cart_line_item_tax_line
    ADD CONSTRAINT cart_line_item_tax_line_item_id_foreign FOREIGN KEY (item_id) REFERENCES public.cart_line_item(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cart cart_shipping_address_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_shipping_address_id_foreign FOREIGN KEY (shipping_address_id) REFERENCES public.cart_address(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: cart_shipping_method_adjustment cart_shipping_method_adjustment_shipping_method_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cart_shipping_method_adjustment
    ADD CONSTRAINT cart_shipping_method_adjustment_shipping_method_id_foreign FOREIGN KEY (shipping_method_id) REFERENCES public.cart_shipping_method(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cart_shipping_method cart_shipping_method_cart_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cart_shipping_method
    ADD CONSTRAINT cart_shipping_method_cart_id_foreign FOREIGN KEY (cart_id) REFERENCES public.cart(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cart_shipping_method_tax_line cart_shipping_method_tax_line_shipping_method_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cart_shipping_method_tax_line
    ADD CONSTRAINT cart_shipping_method_tax_line_shipping_method_id_foreign FOREIGN KEY (shipping_method_id) REFERENCES public.cart_shipping_method(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: credit_line credit_line_cart_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.credit_line
    ADD CONSTRAINT credit_line_cart_id_foreign FOREIGN KEY (cart_id) REFERENCES public.cart(id) ON UPDATE CASCADE;


--
-- Name: customer_address customer_address_customer_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.customer_address
    ADD CONSTRAINT customer_address_customer_id_foreign FOREIGN KEY (customer_id) REFERENCES public.customer(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: customer_group_customer customer_group_customer_customer_group_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.customer_group_customer
    ADD CONSTRAINT customer_group_customer_customer_group_id_foreign FOREIGN KEY (customer_group_id) REFERENCES public.customer_group(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: customer_group_customer customer_group_customer_customer_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.customer_group_customer
    ADD CONSTRAINT customer_group_customer_customer_id_foreign FOREIGN KEY (customer_id) REFERENCES public.customer(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: fulfillment fulfillment_delivery_address_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fulfillment
    ADD CONSTRAINT fulfillment_delivery_address_id_foreign FOREIGN KEY (delivery_address_id) REFERENCES public.fulfillment_address(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: fulfillment_item fulfillment_item_fulfillment_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fulfillment_item
    ADD CONSTRAINT fulfillment_item_fulfillment_id_foreign FOREIGN KEY (fulfillment_id) REFERENCES public.fulfillment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: fulfillment_label fulfillment_label_fulfillment_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fulfillment_label
    ADD CONSTRAINT fulfillment_label_fulfillment_id_foreign FOREIGN KEY (fulfillment_id) REFERENCES public.fulfillment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: fulfillment fulfillment_provider_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fulfillment
    ADD CONSTRAINT fulfillment_provider_id_foreign FOREIGN KEY (provider_id) REFERENCES public.fulfillment_provider(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: fulfillment fulfillment_shipping_option_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fulfillment
    ADD CONSTRAINT fulfillment_shipping_option_id_foreign FOREIGN KEY (shipping_option_id) REFERENCES public.shipping_option(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: geo_zone geo_zone_service_zone_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.geo_zone
    ADD CONSTRAINT geo_zone_service_zone_id_foreign FOREIGN KEY (service_zone_id) REFERENCES public.service_zone(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: image image_product_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_product_id_foreign FOREIGN KEY (product_id) REFERENCES public.product(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: inventory_level inventory_level_inventory_item_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.inventory_level
    ADD CONSTRAINT inventory_level_inventory_item_id_foreign FOREIGN KEY (inventory_item_id) REFERENCES public.inventory_item(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: notification notification_provider_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.notification
    ADD CONSTRAINT notification_provider_id_foreign FOREIGN KEY (provider_id) REFERENCES public.notification_provider(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: order order_billing_address_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."order"
    ADD CONSTRAINT order_billing_address_id_foreign FOREIGN KEY (billing_address_id) REFERENCES public.order_address(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: order_change_action order_change_action_order_change_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_change_action
    ADD CONSTRAINT order_change_action_order_change_id_foreign FOREIGN KEY (order_change_id) REFERENCES public.order_change(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: order_change order_change_order_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_change
    ADD CONSTRAINT order_change_order_id_foreign FOREIGN KEY (order_id) REFERENCES public."order"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: order_credit_line order_credit_line_order_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_credit_line
    ADD CONSTRAINT order_credit_line_order_id_foreign FOREIGN KEY (order_id) REFERENCES public."order"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: order_item order_item_item_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_item
    ADD CONSTRAINT order_item_item_id_foreign FOREIGN KEY (item_id) REFERENCES public.order_line_item(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: order_item order_item_order_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_item
    ADD CONSTRAINT order_item_order_id_foreign FOREIGN KEY (order_id) REFERENCES public."order"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: order_line_item_adjustment order_line_item_adjustment_item_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_line_item_adjustment
    ADD CONSTRAINT order_line_item_adjustment_item_id_foreign FOREIGN KEY (item_id) REFERENCES public.order_line_item(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: order_line_item_tax_line order_line_item_tax_line_item_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_line_item_tax_line
    ADD CONSTRAINT order_line_item_tax_line_item_id_foreign FOREIGN KEY (item_id) REFERENCES public.order_line_item(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: order_line_item order_line_item_totals_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_line_item
    ADD CONSTRAINT order_line_item_totals_id_foreign FOREIGN KEY (totals_id) REFERENCES public.order_item(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: order order_shipping_address_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."order"
    ADD CONSTRAINT order_shipping_address_id_foreign FOREIGN KEY (shipping_address_id) REFERENCES public.order_address(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: order_shipping_method_adjustment order_shipping_method_adjustment_shipping_method_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_shipping_method_adjustment
    ADD CONSTRAINT order_shipping_method_adjustment_shipping_method_id_foreign FOREIGN KEY (shipping_method_id) REFERENCES public.order_shipping_method(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: order_shipping_method_tax_line order_shipping_method_tax_line_shipping_method_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_shipping_method_tax_line
    ADD CONSTRAINT order_shipping_method_tax_line_shipping_method_id_foreign FOREIGN KEY (shipping_method_id) REFERENCES public.order_shipping_method(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: order_shipping order_shipping_order_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_shipping
    ADD CONSTRAINT order_shipping_order_id_foreign FOREIGN KEY (order_id) REFERENCES public."order"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: order_summary order_summary_order_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_summary
    ADD CONSTRAINT order_summary_order_id_foreign FOREIGN KEY (order_id) REFERENCES public."order"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: order_transaction order_transaction_order_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_transaction
    ADD CONSTRAINT order_transaction_order_id_foreign FOREIGN KEY (order_id) REFERENCES public."order"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: payment_collection_payment_providers payment_collection_payment_providers_payment_col_aa276_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment_collection_payment_providers
    ADD CONSTRAINT payment_collection_payment_providers_payment_col_aa276_foreign FOREIGN KEY (payment_collection_id) REFERENCES public.payment_collection(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: payment_collection_payment_providers payment_collection_payment_providers_payment_pro_2d555_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment_collection_payment_providers
    ADD CONSTRAINT payment_collection_payment_providers_payment_pro_2d555_foreign FOREIGN KEY (payment_provider_id) REFERENCES public.payment_provider(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: payment payment_payment_collection_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_payment_collection_id_foreign FOREIGN KEY (payment_collection_id) REFERENCES public.payment_collection(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: payment_session payment_session_payment_collection_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment_session
    ADD CONSTRAINT payment_session_payment_collection_id_foreign FOREIGN KEY (payment_collection_id) REFERENCES public.payment_collection(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: price_list_rule price_list_rule_price_list_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.price_list_rule
    ADD CONSTRAINT price_list_rule_price_list_id_foreign FOREIGN KEY (price_list_id) REFERENCES public.price_list(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: price price_price_list_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.price
    ADD CONSTRAINT price_price_list_id_foreign FOREIGN KEY (price_list_id) REFERENCES public.price_list(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: price price_price_set_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.price
    ADD CONSTRAINT price_price_set_id_foreign FOREIGN KEY (price_set_id) REFERENCES public.price_set(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: price_rule price_rule_price_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.price_rule
    ADD CONSTRAINT price_rule_price_id_foreign FOREIGN KEY (price_id) REFERENCES public.price(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: product_category product_category_parent_category_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.product_category
    ADD CONSTRAINT product_category_parent_category_id_foreign FOREIGN KEY (parent_category_id) REFERENCES public.product_category(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: product_category_product product_category_product_product_category_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.product_category_product
    ADD CONSTRAINT product_category_product_product_category_id_foreign FOREIGN KEY (product_category_id) REFERENCES public.product_category(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: product_category_product product_category_product_product_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.product_category_product
    ADD CONSTRAINT product_category_product_product_id_foreign FOREIGN KEY (product_id) REFERENCES public.product(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: product product_collection_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_collection_id_foreign FOREIGN KEY (collection_id) REFERENCES public.product_collection(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: product_option product_option_product_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.product_option
    ADD CONSTRAINT product_option_product_id_foreign FOREIGN KEY (product_id) REFERENCES public.product(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: product_option_value product_option_value_option_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.product_option_value
    ADD CONSTRAINT product_option_value_option_id_foreign FOREIGN KEY (option_id) REFERENCES public.product_option(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: product_tags product_tags_product_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.product_tags
    ADD CONSTRAINT product_tags_product_id_foreign FOREIGN KEY (product_id) REFERENCES public.product(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: product_tags product_tags_product_tag_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.product_tags
    ADD CONSTRAINT product_tags_product_tag_id_foreign FOREIGN KEY (product_tag_id) REFERENCES public.product_tag(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: product product_type_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_type_id_foreign FOREIGN KEY (type_id) REFERENCES public.product_type(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: product_variant_option product_variant_option_option_value_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.product_variant_option
    ADD CONSTRAINT product_variant_option_option_value_id_foreign FOREIGN KEY (option_value_id) REFERENCES public.product_option_value(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: product_variant_option product_variant_option_variant_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.product_variant_option
    ADD CONSTRAINT product_variant_option_variant_id_foreign FOREIGN KEY (variant_id) REFERENCES public.product_variant(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: product_variant product_variant_product_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.product_variant
    ADD CONSTRAINT product_variant_product_id_foreign FOREIGN KEY (product_id) REFERENCES public.product(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: product_variant_product_image product_variant_product_image_image_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.product_variant_product_image
    ADD CONSTRAINT product_variant_product_image_image_id_foreign FOREIGN KEY (image_id) REFERENCES public.image(id) ON DELETE CASCADE;


--
-- Name: promotion_application_method promotion_application_method_promotion_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.promotion_application_method
    ADD CONSTRAINT promotion_application_method_promotion_id_foreign FOREIGN KEY (promotion_id) REFERENCES public.promotion(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: promotion_campaign_budget promotion_campaign_budget_campaign_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.promotion_campaign_budget
    ADD CONSTRAINT promotion_campaign_budget_campaign_id_foreign FOREIGN KEY (campaign_id) REFERENCES public.promotion_campaign(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: promotion_campaign_budget_usage promotion_campaign_budget_usage_budget_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.promotion_campaign_budget_usage
    ADD CONSTRAINT promotion_campaign_budget_usage_budget_id_foreign FOREIGN KEY (budget_id) REFERENCES public.promotion_campaign_budget(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: promotion promotion_campaign_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.promotion
    ADD CONSTRAINT promotion_campaign_id_foreign FOREIGN KEY (campaign_id) REFERENCES public.promotion_campaign(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: promotion_promotion_rule promotion_promotion_rule_promotion_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.promotion_promotion_rule
    ADD CONSTRAINT promotion_promotion_rule_promotion_id_foreign FOREIGN KEY (promotion_id) REFERENCES public.promotion(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: promotion_promotion_rule promotion_promotion_rule_promotion_rule_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.promotion_promotion_rule
    ADD CONSTRAINT promotion_promotion_rule_promotion_rule_id_foreign FOREIGN KEY (promotion_rule_id) REFERENCES public.promotion_rule(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: promotion_rule_value promotion_rule_value_promotion_rule_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.promotion_rule_value
    ADD CONSTRAINT promotion_rule_value_promotion_rule_id_foreign FOREIGN KEY (promotion_rule_id) REFERENCES public.promotion_rule(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: provider_identity provider_identity_auth_identity_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.provider_identity
    ADD CONSTRAINT provider_identity_auth_identity_id_foreign FOREIGN KEY (auth_identity_id) REFERENCES public.auth_identity(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: refund refund_payment_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.refund
    ADD CONSTRAINT refund_payment_id_foreign FOREIGN KEY (payment_id) REFERENCES public.payment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: region_country region_country_region_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.region_country
    ADD CONSTRAINT region_country_region_id_foreign FOREIGN KEY (region_id) REFERENCES public.region(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: reservation_item reservation_item_inventory_item_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.reservation_item
    ADD CONSTRAINT reservation_item_inventory_item_id_foreign FOREIGN KEY (inventory_item_id) REFERENCES public.inventory_item(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: return_reason return_reason_parent_return_reason_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.return_reason
    ADD CONSTRAINT return_reason_parent_return_reason_id_foreign FOREIGN KEY (parent_return_reason_id) REFERENCES public.return_reason(id);


--
-- Name: service_zone service_zone_fulfillment_set_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_zone
    ADD CONSTRAINT service_zone_fulfillment_set_id_foreign FOREIGN KEY (fulfillment_set_id) REFERENCES public.fulfillment_set(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: shipping_option shipping_option_provider_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.shipping_option
    ADD CONSTRAINT shipping_option_provider_id_foreign FOREIGN KEY (provider_id) REFERENCES public.fulfillment_provider(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: shipping_option_rule shipping_option_rule_shipping_option_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.shipping_option_rule
    ADD CONSTRAINT shipping_option_rule_shipping_option_id_foreign FOREIGN KEY (shipping_option_id) REFERENCES public.shipping_option(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: shipping_option shipping_option_service_zone_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.shipping_option
    ADD CONSTRAINT shipping_option_service_zone_id_foreign FOREIGN KEY (service_zone_id) REFERENCES public.service_zone(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: shipping_option shipping_option_shipping_option_type_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.shipping_option
    ADD CONSTRAINT shipping_option_shipping_option_type_id_foreign FOREIGN KEY (shipping_option_type_id) REFERENCES public.shipping_option_type(id) ON UPDATE CASCADE;


--
-- Name: shipping_option shipping_option_shipping_profile_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.shipping_option
    ADD CONSTRAINT shipping_option_shipping_profile_id_foreign FOREIGN KEY (shipping_profile_id) REFERENCES public.shipping_profile(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: stock_location stock_location_address_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_location
    ADD CONSTRAINT stock_location_address_id_foreign FOREIGN KEY (address_id) REFERENCES public.stock_location_address(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: store_currency store_currency_store_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.store_currency
    ADD CONSTRAINT store_currency_store_id_foreign FOREIGN KEY (store_id) REFERENCES public.store(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: store_locale store_locale_store_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.store_locale
    ADD CONSTRAINT store_locale_store_id_foreign FOREIGN KEY (store_id) REFERENCES public.store(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

