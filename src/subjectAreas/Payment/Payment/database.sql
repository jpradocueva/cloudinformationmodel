CREATE SCHEMA IF NOT EXISTS PAYMENT_ENTITY_GROUP;

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_GATEWAY_RESULT_CODE (
  ID VARCHAR(36) UNIQUE NOT NULL,
  DESCRIPTION VARCHAR(500) NOT NULL,
  NAME VARCHAR(500) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_CREDIT_MEMO_APPLICATION (
  ID VARCHAR(36) UNIQUE NOT NULL,
  NAME VARCHAR(500),
  EFFECTIVE_DATE DATE NOT NULL,
  PAYMENT_APPLICATION_TYPE VARCHAR(500) NOT NULL,
  COMMENT_TEXT VARCHAR(500),
  HAS_BEEN_UNAPPLIED BOOLEAN,
  APPLIED_AMOUNT INTEGER NOT NULL,
  PAYMENT_BALANCE_AMOUNT INTEGER NOT NULL,
  APPLIED_DATE DATE NOT NULL,
  EXTERNAL_CREATED_DATE DATE NOT NULL,
  UNAPPLIED_DATE DATE NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_GATEWAY_AUTH_REVERSAL_LOG (
  ID VARCHAR(36) UNIQUE NOT NULL,
  NAME VARCHAR(500),
  PAYMENT_GATEWAY_REFERENCE_NUMBER VARCHAR(500) NOT NULL,
  PAYMENT_GATEWAY_MESSAGE_TEXT VARCHAR(500),
  PAYMENT_GATEWAY_AUTHORIZATION_CODE VARCHAR(500) NOT NULL,
  INTERNAL_RESULT_CODE VARCHAR(500) NOT NULL,
  PAYMENT_GATEWAY_AV_SCODE VARCHAR(500) NOT NULL,
  INTERNAL_REFERENCE_NUMBER VARCHAR(500) NOT NULL,
  PAYMENT_GATEWAY_INTERACTION_LOG_NAME VARCHAR(500) NOT NULL,
  PAYMENT_GATEWAY_INTERACTION_STATUS VARCHAR(500) NOT NULL,
  PAYMENT_GATEWAY_DATE DATE NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_AUTHORIZATION_REVERSAL (
  PAYMENT_GATEWAY_REFERENCE_NUMBER VARCHAR(500) NOT NULL,
  AUTHORIZATION_REVERSAL_AMOUNT INTEGER NOT NULL,
  CUSTOMER_AUTHORIZATION_REVERSAL_PHONE VARCHAR(500),
  I_PADDRESS VARCHAR(500),
  PAYMENT_AUTHORIZATION_REVERSAL_STATUS VARCHAR(500) NOT NULL,
  PAYMENT_AUTHORIZATION_PROCESSING_MODE VARCHAR(500) NOT NULL,
  ID VARCHAR(36) UNIQUE NOT NULL,
  PAYMENT_GATEWAY_INTERNAL_REFERENCE_NUMBER VARCHAR(500) NOT NULL,
  PAYMENT_AUTHORIZATION_REVERSAL_NAME VARCHAR(500),
  EXTERNAL_CREATED_DATE DATE NOT NULL,
  REQUEST_DATE TIME NOT NULL,
  PAYMENT_AUTHORIZATION_REVERSAL_COMMENT_TEXT VARCHAR(500),
  MAC_ADDRESS VARCHAR(500),
  CUSTOMER_AUTHORIZATION_REVERSAL_EMAIL VARCHAR(500),
  PAYMENT_GATEWAY_DATE TIME NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_ALLOCATION (
  ID VARCHAR(36) UNIQUE NOT NULL,
  EXTERNAL_CREATED_DATE DATE NOT NULL,
  PAYMENT_ALLOCATION_NAME VARCHAR(500),
  PRIMARY KEY (ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_APPLICATION (
  EFFECTIVE_DATE DATE NOT NULL,
  PAYMENT_APPLICATION_TYPE VARCHAR(500) NOT NULL,
  COMMENT_TEXT VARCHAR(500),
  HAS_BEEN_UNAPPLIED BOOLEAN,
  ID VARCHAR(36) UNIQUE NOT NULL,
  NAME VARCHAR(500) NOT NULL,
  APPLIED_AMOUNT INTEGER NOT NULL,
  PAYMENT_BALANCE_AMOUNT INTEGER NOT NULL,
  APPLIED_DATE DATE NOT NULL,
  EXTERNAL_CREATED_DATE DATE NOT NULL,
  UNAPPLIED_DATE DATE NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_GATEWAY_PROVIDER (
  APEX_ADAPTER_CLASS_NAME VARCHAR(500) NOT NULL,
  ID VARCHAR(36) UNIQUE NOT NULL,
  PAYMENT_GATEWAY_PROVIDER_COMMENT_TEXT VARCHAR(500),
  PAYMENT_GATEWAY_PROVIDER_NAME VARCHAR(500) NOT NULL,
  DEVELOPER_NAME VARCHAR(500) NOT NULL,
  NAMESPACE_PREFIX_TEXT VARCHAR(500) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_POLICY (
  DESCRIPTION VARCHAR(500) NOT NULL,
  ID VARCHAR(36) UNIQUE NOT NULL,
  NAME VARCHAR(500) NOT NULL,
  PAYMENT_POLICY_TREATMENT_SELECTION VARCHAR(500) NOT NULL,
  PAYMENT_POLICY_STATUS VARCHAR(500) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_TREATMENT_METHOD (
  ID VARCHAR(36) UNIQUE NOT NULL,
  PAYMENT_TREATMENT_METHOD_NAME VARCHAR(500) NOT NULL,
  PAYMENT_TREATMENT_METHOD_CODE VARCHAR(500) NOT NULL,
  PAYMENT_TREATMENT_METHOD_DESCRIPTION VARCHAR(500) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_INVOICE_APPLICATION (
  ID VARCHAR(36) UNIQUE NOT NULL,
  PAYMENT_INVOICE_APPLICATION_NAME VARCHAR(500),
  INVOICE_BALANCE_AMOUNT INTEGER NOT NULL,
  PAYMENT_INVOICE_APPLICATION_TYPE VARCHAR(500),
  EFFECTIVE_DATE DATE NOT NULL,
  PAYMENT_APPLICATION_TYPE VARCHAR(500) NOT NULL,
  COMMENT_TEXT VARCHAR(500),
  HAS_BEEN_UNAPPLIED BOOLEAN,
  NAME VARCHAR(500) NOT NULL,
  APPLIED_AMOUNT INTEGER NOT NULL,
  PAYMENT_BALANCE_AMOUNT INTEGER NOT NULL,
  APPLIED_DATE DATE NOT NULL,
  EXTERNAL_CREATED_DATE DATE NOT NULL,
  UNAPPLIED_DATE DATE NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_GATEWAY_INTERACTION_TYPE (
  ID VARCHAR(36) UNIQUE NOT NULL,
  DESCRIPTION VARCHAR(500) NOT NULL,
  NAME VARCHAR(500) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_GROUP (
  TOTAL_REVERSAL_AMOUNT INTEGER NOT NULL,
  TOTAL_AUTHORIZATION_AMOUNT INTEGER NOT NULL,
  ID VARCHAR(36) UNIQUE NOT NULL,
  TOTAL_PAYMENT_AMOUNT INTEGER NOT NULL,
  PAYMENT_GROUP_NUMBER VARCHAR(500) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.REFUND_CREDIT_MEMO_ALLOCATION (
  ID VARCHAR(36) UNIQUE NOT NULL,
  NAME VARCHAR(500),
  EFFECTIVE_DATE DATE NOT NULL,
  HAS_BEEN_UNAPPLIED BOOLEAN,
  REFUND_ALLOCATION_TYPE VARCHAR(500) NOT NULL,
  ALLOCATED_AMOUNT INTEGER NOT NULL,
  REFUND_BALANCE_AMOUNT INTEGER NOT NULL,
  REFUND_ALLOCATION_NAME VARCHAR(500),
  APPLIED_DATE DATE NOT NULL,
  EXTERNAL_CREATED_DATE DATE NOT NULL,
  UNAPPLIED_DATE DATE NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_GATEWAY_PAYMENT_LOG (
  ID VARCHAR(36) UNIQUE NOT NULL,
  NAME VARCHAR(500),
  PAYMENT_GATEWAY_REFERENCE_NUMBER VARCHAR(500) NOT NULL,
  PAYMENT_GATEWAY_MESSAGE_TEXT VARCHAR(500),
  PAYMENT_GATEWAY_AUTHORIZATION_CODE VARCHAR(500) NOT NULL,
  INTERNAL_RESULT_CODE VARCHAR(500) NOT NULL,
  PAYMENT_GATEWAY_AV_SCODE VARCHAR(500) NOT NULL,
  INTERNAL_REFERENCE_NUMBER VARCHAR(500) NOT NULL,
  PAYMENT_GATEWAY_INTERACTION_LOG_NAME VARCHAR(500) NOT NULL,
  PAYMENT_GATEWAY_INTERACTION_STATUS VARCHAR(500) NOT NULL,
  PAYMENT_GATEWAY_DATE DATE NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.REFUND_ALLOCATION (
  EFFECTIVE_DATE DATE NOT NULL,
  HAS_BEEN_UNAPPLIED BOOLEAN,
  REFUND_ALLOCATION_TYPE VARCHAR(500) NOT NULL,
  ID VARCHAR(36) UNIQUE NOT NULL,
  ALLOCATED_AMOUNT INTEGER NOT NULL,
  REFUND_BALANCE_AMOUNT INTEGER NOT NULL,
  REFUND_ALLOCATION_NAME VARCHAR(500),
  APPLIED_DATE DATE NOT NULL,
  EXTERNAL_CREATED_DATE DATE NOT NULL,
  UNAPPLIED_DATE DATE NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_GATEWAY_AUTHORIZATION_LOG (
  ID VARCHAR(36) UNIQUE NOT NULL,
  NAME VARCHAR(500),
  PAYMENT_GATEWAY_REFERENCE_NUMBER VARCHAR(500) NOT NULL,
  PAYMENT_GATEWAY_MESSAGE_TEXT VARCHAR(500),
  PAYMENT_GATEWAY_AUTHORIZATION_CODE VARCHAR(500) NOT NULL,
  INTERNAL_RESULT_CODE VARCHAR(500) NOT NULL,
  PAYMENT_GATEWAY_AV_SCODE VARCHAR(500) NOT NULL,
  INTERNAL_REFERENCE_NUMBER VARCHAR(500) NOT NULL,
  PAYMENT_GATEWAY_INTERACTION_LOG_NAME VARCHAR(500) NOT NULL,
  PAYMENT_GATEWAY_INTERACTION_STATUS VARCHAR(500) NOT NULL,
  PAYMENT_GATEWAY_DATE DATE NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_INVOICE_ALLOCATION (
  PAYMENT_INVOICE_ALLOCATION_NAME VARCHAR(500),
  ID VARCHAR(36) UNIQUE NOT NULL,
  APPLIED_AMOUNT INTEGER NOT NULL,
  INVOICE_BALANCE_AMOUNT INTEGER NOT NULL,
  EXTERNAL_CREATED_DATE DATE NOT NULL,
  PAYMENT_ALLOCATION_NAME VARCHAR(500),
  PRIMARY KEY (ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT (
  PAYMENT_STATUS VARCHAR(500) NOT NULL,
  AUTHORIZATION_PROCESSING_MODE VARCHAR(500) NOT NULL,
  I_PADDRESS VARCHAR(500),
  COMMENT_TEXT VARCHAR(500) NOT NULL,
  PAYMENT_NUMBER VARCHAR(500) NOT NULL,
  PAYMENT_AMOUNT INTEGER NOT NULL,
  LATEST_GATEWAY_INTERNAL_RESULT VARCHAR(500) NOT NULL,
  ID VARCHAR(36) UNIQUE NOT NULL,
  CUSTOMER_EMAIL_ADDRESS VARCHAR(500),
  NAME VARCHAR(500) NOT NULL,
  LATEST_GATEWAY_REFERENCE_NUMBER VARCHAR(500) NOT NULL,
  LATEST_GATEWAY_DATE DATE NOT NULL,
  BALANCE_AMOUNT INTEGER NOT NULL,
  PAYMENT_TYPE VARCHAR(500) NOT NULL,
  CUSTOMER_PHONE_NUMBER VARCHAR(500),
  LATEST_PAYMENT_GATEWAY_MESSAGE_TEXT VARCHAR(500),
  PAYMENT_EFFECTIVE_DATE DATE NOT NULL,
  EXTERNAL_CREATED_DATE DATE NOT NULL,
  PAYMENT_CANCELLATION_DATE DATE NOT NULL,
  MAC_ADDRESS VARCHAR(500),
  TOTAL_APPLIED_AMOUNT INTEGER NOT NULL,
  NET_APPLIED_AMOUNT INTEGER NOT NULL,
  TOTAL_UNAPPLIED_AMOUNT INTEGER NOT NULL,
  LATEST_GATEWAY_INTERNAL_REFERENCE_NUMBER VARCHAR(500) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_CREDIT_MEMO_ALLOCATION (
  ID VARCHAR(36) UNIQUE NOT NULL,
  APPLIED_AMOUNT INTEGER NOT NULL,
  NAME VARCHAR(500),
  EXTERNAL_CREATED_DATE DATE NOT NULL,
  PAYMENT_ALLOCATION_NAME VARCHAR(500),
  PRIMARY KEY (ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_TREATMENT (
  ID VARCHAR(36) UNIQUE NOT NULL,
  PAYMENT_APPLICATION_LEVEL VARCHAR(500),
  SHOULD_AUTO_INVOICE BOOLEAN,
  PAYMENT_TREATMENT_STATUS VARCHAR(500) NOT NULL,
  PAYMENT_TREATMENT_NAME VARCHAR(500),
  PRIMARY KEY (ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_AUTHORIZATION (
  PAYMENT_GATEWAY_REFERENCE_NUMBER VARCHAR(500) NOT NULL,
  I_PADDRESS VARCHAR(500),
  TOTAL_PAYMENT_CAPTURE_AMOUNT INTEGER NOT NULL,
  PAYMENT_AUTHORIZATION_PROCESSING_MODE VARCHAR(500) NOT NULL,
  AUTHORIZATION_AMOUNT INTEGER NOT NULL,
  EXPIRATION_DATE DATE NOT NULL,
  ID VARCHAR(36) UNIQUE NOT NULL,
  PAYMENT_GATEWAY_INTERNAL_REFERENCE_NUMBER VARCHAR(500) NOT NULL,
  GATEWAY_REFERENCE_DETAILS_TEXT VARCHAR(500) NOT NULL,
  TOTAL_AUTHORIZATION_REVERSAL_AMOUNT INTEGER NOT NULL,
  PAYMENT_AUTHORIZATION_COMMENT_TEXT VARCHAR(500),
  EXTERNAL_CREATED_DATE DATE NOT NULL,
  PAYMENT_AUTHORIZATION_NUMBER VARCHAR(500) NOT NULL,
  REQUEST_DATE TIME NOT NULL,
  AVAILABLE_BALANCE_AMOUNT INTEGER NOT NULL,
  GATEWAY_RESULT_CODE_DESCRIPTION VARCHAR(500),
  MAC_ADDRESS VARCHAR(500),
  GATEWAY_AUTHORIZATION_CODE VARCHAR(500) NOT NULL,
  PAYMENT_GATEWAY_DATE TIME NOT NULL,
  PAYMENT_AUTHORIZATION_STATUS VARCHAR(500) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.REFUND_PAYMENT_ALLOCATION (
  REFUND_ALLOCATION_COMMENTS_DATE DATE NOT NULL,
  ID VARCHAR(36) UNIQUE NOT NULL,
  PAYMENT_BALANCE_AMOUNT INTEGER NOT NULL,
  REFUND_ALLOCATION_COMMENT_TEXT VARCHAR(500),
  CREDIT_MEMO_BALANCE_AMOUNT INTEGER NOT NULL,
  REFUND_PAYMENT_ALLOCATION_NAME VARCHAR(500),
  EFFECTIVE_DATE DATE NOT NULL,
  HAS_BEEN_UNAPPLIED BOOLEAN,
  REFUND_ALLOCATION_TYPE VARCHAR(500) NOT NULL,
  ALLOCATED_AMOUNT INTEGER NOT NULL,
  REFUND_BALANCE_AMOUNT INTEGER NOT NULL,
  REFUND_ALLOCATION_NAME VARCHAR(500),
  APPLIED_DATE DATE NOT NULL,
  EXTERNAL_CREATED_DATE DATE NOT NULL,
  UNAPPLIED_DATE DATE NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.REFUND_PAYMENT (
  ID VARCHAR(36) UNIQUE NOT NULL,
  EXTERNAL_CREATED_DATE DATE NOT NULL,
  NAME VARCHAR(500),
  PAYMENT_STATUS VARCHAR(500) NOT NULL,
  AUTHORIZATION_PROCESSING_MODE VARCHAR(500) NOT NULL,
  I_PADDRESS VARCHAR(500),
  COMMENT_TEXT VARCHAR(500) NOT NULL,
  PAYMENT_NUMBER VARCHAR(500) NOT NULL,
  PAYMENT_AMOUNT INTEGER NOT NULL,
  LATEST_GATEWAY_INTERNAL_RESULT VARCHAR(500) NOT NULL,
  CUSTOMER_EMAIL_ADDRESS VARCHAR(500),
  LATEST_GATEWAY_REFERENCE_NUMBER VARCHAR(500) NOT NULL,
  LATEST_GATEWAY_DATE DATE NOT NULL,
  BALANCE_AMOUNT INTEGER NOT NULL,
  PAYMENT_TYPE VARCHAR(500) NOT NULL,
  CUSTOMER_PHONE_NUMBER VARCHAR(500),
  LATEST_PAYMENT_GATEWAY_MESSAGE_TEXT VARCHAR(500),
  PAYMENT_EFFECTIVE_DATE DATE NOT NULL,
  PAYMENT_CANCELLATION_DATE DATE NOT NULL,
  MAC_ADDRESS VARCHAR(500),
  TOTAL_APPLIED_AMOUNT INTEGER NOT NULL,
  NET_APPLIED_AMOUNT INTEGER NOT NULL,
  TOTAL_UNAPPLIED_AMOUNT INTEGER NOT NULL,
  LATEST_GATEWAY_INTERNAL_REFERENCE_NUMBER VARCHAR(500) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_GATEWAY (
  PAYMENT_GATEWAY_STATUS VARCHAR(500) NOT NULL,
  ID VARCHAR(36) UNIQUE NOT NULL,
  NAME VARCHAR(500) NOT NULL,
  PAYMENT_GATEWAY_COMMENT_TEXT VARCHAR(500),
  SYSTEM_CREDENTIAL VARCHAR(500),
  PRIMARY KEY (ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.CAPTURE_PAYMENT (
  CAPTURE_PAYMENT_ID VARCHAR(36) UNIQUE NOT NULL,
  ID VARCHAR(500) NOT NULL,
  NAME VARCHAR(500),
  CAPTURE_PAYMENT_TYPE VARCHAR(500) NOT NULL,
  HANDLING_FEE_AMOUNT INTEGER,
  IS_FINAL_CAPTURE BOOLEAN,
  PAYMENT_STATUS VARCHAR(500) NOT NULL,
  AUTHORIZATION_PROCESSING_MODE VARCHAR(500) NOT NULL,
  I_PADDRESS VARCHAR(500),
  COMMENT_TEXT VARCHAR(500) NOT NULL,
  PAYMENT_NUMBER VARCHAR(500) NOT NULL,
  PAYMENT_AMOUNT INTEGER NOT NULL,
  LATEST_GATEWAY_INTERNAL_RESULT VARCHAR(500) NOT NULL,
  CUSTOMER_EMAIL_ADDRESS VARCHAR(500),
  LATEST_GATEWAY_REFERENCE_NUMBER VARCHAR(500) NOT NULL,
  LATEST_GATEWAY_DATE DATE NOT NULL,
  BALANCE_AMOUNT INTEGER NOT NULL,
  PAYMENT_TYPE VARCHAR(500) NOT NULL,
  CUSTOMER_PHONE_NUMBER VARCHAR(500),
  LATEST_PAYMENT_GATEWAY_MESSAGE_TEXT VARCHAR(500),
  PAYMENT_EFFECTIVE_DATE DATE NOT NULL,
  EXTERNAL_CREATED_DATE DATE NOT NULL,
  PAYMENT_CANCELLATION_DATE DATE NOT NULL,
  MAC_ADDRESS VARCHAR(500),
  TOTAL_APPLIED_AMOUNT INTEGER NOT NULL,
  NET_APPLIED_AMOUNT INTEGER NOT NULL,
  TOTAL_UNAPPLIED_AMOUNT INTEGER NOT NULL,
  LATEST_GATEWAY_INTERNAL_REFERENCE_NUMBER VARCHAR(500) NOT NULL,
  PRIMARY KEY (CAPTURE_PAYMENT_ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_GATEWAY_INTERACTION_LOG (
  PAYMENT_GATEWAY_REFERENCE_NUMBER VARCHAR(500) NOT NULL,
  PAYMENT_GATEWAY_MESSAGE_TEXT VARCHAR(500),
  PAYMENT_GATEWAY_AUTHORIZATION_CODE VARCHAR(500) NOT NULL,
  INTERNAL_RESULT_CODE VARCHAR(500) NOT NULL,
  PAYMENT_GATEWAY_AV_SCODE VARCHAR(500) NOT NULL,
  ID VARCHAR(36) UNIQUE NOT NULL,
  INTERNAL_REFERENCE_NUMBER VARCHAR(500) NOT NULL,
  PAYMENT_GATEWAY_INTERACTION_LOG_NAME VARCHAR(500) NOT NULL,
  PAYMENT_GATEWAY_INTERACTION_STATUS VARCHAR(500) NOT NULL,
  PAYMENT_GATEWAY_DATE DATE NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_CREDIT_MEMO_APPLICATION_PAYMENT_JOIN (
  PAYMENT_CREDIT_MEMO_APPLICATION_ID  VARCHAR(36) NOT NULL,
  PAYMENT_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(PAYMENT_CREDIT_MEMO_APPLICATION_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_CREDIT_MEMO_APPLICATION(ID),
  FOREIGN KEY(PAYMENT_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAY_GAT_AUT_REV_LOG_PAY_AUT_REV_JOIN (
  PAYMENT_GATEWAY_AUTH_REVERSAL_LOG_ID  VARCHAR(36) NOT NULL,
  PAYMENT_AUTHORIZATION_REVERSAL_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(PAYMENT_GATEWAY_AUTH_REVERSAL_LOG_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_GATEWAY_AUTH_REVERSAL_LOG(ID),
  FOREIGN KEY(PAYMENT_AUTHORIZATION_REVERSAL_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_AUTHORIZATION_REVERSAL(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAY_GAT_AUT_REV_LOG_PAY_GAT_INT_TYP_JOIN (
  PAYMENT_GATEWAY_AUTH_REVERSAL_LOG_ID  VARCHAR(36) NOT NULL,
  PAYMENT_GATEWAY_INTERACTION_TYPE_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(PAYMENT_GATEWAY_AUTH_REVERSAL_LOG_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_GATEWAY_AUTH_REVERSAL_LOG(ID),
  FOREIGN KEY(PAYMENT_GATEWAY_INTERACTION_TYPE_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_GATEWAY_INTERACTION_TYPE(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_GATEWAY_AUTH_REVERSAL_LOG_PAYMENT_GATEWAY_RESULT_JOIN (
  PAYMENT_GATEWAY_AUTH_REVERSAL_LOG_ID  VARCHAR(36) NOT NULL,
  PAYMENT_GATEWAY_RESULT_CODE_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(PAYMENT_GATEWAY_AUTH_REVERSAL_LOG_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_GATEWAY_AUTH_REVERSAL_LOG(ID),
  FOREIGN KEY(PAYMENT_GATEWAY_RESULT_CODE_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_GATEWAY_RESULT_CODE(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_AUTHORIZATION_REVERSAL_CAPTURE_PAYMENT_JOIN (
  PAYMENT_AUTHORIZATION_REVERSAL_ID  VARCHAR(36) NOT NULL,
  CAPTURE_PAYMENT_CAPTURE_PAYMENT_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(PAYMENT_AUTHORIZATION_REVERSAL_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_AUTHORIZATION_REVERSAL(ID),
  FOREIGN KEY(CAPTURE_PAYMENT_CAPTURE_PAYMENT_ID) REFERENCES PAYMENT_ENTITY_GROUP.CAPTURE_PAYMENT(CAPTURE_PAYMENT_ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_AUTHORIZATION_REVERSAL_PAYMENT_GATEWAY_RESULT_JOIN (
  PAYMENT_AUTHORIZATION_REVERSAL_ID  VARCHAR(36) NOT NULL,
  PAYMENT_GATEWAY_RESULT_CODE_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(PAYMENT_AUTHORIZATION_REVERSAL_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_AUTHORIZATION_REVERSAL(ID),
  FOREIGN KEY(PAYMENT_GATEWAY_RESULT_CODE_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_GATEWAY_RESULT_CODE(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_AUTHORIZATION_REVERSAL_PAYMENT_AUTHORIZATION_JOIN (
  PAYMENT_AUTHORIZATION_REVERSAL_ID  VARCHAR(36) NOT NULL,
  PAYMENT_AUTHORIZATION_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(PAYMENT_AUTHORIZATION_REVERSAL_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_AUTHORIZATION_REVERSAL(ID),
  FOREIGN KEY(PAYMENT_AUTHORIZATION_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_AUTHORIZATION(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_ALLOCATION_RELATED_PAYMENT_ALLOCATION_JOIN (
  PAYMENT_ALLOCATION_ID_LEFT  VARCHAR(36) NOT NULL,
  PAYMENT_ALLOCATION_ID_RIGHT VARCHAR(36) NOT NULL,
  FOREIGN KEY(PAYMENT_ALLOCATION_ID_LEFT) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_ALLOCATION(ID),
  FOREIGN KEY(PAYMENT_ALLOCATION_ID_RIGHT) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_ALLOCATION(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_APPLICATION_PAYMENT_JOIN (
  PAYMENT_APPLICATION_ID  VARCHAR(36) NOT NULL,
  PAYMENT_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(PAYMENT_APPLICATION_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_APPLICATION(ID),
  FOREIGN KEY(PAYMENT_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_INVOICE_APPLICATION_PAYMENT_JOIN (
  PAYMENT_INVOICE_APPLICATION_ID  VARCHAR(36) NOT NULL,
  PAYMENT_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(PAYMENT_INVOICE_APPLICATION_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_INVOICE_APPLICATION(ID),
  FOREIGN KEY(PAYMENT_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.REFUND_CREDIT_MEMO_ALLOCATION_RELATED_REFUND_ALLOCATION_JOIN (
  REFUND_CREDIT_MEMO_ALLOCATION_ID  VARCHAR(36) NOT NULL,
  REFUND_ALLOCATION_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(REFUND_CREDIT_MEMO_ALLOCATION_ID) REFERENCES PAYMENT_ENTITY_GROUP.REFUND_CREDIT_MEMO_ALLOCATION(ID),
  FOREIGN KEY(REFUND_ALLOCATION_ID) REFERENCES PAYMENT_ENTITY_GROUP.REFUND_ALLOCATION(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.REFUND_CREDIT_MEMO_ALLOCATION_REFUND_PAYMENT_JOIN (
  REFUND_CREDIT_MEMO_ALLOCATION_ID  VARCHAR(36) NOT NULL,
  REFUND_PAYMENT_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(REFUND_CREDIT_MEMO_ALLOCATION_ID) REFERENCES PAYMENT_ENTITY_GROUP.REFUND_CREDIT_MEMO_ALLOCATION(ID),
  FOREIGN KEY(REFUND_PAYMENT_ID) REFERENCES PAYMENT_ENTITY_GROUP.REFUND_PAYMENT(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_GATEWAY_PAYMENT_LOG_PAYMENT_JOIN (
  PAYMENT_GATEWAY_PAYMENT_LOG_ID  VARCHAR(36) NOT NULL,
  PAYMENT_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(PAYMENT_GATEWAY_PAYMENT_LOG_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_GATEWAY_PAYMENT_LOG(ID),
  FOREIGN KEY(PAYMENT_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAY_GAT_PAY_LOG_PAY_GAT_INT_TYP_JOIN (
  PAYMENT_GATEWAY_PAYMENT_LOG_ID  VARCHAR(36) NOT NULL,
  PAYMENT_GATEWAY_INTERACTION_TYPE_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(PAYMENT_GATEWAY_PAYMENT_LOG_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_GATEWAY_PAYMENT_LOG(ID),
  FOREIGN KEY(PAYMENT_GATEWAY_INTERACTION_TYPE_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_GATEWAY_INTERACTION_TYPE(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_GATEWAY_PAYMENT_LOG_PAYMENT_GATEWAY_RESULT_JOIN (
  PAYMENT_GATEWAY_PAYMENT_LOG_ID  VARCHAR(36) NOT NULL,
  PAYMENT_GATEWAY_RESULT_CODE_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(PAYMENT_GATEWAY_PAYMENT_LOG_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_GATEWAY_PAYMENT_LOG(ID),
  FOREIGN KEY(PAYMENT_GATEWAY_RESULT_CODE_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_GATEWAY_RESULT_CODE(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.REFUND_ALLOCATION_RELATED_REFUND_ALLOCATION_JOIN (
  REFUND_ALLOCATION_ID_LEFT  VARCHAR(36) NOT NULL,
  REFUND_ALLOCATION_ID_RIGHT VARCHAR(36) NOT NULL,
  FOREIGN KEY(REFUND_ALLOCATION_ID_LEFT) REFERENCES PAYMENT_ENTITY_GROUP.REFUND_ALLOCATION(ID),
  FOREIGN KEY(REFUND_ALLOCATION_ID_RIGHT) REFERENCES PAYMENT_ENTITY_GROUP.REFUND_ALLOCATION(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.REFUND_ALLOCATION_REFUND_PAYMENT_JOIN (
  REFUND_ALLOCATION_ID  VARCHAR(36) NOT NULL,
  REFUND_PAYMENT_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(REFUND_ALLOCATION_ID) REFERENCES PAYMENT_ENTITY_GROUP.REFUND_ALLOCATION(ID),
  FOREIGN KEY(REFUND_PAYMENT_ID) REFERENCES PAYMENT_ENTITY_GROUP.REFUND_PAYMENT(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_GATEWAY_AUTHORIZATION_LOG_PAYMENT_AUTHORIZATION_JOIN (
  PAYMENT_GATEWAY_AUTHORIZATION_LOG_ID  VARCHAR(36) NOT NULL,
  PAYMENT_AUTHORIZATION_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(PAYMENT_GATEWAY_AUTHORIZATION_LOG_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_GATEWAY_AUTHORIZATION_LOG(ID),
  FOREIGN KEY(PAYMENT_AUTHORIZATION_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_AUTHORIZATION(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAY_GAT_AUT_LOG_PAY_GAT_INT_TYP_JOIN (
  PAYMENT_GATEWAY_AUTHORIZATION_LOG_ID  VARCHAR(36) NOT NULL,
  PAYMENT_GATEWAY_INTERACTION_TYPE_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(PAYMENT_GATEWAY_AUTHORIZATION_LOG_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_GATEWAY_AUTHORIZATION_LOG(ID),
  FOREIGN KEY(PAYMENT_GATEWAY_INTERACTION_TYPE_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_GATEWAY_INTERACTION_TYPE(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_GATEWAY_AUTHORIZATION_LOG_PAYMENT_GATEWAY_RESULT_JOIN (
  PAYMENT_GATEWAY_AUTHORIZATION_LOG_ID  VARCHAR(36) NOT NULL,
  PAYMENT_GATEWAY_RESULT_CODE_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(PAYMENT_GATEWAY_AUTHORIZATION_LOG_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_GATEWAY_AUTHORIZATION_LOG(ID),
  FOREIGN KEY(PAYMENT_GATEWAY_RESULT_CODE_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_GATEWAY_RESULT_CODE(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_INVOICE_ALLOCATION_PAYMENT_INVOICE_APPLICATION_JOIN (
  PAYMENT_INVOICE_ALLOCATION_ID  VARCHAR(36) NOT NULL,
  PAYMENT_INVOICE_APPLICATION_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(PAYMENT_INVOICE_ALLOCATION_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_INVOICE_ALLOCATION(ID),
  FOREIGN KEY(PAYMENT_INVOICE_APPLICATION_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_INVOICE_APPLICATION(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_INVOICE_ALLOCATION_RELATED_PAYMENT_ALLOCATION_JOIN (
  PAYMENT_INVOICE_ALLOCATION_ID  VARCHAR(36) NOT NULL,
  PAYMENT_ALLOCATION_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(PAYMENT_INVOICE_ALLOCATION_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_INVOICE_ALLOCATION(ID),
  FOREIGN KEY(PAYMENT_ALLOCATION_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_ALLOCATION(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_ACCOUNT_JOIN (
  PAYMENT_ID  VARCHAR(36) NOT NULL,
  ACCOUNT_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(PAYMENT_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT(ID),
  FOREIGN KEY(ACCOUNT_ID) REFERENCES ACCOUNT_ENTITY_GROUP.ACCOUNT(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_SALES_ORDER_PAYMENT_SUMMARY_JOIN (
  PAYMENT_ID  VARCHAR(36) NOT NULL,
  SALES_ORDER_PAYMENT_SUMMARY_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(PAYMENT_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT(ID),
  FOREIGN KEY(SALES_ORDER_PAYMENT_SUMMARY_ID) REFERENCES SALES_ORDER_ENTITY_GROUP.SALES_ORDER_PAYMENT_SUMMARY(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_LATEST_GATEWAY_RESULT_CODE_JOIN (
  PAYMENT_ID  VARCHAR(36) NOT NULL,
  PAYMENT_GATEWAY_RESULT_CODE_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(PAYMENT_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT(ID),
  FOREIGN KEY(PAYMENT_GATEWAY_RESULT_CODE_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_GATEWAY_RESULT_CODE(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_PAYMENT_GROUP_JOIN (
  PAYMENT_ID  VARCHAR(36) NOT NULL,
  PAYMENT_GROUP_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(PAYMENT_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT(ID),
  FOREIGN KEY(PAYMENT_GROUP_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_GROUP(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_PAYMENT_METHOD_JOIN (
  PAYMENT_ID  VARCHAR(36) NOT NULL,
  PAYMENT_METHOD_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(PAYMENT_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT(ID),
  FOREIGN KEY(PAYMENT_METHOD_ID) REFERENCES PAYMENT_METHOD_ENTITY_GROUP.PAYMENT_METHOD(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_PAYMENT_GATEWAY_JOIN (
  PAYMENT_ID  VARCHAR(36) NOT NULL,
  PAYMENT_GATEWAY_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(PAYMENT_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT(ID),
  FOREIGN KEY(PAYMENT_GATEWAY_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_GATEWAY(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_PAYMENT_TREATMENT_JOIN (
  PAYMENT_ID  VARCHAR(36) NOT NULL,
  PAYMENT_TREATMENT_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(PAYMENT_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT(ID),
  FOREIGN KEY(PAYMENT_TREATMENT_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_TREATMENT(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_INTERNAL_BUSINESS_UNIT_JOIN (
  PAYMENT_ID  VARCHAR(36) NOT NULL,
  INTERNAL_BUSINESS_UNIT_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(PAYMENT_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT(ID),
  FOREIGN KEY(INTERNAL_BUSINESS_UNIT_ID) REFERENCES PARTY_ENTITY_GROUP.INTERNAL_BUSINESS_UNIT(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_CREDIT_MEMO_ALLOCATION_RELATED_PAYMENT_ALLOCATION_JOIN (
  PAYMENT_CREDIT_MEMO_ALLOCATION_ID  VARCHAR(36) NOT NULL,
  PAYMENT_ALLOCATION_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(PAYMENT_CREDIT_MEMO_ALLOCATION_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_CREDIT_MEMO_ALLOCATION(ID),
  FOREIGN KEY(PAYMENT_ALLOCATION_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_ALLOCATION(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_TREATMENT_PAYMENT_TREATMENT_METHOD_JOIN (
  PAYMENT_TREATMENT_ID  VARCHAR(36) NOT NULL,
  PAYMENT_TREATMENT_METHOD_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(PAYMENT_TREATMENT_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_TREATMENT(ID),
  FOREIGN KEY(PAYMENT_TREATMENT_METHOD_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_TREATMENT_METHOD(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_TREATMENT_PAYMENT_POLICY_JOIN (
  PAYMENT_TREATMENT_ID  VARCHAR(36) NOT NULL,
  PAYMENT_POLICY_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(PAYMENT_TREATMENT_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_TREATMENT(ID),
  FOREIGN KEY(PAYMENT_POLICY_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_POLICY(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_AUTHORIZATION_SALES_ORDER_PAYMENT_SUMMARY_JOIN (
  PAYMENT_AUTHORIZATION_ID  VARCHAR(36) NOT NULL,
  SALES_ORDER_PAYMENT_SUMMARY_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(PAYMENT_AUTHORIZATION_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_AUTHORIZATION(ID),
  FOREIGN KEY(SALES_ORDER_PAYMENT_SUMMARY_ID) REFERENCES SALES_ORDER_ENTITY_GROUP.SALES_ORDER_PAYMENT_SUMMARY(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_AUTHORIZATION_PAYMENT_GROUP_JOIN (
  PAYMENT_AUTHORIZATION_ID  VARCHAR(36) NOT NULL,
  PAYMENT_GROUP_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(PAYMENT_AUTHORIZATION_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_AUTHORIZATION(ID),
  FOREIGN KEY(PAYMENT_GROUP_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_GROUP(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_AUTHORIZATION_PAYMENT_GATEWAY_JOIN (
  PAYMENT_AUTHORIZATION_ID  VARCHAR(36) NOT NULL,
  PAYMENT_GATEWAY_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(PAYMENT_AUTHORIZATION_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_AUTHORIZATION(ID),
  FOREIGN KEY(PAYMENT_GATEWAY_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_GATEWAY(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_AUTHORIZATION_PAYMENT_GATEWAY_RESULT_JOIN (
  PAYMENT_AUTHORIZATION_ID  VARCHAR(36) NOT NULL,
  PAYMENT_GATEWAY_RESULT_CODE_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(PAYMENT_AUTHORIZATION_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_AUTHORIZATION(ID),
  FOREIGN KEY(PAYMENT_GATEWAY_RESULT_CODE_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_GATEWAY_RESULT_CODE(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_AUTHORIZATION_PAYMENT_METHOD_JOIN (
  PAYMENT_AUTHORIZATION_ID  VARCHAR(36) NOT NULL,
  PAYMENT_METHOD_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(PAYMENT_AUTHORIZATION_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_AUTHORIZATION(ID),
  FOREIGN KEY(PAYMENT_METHOD_ID) REFERENCES PAYMENT_METHOD_ENTITY_GROUP.PAYMENT_METHOD(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.REFUND_PAYMENT_ALLOCATION_CAPTURE_PAYMENT_JOIN (
  REFUND_PAYMENT_ALLOCATION_ID  VARCHAR(36) NOT NULL,
  CAPTURE_PAYMENT_CAPTURE_PAYMENT_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(REFUND_PAYMENT_ALLOCATION_ID) REFERENCES PAYMENT_ENTITY_GROUP.REFUND_PAYMENT_ALLOCATION(ID),
  FOREIGN KEY(CAPTURE_PAYMENT_CAPTURE_PAYMENT_ID) REFERENCES PAYMENT_ENTITY_GROUP.CAPTURE_PAYMENT(CAPTURE_PAYMENT_ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.REFUND_PAYMENT_ALLOCATION_RELATED_REFUND_ALLOCATION_JOIN (
  REFUND_PAYMENT_ALLOCATION_ID  VARCHAR(36) NOT NULL,
  REFUND_ALLOCATION_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(REFUND_PAYMENT_ALLOCATION_ID) REFERENCES PAYMENT_ENTITY_GROUP.REFUND_PAYMENT_ALLOCATION(ID),
  FOREIGN KEY(REFUND_ALLOCATION_ID) REFERENCES PAYMENT_ENTITY_GROUP.REFUND_ALLOCATION(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.REFUND_PAYMENT_ALLOCATION_REFUND_PAYMENT_JOIN (
  REFUND_PAYMENT_ALLOCATION_ID  VARCHAR(36) NOT NULL,
  REFUND_PAYMENT_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(REFUND_PAYMENT_ALLOCATION_ID) REFERENCES PAYMENT_ENTITY_GROUP.REFUND_PAYMENT_ALLOCATION(ID),
  FOREIGN KEY(REFUND_PAYMENT_ID) REFERENCES PAYMENT_ENTITY_GROUP.REFUND_PAYMENT(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.REFUND_PAYMENT_ACCOUNT_JOIN (
  REFUND_PAYMENT_ID  VARCHAR(36) NOT NULL,
  ACCOUNT_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(REFUND_PAYMENT_ID) REFERENCES PAYMENT_ENTITY_GROUP.REFUND_PAYMENT(ID),
  FOREIGN KEY(ACCOUNT_ID) REFERENCES ACCOUNT_ENTITY_GROUP.ACCOUNT(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.REFUND_PAYMENT_SALES_ORDER_PAYMENT_SUMMARY_JOIN (
  REFUND_PAYMENT_ID  VARCHAR(36) NOT NULL,
  SALES_ORDER_PAYMENT_SUMMARY_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(REFUND_PAYMENT_ID) REFERENCES PAYMENT_ENTITY_GROUP.REFUND_PAYMENT(ID),
  FOREIGN KEY(SALES_ORDER_PAYMENT_SUMMARY_ID) REFERENCES SALES_ORDER_ENTITY_GROUP.SALES_ORDER_PAYMENT_SUMMARY(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.REFUND_PAYMENT_LATEST_GATEWAY_RESULT_CODE_JOIN (
  REFUND_PAYMENT_ID  VARCHAR(36) NOT NULL,
  PAYMENT_GATEWAY_RESULT_CODE_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(REFUND_PAYMENT_ID) REFERENCES PAYMENT_ENTITY_GROUP.REFUND_PAYMENT(ID),
  FOREIGN KEY(PAYMENT_GATEWAY_RESULT_CODE_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_GATEWAY_RESULT_CODE(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.REFUND_PAYMENT_PAYMENT_GROUP_JOIN (
  REFUND_PAYMENT_ID  VARCHAR(36) NOT NULL,
  PAYMENT_GROUP_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(REFUND_PAYMENT_ID) REFERENCES PAYMENT_ENTITY_GROUP.REFUND_PAYMENT(ID),
  FOREIGN KEY(PAYMENT_GROUP_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_GROUP(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.REFUND_PAYMENT_PAYMENT_METHOD_JOIN (
  REFUND_PAYMENT_ID  VARCHAR(36) NOT NULL,
  PAYMENT_METHOD_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(REFUND_PAYMENT_ID) REFERENCES PAYMENT_ENTITY_GROUP.REFUND_PAYMENT(ID),
  FOREIGN KEY(PAYMENT_METHOD_ID) REFERENCES PAYMENT_METHOD_ENTITY_GROUP.PAYMENT_METHOD(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.REFUND_PAYMENT_PAYMENT_GATEWAY_JOIN (
  REFUND_PAYMENT_ID  VARCHAR(36) NOT NULL,
  PAYMENT_GATEWAY_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(REFUND_PAYMENT_ID) REFERENCES PAYMENT_ENTITY_GROUP.REFUND_PAYMENT(ID),
  FOREIGN KEY(PAYMENT_GATEWAY_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_GATEWAY(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.REFUND_PAYMENT_PAYMENT_TREATMENT_JOIN (
  REFUND_PAYMENT_ID  VARCHAR(36) NOT NULL,
  PAYMENT_TREATMENT_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(REFUND_PAYMENT_ID) REFERENCES PAYMENT_ENTITY_GROUP.REFUND_PAYMENT(ID),
  FOREIGN KEY(PAYMENT_TREATMENT_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_TREATMENT(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.REFUND_PAYMENT_INTERNAL_BUSINESS_UNIT_JOIN (
  REFUND_PAYMENT_ID  VARCHAR(36) NOT NULL,
  INTERNAL_BUSINESS_UNIT_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(REFUND_PAYMENT_ID) REFERENCES PAYMENT_ENTITY_GROUP.REFUND_PAYMENT(ID),
  FOREIGN KEY(INTERNAL_BUSINESS_UNIT_ID) REFERENCES PARTY_ENTITY_GROUP.INTERNAL_BUSINESS_UNIT(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_GATEWAY_PAYMENT_GATEWAY_PROVIDER_JOIN (
  PAYMENT_GATEWAY_ID  VARCHAR(36) NOT NULL,
  PAYMENT_GATEWAY_PROVIDER_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(PAYMENT_GATEWAY_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_GATEWAY(ID),
  FOREIGN KEY(PAYMENT_GATEWAY_PROVIDER_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_GATEWAY_PROVIDER(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.CAPTURE_PAYMENT_PAYMENT_AUTHORIZATION_JOIN (
  CAPTURE_PAYMENT_CAPTURE_PAYMENT_ID  VARCHAR(36) NOT NULL,
  PAYMENT_AUTHORIZATION_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(CAPTURE_PAYMENT_CAPTURE_PAYMENT_ID) REFERENCES PAYMENT_ENTITY_GROUP.CAPTURE_PAYMENT(CAPTURE_PAYMENT_ID),
  FOREIGN KEY(PAYMENT_AUTHORIZATION_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_AUTHORIZATION(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.CAPTURE_PAYMENT_ACCOUNT_JOIN (
  CAPTURE_PAYMENT_CAPTURE_PAYMENT_ID  VARCHAR(36) NOT NULL,
  ACCOUNT_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(CAPTURE_PAYMENT_CAPTURE_PAYMENT_ID) REFERENCES PAYMENT_ENTITY_GROUP.CAPTURE_PAYMENT(CAPTURE_PAYMENT_ID),
  FOREIGN KEY(ACCOUNT_ID) REFERENCES ACCOUNT_ENTITY_GROUP.ACCOUNT(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.CAPTURE_PAYMENT_SALES_ORDER_PAYMENT_SUMMARY_JOIN (
  CAPTURE_PAYMENT_CAPTURE_PAYMENT_ID  VARCHAR(36) NOT NULL,
  SALES_ORDER_PAYMENT_SUMMARY_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(CAPTURE_PAYMENT_CAPTURE_PAYMENT_ID) REFERENCES PAYMENT_ENTITY_GROUP.CAPTURE_PAYMENT(CAPTURE_PAYMENT_ID),
  FOREIGN KEY(SALES_ORDER_PAYMENT_SUMMARY_ID) REFERENCES SALES_ORDER_ENTITY_GROUP.SALES_ORDER_PAYMENT_SUMMARY(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.CAPTURE_PAYMENT_LATEST_GATEWAY_RESULT_CODE_JOIN (
  CAPTURE_PAYMENT_CAPTURE_PAYMENT_ID  VARCHAR(36) NOT NULL,
  PAYMENT_GATEWAY_RESULT_CODE_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(CAPTURE_PAYMENT_CAPTURE_PAYMENT_ID) REFERENCES PAYMENT_ENTITY_GROUP.CAPTURE_PAYMENT(CAPTURE_PAYMENT_ID),
  FOREIGN KEY(PAYMENT_GATEWAY_RESULT_CODE_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_GATEWAY_RESULT_CODE(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.CAPTURE_PAYMENT_PAYMENT_GROUP_JOIN (
  CAPTURE_PAYMENT_CAPTURE_PAYMENT_ID  VARCHAR(36) NOT NULL,
  PAYMENT_GROUP_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(CAPTURE_PAYMENT_CAPTURE_PAYMENT_ID) REFERENCES PAYMENT_ENTITY_GROUP.CAPTURE_PAYMENT(CAPTURE_PAYMENT_ID),
  FOREIGN KEY(PAYMENT_GROUP_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_GROUP(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.CAPTURE_PAYMENT_PAYMENT_METHOD_JOIN (
  CAPTURE_PAYMENT_CAPTURE_PAYMENT_ID  VARCHAR(36) NOT NULL,
  PAYMENT_METHOD_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(CAPTURE_PAYMENT_CAPTURE_PAYMENT_ID) REFERENCES PAYMENT_ENTITY_GROUP.CAPTURE_PAYMENT(CAPTURE_PAYMENT_ID),
  FOREIGN KEY(PAYMENT_METHOD_ID) REFERENCES PAYMENT_METHOD_ENTITY_GROUP.PAYMENT_METHOD(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.CAPTURE_PAYMENT_PAYMENT_GATEWAY_JOIN (
  CAPTURE_PAYMENT_CAPTURE_PAYMENT_ID  VARCHAR(36) NOT NULL,
  PAYMENT_GATEWAY_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(CAPTURE_PAYMENT_CAPTURE_PAYMENT_ID) REFERENCES PAYMENT_ENTITY_GROUP.CAPTURE_PAYMENT(CAPTURE_PAYMENT_ID),
  FOREIGN KEY(PAYMENT_GATEWAY_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_GATEWAY(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.CAPTURE_PAYMENT_PAYMENT_TREATMENT_JOIN (
  CAPTURE_PAYMENT_CAPTURE_PAYMENT_ID  VARCHAR(36) NOT NULL,
  PAYMENT_TREATMENT_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(CAPTURE_PAYMENT_CAPTURE_PAYMENT_ID) REFERENCES PAYMENT_ENTITY_GROUP.CAPTURE_PAYMENT(CAPTURE_PAYMENT_ID),
  FOREIGN KEY(PAYMENT_TREATMENT_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_TREATMENT(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.CAPTURE_PAYMENT_INTERNAL_BUSINESS_UNIT_JOIN (
  CAPTURE_PAYMENT_CAPTURE_PAYMENT_ID  VARCHAR(36) NOT NULL,
  INTERNAL_BUSINESS_UNIT_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(CAPTURE_PAYMENT_CAPTURE_PAYMENT_ID) REFERENCES PAYMENT_ENTITY_GROUP.CAPTURE_PAYMENT(CAPTURE_PAYMENT_ID),
  FOREIGN KEY(INTERNAL_BUSINESS_UNIT_ID) REFERENCES PARTY_ENTITY_GROUP.INTERNAL_BUSINESS_UNIT(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAY_GAT_INT_LOG_PAY_GAT_INT_TYP_JOIN (
  PAYMENT_GATEWAY_INTERACTION_LOG_ID  VARCHAR(36) NOT NULL,
  PAYMENT_GATEWAY_INTERACTION_TYPE_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(PAYMENT_GATEWAY_INTERACTION_LOG_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_GATEWAY_INTERACTION_LOG(ID),
  FOREIGN KEY(PAYMENT_GATEWAY_INTERACTION_TYPE_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_GATEWAY_INTERACTION_TYPE(ID)
);

CREATE TABLE PAYMENT_ENTITY_GROUP.PAYMENT_GATEWAY_INTERACTION_LOG_PAYMENT_GATEWAY_RESULT_JOIN (
  PAYMENT_GATEWAY_INTERACTION_LOG_ID  VARCHAR(36) NOT NULL,
  PAYMENT_GATEWAY_RESULT_CODE_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(PAYMENT_GATEWAY_INTERACTION_LOG_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_GATEWAY_INTERACTION_LOG(ID),
  FOREIGN KEY(PAYMENT_GATEWAY_RESULT_CODE_ID) REFERENCES PAYMENT_ENTITY_GROUP.PAYMENT_GATEWAY_RESULT_CODE(ID)
);