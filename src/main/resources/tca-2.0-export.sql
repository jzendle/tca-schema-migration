DROP TABLE action;
CREATE TABLE npm_tca_iot.action
(
    guid char(36) CONSTRAINT action__guid NOT NULL,
    alert char(36) CONSTRAINT action__alert NOT NULL,
    action_type int CONSTRAINT action__action_type NOT NULL
);

ALTER TABLE npm_tca_iot.action ADD CONSTRAINT action__pk PRIMARY KEY (guid); 

ALTER TABLE npm_tca_iot.action ADD CONSTRAINT C_FOREIGN FOREIGN KEY (alert) references npm_tca_iot.alert (guid);

CREATE PROJECTION npm_tca_iot.action /*+createtype(P)*/ 
(
 guid,
 alert,
 action_type ENCODING RLE
)
AS
 SELECT action.guid,
        action.alert,
        action.action_type
 FROM npm_tca_iot.action
 ORDER BY action.guid,
          action.alert
UNSEGMENTED ALL NODES;


SELECT MARK_DESIGN_KSAFE(1);
INSERT INTO action (guid, alert, action_type) VALUES ('002cc8f0-5878-4690-ae9e-141d8359aaa6', 'd05ad4b4-a136-4c2b-8129-99f73f8bf4fa', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('00d85a05-9b3a-4611-bd98-ad8e3a18ebed', '843bca00-68ee-4306-a9b5-a2b5fa7a82b5', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('00dc3191-ecc6-4958-b6fb-0766b533a8dd', 'd94b12ac-267f-4f4c-8d5e-9524ea6448f2', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('01909db2-ac15-49e5-b009-13ae5fcb6b67', '92ad6580-4a93-40d2-9cef-cb43398316a4', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('01bd0b00-815a-4d98-a8ff-ac45023905b0', '6d69156d-6d54-4966-a092-13e25b014671', 1001);
INSERT INTO action (guid, alert, action_type) VALUES ('02dc0494-b935-4757-8468-1e640c244afd', '6f24d77d-3c22-4f1a-9fd3-f46c97494c4f', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('03ce7a05-4001-4aaf-bb9b-71aecd0ee6e2', 'b98d950c-2fa8-4d0e-bf5d-c1a76bdc07fb', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('03f4b746-6f9b-4734-b809-8a61418f3c8a', '0a081c95-18e9-4735-a414-79eed556a988', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('04204bcd-80e8-4316-85ac-b22ee4b6f071', '3cef7562-044e-4af8-a02f-d0408b7d8e68', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('06f4a851-951f-4a6f-a6c5-dbe950812e93', '94048089-e344-4cbe-903d-e205b0d1bdec', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('09035f62-c748-46c5-b83c-02c2e0e763a2', '2ccd24e6-1bf2-4c19-b29c-e5b90c115eb3', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('09c4e45f-da15-4c3e-bfd2-9711d64b09ef', '6e761466-8c1f-4b53-9c4f-8d8511f28779', 1001);
INSERT INTO action (guid, alert, action_type) VALUES ('0a3fc6b7-ced6-441a-bdee-8f97915ac721', '30b02039-3d70-4fd9-87a3-88b161199ee9', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('0bfd1fde-1225-4c6a-8341-3c6e96abe65f', 'e2802736-2d86-471d-9f72-57e9e420d020', 1001);
INSERT INTO action (guid, alert, action_type) VALUES ('0facc915-61ee-470c-ac93-f9ccfeac6ef1', '6e761466-8c1f-4b53-9c4f-8d8511f28779', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('1064c740-1d77-460a-8abf-5c77d8786b23', '3dc58777-740f-4fb0-9c80-fdbfff457fd3', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('11c0fec4-ff77-4328-bbb7-241ca2752c3a', '7d6dd74c-7273-42cc-a5a8-932bf5cebca6', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('149dc62f-2ef1-4e25-98d3-db697c3c5a94', '6cf3caeb-5c64-4918-84e3-2a0acc270712', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('1501f418-92d7-4e04-a47b-9d816182c7f5', '9075e50c-a91f-40a5-8947-4c4a038c2249', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('157fbbdf-a844-4089-81fd-bfa39ceabb35', 'fb09e159-ea80-4bf4-83b5-40f9a3c13d64', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('15c42a09-3fbe-4c59-9e8d-38ddc30871e0', 'f8d6a268-bcfc-466f-98de-e39d1da42a76', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('16874d69-80e6-4b66-9dbc-0b5d157b8ac4', '4503097b-6560-4162-b27c-1a935b1ff774', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('1b3fab64-d5d2-414b-b140-a6b783b27ff9', 'af0f054a-dbaa-4e01-8139-435189f5459e', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('1bf9c0a9-c71b-4f23-9e26-65a01f9bec66', 'a06605d7-c200-466d-b117-b357c05aab4e', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('1c11b7ec-f994-4db5-a5ab-b1469ef57172', '55ef9941-9d93-4489-a963-82834dfa6136', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('1c54f5e3-b0ac-493b-b49d-afcc96cec700', '35cf054f-0de0-4919-827b-a6abc5bbb47e', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('1ea7f4a5-5c2c-4c93-a151-96f8df1cff84', 'b8f63a17-8a7c-4cc5-8047-f3eab6737ab8', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('1edcae59-44a3-4013-bc27-20698e2ee80c', '465fd52d-3987-4897-8262-8217e4529c0d', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('1ee7e3bc-cf41-472c-a1f4-b3e8fe0c227d', '6d6a4acc-dbc2-4ec8-8d36-484ce8050a02', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('1feb48a4-2cd8-477c-9a8e-a8397bfdaf2b', '3831ebcf-a6bc-4137-80dd-1f9271e53109', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('2203eb3a-7ad0-4a67-85f7-a4878e8261de', 'a86fc5ee-f766-4d5a-bd06-eed36f00b939', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('221eafcd-5acb-4b6e-8c3a-05a59def3f0b', '49124f31-000f-461e-85fc-ee6acb552312', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('2317762d-fc12-4b8c-9f4c-986f93603f47', '3b43b547-7a79-46fb-beaa-927c75f28691', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('248efed8-a709-4c7b-85ad-06c06eca0f51', 'fea18792-60fc-4c48-b734-df2c6e117592', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('251121bc-3e2e-45cd-bcd7-ab5555c4202a', 'da61b893-6c66-46cd-a52a-d3e74a094ee6', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('260d388f-e7a5-476a-8d95-6e2852960223', '5b738dac-1830-4667-b538-f824c67911b5', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('28ceaa5f-1657-45dc-b1ad-d93d05f75e49', '35d9f86a-d3b4-4233-b238-a72bf2da4e09', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('28d1cfe2-1402-4b1d-b9ee-d99d8d41f20d', '7eeacb57-14b7-422f-8d95-a3d7c0854772', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('2a3ea632-4681-4c15-a82d-25960479c30b', '6b6ac7c0-c3d7-45b6-8969-5b992a8df281', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('2b2ef573-5eb2-48f0-a134-a3e4d829fa64', '8a1d11cf-d0cb-4477-94b4-8cbe780554c9', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('2bccb29a-0b83-455b-a5a5-9c326c159034', '65b85e31-4f5a-450f-b32b-37c294226237', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('2e9cdab9-1243-4d4f-88cf-b155973da798', '3af43859-cc83-4b08-a64b-f872fe8f44a4', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('2fd900cd-5550-434f-a3b9-bbb6937190f2', '9a2ab90e-c11a-4c9b-bc4e-4dadddc0caee', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('31fc586b-ee23-412c-a379-261361afc835', 'b45dc385-08ed-44f1-b4d2-ca4d0f83eb69', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('32346179-7503-4584-a93a-f071f802f5ee', 'ecbad14b-9339-4993-8417-9f74aab79657', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('327c6b8c-9fcc-4385-a0d2-3d43f5798221', 'fe56fa6f-575d-4aeb-879f-7414925ae694', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('33dd397a-35a2-453e-b633-3506a9cfecb2', '9a463185-9270-436c-b17f-86f072be5484', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('34d23112-4712-4136-9c3a-834a72c50a39', '7a6f73ce-7082-4cf6-8b1d-640995e1aca4', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('34fa2e11-7411-4bc5-baaa-401b603eb7ca', '1e5c22f0-0347-43c3-aa6e-9ba9f6d9fc82', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('35b9ddc4-9b1c-4998-abb4-e3b1efbcc71a', '16a9bfd9-af4a-42eb-818d-590e99c9194c', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('36265362-8b82-40c1-9394-887013a062ca', '32d54c2a-0371-489e-bab4-50ec72e13254', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('36b65c56-aa90-4141-b867-e55b0a3ec529', '16f4fa85-9b43-4734-9578-b925b4e51af0', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('389e57ff-cec1-4daa-9de9-90bcda289abe', '2e714786-26cb-47f7-ba7c-721c5c2764ab', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('39585f40-0c09-49a4-9cb0-c6d68352a05a', '5bee1ef2-b8f5-485b-95f7-d17182208b0f', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('3b9a10f7-326d-4ee9-a893-5b047cd29251', '89f286c1-bd5e-46de-be88-5f841bd8e84f', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('3bd6962f-2bba-45f3-aa29-809d3e056f1b', '6338eac3-5d5f-4d22-817f-ff76d24feebc', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('3c8afb08-0c25-4fe6-a52b-cfaaf6255df9', '2dbc51aa-033f-456b-95cb-bb289bbd962c', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('3e0cd0ad-9142-4f96-87e3-3a0a45e4a899', '36330a6f-42b9-4783-927c-24426b8be5de', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('3e5d494a-4698-43c6-80b3-e043d0cf3052', '753c23d0-bdc0-4b09-b207-679efcb81d52', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('3f7db080-14cc-4db8-91d8-e9584bb96e22', '7d6dd74c-7273-42cc-a5a8-932bf5cebca6', 1001);
INSERT INTO action (guid, alert, action_type) VALUES ('3f86996e-8439-4f98-9fc8-be2244b1b31a', '7da52f6e-15aa-434e-b5c7-5c05065713ff', 1001);
INSERT INTO action (guid, alert, action_type) VALUES ('402cfea0-78d1-464d-a168-f58e3add9853', '5a398758-da38-4d76-92ae-dfe868747449', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('40a9203e-8e4b-4917-99a2-0b089201be1a', '6daed89c-515a-4473-a541-1a5d1a77c1b0', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('4379914b-6043-4b4d-bdff-ed8abc56a35d', '27a0cfd4-27ab-4e6c-b7ae-56f3e6d760d1', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('43c94d3b-cc09-4dbe-8f54-583c77532b81', '5dca4072-70f2-4378-9f1f-b714dd05b85b', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('43f0567d-095f-43b4-92c3-ad6d86d5bcd0', 'd35b8781-382e-4408-a179-2e6edabc550c', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('4435946e-a917-4ae1-b197-a664ea10e8b3', 'b3a6197b-a8e8-44dc-8c0d-f8cd4c2841cb', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('448e949c-5a2d-4a6e-9bf6-8026ed3e313d', '3ef07076-f80e-4c5e-ab8f-a2a1dffaad6e', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('4539d5b8-e0bb-4bb2-828b-27cded21e615', '14b4da75-8090-4e18-84d3-042609c4eb22', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('4565e4b0-1fdf-4851-9ceb-0981a6645e57', 'f5c582cb-cab9-4002-991b-03c1c8527dd4', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('47fde373-3ed6-4dff-b2bd-6bf0930881a5', '5fd9e482-f237-491a-9921-87ff76aff2e5', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('48fc399b-b3df-4636-a4cc-889491f9f3d6', 'b7fb46ba-4b17-474d-9f0b-a151e53e97a5', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('4963bbac-a0c1-46be-9fbe-1b8e2a90bdfe', 'f8add86d-b7f6-4dfe-9095-ba318d5f774e', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('4ba42239-25fc-4a1b-a561-a716521e5d18', '596dcaf9-4c0c-449e-ba7f-420f2a53eb0d', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('4c555d0e-e172-4996-879f-47594849d43a', '4dcf648b-4e8e-4aca-9657-1136c888ee59', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('4c76970b-52b7-4bc5-acd1-6fc4d3bc2954', '2a758027-fdd3-4297-9537-3fecafe01c35', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('4e195161-b98f-44f6-8381-57a30e7d4bc3', '9f14da76-28fc-424d-8665-a82a2647fd09', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('5144b6dd-dbe2-4b45-ae54-c98955eeaf84', '35cf054f-0de0-4919-827b-a6abc5bbb47e', 1001);
INSERT INTO action (guid, alert, action_type) VALUES ('53629a0a-7452-4873-9a16-32ace013262c', '994c74fb-2f30-4268-aa23-bbc7e075442b', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('547f5f74-3609-406e-a829-7d088fac6870', '6734f687-1369-47df-be09-8580270dc4d6', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('54b2cce2-36f9-4650-9504-859e7625f7f7', '2b056e33-b1e0-4ecd-87f7-95b421d3beae', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('54d848a1-3c7b-4fcc-9d1e-394c06333352', '81da269e-ad41-4f53-8f50-822be055c3ce', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('556a096d-e268-442e-8c85-5b28a626ed00', '197e7528-0b25-4a65-a971-6f7c82e8e988', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('57a8bcf7-4c61-4318-99e3-43641a4502b8', 'd695baf7-558e-4874-b57b-b3df3d85f51d', 1001);
INSERT INTO action (guid, alert, action_type) VALUES ('57c6c581-e4fe-4804-bde2-aaad42d3b24a', 'e9ebd1c7-2cc8-4667-8686-9a7bf0b193c8', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('588bca19-6598-45e4-b62b-201f0dcf25f5', '75ee6cb0-b1bb-42d8-8519-8618315be771', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('594d1a1c-ebe4-4a28-beb2-0600c546f494', '960dd6b6-eb6e-470b-8dd1-b04d358cf197', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('59da7291-8d84-4423-a89b-f0c382c105ce', '076df241-8ac3-4d0c-b23a-1d108dbfa092', 1001);
INSERT INTO action (guid, alert, action_type) VALUES ('5cb22702-52f2-43ea-b725-03c6c6da30ef', 'cca95437-48f3-40e8-b09b-f68256ed8a19', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('5d285786-e22d-477b-abd6-1a865235c4b8', 'd4a627ca-3b6c-49f2-8a29-d68470f49217', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('5e6beb56-5313-4aa3-9ed7-ff9d9256752a', 'f4693f14-6090-4c3f-b140-b7425eabe44d', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('5f76f45e-fd71-4446-a9e0-1506f7eab5de', '4d7246b8-587e-452c-9970-59c7806beb51', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('613e4c9a-1de6-4953-a42c-d1576d70b729', '76ab1fd2-386d-4fd6-84ea-bc5acc30c17a', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('62df6694-b40f-46ee-9bdf-02379c569635', '3aef96f4-5df4-40f2-9728-61197ba68372', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('67f1d43d-b18b-45fd-8167-b3e4d352739a', '8f067ba3-c389-460c-9339-1b10a17e7548', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('685b2a05-c425-406a-a825-ee4434354542', '39310564-db19-4113-b916-daee072f97d6', 1001);
INSERT INTO action (guid, alert, action_type) VALUES ('686ef3fb-3aa0-44dc-8373-47699a688a00', '4122240b-c967-4e35-8cc7-66016bab9c8d', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('6bab05a7-3e6e-44b9-8c24-7bbdb4aa885c', 'b4486a99-2bbe-4dd1-8c28-3b72159f6266', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('6d5221c5-ca93-4e84-bb9f-74004f02ab15', '8cd1d071-8886-4627-ad69-e4bfe34cea4f', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('6e587cd7-7502-45dc-8891-90faaaa79a7f', '5c78c72f-1971-40cb-b9d7-cb6d74ed6d07', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('6fa51dbc-ad95-4e76-b7e1-b8e644f74355', '5c6373e4-b728-431c-b29a-7551d199bdfd', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('71beb78d-76df-4954-aa51-9bf0caa0ebc5', 'b112f4e0-235f-4fdb-a484-cc09c55cac17', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('71d40be9-48f8-414a-8a28-b1754b12da76', 'fbaa42b2-c0e5-4288-aa3f-13fbfb438fde', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('71dd88ee-e898-4d01-9c6c-fcb0979935e6', '0397d293-cf55-4105-8d64-cbd47394a116', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('7240e463-da59-4ba7-b017-47d1a0a7e3c8', 'b736e84b-5e43-4a82-9a7b-5d40f53f8718', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('72d6cb4a-185e-4708-8807-c5e69b50d926', '94f0fb1a-1c40-407a-8b4d-7a4ac5ccf763', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('765ae76d-30c0-4654-9e4f-02bd141267a9', 'd0305b16-f078-4d72-95f9-4bfa47bad890', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('76fa8cd6-26fd-40b0-b420-4bd3d8e6a991', 'c62f1669-8b31-4cf4-99e0-a330dc53dbfd', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('7f029d11-41c0-4e71-8498-235a6fa42c01', '5232caab-2b52-44a7-9e24-d00d9f3a2a06', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('7f5b805b-1a40-4bb6-9724-7b5ceb1c1139', '3fda6986-9ea5-42b6-aff5-2375ec4dd285', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('7f8c43ad-bbab-4545-abb2-1a39ecd768d9', '6a33aaa1-dd3b-4b0b-a32f-0823a88fab73', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('7fbc7519-991d-4a5f-90b9-39252d230b5c', '2c7ed012-9f19-4048-9dde-2f658aa1ab42', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('80e0d194-7f5a-464e-9a57-5f370129defa', '37a72708-fb99-4f24-af8f-1f24acfc80ee', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('81722939-610f-48ca-84e2-b8b2792f03cd', 'a95a2ba5-6bf9-45dd-a448-b317714c0210', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('861d9803-1c56-4499-8750-0cd718a30a84', '499d50b0-bb43-4f66-b6a2-6b8ec12435bf', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('88dc2dd2-2f82-439c-9daa-3ffff56b6528', '72ed0ed0-62dd-420a-a6c1-0ff580a5163a', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('8977800e-6a83-4b22-b372-03c4621a7d48', '8360a181-7c95-48d0-bfc4-d59866e6a28e', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('89c7500c-9c78-41f1-b511-daf436061a1f', 'c7afe1c1-40c5-4f43-9923-8adf8367059e', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('8b747726-d6f6-48aa-9a5b-310da5d45b3b', 'be669401-c540-4d64-888d-5ad29e85699c', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('8c54f2f2-51f6-42a3-ae00-01ba5cb2f058', '7f270e87-fb3a-4d65-8b0b-cf73e58aadad', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('8d8b8b2e-196c-49d1-a2e1-4bf9374d873c', '2459905e-2e63-4b68-bae0-6e3d7f572651', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('8d9ac9cf-88da-488b-a4db-66a1a625d112', 'bc219b4f-dafa-4933-b478-efd1bfe829ac', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('8e062b07-ae48-467e-bb79-9d2cdc56ccaf', '0a081c95-18e9-4735-a414-79eed556a988', 1001);
INSERT INTO action (guid, alert, action_type) VALUES ('8fb50195-f680-49b1-99b5-6c6fd4c47f27', '0b8c59d6-ed88-45c9-8073-c3e3cd774db8', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('9086bf1a-0a63-4515-882a-b991900723b5', '8bcbb675-1c48-46cc-9993-33ddcbec3e2c', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('90e041af-ae25-4cf1-9bef-9ab0403570cc', '2f64911f-0720-4989-bf00-489aa00db17d', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('91e2926f-a34f-4c4c-801c-deb961202f64', 'd695baf7-558e-4874-b57b-b3df3d85f51d', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('92abfb6a-f6f5-4ddd-b6ff-78d28782ad54', 'eccb2876-422f-48a4-85ee-7ca5b690bb95', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('93193d67-f96e-48f9-9354-ef3ec76ca337', 'dc6ec57b-48ea-4a98-91a3-248b03febf8c', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('94b0bbed-553d-41db-9856-1dee9cd52d62', '4eae3015-8570-4d95-b23e-3e7448ce39cf', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('9691ae29-6d8e-4794-ad96-fc7fe9027f1f', 'afac2685-92ad-42e1-a5d1-e2aa747ae0c5', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('969d370c-59c0-435a-a869-f9873213c1ee', '6665888f-308a-4030-aed2-691aa6d1cf89', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('96a11cd5-ebd0-471c-9444-66477884cd27', '9498a2c3-2ee6-4300-acee-2a3e0cf6dcbf', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('9784156b-beea-4423-a331-475c615ae5c7', 'd9ec91cc-86f7-4140-a4f6-fa934fb61716', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('9810e97a-e7a9-4588-86d4-60f58da84247', '34dbff3d-ed14-41d8-98a9-ac5c7e5bdceb', 1001);
INSERT INTO action (guid, alert, action_type) VALUES ('99f041b4-970a-4ff3-a237-6b36f86188f0', 'c0f4835e-dbbb-4c4f-b830-9da9350ab7c7', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('9c516df9-1381-43ae-806a-d07151ef62a9', '2ec2e3e5-ada6-4181-b540-bd0211094259', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('9c5a853a-abd0-414d-9b02-357966530223', 'fb349415-ae2f-4878-890a-aeff88dfc473', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('9e90b8a3-5c4c-416b-9a6a-837b7d7028dd', '96d345b3-2c9b-4aeb-abbb-9e9ce9b01c67', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('9edd4128-6830-497f-b7d8-c8dc539db01d', '13f80c2a-98c9-4888-9474-a5105df8222a', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('a196a570-708d-491d-83ad-bef0afdc4a43', 'cf8e719a-5468-4f39-9de4-11ddc30e4942', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('a1999e43-fb8a-4dc0-9917-918857d46961', '94017a1f-bb89-489f-9936-79a098ba3905', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('a200539a-a2e1-498b-b2c1-38eca3089164', '69627dd4-0d53-4ffc-84be-179e624f4e21', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('a20d1803-ebd3-4ade-9c98-888048d030e6', '5fd9e482-f237-491a-9921-87ff76aff2e5', 1001);
INSERT INTO action (guid, alert, action_type) VALUES ('a2bad964-502a-4531-97e0-93858badb6b2', '37aab366-c1f4-45e5-a2ea-c306875f99c8', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('a32863f8-d38e-40b2-8ed8-c23d79119ecc', '6aa8d26a-4777-495b-b71e-7e1729d7577e', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('a4734b95-ebb9-4489-b2ce-9175f11f8ba8', 'a7ab75a9-f37b-4a32-bb51-6658a79ea7b6', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('a490abe4-722f-47ff-8bec-509f68dd4b7a', '6aa8d26a-4777-495b-b71e-7e1729d7577e', 1001);
INSERT INTO action (guid, alert, action_type) VALUES ('a494c6e6-b516-4e07-8a4f-7ce157d057e4', '27af603e-d83d-4530-b1cc-4af08806b351', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('a4ae615d-f296-4792-b341-792aa4a21f72', 'a5940475-318e-4d53-9b68-b2556ff8bb8b', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('a68c78e4-098f-43bb-9819-0dc0e4e9cffb', '8e142fc2-3d2f-436b-926b-7d884fbd5096', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('a82d72bb-3776-4726-a5d2-3a80e40fba01', '5807f83a-4a6d-4251-97d0-7bd9993e9b47', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('a8ab8b61-73b8-4324-b2d2-107881e4a547', '9ff04d59-6566-4efa-a977-bef1af64f8a6', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('a8dc8378-ee9b-46a9-8f35-593af6a36cb6', '8383402e-2581-4c9e-9a14-3d92800437a7', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('aa8fb782-c2dc-41a9-8241-144afa13b99f', '5c447b4a-7a04-42c3-b76f-b76aa10c7f7b', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('aabbfb7e-3118-4db4-bf81-78d473236b9e', 'fbdb5647-413c-4655-8ba9-c01d826c251c', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('aabfc2f5-7596-4fa2-9ef9-bff6037a3e03', 'd94b12ac-267f-4f4c-8d5e-9524ea6448f2', 1001);
INSERT INTO action (guid, alert, action_type) VALUES ('aada962f-4d16-43f7-96ee-9cab4d0a8f20', 'bcffcc0f-24d4-499b-91e6-d70412f4aafa', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('aadeaec7-f468-4e39-9df9-95751e7af9ee', '4122240b-c967-4e35-8cc7-66016bab9c8d', 1001);
INSERT INTO action (guid, alert, action_type) VALUES ('aca3aaff-0e50-45c1-888c-2e1483938502', '3b9281c2-47d8-4315-adf3-25565aebb9f3', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('ad5e7d07-ee24-4255-a107-ad5cd5c39853', '8f1f9ac3-b5c2-496a-9c95-4e9e56b92c06', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('aeaf82e4-57da-4818-b9a3-2d2b01205f09', '4856604d-b00d-4854-b8f0-cbf0be73e85b', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('afd13528-a39d-4808-bfa2-8b1ad46673dc', 'e95a5cf7-291c-460f-ad08-ab3a556d7c91', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('b046a46a-ab84-4f53-962e-833acb44e3d8', '67fbbccb-08f1-45bf-a5e6-9cdf6ea1f7a1', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('b09b3500-046b-4cf5-96df-a9b8882869d1', '595ce5f5-16e3-4d9d-9ff7-8b8fb01cfb94', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('b0c2d942-82fa-4a6a-9a2a-601a516b0818', '6bb42563-3e10-44f9-8d29-ffe95b9dbddb', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('b11da2e6-452b-49a8-ab4c-2faee9847e67', '8f9d3ea5-6a30-472d-bf45-05064a95338f', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('b185db17-c514-4f2a-b866-dc9162194819', 'aeb6c943-c621-4b47-a01b-1f3e3ee629bb', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('b278f16e-a652-4368-be5f-fddaa7afe1f8', 'd485f356-6b40-446e-89c1-e776415e6d72', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('b3553239-f35f-4a78-ab42-ebe01e670017', '707604fd-f8dd-4a39-9a4d-2dd3207f2b62', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('b38897af-33f2-4970-9aba-105730bb44d2', '76cb92cc-9080-44a4-9599-e04ea3d913f1', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('b39ad68b-9f7e-416d-a297-3c62979989cf', '6c88914c-d05f-4951-89f4-6fa594b37d56', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('b5b8740f-a38c-4b69-9ff0-438446e46020', '18d71971-2350-46d8-853d-f9dd72232254', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('b6643024-490f-448b-a570-26f51c2c5079', '7d9f69ec-a8d8-465c-aa7d-48fedb6d774b', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('b70c819a-6991-42cd-9eca-d2a625ae2c20', '55176bb1-ae04-4004-a234-ae56f915341d', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('b8b7514e-c07c-48c9-b612-2553e83d5cb7', 'a10b70fe-d8e3-4156-8e3f-370f2ffd8377', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('ba82b392-1375-4ca0-93d8-21cf5a844647', 'fcba5393-5ce9-433e-9ae8-b1c550a77d24', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('be12ba97-a2b7-481a-ac4b-f52f74e0d32f', '8200ddcc-bd0b-43bb-97fb-ff0c62914a6a', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('bef1e263-9b70-4934-b868-db51254feb1e', '995e04cb-3c7b-495e-b49c-8ce4564ac411', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('bfbf0257-4dc9-47d5-b9cd-227febf5394b', '6d69156d-6d54-4966-a092-13e25b014671', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('c392c299-efd6-4715-ba32-a5c85a7f8aaa', '48132283-ea0d-446f-b707-62e1000ce1b9', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('c435122d-6300-496b-ac92-9e06f7a83d51', 'ad07e411-a1d8-49e5-887c-8117b0ba961a', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('c45a990a-aa21-4082-92bb-3182a820d5c1', '34dbff3d-ed14-41d8-98a9-ac5c7e5bdceb', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('c47885d1-6e17-449f-a7a1-ddeb6b585b70', '423c06f4-0850-4b43-ae41-771c9bc589f4', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('c49e02ea-bda7-4864-b449-a019554228e6', 'bbdd0f73-0570-4505-8b14-f9cc928d86ef', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('c7c93cbc-753b-4ce1-9e51-07aeb633370c', '104dd0ca-e6ab-455d-a57d-3230373f796b', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('cb56090a-8138-46b9-8fdb-eb1e23cdf477', 'd9d66a7f-9a59-42b0-b376-95161ced3189', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('cb93b03d-9b74-4358-8711-6300f965fcfc', '8b5ceb0f-92e4-4c7b-a2d8-da8bf161df4a', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('d004ce54-93ff-45a6-a124-308b9263927d', '764c2b23-26b1-4f27-9304-f88ec52d4cac', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('d28a7e63-8028-471f-a05d-99a6a669be84', 'c010b24f-5115-462a-b643-3dd7baac15ac', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('d365c6e1-ad7e-4612-985e-13b9c6ecbb17', 'e3a49d26-4ad8-4731-bfee-33f999e1a004', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('d372ee34-db17-4276-9ca2-4cd9b954ffec', '7cea94a0-7d99-4e0c-9e3d-ad9134891bad', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('d5d9cae9-ad4f-42e5-8612-b9a31be823c0', 'e2cc804a-097c-4aaf-b88e-452b383ea358', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('d60d5237-7414-434b-8fc8-4ade813ce3be', 'd3fbdf18-a470-4bb3-affc-036a00b28c2d', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('d7c8a459-4cdc-4520-8a47-6be4d38357ed', '941e022a-c65e-445a-89d4-c2ecf33cf65d', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('d7ff1f65-dad6-4027-95b7-85088c1d7015', '36be6410-6192-49c8-ace5-1fdfa0b52705', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('d838f4ef-9d57-4f0c-a19d-02ceae2afa7b', '7b4858d6-da6c-4ab7-b088-58e05dc26975', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('d8dc1e0e-fe7c-49a3-a50a-9d60a073e2d0', '64435f23-722e-45e6-b208-60bae2375725', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('da3accd5-5161-4a6b-9d6b-5bcb69c039a2', '068de3dc-92e9-4873-a088-c1d6863d6412', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('da4b42a0-b41d-40e9-afcc-ad663c90a334', '47fcb267-37a4-4383-9ddf-c96a3f50a052', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('db750f29-9148-4b73-86f5-f0a2f8f32b9a', '639e7258-56dd-499a-80cb-12c73f4e7ff6', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('dcc3618f-a9a5-4a6b-885e-f54d9e41e14f', '0f530da0-9d87-4ea5-949c-78f2d270900d', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('dccc1642-4535-43ea-a50e-109c1707a77b', '5a27cd34-998c-4c6c-8dcd-6e731052e31d', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('dcd8a65b-9b4b-4552-bbd8-faf3dcd1180f', '31d3f6f9-e674-4545-b09a-03a05545366b', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('dd25826e-8393-4dea-8762-a79a5c2c70fb', '46834f96-4731-40c5-81a4-a058db43b269', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('ddb9c3b6-2c2d-442a-a5a8-9cadd452e554', 'd849c565-0329-44ae-bf54-6b5cce6edd07', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('e0af5858-6025-4275-a231-7d4933d6647a', 'd9435546-b117-485b-b18b-125de73fa182', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('e144c9f7-a6fa-48ff-8299-d1264931c776', '1051a741-2058-48d7-beea-92e94d3c0dfd', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('e1994590-d21b-4576-9b18-aebd65c58088', '905d25f7-86e6-4b50-8289-7e5b71c08e54', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('e427c2bc-6ff6-4102-a851-f557e54a005a', 'b9c8736a-e658-48a4-9cd4-f811cfe37068', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('e45b8db4-7804-467b-804f-1845026146b1', '0543e9d2-9160-421a-9d9e-541a85437836', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('e5b6708e-7cad-46db-b961-0ec19aae10e4', '7abf9bea-7593-4586-aefe-4c73dd2cde20', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('e92b7442-6e23-4f04-bb68-93262462b745', '3dc58777-740f-4fb0-9c80-fdbfff457fd3', 1001);
INSERT INTO action (guid, alert, action_type) VALUES ('e9e7a27e-12f6-4192-bed5-d2ec50fe7b07', '6e9e8dd0-c7ba-4960-9091-5104fc48fbe7', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('ecdc6295-9696-4b96-b2df-4c34478c313a', '65f15414-ebc0-49cc-9ec8-1987db287f21', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('ed467054-7b81-4104-9928-33fae191db0c', '0fede3c3-2292-4cc9-89f9-5a352d607885', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('edf4f1d9-0b24-43d7-9473-65a862f54a0d', 'f2a116a9-f510-4c10-8139-9a130ea50185', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('ef038301-8e1a-4304-830b-62b7f025455f', 'f282af28-c503-424e-9368-ee113aa4278e', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('f05ae66b-e75a-4032-b17f-7a443934ddbd', '1ca1652a-15df-4fe9-ac87-f46736c79a60', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('f18ac98e-9da9-40a2-9245-ad2ca9b42860', '5699325e-e770-4d8b-9a97-35147e6a9b9c', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('f2a88aa6-bd19-47d6-920a-3399e434602a', 'e2802736-2d86-471d-9f72-57e9e420d020', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('f2f1298a-c7f2-4860-820c-31fe3a2946dd', '7aa6871d-1193-4026-a51b-08144013ed05', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('f52be80a-c0cc-4ddd-b6c9-99bb7170c8ea', 'cb8aa358-3551-4216-82b7-8295f3262749', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('f5910fd5-10b8-49a5-ada1-7d04a64338a5', 'd039e05a-6780-41d7-956a-971ed6303eae', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('f7a0f41d-2de0-477d-91f6-0cedf504777d', '47dbe9e1-9d44-4d26-97a9-80628b21ca5d', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('f7eff187-e501-43b2-9f71-dd9b33ddf7a6', '4bd51960-ff23-40c4-ae74-dba793740e6e', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('f8fcc115-6450-4d6f-82b9-df23394291d9', '0a8d8356-7a6b-439e-ba85-69f1db2c4439', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('faf748c0-7058-4759-8bfa-4d004df985a2', '0b01734a-3fde-44d6-8249-891e1df00e83', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('fbca2662-6a92-48c9-a096-97fc47209b2a', 'e4a668e2-2aed-4cc7-ab5c-36a3b7c5a0bb', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('fbd938e5-67d3-4b2c-a794-cd78b28be0a1', 'af357c76-3f47-4968-ac5e-7e65da663909', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('fc0e2d6e-7e3a-4a55-8a92-8725cfedd353', 'd553dc26-c2c7-416e-a861-1e47829cb516', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('fc6d3774-6109-4f4a-94f8-db7522c433be', '04ea1b55-93ad-4150-a53d-2375c2501488', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('fd29dc9d-cf52-42a7-af52-39f8caae725c', '37a72708-fb99-4f24-af8f-1f24acfc80ee', 1001);
INSERT INTO action (guid, alert, action_type) VALUES ('fea174be-eb2b-4868-ae40-efe78c9fdf3f', 'e333262a-d7eb-4c22-b785-b6bc79bb6825', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('72569eb3-7ca3-4e16-bcaa-9b33fdb5eff8', 'c174b2cd-36a7-4e3c-93c3-9ce98271cd37', 1001);
INSERT INTO action (guid, alert, action_type) VALUES ('b1892b7e-648a-41fb-bbf2-100496dc005a', 'ac60420d-9476-43d0-a126-0c8d8e850445', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('b778042a-2074-4a39-88e2-d30b918134cd', 'ac60420d-9476-43d0-a126-0c8d8e850445', 1001);
INSERT INTO action (guid, alert, action_type) VALUES ('ce640c99-aa61-4e46-997d-01cd17dda2b8', 'c174b2cd-36a7-4e3c-93c3-9ce98271cd37', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('20c06019-1b3d-4792-953c-05914a08dadd', 'a8a9bc63-1a48-487c-842d-4a5cba34adf9', 1001);
INSERT INTO action (guid, alert, action_type) VALUES ('2b615d20-e30d-4b34-9c4d-56778fb843f5', 'dde8d258-77c2-419d-9af1-19f2f6dd18ad', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('2f40a223-84ac-4005-80fc-564b6cbd7e8f', 'b583a454-fde4-44d3-9740-5af20dd876a9', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('8075d10d-dce3-428f-8ef0-999549e677ef', 'dde8d258-77c2-419d-9af1-19f2f6dd18ad', 1001);
INSERT INTO action (guid, alert, action_type) VALUES ('9eed47d5-eedd-41ab-9163-84ea25a1ed0f', 'a8a9bc63-1a48-487c-842d-4a5cba34adf9', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('d747c029-89d3-4c7b-905a-834fbebd97e3', 'b583a454-fde4-44d3-9740-5af20dd876a9', 1001);
INSERT INTO action (guid, alert, action_type) VALUES ('069167a5-b963-4d90-b153-0abf9668948d', 'e9ecb7c0-2c72-4e0d-9a4a-8d96a4b93ec0', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('797b3637-7374-49bd-b16b-f27c3c1d08ae', '404b8da7-2338-49f2-bb5d-7d031aac7bf1', 1001);
INSERT INTO action (guid, alert, action_type) VALUES ('83ab9a2a-de7a-4e3a-be05-edebbb666ae7', '404b8da7-2338-49f2-bb5d-7d031aac7bf1', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('8405827b-6738-42a4-88ad-e45165a38898', 'e9ecb7c0-2c72-4e0d-9a4a-8d96a4b93ec0', 1001);
INSERT INTO action (guid, alert, action_type) VALUES ('244d3fd5-6fa2-4563-8687-514115689cb3', '732741d6-84c7-4c04-a4d2-12ee2499cc9b', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('54a205ef-4280-40f1-a83c-93b6f0fb5a19', '830fd29f-e89e-493e-8240-0555d7e168ac', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('b530485d-3332-403b-91be-2957bb50ac27', '732741d6-84c7-4c04-a4d2-12ee2499cc9b', 1001);
INSERT INTO action (guid, alert, action_type) VALUES ('d26b34b1-59da-4c48-95ce-6db91f083b47', '830fd29f-e89e-493e-8240-0555d7e168ac', 1001);
INSERT INTO action (guid, alert, action_type) VALUES ('49caaa59-15a2-43f7-8b53-e27862896f2d', '92ccaf03-842b-4101-a425-170cb54beba1', 1001);
INSERT INTO action (guid, alert, action_type) VALUES ('7bfb77cb-3d6f-400b-8474-a19f99c851f4', '92ccaf03-842b-4101-a425-170cb54beba1', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('b2f1369d-bc41-4f2f-8475-02af26a7c35e', 'e837ad60-1143-439a-a23c-4e382fcae83a', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('fbff7e7c-caee-4f24-93bd-4498dc98525e', 'e837ad60-1143-439a-a23c-4e382fcae83a', 1001);
INSERT INTO action (guid, alert, action_type) VALUES ('24187587-034e-48f1-b298-79c12143821a', '094735e6-bc43-4262-924a-79f1c250dd60', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('9f418322-8494-4ac8-bc4d-2188623061ce', '094735e6-bc43-4262-924a-79f1c250dd60', 1001);
INSERT INTO action (guid, alert, action_type) VALUES ('d4eb0976-f4c2-4f61-a4c6-2e62b4437e65', '47eb3df4-fee1-420e-bdc1-8c4825a9c62c', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('d7bcd753-5df6-4c9d-b307-1d36254ce720', '47eb3df4-fee1-420e-bdc1-8c4825a9c62c', 1001);
INSERT INTO action (guid, alert, action_type) VALUES ('5bb87df3-b5e2-42ee-88d8-a1b066a6b17e', '224671c8-4e1b-4692-902b-0c0cd1946603', 1001);
INSERT INTO action (guid, alert, action_type) VALUES ('9456b372-baee-4d52-932f-9cf83218c49b', '224671c8-4e1b-4692-902b-0c0cd1946603', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('63ab5335-7572-4025-a9c2-7417df5fde07', '9403c359-ebda-450d-8864-0098c4eb2217', 1001);
INSERT INTO action (guid, alert, action_type) VALUES ('a5735e9b-a50e-40d3-8021-660388b6927d', '101a2100-0f6b-40fa-adc0-258f715df342', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('3194ee68-b1c6-400c-a94c-27748d2345f3', 'e6649b2a-7b3c-45ad-b70e-00288d7e4671', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('70e7e181-6317-4732-9eb8-2bf6cbdd72b7', '8cd6acdb-059b-48c5-9fb0-9481d5bf6f60', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('775f6985-3389-406c-bf4d-e208067d51d0', '3f059a15-7bf7-4955-8c76-f160c06da9e6', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('8737f128-27e4-49df-b8ae-3e417b4008ee', 'f692d0bb-fc48-40c8-b2e3-5f25e3244c0c', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('9c172b60-0db8-4a2d-a2d6-3c0057889e11', '165e055c-fa6b-416f-bb6f-afb576ab0047', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('155b8da7-0b43-4fd1-bed0-6795371995e0', 'b080c155-947e-479b-a352-5b735e1ebc5c', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('18d28606-89f7-4ef6-9044-4b51993984bb', '259cef81-8d81-41dc-9c02-75ee168e0d0f', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('2e92036f-10b6-4d22-af9e-b81653d87eb4', '53b0d202-9f9f-4306-806e-29d1ad66096f', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('33443eae-ab88-45af-bf39-7fd85ec597af', '6a728825-39c6-4e4e-8872-57f654b94eb3', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('34f6c299-1a97-48b2-bde1-6500bafcbbba', '0668d3ff-0246-467d-8d59-77782d160234', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('3996db57-c588-48b7-a382-eb664e256d0d', '76943419-7755-479c-9c6f-eb7247bb6bf1', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('6a2f1788-28a0-4478-bc39-53828398456f', '0d0e2446-d9ef-4307-a62b-a0b4dc392d61', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('784624b2-c82f-4c1b-a2e6-d5ae848baf21', '4f1f1afe-637a-4df9-8721-dffad94d207a', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('c97dc83c-3aa9-49fb-8d30-18f418a6b078', '4d64d85b-d5b9-43cc-a5a1-4252629dd5a2', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('cb84d191-486b-44a7-84f9-3dbcbfcbc494', '146de9c5-b4f6-4cfc-8b7c-cf133251ff41', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('daaa150c-ad13-4e90-8a42-2aa26d0cb59c', 'dceff928-c3ad-455f-a726-1f04add83230', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('dbb552b5-12b8-4060-aafb-cc4345a09f7b', 'e16161d1-6d2b-41f4-a3cc-69dc013dbf7c', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('de7f32ed-21d3-44b7-8415-49e4925a4048', 'ea2a9d9f-c24d-459e-a5eb-4900437bd0b4', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('e024ce65-c149-4501-a382-44c7a344d673', 'ef9cf02f-d042-4036-83aa-09272b8fbfa6', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('efa6b442-5e1f-4857-abbf-a9c9c1743330', 'cd736d6a-1c06-4e55-b65b-ddce4272d6eb', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('05ebb5a3-c595-49c4-b167-c688a2d96df9', '615000b0-5d74-45b1-9f34-8b94714d62dc', 1001);
INSERT INTO action (guid, alert, action_type) VALUES ('f2d49f92-de23-4a81-b7b9-2e58a648a031', '7deb30eb-4682-4ddf-99cc-5fd4f2ee168b', 1001);
INSERT INTO action (guid, alert, action_type) VALUES ('86f95300-2f27-410a-b58a-38f50cf62388', '5cd59156-d6b1-4141-8202-32c669d93488', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('2966bdd0-bcd7-40ac-974a-a89942ed2e1b', 'b960e23c-b563-40b7-bd52-afae395a7ed6', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('7fb56c5d-3aad-452a-9dcf-f50dbc070a55', 'b960e23c-b563-40b7-bd52-afae395a7ed6', 1001);
INSERT INTO action (guid, alert, action_type) VALUES ('d95e23f4-d881-48ed-9911-635eab2fc78a', 'd70ef5f4-89d5-47b0-a7ab-17f38fde0297', 1001);
INSERT INTO action (guid, alert, action_type) VALUES ('dd963576-9fb4-4134-ae30-31456ca8ad54', 'd70ef5f4-89d5-47b0-a7ab-17f38fde0297', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('94fa9a06-0dd3-4d29-be84-78356dbc03bf', 'aa9923a3-2feb-40d8-8281-44caa861aa2c', 1003);
INSERT INTO action (guid, alert, action_type) VALUES ('e0dd7852-896d-49cb-bc82-5c788d0dfff8', 'aa9923a3-2feb-40d8-8281-44caa861aa2c', 1001);
DROP TABLE action_parameter;
CREATE TABLE npm_tca_iot.action_parameter
(
    id int CONSTRAINT action_parameter__element NOT NULL,
    element int CONSTRAINT action_parameter__element NOT NULL,
    name varchar(128) CONSTRAINT action_parameter__element NOT NULL
);

ALTER TABLE npm_tca_iot.action_parameter ADD CONSTRAINT action_parameter__pk PRIMARY KEY (id); 

ALTER TABLE npm_tca_iot.action_parameter ADD CONSTRAINT C_FOREIGN FOREIGN KEY (element) references npm_tca_iot.element (id);

CREATE PROJECTION npm_tca_iot.action_parameter /*+createtype(P)*/ 
(
 id ENCODING RLE,
 element ENCODING RLE,
 name
)
AS
 SELECT action_parameter.id,
        action_parameter.element,
        action_parameter.name
 FROM npm_tca_iot.action_parameter
 ORDER BY action_parameter.element,
          action_parameter.id
SEGMENTED BY hash(action_parameter.id) ALL NODES KSAFE 1;


SELECT MARK_DESIGN_KSAFE(1);
INSERT INTO action_parameter (id, element, name) VALUES (1, 1001, 'bandwidth_upgrade');
INSERT INTO action_parameter (id, element, name) VALUES (2, 1001, 'rate_2x');
INSERT INTO action_parameter (id, element, name) VALUES (3, 1001, 'rate_3x');
INSERT INTO action_parameter (id, element, name) VALUES (4, 1001, 'notify');
INSERT INTO action_parameter (id, element, name) VALUES (21, 1003, 'email_id');
DROP TABLE alert;
CREATE TABLE npm_tca_iot.alert
(
    guid char(36) CONSTRAINT alert__guid NOT NULL,
    metric char(36) CONSTRAINT alert__metric NOT NULL,
    "timezone" int CONSTRAINT alert__timezone NOT NULL,
    period int CONSTRAINT alert__period NOT NULL
);

ALTER TABLE npm_tca_iot.alert ADD CONSTRAINT alert__pk PRIMARY KEY (guid); 

ALTER TABLE npm_tca_iot.alert ADD CONSTRAINT C_FOREIGN FOREIGN KEY (metric) references npm_tca_iot.metric (guid);

CREATE PROJECTION npm_tca_iot.alert /*+createtype(P)*/ 
(
 guid,
 metric,
 "timezone" ENCODING RLE,
 period ENCODING RLE
)
AS
 SELECT alert.guid,
        alert.metric,
        alert."timezone",
        alert.period
 FROM npm_tca_iot.alert
 ORDER BY alert.guid,
          alert.metric
UNSEGMENTED ALL NODES;


SELECT MARK_DESIGN_KSAFE(1);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('0397d293-cf55-4105-8d64-cbd47394a116', '8b619214-7ea0-4bc4-b98c-08a1f5a18ee7', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('04ea1b55-93ad-4150-a53d-2375c2501488', 'f18dfa40-3298-4b79-ae04-6c673efb964b', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('0543e9d2-9160-421a-9d9e-541a85437836', '8bb0144b-dd58-4283-9194-28b523916050', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('068de3dc-92e9-4873-a088-c1d6863d6412', 'c8642e13-e616-4b46-9a25-715d85c6758d', 2003, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('076df241-8ac3-4d0c-b23a-1d108dbfa092', '20be2cb0-0fd4-4548-8608-b5cc9f80e8ee', 2005, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('0a081c95-18e9-4735-a414-79eed556a988', 'fe3c17d4-3c52-486d-be8e-b65b5bc4a55f', 2005, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('0a8d8356-7a6b-439e-ba85-69f1db2c4439', '7c406122-0396-442b-a73c-a0b6204959c6', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('0b01734a-3fde-44d6-8249-891e1df00e83', 'bfb58834-bf6a-4755-ba63-2e66f7f64e1a', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('0b8c59d6-ed88-45c9-8073-c3e3cd774db8', 'df329803-4341-4697-a1c3-83dbcdad4e22', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('0fede3c3-2292-4cc9-89f9-5a352d607885', '89966a30-b122-44b5-af57-6ef63357f711', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('1051a741-2058-48d7-beea-92e94d3c0dfd', '1290b82a-d8f0-46f4-8f5c-1d7dc2e59e08', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('14b4da75-8090-4e18-84d3-042609c4eb22', '07c41a39-5a63-43a0-8e1f-3028543c7d83', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('16a9bfd9-af4a-42eb-818d-590e99c9194c', 'f6185027-09b0-44d5-820a-f2b4c7c10e55', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('16f4fa85-9b43-4734-9578-b925b4e51af0', '20acee67-3a1e-4db0-962a-7e62edcb5854', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('18d71971-2350-46d8-853d-f9dd72232254', '7e757e0a-4f92-44b7-945f-3b4aeafd3455', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('197e7528-0b25-4a65-a971-6f7c82e8e988', 'c9aec4b2-36ac-4e6b-9832-7e98133b2a87', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('1ca1652a-15df-4fe9-ac87-f46736c79a60', 'd3685d5e-a91d-4dfc-bfa5-6453848fa111', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('2459905e-2e63-4b68-bae0-6e3d7f572651', '61414281-5c2e-41e8-9804-7467fc6a8151', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('27af603e-d83d-4530-b1cc-4af08806b351', '3c352948-c631-4867-bedb-f8af6de3fc7b', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('2a758027-fdd3-4297-9537-3fecafe01c35', '1e14906c-0297-4a37-bd06-a330cc63d93f', 2001, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('2c7ed012-9f19-4048-9dde-2f658aa1ab42', '98607b27-8fa9-43b5-8c7a-60c63159f307', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('2e714786-26cb-47f7-ba7c-721c5c2764ab', '0ea664e8-6950-44ac-b56b-6d7deb1ef143', 2005, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('2ec2e3e5-ada6-4181-b540-bd0211094259', '1b3368ff-8309-4534-9385-b2ce13ab5414', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('2f64911f-0720-4989-bf00-489aa00db17d', 'e51ffec9-05e7-4552-ad6b-bd8c32b21df4', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('30b02039-3d70-4fd9-87a3-88b161199ee9', '357263ad-4d2e-4ba0-84ff-fa9253bc4e43', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('31d3f6f9-e674-4545-b09a-03a05545366b', 'be0036f8-0046-49c3-8d74-72a5f28448ac', 2001, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('32d54c2a-0371-489e-bab4-50ec72e13254', '85967329-efc2-4514-ad22-c0951627097d', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('34dbff3d-ed14-41d8-98a9-ac5c7e5bdceb', '1fa36281-0e37-40e0-beca-5fc24353d728', 2005, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('35cf054f-0de0-4919-827b-a6abc5bbb47e', '180946c3-35eb-4c90-806a-739b3627ab08', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('35d9f86a-d3b4-4233-b238-a72bf2da4e09', 'ba29557a-6c69-4346-bc36-57acd1a5df9d', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('36330a6f-42b9-4783-927c-24426b8be5de', 'a5ee8735-89d2-4f93-988e-4f4301a51ed5', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('37aab366-c1f4-45e5-a2ea-c306875f99c8', 'cb28800a-4263-4768-bb8f-302df2bf6db8', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('39310564-db19-4113-b916-daee072f97d6', '1282f43a-c12e-4a20-9b93-2f97e0d0e1f0', 2005, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('3aef96f4-5df4-40f2-9728-61197ba68372', 'dd9a2c6b-08b2-4355-8ad5-218a2a1b8957', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('3af43859-cc83-4b08-a64b-f872fe8f44a4', '656cf111-f46b-4a85-a32d-a295a62267c5', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('3b43b547-7a79-46fb-beaa-927c75f28691', '40fe8c24-925b-4169-b86f-9503327d078c', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('3b9281c2-47d8-4315-adf3-25565aebb9f3', '945ed764-50fa-43ac-b76e-1169550345b2', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('3cef7562-044e-4af8-a02f-d0408b7d8e68', 'b471400a-535b-4806-8e6e-da6a3d5349a1', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('3dc58777-740f-4fb0-9c80-fdbfff457fd3', '751c78bd-0473-43b7-9ee1-3652b3ccc36a', 2005, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('3ef07076-f80e-4c5e-ab8f-a2a1dffaad6e', 'ec00a1c8-b77d-4d61-92e8-736c5f27608c', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('3fda6986-9ea5-42b6-aff5-2375ec4dd285', '959749f8-6df1-49c2-80b0-a288ea5c6d7e', 2005, 1003);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('4122240b-c967-4e35-8cc7-66016bab9c8d', 'f22ca9e2-4c72-439e-a3df-d1c1d90ab2b1', 2005, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('423c06f4-0850-4b43-ae41-771c9bc589f4', '54a34b9f-9168-4bb2-a92a-152f8e49b982', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('4503097b-6560-4162-b27c-1a935b1ff774', '24632261-6f92-490d-ad24-79591e7d454b', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('465fd52d-3987-4897-8262-8217e4529c0d', 'e7562a71-4214-4852-8eea-afaaaa840d5e', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('46834f96-4731-40c5-81a4-a058db43b269', 'ac25e91d-bac4-4e27-96cb-1e9d07d6a7e1', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('47dbe9e1-9d44-4d26-97a9-80628b21ca5d', '31bcf249-20d0-44d3-a997-aa972f62c973', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('47fcb267-37a4-4383-9ddf-c96a3f50a052', 'afd7b849-dcb8-4819-90ee-1daf13b7e4ef', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('48132283-ea0d-446f-b707-62e1000ce1b9', '400c6f27-d4da-42df-bd0a-517867eaf508', 2005, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('4856604d-b00d-4854-b8f0-cbf0be73e85b', 'e35a0fcd-4617-47fe-84d0-3c05c04deac0', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('49124f31-000f-461e-85fc-ee6acb552312', '9df5adbf-44d6-48aa-9beb-06181e8cc70e', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('499d50b0-bb43-4f66-b6a2-6b8ec12435bf', '39f00ce0-abab-4bcd-8dea-69fb2ed420c6', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('4bd51960-ff23-40c4-ae74-dba793740e6e', '8c7a0595-2d70-4fe8-935b-9810c2a00e12', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('4d7246b8-587e-452c-9970-59c7806beb51', 'dab89042-17ed-44e1-a84b-88e0e1bd34a1', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('4dcf648b-4e8e-4aca-9657-1136c888ee59', '32dbab32-e7f8-4709-a1f7-3ff51094fc55', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('5232caab-2b52-44a7-9e24-d00d9f3a2a06', 'd9fe98c4-2f41-4cc3-b182-bdb4d7deb6c6', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('55176bb1-ae04-4004-a234-ae56f915341d', '5959a232-1a90-4615-9255-275ed098dfed', 2005, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('595ce5f5-16e3-4d9d-9ff7-8b8fb01cfb94', '03ed601e-2808-4b96-ab86-f926d23cb74a', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('596dcaf9-4c0c-449e-ba7f-420f2a53eb0d', '22a1e6da-3716-44ed-9873-02d41ceaa8ed', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('5a27cd34-998c-4c6c-8dcd-6e731052e31d', 'fd0f94df-20ac-483f-8d06-36877428e83f', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('5a398758-da38-4d76-92ae-dfe868747449', 'd3be4a13-4fd5-4660-8a23-432bedfa8b4b', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('5b738dac-1830-4667-b538-f824c67911b5', 'a26ab6d1-88ae-4f53-a2f0-449943cda67f', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('5bee1ef2-b8f5-485b-95f7-d17182208b0f', 'f1eece4c-2d29-427f-b302-9a45278eebf8', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('5c447b4a-7a04-42c3-b76f-b76aa10c7f7b', 'f4f9959e-4af6-45ba-a968-7b03660fe36c', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('5c6373e4-b728-431c-b29a-7551d199bdfd', '5cf35543-3579-4fdf-a0e4-5daa4e7d00c8', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('5c78c72f-1971-40cb-b9d7-cb6d74ed6d07', '1b32da11-1fdd-4419-852d-3d1b77779cb9', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('5dca4072-70f2-4378-9f1f-b714dd05b85b', 'f70f07e8-4ab9-42d7-95e3-f451f359ee1e', 2001, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('5fd9e482-f237-491a-9921-87ff76aff2e5', '47e82ef2-2447-43f0-a052-02c1e2e62b7e', 2005, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('6338eac3-5d5f-4d22-817f-ff76d24feebc', '994b14f2-eb1d-4678-aecd-1f3525fe0d24', 2001, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('639e7258-56dd-499a-80cb-12c73f4e7ff6', 'd7fa1c79-1e30-4d77-8ac2-53bd08db9aea', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('64435f23-722e-45e6-b208-60bae2375725', '5d6e6157-7075-4e90-89d2-fc5876f65be8', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('65f15414-ebc0-49cc-9ec8-1987db287f21', '72dd17fb-de35-4730-a707-96178bf52136', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('6665888f-308a-4030-aed2-691aa6d1cf89', '7e5dcab9-18de-49af-a956-17ac499448c3', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('6734f687-1369-47df-be09-8580270dc4d6', '1fd49beb-a1e3-4bf1-8ff3-fcf3621b07d4', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('69627dd4-0d53-4ffc-84be-179e624f4e21', 'fb3312ba-06b1-40f1-aa71-bff44b018b78', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('6aa8d26a-4777-495b-b71e-7e1729d7577e', '27c721b9-61a2-4d88-9557-d7f520c0eb14', 2005, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('6b6ac7c0-c3d7-45b6-8969-5b992a8df281', 'd78b98c9-f0b1-452e-9a23-0c9c9dc776ec', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('6bb42563-3e10-44f9-8d29-ffe95b9dbddb', '369fbdee-cebc-4c29-ae86-7f6ef03cdd96', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('6c88914c-d05f-4951-89f4-6fa594b37d56', '95d79185-6417-4503-ad8d-51b41e413216', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('6d69156d-6d54-4966-a092-13e25b014671', '8da52c13-39a7-4b40-9d3b-21de52fbf08e', 2005, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('6d6a4acc-dbc2-4ec8-8d36-484ce8050a02', 'b7d560c4-3e27-4bcb-846c-9cde6a6a5434', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('6daed89c-515a-4473-a541-1a5d1a77c1b0', '6a527314-c4a0-4041-932e-6e188a3dd120', 2001, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('6e761466-8c1f-4b53-9c4f-8d8511f28779', '517eeea3-57da-4790-89b1-5e4bc2ff5149', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('6e9e8dd0-c7ba-4960-9091-5104fc48fbe7', 'ce921a0b-30d4-496d-a522-ac110e9fee83', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('6f24d77d-3c22-4f1a-9fd3-f46c97494c4f', '218ed5c6-d4f6-4810-b25e-0d8b33a6970c', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('707604fd-f8dd-4a39-9a4d-2dd3207f2b62', '49f8c336-f297-49b0-951d-bfff8d9276be', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('72ed0ed0-62dd-420a-a6c1-0ff580a5163a', '7e54e0ba-4cad-45be-81d1-5cb96e144daa', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('753c23d0-bdc0-4b09-b207-679efcb81d52', 'ba93e946-a29c-471e-9fe0-be2b3b51758a', 2005, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('75ee6cb0-b1bb-42d8-8519-8618315be771', '31d3a2ff-14cd-4155-abc8-708ce4197599', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('764c2b23-26b1-4f27-9304-f88ec52d4cac', 'fa3e5318-36fb-47bd-9a02-df20577f3bf1', 2005, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('76ab1fd2-386d-4fd6-84ea-bc5acc30c17a', '1e5c00e4-1e9b-4ebc-95e3-ff8c50ba4fed', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('76cb92cc-9080-44a4-9599-e04ea3d913f1', '31ebc5c4-9c98-475d-abcb-302280433c3e', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('7a6f73ce-7082-4cf6-8b1d-640995e1aca4', '8dbd7a42-7d97-4835-83d4-3765d2f216b4', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('7aa6871d-1193-4026-a51b-08144013ed05', '4d34dbd1-6f2a-401a-9e75-5fd59407ca7e', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('7abf9bea-7593-4586-aefe-4c73dd2cde20', '977ca944-b9a9-4c34-ae2a-e82a8bdc0426', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('7b4858d6-da6c-4ab7-b088-58e05dc26975', '9051532c-f513-400a-997d-56e743c37137', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('7cea94a0-7d99-4e0c-9e3d-ad9134891bad', 'f19062cb-b365-4cb0-a5c0-ce648a47b4ec', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('7d6dd74c-7273-42cc-a5a8-932bf5cebca6', '4c9b37c7-a20a-45fe-9e14-6465f134f456', 2005, 1003);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('7da52f6e-15aa-434e-b5c7-5c05065713ff', 'b70d7dba-53aa-46c3-94db-ec663e4ec7d4', 2005, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('7eeacb57-14b7-422f-8d95-a3d7c0854772', 'a72098f8-76f5-440c-a486-2a4356d1f6ed', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('7f270e87-fb3a-4d65-8b0b-cf73e58aadad', '59292fff-da8b-408c-87c5-bae9bfab3e26', 2005, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('81da269e-ad41-4f53-8f50-822be055c3ce', '74404e7f-3941-43e6-96c2-2e1e70134a8a', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('8200ddcc-bd0b-43bb-97fb-ff0c62914a6a', 'ddc9bcfb-60bd-4a20-ae7d-96485fd55f90', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('8360a181-7c95-48d0-bfc4-d59866e6a28e', '0332c86b-bacd-464e-8727-6646f83ca3e4', 2001, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('8383402e-2581-4c9e-9a14-3d92800437a7', '84f19ebc-f2c9-41c1-b944-ac2af0c76f88', 2001, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('843bca00-68ee-4306-a9b5-a2b5fa7a82b5', 'c33ba7fb-ea75-4c0e-9005-e7ec6c128310', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('89f286c1-bd5e-46de-be88-5f841bd8e84f', '0eb8ee06-ad8a-4a93-8fbb-f3af3c2864f9', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('8a1d11cf-d0cb-4477-94b4-8cbe780554c9', '408fbe77-178a-4776-befc-8b3cbdb90d75', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('8b5ceb0f-92e4-4c7b-a2d8-da8bf161df4a', 'fe3aa58d-640b-4d57-b503-af99e830c45e', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('8bcbb675-1c48-46cc-9993-33ddcbec3e2c', 'c5b2c597-7b0b-4127-8687-ead1f48b1f38', 2005, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('8cd1d071-8886-4627-ad69-e4bfe34cea4f', '3aeab440-005a-452a-9ce8-cbbd77b3796e', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('8e142fc2-3d2f-436b-926b-7d884fbd5096', '04d1abe6-948e-434d-9391-930e7c966b2d', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('8f067ba3-c389-460c-9339-1b10a17e7548', '7a5e3f05-7637-4d0a-b7e4-843b26a73576', 2001, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('8f1f9ac3-b5c2-496a-9c95-4e9e56b92c06', '72956cb1-03b2-4d63-b0f2-eba6fb58e090', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('8f9d3ea5-6a30-472d-bf45-05064a95338f', 'c48ba3a1-3cb6-4f3f-9022-24426e8f7e07', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('92ad6580-4a93-40d2-9cef-cb43398316a4', 'a7b22238-f00e-49fd-874e-cad6c00b9480', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('94017a1f-bb89-489f-9936-79a098ba3905', '09a18dd2-5434-429a-a47e-6ff15bca260c', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('94048089-e344-4cbe-903d-e205b0d1bdec', '7b767d72-2928-41ae-8e96-2d0f91a14409', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('941e022a-c65e-445a-89d4-c2ecf33cf65d', '7bbf84c6-a800-4a5f-9e12-7c132adcf416', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('9498a2c3-2ee6-4300-acee-2a3e0cf6dcbf', 'b37e917b-92cc-4b02-9c2b-733ddf4ccec2', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('960dd6b6-eb6e-470b-8dd1-b04d358cf197', '3a64d8b0-d8fa-4580-b8cd-367063d71519', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('994c74fb-2f30-4268-aa23-bbc7e075442b', 'ca01404a-f0f1-4152-9296-b6bdca7d0a7a', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('995e04cb-3c7b-495e-b49c-8ce4564ac411', 'a19e42aa-6889-479d-84a8-a61fc9a9a672', 2003, 1003);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('9a2ab90e-c11a-4c9b-bc4e-4dadddc0caee', '223edc59-1eed-4727-a2b4-a05f0fa7c081', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('9a463185-9270-436c-b17f-86f072be5484', '8c71a09a-6b43-4a97-88c1-4ae797e8ff0c', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('9f14da76-28fc-424d-8665-a82a2647fd09', 'e2333273-60e9-4097-a08c-34e526f696d7', 2001, 1003);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('9ff04d59-6566-4efa-a977-bef1af64f8a6', '8378f003-b96f-4b16-a7da-6203e08fdb06', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('a10b70fe-d8e3-4156-8e3f-370f2ffd8377', '4883b5dd-86d1-4c9b-8c90-51cc14bba9bf', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('a5940475-318e-4d53-9b68-b2556ff8bb8b', '33913238-d069-4dd9-837e-cfe2ca70acea', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('a7ab75a9-f37b-4a32-bb51-6658a79ea7b6', 'dc652cb5-9135-44a7-8440-61ad0c7e9072', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('a86fc5ee-f766-4d5a-bd06-eed36f00b939', 'f5dc2bb8-9425-4df3-bda4-d07ade5c8f37', 2001, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('a95a2ba5-6bf9-45dd-a448-b317714c0210', 'f510c115-3f2b-4ee7-a1b5-2ca06c0dafba', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('aeb6c943-c621-4b47-a01b-1f3e3ee629bb', '5ad4bc13-bad7-4240-a198-36bee416441c', 2003, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('af357c76-3f47-4968-ac5e-7e65da663909', '2fcd93f4-3cfc-4bd9-96f2-9f62af228beb', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('afac2685-92ad-42e1-a5d1-e2aa747ae0c5', '59bb7563-6833-433f-9cf1-5c0e9bec44e6', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('b112f4e0-235f-4fdb-a484-cc09c55cac17', '72caaee6-b73e-45e5-af51-b4561b1936bb', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('b3a6197b-a8e8-44dc-8c0d-f8cd4c2841cb', 'ba2dd743-e44f-404a-8e8a-89856c4c61d3', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('b45dc385-08ed-44f1-b4d2-ca4d0f83eb69', 'cc0e5169-01ac-44c1-95e7-03bad5f2cd54', 2005, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('b736e84b-5e43-4a82-9a7b-5d40f53f8718', '2de0597c-26c0-4ef5-a719-e85f54770b70', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('b9c8736a-e658-48a4-9cd4-f811cfe37068', '03ac7c56-172c-48e5-8ba7-5df5e5e2e120', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('bbdd0f73-0570-4505-8b14-f9cc928d86ef', '703974de-a735-4928-9aec-c15bde1b8ed1', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('bcffcc0f-24d4-499b-91e6-d70412f4aafa', '3a2c6fba-3117-45d2-b2cb-61f70f9cd9f5', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('be669401-c540-4d64-888d-5ad29e85699c', 'a674df69-05c0-4911-8085-9dcca447e819', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('c010b24f-5115-462a-b643-3dd7baac15ac', '9acb3640-841e-48fd-abdc-a222f1e1ec20', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('c7afe1c1-40c5-4f43-9923-8adf8367059e', '18e3c5f9-b198-4a63-a401-74c4c66abc1e', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('cb8aa358-3551-4216-82b7-8295f3262749', 'db0c7222-5ffd-46a8-b01b-299e643eaff6', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('cca95437-48f3-40e8-b09b-f68256ed8a19', '7cf3fbc2-b0a4-4aee-b726-8cea6f1d8e0b', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('cf8e719a-5468-4f39-9de4-11ddc30e4942', '7b5b4cd4-8853-4fe2-8ac6-e016a1c2997d', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('d0305b16-f078-4d72-95f9-4bfa47bad890', '7b7aa1f9-1cef-4b60-a944-f0266c71bbf7', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('d3fbdf18-a470-4bb3-affc-036a00b28c2d', 'a50bc4c5-b66d-4e2d-bfcb-c616e028cde7', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('d485f356-6b40-446e-89c1-e776415e6d72', 'c195711b-7d1c-4b99-84c2-fd79f0412f48', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('d4a627ca-3b6c-49f2-8a29-d68470f49217', 'eb089ae7-8eed-49ec-af03-242b4c4d8e7c', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('d553dc26-c2c7-416e-a861-1e47829cb516', '1fb62bd1-bc88-4dc6-a11a-45099d71a1a5', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('d849c565-0329-44ae-bf54-6b5cce6edd07', '7539e76e-b656-4a3f-a3aa-1bd18f0b14c3', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('d9435546-b117-485b-b18b-125de73fa182', '0df8840b-9727-4e2d-9f74-8ce8a7432825', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('d94b12ac-267f-4f4c-8d5e-9524ea6448f2', 'ad42b489-cca9-4a28-b217-9d5273493993', 2005, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('d9d66a7f-9a59-42b0-b376-95161ced3189', 'b133c2d2-1ea8-4491-b036-8144dbbbeea6', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('d9ec91cc-86f7-4140-a4f6-fa934fb61716', 'd26c42af-09f7-4fcd-bbde-e44227fea035', 2001, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('da61b893-6c66-46cd-a52a-d3e74a094ee6', 'ca73e90e-3ea7-46bd-b4bc-b677a6eaf0de', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('dc6ec57b-48ea-4a98-91a3-248b03febf8c', 'af3c3e58-8240-45ab-895a-796a6d2743d6', 2005, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('e2802736-2d86-471d-9f72-57e9e420d020', 'd32393d0-8307-4746-8a0a-75ecf11f9981', 2005, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('e2cc804a-097c-4aaf-b88e-452b383ea358', 'd78dec1b-1f90-404a-8a4e-754ca833dda1', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('e333262a-d7eb-4c22-b785-b6bc79bb6825', 'be4cff60-c929-4e76-b696-a94d4c6814c4', 2001, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('e3a49d26-4ad8-4731-bfee-33f999e1a004', '66163e1b-4d40-4bdb-8854-5ea8b585724f', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('e4a668e2-2aed-4cc7-ab5c-36a3b7c5a0bb', '5713c547-1e2e-4854-8d4a-e240ddb5c7d1', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('e95a5cf7-291c-460f-ad08-ab3a556d7c91', '33739aa4-172b-4d1d-9125-e154c7c227b3', 2005, 1003);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('e9ebd1c7-2cc8-4667-8686-9a7bf0b193c8', '61786861-ff85-48e0-b73a-408b683b2a43', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('ecbad14b-9339-4993-8417-9f74aab79657', '16469b2a-2a1e-412f-8203-513b7088de21', 2001, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('eccb2876-422f-48a4-85ee-7ca5b690bb95', '5157721b-0705-41ca-b7ca-84c5125c7692', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('f282af28-c503-424e-9368-ee113aa4278e', 'f4002ec1-6b16-463b-93bd-becae3747cfe', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('f2a116a9-f510-4c10-8139-9a130ea50185', '0737d4d1-cc59-4186-a671-160790c1a04b', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('f4693f14-6090-4c3f-b140-b7425eabe44d', '467fd22f-acd2-4eea-be65-55a8d9ae9a57', 2001, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('f5c582cb-cab9-4002-991b-03c1c8527dd4', 'ed14a9a6-eee1-40a1-b1cf-894b238244f7', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('f8add86d-b7f6-4dfe-9095-ba318d5f774e', 'f699facf-84a1-4be9-b386-73d782304195', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('f8d6a268-bcfc-466f-98de-e39d1da42a76', '8d99f7be-e12d-402a-839f-9bbd8c311736', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('fb09e159-ea80-4bf4-83b5-40f9a3c13d64', '3e4fdab0-3a5b-441d-a3d8-d07c3d97d43a', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('fb349415-ae2f-4878-890a-aeff88dfc473', '62c9055c-0fe2-4469-9b1a-d40eaed73f9f', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('fbdb5647-413c-4655-8ba9-c01d826c251c', '5fe04124-7a17-44e1-8f62-daa2941afe3f', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('fcba5393-5ce9-433e-9ae8-b1c550a77d24', '46a0ac06-4aff-4247-b45c-686c1370a09a', 2003, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('ac60420d-9476-43d0-a126-0c8d8e850445', 'a11020b4-08d4-4b72-86b3-0d9619127167', 2005, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('c174b2cd-36a7-4e3c-93c3-9ce98271cd37', 'edad9465-4371-488c-a218-e26feac698fd', 2005, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('404b8da7-2338-49f2-bb5d-7d031aac7bf1', 'fcd4c6ba-1bde-4987-ad51-a7394572117f', 2005, 1003);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('e9ecb7c0-2c72-4e0d-9a4a-8d96a4b93ec0', 'ac61de9d-19f1-4fa1-af60-0f62bc9515b5', 2005, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('732741d6-84c7-4c04-a4d2-12ee2499cc9b', 'edcc6b8b-b7c0-41e8-b9d0-9e7804b17685', 2005, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('830fd29f-e89e-493e-8240-0555d7e168ac', 'b9f57499-79a2-49fb-9c1c-4eb7ff7398fa', 2005, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('92ccaf03-842b-4101-a425-170cb54beba1', 'b1e5d219-1368-4447-b9f5-14f8c0bf401a', 2005, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('e837ad60-1143-439a-a23c-4e382fcae83a', '8aa9bbd5-36da-4aa1-8d65-345ef92913fb', 2005, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('101a2100-0f6b-40fa-adc0-258f715df342', 'abda30fe-8d24-4977-b856-b5c7de0d3823', 2005, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('9403c359-ebda-450d-8864-0098c4eb2217', '2f1f80b1-fee4-40ce-ae6f-60aab092746a', 2005, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('165e055c-fa6b-416f-bb6f-afb576ab0047', '790d4869-7bee-42b3-ba48-c4d329dd8794', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('3f059a15-7bf7-4955-8c76-f160c06da9e6', '5e32b9f6-4bf3-4b98-af97-dfa467a99042', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('8cd6acdb-059b-48c5-9fb0-9481d5bf6f60', '0e250664-a399-4279-82b9-c6841310d9dd', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('e6649b2a-7b3c-45ad-b70e-00288d7e4671', '27e2eb08-8b78-401a-bd21-cfab767a7011', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('f692d0bb-fc48-40c8-b2e3-5f25e3244c0c', '5fa675e4-ae22-451c-b0b4-1ed848d1ad54', 2001, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('0668d3ff-0246-467d-8d59-77782d160234', '6a66aed0-197c-47b4-8f36-a6ea649c63c7', 2003, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('0d0e2446-d9ef-4307-a62b-a0b4dc392d61', 'e1517dbe-d914-4423-9e21-4550e9263609', 2003, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('146de9c5-b4f6-4cfc-8b7c-cf133251ff41', '93ecacff-9714-43ba-9883-67850aaaa1c7', 2003, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('259cef81-8d81-41dc-9c02-75ee168e0d0f', 'c6582617-961c-45f0-bcdf-deecabf715e6', 2003, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('4d64d85b-d5b9-43cc-a5a1-4252629dd5a2', '9653e96c-9755-4c75-bb9e-ddbd36f9d42a', 2003, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('4f1f1afe-637a-4df9-8721-dffad94d207a', '0d15a719-cae4-4c28-979e-7a7b04e26dd7', 2003, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('53b0d202-9f9f-4306-806e-29d1ad66096f', '1ce6779c-5006-4640-b043-4b81e435d34e', 2003, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('6a728825-39c6-4e4e-8872-57f654b94eb3', 'e190b97b-defc-41d4-8193-04f805a953ef', 2003, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('76943419-7755-479c-9c6f-eb7247bb6bf1', 'e14ced60-088f-4ef3-9977-770627d5a4cc', 2003, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('b080c155-947e-479b-a352-5b735e1ebc5c', '5c9da90d-c3aa-4cdf-ac46-4429b8d0caf4', 2003, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('cd736d6a-1c06-4e55-b65b-ddce4272d6eb', '604fad05-f338-436f-8156-5d785be976e2', 2003, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('dceff928-c3ad-455f-a726-1f04add83230', '328029ce-71e1-438a-a10c-8c2857789216', 2003, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('e16161d1-6d2b-41f4-a3cc-69dc013dbf7c', 'f60bb8a1-2b39-4d02-a0e7-5d3e5e61d128', 2003, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('ea2a9d9f-c24d-459e-a5eb-4900437bd0b4', 'e202481c-eff6-4d27-be87-57b33235ea2d', 2003, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('ef9cf02f-d042-4036-83aa-09272b8fbfa6', 'fa080e3b-0eae-4316-b72f-4330b42790e8', 2003, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('615000b0-5d74-45b1-9f34-8b94714d62dc', '0e07b585-08b5-4894-9c52-82157db4937f', 2005, 1003);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('7deb30eb-4682-4ddf-99cc-5fd4f2ee168b', 'e7a6e741-11a7-4229-92cb-22ab13a33491', 2005, 1003);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('55b00a91-6ae6-44bb-810e-fda4b5119968', 'fa28da53-f847-4c7c-8337-3b09f9b9b96d', 2005, 1003);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('5cd59156-d6b1-4141-8202-32c669d93488', 'b02280c6-669b-460c-aa97-547a2209c202', 2005, 1003);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('b960e23c-b563-40b7-bd52-afae395a7ed6', '0becc6e9-9442-4ba7-81b4-6335a586b0ec', 2005, 1001);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('d70ef5f4-89d5-47b0-a7ab-17f38fde0297', 'd500dc34-7466-406d-8110-69496581ece9', 2005, 1002);
INSERT INTO alert (guid, metric, timezone, period) VALUES ('aa9923a3-2feb-40d8-8281-44caa861aa2c', 'b8f06941-3e97-480e-b8ae-54496db5b4af', 2005, 1001);
DROP TABLE alert_action_parameter;
CREATE TABLE npm_tca_iot.alert_action_parameter
(
    action char(36) CONSTRAINT alert_action_parameter__action NOT NULL,
    action_parameter int CONSTRAINT alert_action_parameter__action_parameter NOT NULL,
    value varchar(256) CONSTRAINT alert_action_parameter__value NOT NULL
);

ALTER TABLE npm_tca_iot.alert_action_parameter ADD CONSTRAINT alert_action_parameter__pk PRIMARY KEY (action, action_parameter, value); 

ALTER TABLE npm_tca_iot.alert_action_parameter ADD CONSTRAINT C_FOREIGN FOREIGN KEY (action) references npm_tca_iot.action (guid);

CREATE PROJECTION npm_tca_iot.alert_action_parameter /*+createtype(P)*/ 
(
 action,
 action_parameter,
 value
)
AS
 SELECT alert_action_parameter.action,
        alert_action_parameter.action_parameter,
        alert_action_parameter.value
 FROM npm_tca_iot.alert_action_parameter
 ORDER BY alert_action_parameter.action
UNSEGMENTED ALL NODES;


SELECT MARK_DESIGN_KSAFE(1);
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('00d85a05-9b3a-4611-bd98-ad8e3a18ebed', 21, 'jitter@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('00dc3191-ecc6-4958-b6fb-0766b533a8dd', 21, 'tca@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('01909db2-ac15-49e5-b009-13ae5fcb6b67', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('01bd0b00-815a-4d98-a8ff-ac45023905b0', 4, 'tca@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('01bd0b00-815a-4d98-a8ff-ac45023905b0', 3, '14.67');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('01bd0b00-815a-4d98-a8ff-ac45023905b0', 1, '150000000');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('02dc0494-b935-4757-8468-1e640c244afd', 21, 's@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('03f4b746-6f9b-4734-b809-8a61418f3c8a', 21, 'tca@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('04204bcd-80e8-4316-85ac-b22ee4b6f071', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('06f4a851-951f-4a6f-a6c5-dbe950812e93', 21, 'testall@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('09c4e45f-da15-4c3e-bfd2-9711d64b09ef', 1, '80000000');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('09c4e45f-da15-4c3e-bfd2-9711d64b09ef', 2, '8.888');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('09c4e45f-da15-4c3e-bfd2-9711d64b09ef', 4, '555@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('0a3fc6b7-ced6-441a-bdee-8f97915ac721', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('0bfd1fde-1225-4c6a-8341-3c6e96abe65f', 1, '60000000');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('0bfd1fde-1225-4c6a-8341-3c6e96abe65f', 2, '10.11');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('0bfd1fde-1225-4c6a-8341-3c6e96abe65f', 4, 'tca@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('0facc915-61ee-470c-ac93-f9ccfeac6ef1', 21, '555@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('1064c740-1d77-460a-8abf-5c77d8786b23', 21, 'tca@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('11c0fec4-ff77-4328-bbb7-241ca2752c3a', 21, 'tca@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('157fbbdf-a844-4089-81fd-bfa39ceabb35', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('15c42a09-3fbe-4c59-9e8d-38ddc30871e0', 21, 'testall@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('16874d69-80e6-4b66-9dbc-0b5d157b8ac4', 21, 'test@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('1c54f5e3-b0ac-493b-b49d-afcc96cec700', 21, '88@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('1edcae59-44a3-4013-bc27-20698e2ee80c', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('1ee7e3bc-cf41-472c-a1f4-b3e8fe0c227d', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('2203eb3a-7ad0-4a67-85f7-a4878e8261de', 21, 'vs@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('221eafcd-5acb-4b6e-8c3a-05a59def3f0b', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('2317762d-fc12-4b8c-9f4c-986f93603f47', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('251121bc-3e2e-45cd-bcd7-ab5555c4202a', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('260d388f-e7a5-476a-8d95-6e2852960223', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('28ceaa5f-1657-45dc-b1ad-d93d05f75e49', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('28d1cfe2-1402-4b1d-b9ee-d99d8d41f20d', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('2a3ea632-4681-4c15-a82d-25960479c30b', 21, 'packet@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('2b2ef573-5eb2-48f0-a134-a3e4d829fa64', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('2e9cdab9-1243-4d4f-88cf-b155973da798', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('2fd900cd-5550-434f-a3b9-bbb6937190f2', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('31fc586b-ee23-412c-a379-261361afc835', 21, 'tca@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('32346179-7503-4584-a93a-f071f802f5ee', 21, 'vs@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('33dd397a-35a2-453e-b633-3506a9cfecb2', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('34d23112-4712-4136-9c3a-834a72c50a39', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('35b9ddc4-9b1c-4998-abb4-e3b1efbcc71a', 21, 'jitter@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('36265362-8b82-40c1-9394-887013a062ca', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('36b65c56-aa90-4141-b867-e55b0a3ec529', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('389e57ff-cec1-4daa-9de9-90bcda289abe', 21, '311536@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('39585f40-0c09-49a4-9cb0-c6d68352a05a', 21, 'test@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('3b9a10f7-326d-4ee9-a893-5b047cd29251', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('3bd6962f-2bba-45f3-aa29-809d3e056f1b', 21, 'vs@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('3e0cd0ad-9142-4f96-87e3-3a0a45e4a899', 21, 'jitter@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('3e5d494a-4698-43c6-80b3-e043d0cf3052', 21, '311536@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('3f7db080-14cc-4db8-91d8-e9584bb96e22', 1, '60000000');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('3f7db080-14cc-4db8-91d8-e9584bb96e22', 2, '10.11');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('3f7db080-14cc-4db8-91d8-e9584bb96e22', 4, 'tca@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('3f86996e-8439-4f98-9fc8-be2244b1b31a', 1, '20000000');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('3f86996e-8439-4f98-9fc8-be2244b1b31a', 2, '4.10');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('3f86996e-8439-4f98-9fc8-be2244b1b31a', 4, 'jz@level3.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('402cfea0-78d1-464d-a168-f58e3add9853', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('40a9203e-8e4b-4917-99a2-0b089201be1a', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('43c94d3b-cc09-4dbe-8f54-583c77532b81', 21, 'vs@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('4435946e-a917-4ae1-b197-a664ea10e8b3', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('448e949c-5a2d-4a6e-9bf6-8026ed3e313d', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('4539d5b8-e0bb-4bb2-828b-27cded21e615', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('4565e4b0-1fdf-4851-9ceb-0981a6645e57', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('47fde373-3ed6-4dff-b2bd-6bf0930881a5', 21, 'tca@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('4963bbac-a0c1-46be-9fbe-1b8e2a90bdfe', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('4ba42239-25fc-4a1b-a561-a716521e5d18', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('4c555d0e-e172-4996-879f-47594849d43a', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('4c76970b-52b7-4bc5-acd1-6fc4d3bc2954', 21, 's@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('4e195161-b98f-44f6-8381-57a30e7d4bc3', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('5144b6dd-dbe2-4b45-ae54-c98955eeaf84', 1, '100000000');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('5144b6dd-dbe2-4b45-ae54-c98955eeaf84', 2, '8.25');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('5144b6dd-dbe2-4b45-ae54-c98955eeaf84', 4, '88@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('53629a0a-7452-4873-9a16-32ace013262c', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('547f5f74-3609-406e-a829-7d088fac6870', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('54d848a1-3c7b-4fcc-9d1e-394c06333352', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('556a096d-e268-442e-8c85-5b28a626ed00', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('57c6c581-e4fe-4804-bde2-aaad42d3b24a', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('588bca19-6598-45e4-b62b-201f0dcf25f5', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('594d1a1c-ebe4-4a28-beb2-0600c546f494', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('59da7291-8d84-4423-a89b-f0c382c105ce', 4, 'jz@level3.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('59da7291-8d84-4423-a89b-f0c382c105ce', 1, '300000000');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('59da7291-8d84-4423-a89b-f0c382c105ce', 2, '4.10');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('5cb22702-52f2-43ea-b725-03c6c6da30ef', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('5d285786-e22d-477b-abd6-1a865235c4b8', 21, 'packet@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('5e6beb56-5313-4aa3-9ed7-ff9d9256752a', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('5f76f45e-fd71-4446-a9e0-1506f7eab5de', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('613e4c9a-1de6-4953-a42c-d1576d70b729', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('62df6694-b40f-46ee-9bdf-02379c569635', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('67f1d43d-b18b-45fd-8167-b3e4d352739a', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('685b2a05-c425-406a-a825-ee4434354542', 4, 'jz@level3.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('685b2a05-c425-406a-a825-ee4434354542', 1, '40000000');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('685b2a05-c425-406a-a825-ee4434354542', 2, '4.10');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('686ef3fb-3aa0-44dc-8373-47699a688a00', 21, 'tca@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('6d5221c5-ca93-4e84-bb9f-74004f02ab15', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('6e587cd7-7502-45dc-8891-90faaaa79a7f', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('6fa51dbc-ad95-4e76-b7e1-b8e644f74355', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('71beb78d-76df-4954-aa51-9bf0caa0ebc5', 21, 'null');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('71dd88ee-e898-4d01-9c6c-fcb0979935e6', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('7240e463-da59-4ba7-b017-47d1a0a7e3c8', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('765ae76d-30c0-4654-9e4f-02bd141267a9', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('7f029d11-41c0-4e71-8498-235a6fa42c01', 21, 'jitter@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('7f5b805b-1a40-4bb6-9724-7b5ceb1c1139', 21, '311536@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('7fbc7519-991d-4a5f-90b9-39252d230b5c', 21, 'packet@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('81722939-610f-48ca-84e2-b8b2792f03cd', 21, 'jitter@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('861d9803-1c56-4499-8750-0cd718a30a84', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('88dc2dd2-2f82-439c-9daa-3ffff56b6528', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('8977800e-6a83-4b22-b372-03c4621a7d48', 21, 'vs@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('89c7500c-9c78-41f1-b511-daf436061a1f', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('8b747726-d6f6-48aa-9a5b-310da5d45b3b', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('8c54f2f2-51f6-42a3-ae00-01ba5cb2f058', 21, 'tca@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('8d8b8b2e-196c-49d1-a2e1-4bf9374d873c', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('8e062b07-ae48-467e-bb79-9d2cdc56ccaf', 4, 'tca@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('8e062b07-ae48-467e-bb79-9d2cdc56ccaf', 2, '7.335');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('8e062b07-ae48-467e-bb79-9d2cdc56ccaf', 1, '100000000');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('8fb50195-f680-49b1-99b5-6c6fd4c47f27', 21, 'packet@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('9086bf1a-0a63-4515-882a-b991900723b5', 21, 'tca@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('90e041af-ae25-4cf1-9bef-9ab0403570cc', 21, 'packet@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('92abfb6a-f6f5-4ddd-b6ff-78d28782ad54', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('93193d67-f96e-48f9-9354-ef3ec76ca337', 21, 'joe.zendle@level3.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('9691ae29-6d8e-4794-ad96-fc7fe9027f1f', 21, 'testall@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('969d370c-59c0-435a-a869-f9873213c1ee', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('96a11cd5-ebd0-471c-9444-66477884cd27', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('9784156b-beea-4423-a331-475c615ae5c7', 21, 'vs@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('9810e97a-e7a9-4588-86d4-60f58da84247', 2, '8.888');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('9810e97a-e7a9-4588-86d4-60f58da84247', 1, '80000000');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('9810e97a-e7a9-4588-86d4-60f58da84247', 4, 'tca@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('9c516df9-1381-43ae-806a-d07151ef62a9', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('9c5a853a-abd0-414d-9b02-357966530223', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('a196a570-708d-491d-83ad-bef0afdc4a43', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('a1999e43-fb8a-4dc0-9917-918857d46961', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('a200539a-a2e1-498b-b2c1-38eca3089164', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('a20d1803-ebd3-4ade-9c98-888048d030e6', 4, 'tca@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('a20d1803-ebd3-4ade-9c98-888048d030e6', 3, '13.332');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('a20d1803-ebd3-4ade-9c98-888048d030e6', 1, '100000000');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('a2bad964-502a-4531-97e0-93858badb6b2', 21, 'test@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('a32863f8-d38e-40b2-8ed8-c23d79119ecc', 21, 'tca@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('a4734b95-ebb9-4489-b2ce-9175f11f8ba8', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('a490abe4-722f-47ff-8bec-509f68dd4b7a', 1, '90000000');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('a490abe4-722f-47ff-8bec-509f68dd4b7a', 3, '20.22');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('a490abe4-722f-47ff-8bec-509f68dd4b7a', 4, 'tca@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('a494c6e6-b516-4e07-8a4f-7ce157d057e4', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('a4ae615d-f296-4792-b341-792aa4a21f72', 21, 'packet@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('a68c78e4-098f-43bb-9819-0dc0e4e9cffb', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('a8ab8b61-73b8-4324-b2d2-107881e4a547', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('a8dc8378-ee9b-46a9-8f35-593af6a36cb6', 21, 'vs@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('aa8fb782-c2dc-41a9-8241-144afa13b99f', 21, 'vs@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('aabbfb7e-3118-4db4-bf81-78d473236b9e', 21, 'packet@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('aabfc2f5-7596-4fa2-9ef9-bff6037a3e03', 1, '100000000');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('aabfc2f5-7596-4fa2-9ef9-bff6037a3e03', 2, '8.25');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('aabfc2f5-7596-4fa2-9ef9-bff6037a3e03', 4, 'tca@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('aada962f-4d16-43f7-96ee-9cab4d0a8f20', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('aadeaec7-f468-4e39-9df9-95751e7af9ee', 1, '150000000');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('aadeaec7-f468-4e39-9df9-95751e7af9ee', 3, '16.5');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('aadeaec7-f468-4e39-9df9-95751e7af9ee', 4, 'tca@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('aca3aaff-0e50-45c1-888c-2e1483938502', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('ad5e7d07-ee24-4255-a107-ad5cd5c39853', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('aeaf82e4-57da-4818-b9a3-2d2b01205f09', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('afd13528-a39d-4808-bfa2-8b1ad46673dc', 21, '311536@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('b09b3500-046b-4cf5-96df-a9b8882869d1', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('b0c2d942-82fa-4a6a-9a2a-601a516b0818', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('b11da2e6-452b-49a8-ab4c-2faee9847e67', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('b185db17-c514-4f2a-b866-dc9162194819', 21, 'jitter@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('b278f16e-a652-4368-be5f-fddaa7afe1f8', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('b3553239-f35f-4a78-ab42-ebe01e670017', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('b38897af-33f2-4970-9aba-105730bb44d2', 21, 'jitter@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('b39ad68b-9f7e-416d-a297-3c62979989cf', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('b5b8740f-a38c-4b69-9ff0-438446e46020', 21, 'packet@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('b70c819a-6991-42cd-9eca-d2a625ae2c20', 21, 'test@level3.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('b8b7514e-c07c-48c9-b612-2553e83d5cb7', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('ba82b392-1375-4ca0-93d8-21cf5a844647', 21, 'testall@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('be12ba97-a2b7-481a-ac4b-f52f74e0d32f', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('bef1e263-9b70-4934-b868-db51254feb1e', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('bfbf0257-4dc9-47d5-b9cd-227febf5394b', 21, 'tca@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('c392c299-efd6-4715-ba32-a5c85a7f8aaa', 21, 'tca@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('c45a990a-aa21-4082-92bb-3182a820d5c1', 21, 'tca@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('c47885d1-6e17-449f-a7a1-ddeb6b585b70', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('c49e02ea-bda7-4864-b449-a019554228e6', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('cb56090a-8138-46b9-8fdb-eb1e23cdf477', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('cb93b03d-9b74-4358-8711-6300f965fcfc', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('d004ce54-93ff-45a6-a124-308b9263927d', 21, 'joe.zendle@level3.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('d28a7e63-8028-471f-a05d-99a6a669be84', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('d365c6e1-ad7e-4612-985e-13b9c6ecbb17', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('d372ee34-db17-4276-9ca2-4cd9b954ffec', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('d5d9cae9-ad4f-42e5-8612-b9a31be823c0', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('d60d5237-7414-434b-8fc8-4ade813ce3be', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('d7c8a459-4cdc-4520-8a47-6be4d38357ed', 21, 'test@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('d838f4ef-9d57-4f0c-a19d-02ceae2afa7b', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('d8dc1e0e-fe7c-49a3-a50a-9d60a073e2d0', 21, 'jitter@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('da3accd5-5161-4a6b-9d6b-5bcb69c039a2', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('da4b42a0-b41d-40e9-afcc-ad663c90a334', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('db750f29-9148-4b73-86f5-f0a2f8f32b9a', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('dccc1642-4535-43ea-a50e-109c1707a77b', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('dcd8a65b-9b4b-4552-bbd8-faf3dcd1180f', 21, 'vs@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('dd25826e-8393-4dea-8762-a79a5c2c70fb', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('ddb9c3b6-2c2d-442a-a5a8-9cadd452e554', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('e0af5858-6025-4275-a231-7d4933d6647a', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('e144c9f7-a6fa-48ff-8299-d1264931c776', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('e427c2bc-6ff6-4102-a851-f557e54a005a', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('e45b8db4-7804-467b-804f-1845026146b1', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('e5b6708e-7cad-46db-b961-0ec19aae10e4', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('e92b7442-6e23-4f04-bb68-93262462b745', 4, 'tca@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('e92b7442-6e23-4f04-bb68-93262462b745', 1, '90000000');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('e92b7442-6e23-4f04-bb68-93262462b745', 3, '20.22');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('e9e7a27e-12f6-4192-bed5-d2ec50fe7b07', 21, 'jitter@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('ecdc6295-9696-4b96-b2df-4c34478c313a', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('ed467054-7b81-4104-9928-33fae191db0c', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('edf4f1d9-0b24-43d7-9473-65a862f54a0d', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('ef038301-8e1a-4304-830b-62b7f025455f', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('f05ae66b-e75a-4032-b17f-7a443934ddbd', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('f2a88aa6-bd19-47d6-920a-3399e434602a', 21, 'tca@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('f2f1298a-c7f2-4860-820c-31fe3a2946dd', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('f52be80a-c0cc-4ddd-b6c9-99bb7170c8ea', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('f7a0f41d-2de0-477d-91f6-0cedf504777d', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('f7eff187-e501-43b2-9f71-dd9b33ddf7a6', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('f8fcc115-6450-4d6f-82b9-df23394291d9', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('faf748c0-7058-4759-8bfa-4d004df985a2', 21, 'packet@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('fbca2662-6a92-48c9-a096-97fc47209b2a', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('fbd938e5-67d3-4b2c-a794-cd78b28be0a1', 21, 'ipvpn2@twtelecom.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('fc0e2d6e-7e3a-4a55-8a92-8725cfedd353', 21, 'jitter@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('fc6d3774-6109-4f4a-94f8-db7522c433be', 21, 'packet@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('fea174be-eb2b-4868-ae40-efe78c9fdf3f', 21, 'vs@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('72569eb3-7ca3-4e16-bcaa-9b33fdb5eff8', 1, '200000000');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('72569eb3-7ca3-4e16-bcaa-9b33fdb5eff8', 2, '6.31');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('72569eb3-7ca3-4e16-bcaa-9b33fdb5eff8', 4, '311536@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('b1892b7e-648a-41fb-bbf2-100496dc005a', 21, '311536@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('b778042a-2074-4a39-88e2-d30b918134cd', 4, '311536@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('b778042a-2074-4a39-88e2-d30b918134cd', 1, '300000000');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('b778042a-2074-4a39-88e2-d30b918134cd', 3, '12.62');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('ce640c99-aa61-4e46-997d-01cd17dda2b8', 21, '311536@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('069167a5-b963-4d90-b153-0abf9668948d', 21, 'anand.agrawal@level3.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('797b3637-7374-49bd-b16b-f27c3c1d08ae', 3, '14.67');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('797b3637-7374-49bd-b16b-f27c3c1d08ae', 2, '7.335');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('797b3637-7374-49bd-b16b-f27c3c1d08ae', 1, 'AUTO');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('797b3637-7374-49bd-b16b-f27c3c1d08ae', 4, 'anand.agrawal@level3.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('83ab9a2a-de7a-4e3a-be05-edebbb666ae7', 21, 'anand.agrawal@level3.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('8405827b-6738-42a4-88ad-e45165a38898', 4, 'anand.agrawal@level3.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('8405827b-6738-42a4-88ad-e45165a38898', 2, '7.335');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('8405827b-6738-42a4-88ad-e45165a38898', 1, '100000000');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('244d3fd5-6fa2-4563-8687-514115689cb3', 21, 'anand.agrawal@level3.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('54a205ef-4280-40f1-a83c-93b6f0fb5a19', 21, 'anand.agrawal@level3.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('b530485d-3332-403b-91be-2957bb50ac27', 3, '14.67');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('b530485d-3332-403b-91be-2957bb50ac27', 2, '7.335');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('b530485d-3332-403b-91be-2957bb50ac27', 1, 'AUTO');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('b530485d-3332-403b-91be-2957bb50ac27', 4, 'anand.agrawal@level3.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('d26b34b1-59da-4c48-95ce-6db91f083b47', 4, 'anand.agrawal@level3.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('d26b34b1-59da-4c48-95ce-6db91f083b47', 2, '7.335');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('d26b34b1-59da-4c48-95ce-6db91f083b47', 1, '100000000');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('49caaa59-15a2-43f7-8b53-e27862896f2d', 4, 'anand.agrawal@level3.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('49caaa59-15a2-43f7-8b53-e27862896f2d', 1, '100000000');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('49caaa59-15a2-43f7-8b53-e27862896f2d', 2, '7.335');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('7bfb77cb-3d6f-400b-8474-a19f99c851f4', 21, 'anand.agrawal@level3.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('b2f1369d-bc41-4f2f-8475-02af26a7c35e', 21, 'anand.agrawal@level3.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('fbff7e7c-caee-4f24-93bd-4498dc98525e', 1, '40000000');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('fbff7e7c-caee-4f24-93bd-4498dc98525e', 2, '0');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('fbff7e7c-caee-4f24-93bd-4498dc98525e', 4, 'anand.agrawal@level3.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('63ab5335-7572-4025-a9c2-7417df5fde07', 4, 'some.one@level3.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('63ab5335-7572-4025-a9c2-7417df5fde07', 1, '300000000');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('63ab5335-7572-4025-a9c2-7417df5fde07', 3, '5.10');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('a5735e9b-a50e-40d3-8021-660388b6927d', 21, 'some.one@level3.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('3194ee68-b1c6-400c-a94c-27748d2345f3', 21, 'q@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('70e7e181-6317-4732-9eb8-2bf6cbdd72b7', 21, 'q@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('775f6985-3389-406c-bf4d-e208067d51d0', 21, 'q@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('8737f128-27e4-49df-b8ae-3e417b4008ee', 21, 'q@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('9c172b60-0db8-4a2d-a2d6-3c0057889e11', 21, 'q@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('155b8da7-0b43-4fd1-bed0-6795371995e0', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('18d28606-89f7-4ef6-9044-4b51993984bb', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('2e92036f-10b6-4d22-af9e-b81653d87eb4', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('33443eae-ab88-45af-bf39-7fd85ec597af', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('34f6c299-1a97-48b2-bde1-6500bafcbbba', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('3996db57-c588-48b7-a382-eb664e256d0d', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('6a2f1788-28a0-4478-bc39-53828398456f', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('784624b2-c82f-4c1b-a2e6-d5ae848baf21', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('c97dc83c-3aa9-49fb-8d30-18f418a6b078', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('cb84d191-486b-44a7-84f9-3dbcbfcbc494', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('daaa150c-ad13-4e90-8a42-2aa26d0cb59c', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('dbb552b5-12b8-4060-aafb-cc4345a09f7b', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('de7f32ed-21d3-44b7-8415-49e4925a4048', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('e024ce65-c149-4501-a382-44c7a344d673', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('efa6b442-5e1f-4857-abbf-a9c9c1743330', 21, 'sptest@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('05ebb5a3-c595-49c4-b167-c688a2d96df9', 1, '150000000');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('05ebb5a3-c595-49c4-b167-c688a2d96df9', 3, '14.67');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('05ebb5a3-c595-49c4-b167-c688a2d96df9', 4, 'tca@test.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('f2d49f92-de23-4a81-b7b9-2e58a648a031', 1, '400000000');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('f2d49f92-de23-4a81-b7b9-2e58a648a031', 3, '14.67');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('86f95300-2f27-410a-b58a-38f50cf62388', 21, 'some.one@level3.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('2966bdd0-bcd7-40ac-974a-a89942ed2e1b', 21, 'anand.agrawal@level3.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('7fb56c5d-3aad-452a-9dcf-f50dbc070a55', 1, '100000000');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('7fb56c5d-3aad-452a-9dcf-f50dbc070a55', 2, '7.335');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('7fb56c5d-3aad-452a-9dcf-f50dbc070a55', 4, 'anand.agrawal@level3.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('d95e23f4-d881-48ed-9911-635eab2fc78a', 1, 'AUTO');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('d95e23f4-d881-48ed-9911-635eab2fc78a', 2, '7.335');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('d95e23f4-d881-48ed-9911-635eab2fc78a', 3, '14.67');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('d95e23f4-d881-48ed-9911-635eab2fc78a', 4, 'anand.agrawal@level3.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('dd963576-9fb4-4134-ae30-31456ca8ad54', 21, 'anand.agrawal@level3.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('94fa9a06-0dd3-4d29-be84-78356dbc03bf', 21, 'anand.agrawal@level3.com');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('e0dd7852-896d-49cb-bc82-5c788d0dfff8', 1, '40000000');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('e0dd7852-896d-49cb-bc82-5c788d0dfff8', 2, '0');
INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ('e0dd7852-896d-49cb-bc82-5c788d0dfff8', 4, 'anand.agrawal@level3.com');
DROP TABLE alert_history;
CREATE TABLE npm_tca_iot.alert_history
(
    stamp int CONSTRAINT alert_history__stamp NOT NULL,
    tca_instance char(36) CONSTRAINT alert_history_tca_instance NOT NULL,
    alert_recipient varchar(512),
    alert_sent char(1) CONSTRAINT alert_history__alert_sent NOT NULL,
    failure varchar(512),
    action_guid char(36)
);

ALTER TABLE npm_tca_iot.alert_history ADD CONSTRAINT alert_history__pk PRIMARY KEY (stamp, tca_instance); 

ALTER TABLE npm_tca_iot.alert_history ADD CONSTRAINT C_FOREIGN FOREIGN KEY (tca_instance) references npm_tca_iot.tca_instance (guid);

CREATE PROJECTION npm_tca_iot.alert_history /*+createtype(P)*/ 
(
 stamp,
 tca_instance,
 alert_recipient,
 alert_sent,
 failure,
 action_guid
)
AS
 SELECT alert_history.stamp,
        alert_history.tca_instance,
        alert_history.alert_recipient,
        alert_history.alert_sent,
        alert_history.failure,
        alert_history.action_guid
 FROM npm_tca_iot.alert_history
 ORDER BY alert_history.stamp,
          alert_history.tca_instance
UNSEGMENTED ALL NODES;


SELECT MARK_DESIGN_KSAFE(1);
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452283897, '0391ab4e-e276-41c8-a57b-f055be960ea5', 'tca@test.com', 'Y', null, '8c54f2f2-51f6-42a3-ae00-01ba5cb2f058');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452283897, '28f71293-5e46-4b5e-b78f-7dfc6e3fcc3b', 'tca@test.com', 'Y', null, '03f4b746-6f9b-4734-b809-8a61418f3c8a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452283897, '28f71293-5e46-4b5e-b78f-7dfc6e3fcc3b', 'tca@test.com', 'N', 'No Alert State found for TCAKey: TCAKey: {circuit: 46/KFFN/106699/DEMO, evc: , qos: -1, metric: Utilization, action: DC, recipient: tca@test.com}', '8e062b07-ae48-467e-bb79-9d2cdc56ccaf');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452283897, '5b3d73ca-e95f-4691-b63f-f30b172107d4', 'tca@test.com', 'Y', null, 'bfbf0257-4dc9-47d5-b9cd-227febf5394b');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452283897, '5b3d73ca-e95f-4691-b63f-f30b172107d4', 'tca@test.com', 'N', 'No Alert State found for TCAKey: TCAKey: {circuit: 46/KFFN/106699/DEMO, evc: , qos: -1, metric: Utilization, action: DC, recipient: tca@test.com}', '01bd0b00-815a-4d98-a8ff-ac45023905b0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452283897, '7e6c1eb3-e143-48d1-8b55-012b1d371336', 'tca@test.com', 'Y', null, 'c392c299-efd6-4715-ba32-a5c85a7f8aaa');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452283919, '35ffb920-ede7-46d6-b7fa-622e30be459a', 'tca@test.com', 'Y', null, '31fc586b-ee23-412c-a379-261361afc835');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452283919, '907e43d2-2e1c-498e-8f78-f60a4bf36890', 'tca@test.com', 'Y', null, '80e0d194-7f5a-464e-9a57-5f370129defa');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452283919, '907e43d2-2e1c-498e-8f78-f60a4bf36890', 'tca@test.com', 'N', 'No Alert State found for TCAKey: TCAKey: {circuit: 44/KEFN/124848/DEMO, evc: , qos: -1, metric: Utilization, action: DC, recipient: tca@test.com}', 'fd29dc9d-cf52-42a7-af52-39f8caae725c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452283919, 'ceec87e0-00d8-4f13-ac10-71fb65489802', 'tca@test.com', 'Y', null, '91e2926f-a34f-4c4c-801c-deb961202f64');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452283919, 'ceec87e0-00d8-4f13-ac10-71fb65489802', 'tca@test.com', 'N', 'No Alert State found for TCAKey: TCAKey: {circuit: 44/KEFN/124848/DEMO, evc: , qos: -1, metric: Utilization, action: DC, recipient: tca@test.com}', '57a8bcf7-4c61-4318-99e3-43641a4502b8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452283919, 'ed9b6df0-174e-4d4e-9289-5dc75be35639', 'tca@test.com', 'Y', null, '9086bf1a-0a63-4515-882a-b991900723b5');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452285537, '2ec2699f-502f-4dfb-89c3-f9ed0b91cdc5', 'jz@level3.com', 'Y', null, '59da7291-8d84-4423-a89b-f0c382c105ce');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452285537, '5ce36d6e-f019-483d-8647-0238f74656ef', 'test@level3.com', 'Y', null, 'b70c819a-6991-42cd-9eca-d2a625ae2c20');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452287043, '6299131d-02c1-437f-943a-9e8dfb8da626', 'joe.zendle@level3.com', 'Y', null, 'd004ce54-93ff-45a6-a124-308b9263927d');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452287043, 'ef091e27-07fd-4dbf-9e94-b148a9b90c88', 'jz@level3.com', 'Y', null, '3f86996e-8439-4f98-9fc8-be2244b1b31a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452287304, '5baf641f-6ec4-4ab2-ae1b-4aa7a568c4b3', 'joe.zendle@level3.com', 'Y', null, '93193d67-f96e-48f9-9354-ef3ec76ca337');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452287304, '8500ffad-de10-4fd0-bde3-a5fef6a7b445', 'jz@level3.com', 'Y', null, '685b2a05-c425-406a-a825-ee4434354542');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452291422, 'e9a7638d-c44f-4274-9711-105b0bb12fce', 'tca@test.com', 'Y', null, 'aabfc2f5-7596-4fa2-9ef9-bff6037a3e03');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452291422, 'e9a7638d-c44f-4274-9711-105b0bb12fce', 'tca@test.com', 'Y', null, '00dc3191-ecc6-4958-b6fb-0766b533a8dd');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452291422, 'f1fe02b7-928f-434d-b3a4-e471173714a4', 'tca@test.com', 'Y', null, 'aadeaec7-f468-4e39-9df9-95751e7af9ee');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452291422, 'f1fe02b7-928f-434d-b3a4-e471173714a4', 'tca@test.com', 'Y', null, '686ef3fb-3aa0-44dc-8373-47699a688a00');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452548562, '168332e9-b824-45d2-838a-b6c5907e082f', 'sptest@test.com', 'Y', null, '1ee7e3bc-cf41-472c-a1f4-b3e8fe0c227d');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452548562, '30715bf7-bcdb-49d5-8f68-9f91429e9302', 'sptest@test.com', 'Y', null, '4435946e-a917-4ae1-b197-a664ea10e8b3');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452548562, 'bb62aa5e-876f-4640-8952-939a0ecd9eef', 'sptest@test.com', 'Y', null, 'ad5e7d07-ee24-4255-a107-ad5cd5c39853');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452548562, 'd0672ce1-601e-4f34-a53d-632305c7bcf3', 'sptest@test.com', 'Y', null, '7240e463-da59-4ba7-b017-47d1a0a7e3c8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452548562, 'dd2ab6da-6244-43b5-a2a2-268f25ca4851', 'sptest@test.com', 'Y', null, 'f52be80a-c0cc-4ddd-b6c9-99bb7170c8ea');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452643200, '13207506-fc46-4c48-8fb4-05119c626cad', 'ipvpn2@twtelecom.com', 'Y', null, 'c435122d-6300-496b-ac92-9e06f7a83d51');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452646800, '13207506-fc46-4c48-8fb4-05119c626cad', 'ipvpn2@twtelecom.com', 'Y', null, 'c435122d-6300-496b-ac92-9e06f7a83d51');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452647400, '13207506-fc46-4c48-8fb4-05119c626cad', 'ipvpn2@twtelecom.com', 'Y', null, 'c435122d-6300-496b-ac92-9e06f7a83d51');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452651300, '13207506-fc46-4c48-8fb4-05119c626cad', 'ipvpn2@twtelecom.com', 'Y', null, 'c435122d-6300-496b-ac92-9e06f7a83d51');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452655200, '13207506-fc46-4c48-8fb4-05119c626cad', 'ipvpn2@twtelecom.com', 'Y', null, 'c435122d-6300-496b-ac92-9e06f7a83d51');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452658800, '13207506-fc46-4c48-8fb4-05119c626cad', 'ipvpn2@twtelecom.com', 'Y', null, 'c435122d-6300-496b-ac92-9e06f7a83d51');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452662700, '13207506-fc46-4c48-8fb4-05119c626cad', 'ipvpn2@twtelecom.com', 'Y', null, 'c435122d-6300-496b-ac92-9e06f7a83d51');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452666300, '13207506-fc46-4c48-8fb4-05119c626cad', 'ipvpn2@twtelecom.com', 'Y', null, 'c435122d-6300-496b-ac92-9e06f7a83d51');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452669900, '13207506-fc46-4c48-8fb4-05119c626cad', 'ipvpn2@twtelecom.com', 'Y', null, 'c435122d-6300-496b-ac92-9e06f7a83d51');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452673800, '13207506-fc46-4c48-8fb4-05119c626cad', 'ipvpn2@twtelecom.com', 'Y', null, 'c435122d-6300-496b-ac92-9e06f7a83d51');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452677700, '13207506-fc46-4c48-8fb4-05119c626cad', 'ipvpn2@twtelecom.com', 'Y', null, 'c435122d-6300-496b-ac92-9e06f7a83d51');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452681300, '13207506-fc46-4c48-8fb4-05119c626cad', 'ipvpn2@twtelecom.com', 'Y', null, 'c435122d-6300-496b-ac92-9e06f7a83d51');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452685200, '13207506-fc46-4c48-8fb4-05119c626cad', 'ipvpn2@twtelecom.com', 'Y', null, 'c435122d-6300-496b-ac92-9e06f7a83d51');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452729600, '13207506-fc46-4c48-8fb4-05119c626cad', 'ipvpn2@twtelecom.com', 'Y', null, 'c435122d-6300-496b-ac92-9e06f7a83d51');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452729600, '33214f4e-c3f4-4a93-921c-c190be63252b', 'testall@test.com', 'Y', null, '15c42a09-3fbe-4c59-9e8d-38ddc30871e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452729600, '6706a793-c1ff-4db5-8e26-a6a91ce7be03', 'ipvpn2@twtelecom.com', 'Y', null, '04204bcd-80e8-4316-85ac-b22ee4b6f071');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452729600, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452729600, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452729600, 'f5f7ae60-a667-4f69-a3d6-610a1f7478c1', 'ipvpn2@twtelecom.com', 'Y', null, '1bf9c0a9-c71b-4f23-9e26-65a01f9bec66');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452729600, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452729900, '33214f4e-c3f4-4a93-921c-c190be63252b', 'testall@test.com', 'Y', null, '15c42a09-3fbe-4c59-9e8d-38ddc30871e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452729900, '6706a793-c1ff-4db5-8e26-a6a91ce7be03', 'ipvpn2@twtelecom.com', 'Y', null, '04204bcd-80e8-4316-85ac-b22ee4b6f071');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452729900, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452729900, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452729900, 'f5f7ae60-a667-4f69-a3d6-610a1f7478c1', 'ipvpn2@twtelecom.com', 'Y', null, '1bf9c0a9-c71b-4f23-9e26-65a01f9bec66');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452729900, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452733800, '33214f4e-c3f4-4a93-921c-c190be63252b', 'testall@test.com', 'Y', null, '15c42a09-3fbe-4c59-9e8d-38ddc30871e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452733800, '6706a793-c1ff-4db5-8e26-a6a91ce7be03', 'ipvpn2@twtelecom.com', 'Y', null, '04204bcd-80e8-4316-85ac-b22ee4b6f071');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452733800, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452733800, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452733800, 'f5f7ae60-a667-4f69-a3d6-610a1f7478c1', 'ipvpn2@twtelecom.com', 'Y', null, '1bf9c0a9-c71b-4f23-9e26-65a01f9bec66');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452733800, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452737700, '33214f4e-c3f4-4a93-921c-c190be63252b', 'testall@test.com', 'Y', null, '15c42a09-3fbe-4c59-9e8d-38ddc30871e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452737700, '6706a793-c1ff-4db5-8e26-a6a91ce7be03', 'ipvpn2@twtelecom.com', 'Y', null, '04204bcd-80e8-4316-85ac-b22ee4b6f071');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452737700, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452737700, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452737700, 'f5f7ae60-a667-4f69-a3d6-610a1f7478c1', 'ipvpn2@twtelecom.com', 'Y', null, '1bf9c0a9-c71b-4f23-9e26-65a01f9bec66');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452737700, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452741300, '33214f4e-c3f4-4a93-921c-c190be63252b', 'testall@test.com', 'Y', null, '15c42a09-3fbe-4c59-9e8d-38ddc30871e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452741300, '6706a793-c1ff-4db5-8e26-a6a91ce7be03', 'ipvpn2@twtelecom.com', 'Y', null, '04204bcd-80e8-4316-85ac-b22ee4b6f071');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452741300, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452741300, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452741300, 'f5f7ae60-a667-4f69-a3d6-610a1f7478c1', 'ipvpn2@twtelecom.com', 'Y', null, '1bf9c0a9-c71b-4f23-9e26-65a01f9bec66');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452741300, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452744900, 'f5f7ae60-a667-4f69-a3d6-610a1f7478c1', 'ipvpn2@twtelecom.com', 'Y', null, '1bf9c0a9-c71b-4f23-9e26-65a01f9bec66');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452745200, '33214f4e-c3f4-4a93-921c-c190be63252b', 'testall@test.com', 'Y', null, '15c42a09-3fbe-4c59-9e8d-38ddc30871e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452745200, '6706a793-c1ff-4db5-8e26-a6a91ce7be03', 'ipvpn2@twtelecom.com', 'Y', null, '04204bcd-80e8-4316-85ac-b22ee4b6f071');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452745200, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452745200, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452745200, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452748500, 'f5f7ae60-a667-4f69-a3d6-610a1f7478c1', 'ipvpn2@twtelecom.com', 'Y', null, '1bf9c0a9-c71b-4f23-9e26-65a01f9bec66');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452748800, '33214f4e-c3f4-4a93-921c-c190be63252b', 'testall@test.com', 'Y', null, '15c42a09-3fbe-4c59-9e8d-38ddc30871e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452748800, '6706a793-c1ff-4db5-8e26-a6a91ce7be03', 'ipvpn2@twtelecom.com', 'Y', null, '04204bcd-80e8-4316-85ac-b22ee4b6f071');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452748800, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452748800, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452748800, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452752100, 'f5f7ae60-a667-4f69-a3d6-610a1f7478c1', 'ipvpn2@twtelecom.com', 'Y', null, '1bf9c0a9-c71b-4f23-9e26-65a01f9bec66');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452752400, '33214f4e-c3f4-4a93-921c-c190be63252b', 'testall@test.com', 'Y', null, '15c42a09-3fbe-4c59-9e8d-38ddc30871e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452752400, '6706a793-c1ff-4db5-8e26-a6a91ce7be03', 'ipvpn2@twtelecom.com', 'Y', null, '04204bcd-80e8-4316-85ac-b22ee4b6f071');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452752400, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452752400, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452752400, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452756000, '33214f4e-c3f4-4a93-921c-c190be63252b', 'testall@test.com', 'Y', null, '15c42a09-3fbe-4c59-9e8d-38ddc30871e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452756000, '6706a793-c1ff-4db5-8e26-a6a91ce7be03', 'ipvpn2@twtelecom.com', 'Y', null, '04204bcd-80e8-4316-85ac-b22ee4b6f071');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452756000, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452756000, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452756000, 'f5f7ae60-a667-4f69-a3d6-610a1f7478c1', 'ipvpn2@twtelecom.com', 'Y', null, '1bf9c0a9-c71b-4f23-9e26-65a01f9bec66');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452756000, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452759600, '33214f4e-c3f4-4a93-921c-c190be63252b', 'testall@test.com', 'Y', null, '15c42a09-3fbe-4c59-9e8d-38ddc30871e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452759600, '6706a793-c1ff-4db5-8e26-a6a91ce7be03', 'ipvpn2@twtelecom.com', 'Y', null, '04204bcd-80e8-4316-85ac-b22ee4b6f071');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452759600, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452759600, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452759600, 'f5f7ae60-a667-4f69-a3d6-610a1f7478c1', 'ipvpn2@twtelecom.com', 'Y', null, '1bf9c0a9-c71b-4f23-9e26-65a01f9bec66');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452759600, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452763200, '33214f4e-c3f4-4a93-921c-c190be63252b', 'testall@test.com', 'Y', null, '15c42a09-3fbe-4c59-9e8d-38ddc30871e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452763200, '6706a793-c1ff-4db5-8e26-a6a91ce7be03', 'ipvpn2@twtelecom.com', 'Y', null, '04204bcd-80e8-4316-85ac-b22ee4b6f071');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452763200, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452763200, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452763200, 'f5f7ae60-a667-4f69-a3d6-610a1f7478c1', 'ipvpn2@twtelecom.com', 'Y', null, '1bf9c0a9-c71b-4f23-9e26-65a01f9bec66');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452763200, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452766800, 'f5f7ae60-a667-4f69-a3d6-610a1f7478c1', 'ipvpn2@twtelecom.com', 'Y', null, '1bf9c0a9-c71b-4f23-9e26-65a01f9bec66');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452767100, '33214f4e-c3f4-4a93-921c-c190be63252b', 'testall@test.com', 'Y', null, '15c42a09-3fbe-4c59-9e8d-38ddc30871e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452767100, '6706a793-c1ff-4db5-8e26-a6a91ce7be03', 'ipvpn2@twtelecom.com', 'Y', null, '04204bcd-80e8-4316-85ac-b22ee4b6f071');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452767100, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452767100, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452767100, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452770700, 'f5f7ae60-a667-4f69-a3d6-610a1f7478c1', 'ipvpn2@twtelecom.com', 'Y', null, '1bf9c0a9-c71b-4f23-9e26-65a01f9bec66');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452771300, '33214f4e-c3f4-4a93-921c-c190be63252b', 'testall@test.com', 'Y', null, '15c42a09-3fbe-4c59-9e8d-38ddc30871e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452771300, '6706a793-c1ff-4db5-8e26-a6a91ce7be03', 'ipvpn2@twtelecom.com', 'Y', null, '04204bcd-80e8-4316-85ac-b22ee4b6f071');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452771300, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452771300, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452771300, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452783600, '316aec93-33c6-42f8-8fff-a6643b11f4fa', 'sptest@test.com', 'Y', null, '92abfb6a-f6f5-4ddd-b6ff-78d28782ad54');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452783600, '49e9b14a-8589-4e83-be17-e3c09e02111e', 'sptest@test.com', 'Y', null, 'ed467054-7b81-4104-9928-33fae191db0c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452783600, 'd5fe4a50-5a55-4cee-8b35-efb1b939d23e', 'sptest@test.com', 'Y', null, 'ddb9c3b6-2c2d-442a-a5a8-9cadd452e554');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452783600, 'e2d33616-337f-4b01-a678-73e11be6194c', 'sptest@test.com', 'Y', null, '861d9803-1c56-4499-8750-0cd718a30a84');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452783600, 'ed458d33-2568-4899-88f9-95e6cd8c22ea', 'sptest@test.com', 'Y', null, '6fa51dbc-ad95-4e76-b7e1-b8e644f74355');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452787200, '316aec93-33c6-42f8-8fff-a6643b11f4fa', 'sptest@test.com', 'Y', null, '92abfb6a-f6f5-4ddd-b6ff-78d28782ad54');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452787200, '49e9b14a-8589-4e83-be17-e3c09e02111e', 'sptest@test.com', 'Y', null, 'ed467054-7b81-4104-9928-33fae191db0c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452787200, 'd5fe4a50-5a55-4cee-8b35-efb1b939d23e', 'sptest@test.com', 'Y', null, 'ddb9c3b6-2c2d-442a-a5a8-9cadd452e554');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452787200, 'e2d33616-337f-4b01-a678-73e11be6194c', 'sptest@test.com', 'Y', null, '861d9803-1c56-4499-8750-0cd718a30a84');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452787200, 'ed458d33-2568-4899-88f9-95e6cd8c22ea', 'sptest@test.com', 'Y', null, '6fa51dbc-ad95-4e76-b7e1-b8e644f74355');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452789000, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452791100, '316aec93-33c6-42f8-8fff-a6643b11f4fa', 'sptest@test.com', 'Y', null, '92abfb6a-f6f5-4ddd-b6ff-78d28782ad54');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452791100, '49e9b14a-8589-4e83-be17-e3c09e02111e', 'sptest@test.com', 'Y', null, 'ed467054-7b81-4104-9928-33fae191db0c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452791100, 'd5fe4a50-5a55-4cee-8b35-efb1b939d23e', 'sptest@test.com', 'Y', null, 'ddb9c3b6-2c2d-442a-a5a8-9cadd452e554');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452791100, 'e2d33616-337f-4b01-a678-73e11be6194c', 'sptest@test.com', 'Y', null, '861d9803-1c56-4499-8750-0cd718a30a84');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452791100, 'ed458d33-2568-4899-88f9-95e6cd8c22ea', 'sptest@test.com', 'Y', null, '6fa51dbc-ad95-4e76-b7e1-b8e644f74355');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452792900, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452795000, '316aec93-33c6-42f8-8fff-a6643b11f4fa', 'sptest@test.com', 'Y', null, '92abfb6a-f6f5-4ddd-b6ff-78d28782ad54');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452795000, '49e9b14a-8589-4e83-be17-e3c09e02111e', 'sptest@test.com', 'Y', null, 'ed467054-7b81-4104-9928-33fae191db0c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452795000, 'd5fe4a50-5a55-4cee-8b35-efb1b939d23e', 'sptest@test.com', 'Y', null, 'ddb9c3b6-2c2d-442a-a5a8-9cadd452e554');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452795000, 'e2d33616-337f-4b01-a678-73e11be6194c', 'sptest@test.com', 'Y', null, '861d9803-1c56-4499-8750-0cd718a30a84');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452795000, 'ed458d33-2568-4899-88f9-95e6cd8c22ea', 'sptest@test.com', 'Y', null, '6fa51dbc-ad95-4e76-b7e1-b8e644f74355');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452795647, '01c31be2-535d-4859-a833-a7c3657aecb9', 'emdemo@level3.com', 'Y', null, '2b615d20-e30d-4b34-9c4d-56778fb843f5');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452795647, '01c31be2-535d-4859-a833-a7c3657aecb9', 'emdemo@level3.com', 'N', 'bad lexical cast: source type value could not be interpreted as target', '8075d10d-dce3-428f-8ef0-999549e677ef');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452795647, '7ec149d7-b8f4-4a16-8e47-5dd9e01a2dee', 'emdemo@level3.com', 'Y', null, '9eed47d5-eedd-41ab-9163-84ea25a1ed0f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452795647, '7ec149d7-b8f4-4a16-8e47-5dd9e01a2dee', 'emdemo@level3.com', 'Y', null, '20c06019-1b3d-4792-953c-05914a08dadd');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452795806, '7ec149d7-b8f4-4a16-8e47-5dd9e01a2dee', 'emdemo@level3.com', 'Y', null, '2f40a223-84ac-4005-80fc-564b6cbd7e8f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452795806, '7ec149d7-b8f4-4a16-8e47-5dd9e01a2dee', 'emdemo@level3.com', 'Y', null, 'd747c029-89d3-4c7b-905a-834fbebd97e3');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452796500, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452797017, '7ec149d7-b8f4-4a16-8e47-5dd9e01a2dee', 'anand.agrawal@level3.com', 'Y', null, '8405827b-6738-42a4-88ad-e45165a38898');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452797017, '7ec149d7-b8f4-4a16-8e47-5dd9e01a2dee', 'anand.agrawal@level3.com', 'Y', null, '069167a5-b963-4d90-b153-0abf9668948d');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452797052, '01c31be2-535d-4859-a833-a7c3657aecb9', 'anand.agrawal@level3.com', 'Y', null, '83ab9a2a-de7a-4e3a-be05-edebbb666ae7');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452797052, '01c31be2-535d-4859-a833-a7c3657aecb9', 'anand.agrawal@level3.com', 'N', 'bad lexical cast: source type value could not be interpreted as target', '797b3637-7374-49bd-b16b-f27c3c1d08ae');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452797274, '0e249bd4-b6fb-49b2-a36b-c17069a437cb', 'anand.agrawal@level3.com', 'N', 'bad lexical cast: source type value could not be interpreted as target', 'b530485d-3332-403b-91be-2957bb50ac27');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452797274, '0e249bd4-b6fb-49b2-a36b-c17069a437cb', 'anand.agrawal@level3.com', 'Y', null, '244d3fd5-6fa2-4563-8687-514115689cb3');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452797274, 'a8ddb1e0-3155-4248-a0ac-9553308f6684', 'anand.agrawal@level3.com', 'Y', null, 'd26b34b1-59da-4c48-95ce-6db91f083b47');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452797274, 'a8ddb1e0-3155-4248-a0ac-9553308f6684', 'anand.agrawal@level3.com', 'Y', null, '54a205ef-4280-40f1-a83c-93b6f0fb5a19');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452798600, '316aec93-33c6-42f8-8fff-a6643b11f4fa', 'sptest@test.com', 'Y', null, '92abfb6a-f6f5-4ddd-b6ff-78d28782ad54');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452798600, '49e9b14a-8589-4e83-be17-e3c09e02111e', 'sptest@test.com', 'Y', null, 'ed467054-7b81-4104-9928-33fae191db0c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452798600, 'd5fe4a50-5a55-4cee-8b35-efb1b939d23e', 'sptest@test.com', 'Y', null, 'ddb9c3b6-2c2d-442a-a5a8-9cadd452e554');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452798600, 'e2d33616-337f-4b01-a678-73e11be6194c', 'sptest@test.com', 'Y', null, '861d9803-1c56-4499-8750-0cd718a30a84');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452798600, 'ed458d33-2568-4899-88f9-95e6cd8c22ea', 'sptest@test.com', 'Y', null, '6fa51dbc-ad95-4e76-b7e1-b8e644f74355');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452799325, '82adc1c0-7c26-4278-8cff-66063dfad6fe', 'anand.agrawal@level3.com', 'Y', null, '7bfb77cb-3d6f-400b-8474-a19f99c851f4');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452799325, '82adc1c0-7c26-4278-8cff-66063dfad6fe', 'anand.agrawal@level3.com', 'Y', null, '49caaa59-15a2-43f7-8b53-e27862896f2d');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452800100, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452802500, '316aec93-33c6-42f8-8fff-a6643b11f4fa', 'sptest@test.com', 'Y', null, '92abfb6a-f6f5-4ddd-b6ff-78d28782ad54');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452802500, '49e9b14a-8589-4e83-be17-e3c09e02111e', 'sptest@test.com', 'Y', null, 'ed467054-7b81-4104-9928-33fae191db0c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452802500, 'd5fe4a50-5a55-4cee-8b35-efb1b939d23e', 'sptest@test.com', 'Y', null, 'ddb9c3b6-2c2d-442a-a5a8-9cadd452e554');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452802500, 'e2d33616-337f-4b01-a678-73e11be6194c', 'sptest@test.com', 'Y', null, '861d9803-1c56-4499-8750-0cd718a30a84');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452802500, 'ed458d33-2568-4899-88f9-95e6cd8c22ea', 'sptest@test.com', 'Y', null, '6fa51dbc-ad95-4e76-b7e1-b8e644f74355');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452803291, '4135e21c-a39e-4451-a6f4-5069e57576f0', 'anand.agrawal@level3.com', 'Y', null, 'b2f1369d-bc41-4f2f-8475-02af26a7c35e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452803291, '4135e21c-a39e-4451-a6f4-5069e57576f0', 'anand.agrawal@level3.com', 'Y', null, 'fbff7e7c-caee-4f24-93bd-4498dc98525e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452803700, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452803729, '0a8c522b-5aad-4b66-ab4b-3fa0c832b9ed', 'anand.agrawal@level3.com', 'Y', null, '9f418322-8494-4ac8-bc4d-2188623061ce');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452803729, '0a8c522b-5aad-4b66-ab4b-3fa0c832b9ed', 'anand.agrawal@level3.com', 'Y', null, '24187587-034e-48f1-b298-79c12143821a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452803729, '5d291f83-f2c0-4060-80ec-9d6e72e41f94', 'anand.agrawal@level3.com', 'Y', null, 'd7bcd753-5df6-4c9d-b307-1d36254ce720');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452803729, '5d291f83-f2c0-4060-80ec-9d6e72e41f94', 'anand.agrawal@level3.com', 'Y', null, 'd4eb0976-f4c2-4f61-a4c6-2e62b4437e65');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452806100, '316aec93-33c6-42f8-8fff-a6643b11f4fa', 'sptest@test.com', 'Y', null, '92abfb6a-f6f5-4ddd-b6ff-78d28782ad54');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452806100, '49e9b14a-8589-4e83-be17-e3c09e02111e', 'sptest@test.com', 'Y', null, 'ed467054-7b81-4104-9928-33fae191db0c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452806100, 'd5fe4a50-5a55-4cee-8b35-efb1b939d23e', 'sptest@test.com', 'Y', null, 'ddb9c3b6-2c2d-442a-a5a8-9cadd452e554');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452806100, 'e2d33616-337f-4b01-a678-73e11be6194c', 'sptest@test.com', 'Y', null, '861d9803-1c56-4499-8750-0cd718a30a84');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452806100, 'ed458d33-2568-4899-88f9-95e6cd8c22ea', 'sptest@test.com', 'Y', null, '6fa51dbc-ad95-4e76-b7e1-b8e644f74355');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452807600, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452809517, '8aca6240-f4d2-4a96-8ff8-3850273463d0', 'anand.agrawal@level3.com', 'Y', null, '9456b372-baee-4d52-932f-9cf83218c49b');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452809517, '8aca6240-f4d2-4a96-8ff8-3850273463d0', 'anand.agrawal@level3.com', 'Y', null, '5bb87df3-b5e2-42ee-88d8-a1b066a6b17e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452810000, '316aec93-33c6-42f8-8fff-a6643b11f4fa', 'sptest@test.com', 'Y', null, '92abfb6a-f6f5-4ddd-b6ff-78d28782ad54');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452810000, '49e9b14a-8589-4e83-be17-e3c09e02111e', 'sptest@test.com', 'Y', null, 'ed467054-7b81-4104-9928-33fae191db0c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452810000, 'd5fe4a50-5a55-4cee-8b35-efb1b939d23e', 'sptest@test.com', 'Y', null, 'ddb9c3b6-2c2d-442a-a5a8-9cadd452e554');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452810000, 'e2d33616-337f-4b01-a678-73e11be6194c', 'sptest@test.com', 'Y', null, '861d9803-1c56-4499-8750-0cd718a30a84');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452810000, 'ed458d33-2568-4899-88f9-95e6cd8c22ea', 'sptest@test.com', 'Y', null, '6fa51dbc-ad95-4e76-b7e1-b8e644f74355');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452811500, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452813600, '316aec93-33c6-42f8-8fff-a6643b11f4fa', 'sptest@test.com', 'Y', null, '92abfb6a-f6f5-4ddd-b6ff-78d28782ad54');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452813600, '49e9b14a-8589-4e83-be17-e3c09e02111e', 'sptest@test.com', 'Y', null, 'ed467054-7b81-4104-9928-33fae191db0c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452813600, 'd5fe4a50-5a55-4cee-8b35-efb1b939d23e', 'sptest@test.com', 'Y', null, 'ddb9c3b6-2c2d-442a-a5a8-9cadd452e554');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452813600, 'e2d33616-337f-4b01-a678-73e11be6194c', 'sptest@test.com', 'Y', null, '861d9803-1c56-4499-8750-0cd718a30a84');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452813600, 'ed458d33-2568-4899-88f9-95e6cd8c22ea', 'sptest@test.com', 'Y', null, '6fa51dbc-ad95-4e76-b7e1-b8e644f74355');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452815098, '78842d85-24fd-4ed4-b1ca-a45fba85ef71', 'some.one@level3.com', 'Y', null, '63ab5335-7572-4025-a9c2-7417df5fde07');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452815098, 'd03ddfd8-9a39-43c4-9072-7053ddf9fce8', 'some.one@level3.com', 'Y', null, 'a5735e9b-a50e-40d3-8021-660388b6927d');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452815100, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452816000, '33214f4e-c3f4-4a93-921c-c190be63252b', 'testall@test.com', 'Y', null, '15c42a09-3fbe-4c59-9e8d-38ddc30871e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452816000, '33214f4e-c3f4-4a93-921c-c190be63252b', 'testall@test.com', 'Y', null, '15c42a09-3fbe-4c59-9e8d-38ddc30871e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452816000, '6706a793-c1ff-4db5-8e26-a6a91ce7be03', 'ipvpn2@twtelecom.com', 'Y', null, '04204bcd-80e8-4316-85ac-b22ee4b6f071');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452816000, '6706a793-c1ff-4db5-8e26-a6a91ce7be03', 'ipvpn2@twtelecom.com', 'Y', null, '04204bcd-80e8-4316-85ac-b22ee4b6f071');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452816000, '6778ebb4-a2da-4bc6-9053-61a407854f24', 'ipvpn2@twtelecom.com', 'Y', null, 'a8ab8b61-73b8-4324-b2d2-107881e4a547');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452816000, '693fdf58-b359-4957-956d-b2b22ca45fe8', 'ipvpn2@twtelecom.com', 'Y', null, '2e9cdab9-1243-4d4f-88cf-b155973da798');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452816000, 'a2d7e338-7f7d-48e4-a49e-dd1cd0a0b776', 'ipvpn2@twtelecom.com', 'Y', null, 'e45b8db4-7804-467b-804f-1845026146b1');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452816000, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452816000, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452816000, 'd598a927-799a-4ce3-be4b-55b7b4d0a7e5', 'ipvpn2@twtelecom.com', 'Y', null, '3b9a10f7-326d-4ee9-a893-5b047cd29251');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452816000, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452816000, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452816000, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452816000, 'f5f7ae60-a667-4f69-a3d6-610a1f7478c1', 'ipvpn2@twtelecom.com', 'Y', null, '1bf9c0a9-c71b-4f23-9e26-65a01f9bec66');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452816000, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452816000, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452816300, '33214f4e-c3f4-4a93-921c-c190be63252b', 'testall@test.com', 'Y', null, '15c42a09-3fbe-4c59-9e8d-38ddc30871e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452816300, '6706a793-c1ff-4db5-8e26-a6a91ce7be03', 'ipvpn2@twtelecom.com', 'Y', null, '04204bcd-80e8-4316-85ac-b22ee4b6f071');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452816300, '6778ebb4-a2da-4bc6-9053-61a407854f24', 'ipvpn2@twtelecom.com', 'Y', null, 'a8ab8b61-73b8-4324-b2d2-107881e4a547');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452816300, '693fdf58-b359-4957-956d-b2b22ca45fe8', 'ipvpn2@twtelecom.com', 'Y', null, '2e9cdab9-1243-4d4f-88cf-b155973da798');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452816300, 'a2d7e338-7f7d-48e4-a49e-dd1cd0a0b776', 'ipvpn2@twtelecom.com', 'Y', null, 'e45b8db4-7804-467b-804f-1845026146b1');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452816300, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452816300, 'd598a927-799a-4ce3-be4b-55b7b4d0a7e5', 'ipvpn2@twtelecom.com', 'Y', null, '3b9a10f7-326d-4ee9-a893-5b047cd29251');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452816300, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452816300, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452816300, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452817500, '316aec93-33c6-42f8-8fff-a6643b11f4fa', 'sptest@test.com', 'Y', null, '92abfb6a-f6f5-4ddd-b6ff-78d28782ad54');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452817500, '49e9b14a-8589-4e83-be17-e3c09e02111e', 'sptest@test.com', 'Y', null, 'ed467054-7b81-4104-9928-33fae191db0c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452817500, 'd5fe4a50-5a55-4cee-8b35-efb1b939d23e', 'sptest@test.com', 'Y', null, 'ddb9c3b6-2c2d-442a-a5a8-9cadd452e554');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452817500, 'e2d33616-337f-4b01-a678-73e11be6194c', 'sptest@test.com', 'Y', null, '861d9803-1c56-4499-8750-0cd718a30a84');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452817500, 'ed458d33-2568-4899-88f9-95e6cd8c22ea', 'sptest@test.com', 'Y', null, '6fa51dbc-ad95-4e76-b7e1-b8e644f74355');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452818700, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452820200, '33214f4e-c3f4-4a93-921c-c190be63252b', 'testall@test.com', 'Y', null, '15c42a09-3fbe-4c59-9e8d-38ddc30871e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452820200, '6706a793-c1ff-4db5-8e26-a6a91ce7be03', 'ipvpn2@twtelecom.com', 'Y', null, '04204bcd-80e8-4316-85ac-b22ee4b6f071');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452820200, '6778ebb4-a2da-4bc6-9053-61a407854f24', 'ipvpn2@twtelecom.com', 'Y', null, 'a8ab8b61-73b8-4324-b2d2-107881e4a547');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452820200, '693fdf58-b359-4957-956d-b2b22ca45fe8', 'ipvpn2@twtelecom.com', 'Y', null, '2e9cdab9-1243-4d4f-88cf-b155973da798');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452820200, 'a2d7e338-7f7d-48e4-a49e-dd1cd0a0b776', 'ipvpn2@twtelecom.com', 'Y', null, 'e45b8db4-7804-467b-804f-1845026146b1');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452820200, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452820200, 'd598a927-799a-4ce3-be4b-55b7b4d0a7e5', 'ipvpn2@twtelecom.com', 'Y', null, '3b9a10f7-326d-4ee9-a893-5b047cd29251');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452820200, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452820200, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452820200, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452821100, '316aec93-33c6-42f8-8fff-a6643b11f4fa', 'sptest@test.com', 'Y', null, '92abfb6a-f6f5-4ddd-b6ff-78d28782ad54');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452821100, '49e9b14a-8589-4e83-be17-e3c09e02111e', 'sptest@test.com', 'Y', null, 'ed467054-7b81-4104-9928-33fae191db0c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452821100, 'd5fe4a50-5a55-4cee-8b35-efb1b939d23e', 'sptest@test.com', 'Y', null, 'ddb9c3b6-2c2d-442a-a5a8-9cadd452e554');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452821100, 'e2d33616-337f-4b01-a678-73e11be6194c', 'sptest@test.com', 'Y', null, '861d9803-1c56-4499-8750-0cd718a30a84');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452821100, 'ed458d33-2568-4899-88f9-95e6cd8c22ea', 'sptest@test.com', 'Y', null, '6fa51dbc-ad95-4e76-b7e1-b8e644f74355');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452822600, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452824100, '33214f4e-c3f4-4a93-921c-c190be63252b', 'testall@test.com', 'Y', null, '15c42a09-3fbe-4c59-9e8d-38ddc30871e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452824100, '6706a793-c1ff-4db5-8e26-a6a91ce7be03', 'ipvpn2@twtelecom.com', 'Y', null, '04204bcd-80e8-4316-85ac-b22ee4b6f071');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452824100, '6778ebb4-a2da-4bc6-9053-61a407854f24', 'ipvpn2@twtelecom.com', 'Y', null, 'a8ab8b61-73b8-4324-b2d2-107881e4a547');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452824100, '693fdf58-b359-4957-956d-b2b22ca45fe8', 'ipvpn2@twtelecom.com', 'Y', null, '2e9cdab9-1243-4d4f-88cf-b155973da798');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452824100, 'a2d7e338-7f7d-48e4-a49e-dd1cd0a0b776', 'ipvpn2@twtelecom.com', 'Y', null, 'e45b8db4-7804-467b-804f-1845026146b1');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452824100, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452824100, 'd598a927-799a-4ce3-be4b-55b7b4d0a7e5', 'ipvpn2@twtelecom.com', 'Y', null, '3b9a10f7-326d-4ee9-a893-5b047cd29251');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452824100, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452824100, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452824100, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452826500, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452827700, '6778ebb4-a2da-4bc6-9053-61a407854f24', 'ipvpn2@twtelecom.com', 'Y', null, 'a8ab8b61-73b8-4324-b2d2-107881e4a547');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452827700, '693fdf58-b359-4957-956d-b2b22ca45fe8', 'ipvpn2@twtelecom.com', 'Y', null, '2e9cdab9-1243-4d4f-88cf-b155973da798');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452827700, 'a2d7e338-7f7d-48e4-a49e-dd1cd0a0b776', 'ipvpn2@twtelecom.com', 'Y', null, 'e45b8db4-7804-467b-804f-1845026146b1');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452827700, 'd598a927-799a-4ce3-be4b-55b7b4d0a7e5', 'ipvpn2@twtelecom.com', 'Y', null, '3b9a10f7-326d-4ee9-a893-5b047cd29251');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452827700, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452828000, '33214f4e-c3f4-4a93-921c-c190be63252b', 'testall@test.com', 'Y', null, '15c42a09-3fbe-4c59-9e8d-38ddc30871e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452828000, '6706a793-c1ff-4db5-8e26-a6a91ce7be03', 'ipvpn2@twtelecom.com', 'Y', null, '04204bcd-80e8-4316-85ac-b22ee4b6f071');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452828000, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452828000, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452828000, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452830100, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452831600, '33214f4e-c3f4-4a93-921c-c190be63252b', 'testall@test.com', 'Y', null, '15c42a09-3fbe-4c59-9e8d-38ddc30871e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452831600, '6706a793-c1ff-4db5-8e26-a6a91ce7be03', 'ipvpn2@twtelecom.com', 'Y', null, '04204bcd-80e8-4316-85ac-b22ee4b6f071');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452831600, '6778ebb4-a2da-4bc6-9053-61a407854f24', 'ipvpn2@twtelecom.com', 'Y', null, 'a8ab8b61-73b8-4324-b2d2-107881e4a547');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452831600, '693fdf58-b359-4957-956d-b2b22ca45fe8', 'ipvpn2@twtelecom.com', 'Y', null, '2e9cdab9-1243-4d4f-88cf-b155973da798');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452831600, 'a2d7e338-7f7d-48e4-a49e-dd1cd0a0b776', 'ipvpn2@twtelecom.com', 'Y', null, 'e45b8db4-7804-467b-804f-1845026146b1');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452831600, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452831600, 'd598a927-799a-4ce3-be4b-55b7b4d0a7e5', 'ipvpn2@twtelecom.com', 'Y', null, '3b9a10f7-326d-4ee9-a893-5b047cd29251');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452831600, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452831600, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452831600, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452833700, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452835200, '33214f4e-c3f4-4a93-921c-c190be63252b', 'testall@test.com', 'Y', null, '15c42a09-3fbe-4c59-9e8d-38ddc30871e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452835200, '6706a793-c1ff-4db5-8e26-a6a91ce7be03', 'ipvpn2@twtelecom.com', 'Y', null, '04204bcd-80e8-4316-85ac-b22ee4b6f071');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452835200, '6778ebb4-a2da-4bc6-9053-61a407854f24', 'ipvpn2@twtelecom.com', 'Y', null, 'a8ab8b61-73b8-4324-b2d2-107881e4a547');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452835200, '693fdf58-b359-4957-956d-b2b22ca45fe8', 'ipvpn2@twtelecom.com', 'Y', null, '2e9cdab9-1243-4d4f-88cf-b155973da798');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452835200, 'a2d7e338-7f7d-48e4-a49e-dd1cd0a0b776', 'ipvpn2@twtelecom.com', 'Y', null, 'e45b8db4-7804-467b-804f-1845026146b1');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452835200, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452835200, 'd598a927-799a-4ce3-be4b-55b7b4d0a7e5', 'ipvpn2@twtelecom.com', 'Y', null, '3b9a10f7-326d-4ee9-a893-5b047cd29251');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452835200, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452835200, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452835200, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452837600, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452839100, '33214f4e-c3f4-4a93-921c-c190be63252b', 'testall@test.com', 'Y', null, '15c42a09-3fbe-4c59-9e8d-38ddc30871e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452839100, '6706a793-c1ff-4db5-8e26-a6a91ce7be03', 'ipvpn2@twtelecom.com', 'Y', null, '04204bcd-80e8-4316-85ac-b22ee4b6f071');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452839100, '6778ebb4-a2da-4bc6-9053-61a407854f24', 'ipvpn2@twtelecom.com', 'Y', null, 'a8ab8b61-73b8-4324-b2d2-107881e4a547');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452839100, '693fdf58-b359-4957-956d-b2b22ca45fe8', 'ipvpn2@twtelecom.com', 'Y', null, '2e9cdab9-1243-4d4f-88cf-b155973da798');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452839100, 'a2d7e338-7f7d-48e4-a49e-dd1cd0a0b776', 'ipvpn2@twtelecom.com', 'Y', null, 'e45b8db4-7804-467b-804f-1845026146b1');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452839100, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452839100, 'd598a927-799a-4ce3-be4b-55b7b4d0a7e5', 'ipvpn2@twtelecom.com', 'Y', null, '3b9a10f7-326d-4ee9-a893-5b047cd29251');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452839100, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452839100, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452839100, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452841200, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452842700, '33214f4e-c3f4-4a93-921c-c190be63252b', 'testall@test.com', 'Y', null, '15c42a09-3fbe-4c59-9e8d-38ddc30871e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452842700, '6706a793-c1ff-4db5-8e26-a6a91ce7be03', 'ipvpn2@twtelecom.com', 'Y', null, '04204bcd-80e8-4316-85ac-b22ee4b6f071');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452842700, '6778ebb4-a2da-4bc6-9053-61a407854f24', 'ipvpn2@twtelecom.com', 'Y', null, 'a8ab8b61-73b8-4324-b2d2-107881e4a547');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452842700, '693fdf58-b359-4957-956d-b2b22ca45fe8', 'ipvpn2@twtelecom.com', 'Y', null, '2e9cdab9-1243-4d4f-88cf-b155973da798');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452842700, 'a2d7e338-7f7d-48e4-a49e-dd1cd0a0b776', 'ipvpn2@twtelecom.com', 'Y', null, 'e45b8db4-7804-467b-804f-1845026146b1');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452842700, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452842700, 'd598a927-799a-4ce3-be4b-55b7b4d0a7e5', 'ipvpn2@twtelecom.com', 'Y', null, '3b9a10f7-326d-4ee9-a893-5b047cd29251');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452842700, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452842700, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452842700, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452845100, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452846600, '33214f4e-c3f4-4a93-921c-c190be63252b', 'testall@test.com', 'Y', null, '15c42a09-3fbe-4c59-9e8d-38ddc30871e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452846600, '6706a793-c1ff-4db5-8e26-a6a91ce7be03', 'ipvpn2@twtelecom.com', 'Y', null, '04204bcd-80e8-4316-85ac-b22ee4b6f071');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452846600, '6778ebb4-a2da-4bc6-9053-61a407854f24', 'ipvpn2@twtelecom.com', 'Y', null, 'a8ab8b61-73b8-4324-b2d2-107881e4a547');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452846600, '693fdf58-b359-4957-956d-b2b22ca45fe8', 'ipvpn2@twtelecom.com', 'Y', null, '2e9cdab9-1243-4d4f-88cf-b155973da798');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452846600, 'a2d7e338-7f7d-48e4-a49e-dd1cd0a0b776', 'ipvpn2@twtelecom.com', 'Y', null, 'e45b8db4-7804-467b-804f-1845026146b1');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452846600, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452846600, 'd598a927-799a-4ce3-be4b-55b7b4d0a7e5', 'ipvpn2@twtelecom.com', 'Y', null, '3b9a10f7-326d-4ee9-a893-5b047cd29251');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452846600, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452846600, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452846600, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452849000, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452850200, '33214f4e-c3f4-4a93-921c-c190be63252b', 'testall@test.com', 'Y', null, '15c42a09-3fbe-4c59-9e8d-38ddc30871e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452850200, '6706a793-c1ff-4db5-8e26-a6a91ce7be03', 'ipvpn2@twtelecom.com', 'Y', null, '04204bcd-80e8-4316-85ac-b22ee4b6f071');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452850200, '6778ebb4-a2da-4bc6-9053-61a407854f24', 'ipvpn2@twtelecom.com', 'Y', null, 'a8ab8b61-73b8-4324-b2d2-107881e4a547');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452850200, '693fdf58-b359-4957-956d-b2b22ca45fe8', 'ipvpn2@twtelecom.com', 'Y', null, '2e9cdab9-1243-4d4f-88cf-b155973da798');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452850200, 'a2d7e338-7f7d-48e4-a49e-dd1cd0a0b776', 'ipvpn2@twtelecom.com', 'Y', null, 'e45b8db4-7804-467b-804f-1845026146b1');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452850200, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452850200, 'd598a927-799a-4ce3-be4b-55b7b4d0a7e5', 'ipvpn2@twtelecom.com', 'Y', null, '3b9a10f7-326d-4ee9-a893-5b047cd29251');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452850200, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452850200, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452850200, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452852600, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452854100, '33214f4e-c3f4-4a93-921c-c190be63252b', 'testall@test.com', 'Y', null, '15c42a09-3fbe-4c59-9e8d-38ddc30871e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452854100, '6706a793-c1ff-4db5-8e26-a6a91ce7be03', 'ipvpn2@twtelecom.com', 'Y', null, '04204bcd-80e8-4316-85ac-b22ee4b6f071');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452854100, '6778ebb4-a2da-4bc6-9053-61a407854f24', 'ipvpn2@twtelecom.com', 'Y', null, 'a8ab8b61-73b8-4324-b2d2-107881e4a547');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452854100, '693fdf58-b359-4957-956d-b2b22ca45fe8', 'ipvpn2@twtelecom.com', 'Y', null, '2e9cdab9-1243-4d4f-88cf-b155973da798');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452854100, 'a2d7e338-7f7d-48e4-a49e-dd1cd0a0b776', 'ipvpn2@twtelecom.com', 'Y', null, 'e45b8db4-7804-467b-804f-1845026146b1');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452854100, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452854100, 'd598a927-799a-4ce3-be4b-55b7b4d0a7e5', 'ipvpn2@twtelecom.com', 'Y', null, '3b9a10f7-326d-4ee9-a893-5b047cd29251');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452854100, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452854100, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452854100, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452856200, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452857700, '33214f4e-c3f4-4a93-921c-c190be63252b', 'testall@test.com', 'Y', null, '15c42a09-3fbe-4c59-9e8d-38ddc30871e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452857700, '6778ebb4-a2da-4bc6-9053-61a407854f24', 'ipvpn2@twtelecom.com', 'Y', null, 'a8ab8b61-73b8-4324-b2d2-107881e4a547');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452857700, '693fdf58-b359-4957-956d-b2b22ca45fe8', 'ipvpn2@twtelecom.com', 'Y', null, '2e9cdab9-1243-4d4f-88cf-b155973da798');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452857700, 'a2d7e338-7f7d-48e4-a49e-dd1cd0a0b776', 'ipvpn2@twtelecom.com', 'Y', null, 'e45b8db4-7804-467b-804f-1845026146b1');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452857700, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452857700, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452857700, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452858000, '6706a793-c1ff-4db5-8e26-a6a91ce7be03', 'ipvpn2@twtelecom.com', 'Y', null, '04204bcd-80e8-4316-85ac-b22ee4b6f071');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452858000, 'd598a927-799a-4ce3-be4b-55b7b4d0a7e5', 'ipvpn2@twtelecom.com', 'Y', null, '3b9a10f7-326d-4ee9-a893-5b047cd29251');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452858000, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452860100, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452863700, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452866400, '316aec93-33c6-42f8-8fff-a6643b11f4fa', 'sptest@test.com', 'Y', null, '92abfb6a-f6f5-4ddd-b6ff-78d28782ad54');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452866400, '49e9b14a-8589-4e83-be17-e3c09e02111e', 'sptest@test.com', 'Y', null, 'ed467054-7b81-4104-9928-33fae191db0c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452866400, 'd5fe4a50-5a55-4cee-8b35-efb1b939d23e', 'sptest@test.com', 'Y', null, 'ddb9c3b6-2c2d-442a-a5a8-9cadd452e554');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452866400, 'e2d33616-337f-4b01-a678-73e11be6194c', 'sptest@test.com', 'Y', null, '861d9803-1c56-4499-8750-0cd718a30a84');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452866400, 'ed458d33-2568-4899-88f9-95e6cd8c22ea', 'sptest@test.com', 'Y', null, '6fa51dbc-ad95-4e76-b7e1-b8e644f74355');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452866700, '316aec93-33c6-42f8-8fff-a6643b11f4fa', 'sptest@test.com', 'Y', null, '92abfb6a-f6f5-4ddd-b6ff-78d28782ad54');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452866700, '49e9b14a-8589-4e83-be17-e3c09e02111e', 'sptest@test.com', 'Y', null, 'ed467054-7b81-4104-9928-33fae191db0c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452866700, 'd5fe4a50-5a55-4cee-8b35-efb1b939d23e', 'sptest@test.com', 'Y', null, 'ddb9c3b6-2c2d-442a-a5a8-9cadd452e554');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452866700, 'e2d33616-337f-4b01-a678-73e11be6194c', 'sptest@test.com', 'Y', null, '861d9803-1c56-4499-8750-0cd718a30a84');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452866700, 'ed458d33-2568-4899-88f9-95e6cd8c22ea', 'sptest@test.com', 'Y', null, '6fa51dbc-ad95-4e76-b7e1-b8e644f74355');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452867300, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452870300, '316aec93-33c6-42f8-8fff-a6643b11f4fa', 'sptest@test.com', 'Y', null, '92abfb6a-f6f5-4ddd-b6ff-78d28782ad54');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452870300, '49e9b14a-8589-4e83-be17-e3c09e02111e', 'sptest@test.com', 'Y', null, 'ed467054-7b81-4104-9928-33fae191db0c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452870300, 'd5fe4a50-5a55-4cee-8b35-efb1b939d23e', 'sptest@test.com', 'Y', null, 'ddb9c3b6-2c2d-442a-a5a8-9cadd452e554');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452870300, 'e2d33616-337f-4b01-a678-73e11be6194c', 'sptest@test.com', 'Y', null, '861d9803-1c56-4499-8750-0cd718a30a84');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452870300, 'ed458d33-2568-4899-88f9-95e6cd8c22ea', 'sptest@test.com', 'Y', null, '6fa51dbc-ad95-4e76-b7e1-b8e644f74355');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452870900, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452873600, '316aec93-33c6-42f8-8fff-a6643b11f4fa', 'sptest@test.com', 'Y', null, '92abfb6a-f6f5-4ddd-b6ff-78d28782ad54');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452873600, '49e9b14a-8589-4e83-be17-e3c09e02111e', 'sptest@test.com', 'Y', null, 'ed467054-7b81-4104-9928-33fae191db0c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452873600, 'd5fe4a50-5a55-4cee-8b35-efb1b939d23e', 'sptest@test.com', 'Y', null, 'ddb9c3b6-2c2d-442a-a5a8-9cadd452e554');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452873600, 'e2d33616-337f-4b01-a678-73e11be6194c', 'sptest@test.com', 'Y', null, '861d9803-1c56-4499-8750-0cd718a30a84');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452873600, 'ed458d33-2568-4899-88f9-95e6cd8c22ea', 'sptest@test.com', 'Y', null, '6fa51dbc-ad95-4e76-b7e1-b8e644f74355');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452873900, '316aec93-33c6-42f8-8fff-a6643b11f4fa', 'sptest@test.com', 'Y', null, '92abfb6a-f6f5-4ddd-b6ff-78d28782ad54');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452873900, '49e9b14a-8589-4e83-be17-e3c09e02111e', 'sptest@test.com', 'Y', null, 'ed467054-7b81-4104-9928-33fae191db0c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452873900, 'd5fe4a50-5a55-4cee-8b35-efb1b939d23e', 'sptest@test.com', 'Y', null, 'ddb9c3b6-2c2d-442a-a5a8-9cadd452e554');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452873900, 'e2d33616-337f-4b01-a678-73e11be6194c', 'sptest@test.com', 'Y', null, '861d9803-1c56-4499-8750-0cd718a30a84');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452873900, 'ed458d33-2568-4899-88f9-95e6cd8c22ea', 'sptest@test.com', 'Y', null, '6fa51dbc-ad95-4e76-b7e1-b8e644f74355');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452874500, '122c72c3-1122-4d80-8df1-be049a2f13f9', 'q@test.com', 'Y', null, '9c172b60-0db8-4a2d-a2d6-3c0057889e11');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452874500, '24d61381-b78b-4c78-a392-922cb98ab23b', 'q@test.com', 'Y', null, '775f6985-3389-406c-bf4d-e208067d51d0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452874500, '8222123e-9f67-4520-90ce-53e5f236da5e', 'q@test.com', 'Y', null, '8737f128-27e4-49df-b8ae-3e417b4008ee');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452874500, '84c6b503-953d-4d01-b346-19b2ee60360f', 'q@test.com', 'Y', null, '3194ee68-b1c6-400c-a94c-27748d2345f3');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452874500, 'e73f5a2b-2fe3-4010-bf4b-5e733f49e5eb', 'q@test.com', 'Y', null, '70e7e181-6317-4732-9eb8-2bf6cbdd72b7');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452874800, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452886200, '147ecca8-38aa-4750-868c-7f4f85a9f9f5', 'sptest@test.com', 'Y', null, 'de7f32ed-21d3-44b7-8415-49e4925a4048');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452886200, '2576b278-41a3-4190-a507-fe26fb2ee7d3', 'sptest@test.com', 'Y', null, 'c97dc83c-3aa9-49fb-8d30-18f418a6b078');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452886200, '2f508b6a-ebaf-499d-83f0-6c1c7de35714', 'sptest@test.com', 'Y', null, '155b8da7-0b43-4fd1-bed0-6795371995e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452886200, '73ef1ab5-d667-48db-8d86-d543a4695f52', 'sptest@test.com', 'Y', null, 'cb84d191-486b-44a7-84f9-3dbcbfcbc494');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452886200, 'a06efc9a-db48-43c3-838a-667cdb3060c0', 'sptest@test.com', 'Y', null, '784624b2-c82f-4c1b-a2e6-d5ae848baf21');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452886200, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452892500, '147ecca8-38aa-4750-868c-7f4f85a9f9f5', 'sptest@test.com', 'Y', null, 'de7f32ed-21d3-44b7-8415-49e4925a4048');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452892500, '2576b278-41a3-4190-a507-fe26fb2ee7d3', 'sptest@test.com', 'Y', null, 'c97dc83c-3aa9-49fb-8d30-18f418a6b078');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452892500, '2f508b6a-ebaf-499d-83f0-6c1c7de35714', 'sptest@test.com', 'Y', null, '155b8da7-0b43-4fd1-bed0-6795371995e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452892500, '73ef1ab5-d667-48db-8d86-d543a4695f52', 'sptest@test.com', 'Y', null, 'cb84d191-486b-44a7-84f9-3dbcbfcbc494');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452892500, 'a06efc9a-db48-43c3-838a-667cdb3060c0', 'sptest@test.com', 'Y', null, '784624b2-c82f-4c1b-a2e6-d5ae848baf21');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452892500, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452896100, '147ecca8-38aa-4750-868c-7f4f85a9f9f5', 'sptest@test.com', 'Y', null, 'de7f32ed-21d3-44b7-8415-49e4925a4048');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452896100, '2576b278-41a3-4190-a507-fe26fb2ee7d3', 'sptest@test.com', 'Y', null, 'c97dc83c-3aa9-49fb-8d30-18f418a6b078');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452896100, '2f508b6a-ebaf-499d-83f0-6c1c7de35714', 'sptest@test.com', 'Y', null, '155b8da7-0b43-4fd1-bed0-6795371995e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452896100, '73ef1ab5-d667-48db-8d86-d543a4695f52', 'sptest@test.com', 'Y', null, 'cb84d191-486b-44a7-84f9-3dbcbfcbc494');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452896100, 'a06efc9a-db48-43c3-838a-667cdb3060c0', 'sptest@test.com', 'Y', null, '784624b2-c82f-4c1b-a2e6-d5ae848baf21');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452896100, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452900000, '147ecca8-38aa-4750-868c-7f4f85a9f9f5', 'sptest@test.com', 'Y', null, 'de7f32ed-21d3-44b7-8415-49e4925a4048');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452900000, '2576b278-41a3-4190-a507-fe26fb2ee7d3', 'sptest@test.com', 'Y', null, 'c97dc83c-3aa9-49fb-8d30-18f418a6b078');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452900000, '2f508b6a-ebaf-499d-83f0-6c1c7de35714', 'sptest@test.com', 'Y', null, '155b8da7-0b43-4fd1-bed0-6795371995e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452900000, '73ef1ab5-d667-48db-8d86-d543a4695f52', 'sptest@test.com', 'Y', null, 'cb84d191-486b-44a7-84f9-3dbcbfcbc494');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452900000, 'a06efc9a-db48-43c3-838a-667cdb3060c0', 'sptest@test.com', 'Y', null, '784624b2-c82f-4c1b-a2e6-d5ae848baf21');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452900000, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452902400, '33214f4e-c3f4-4a93-921c-c190be63252b', 'testall@test.com', 'Y', null, '15c42a09-3fbe-4c59-9e8d-38ddc30871e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452902400, '6706a793-c1ff-4db5-8e26-a6a91ce7be03', 'ipvpn2@twtelecom.com', 'Y', null, '04204bcd-80e8-4316-85ac-b22ee4b6f071');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452902400, '6778ebb4-a2da-4bc6-9053-61a407854f24', 'ipvpn2@twtelecom.com', 'Y', null, 'a8ab8b61-73b8-4324-b2d2-107881e4a547');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452902400, '693fdf58-b359-4957-956d-b2b22ca45fe8', 'ipvpn2@twtelecom.com', 'Y', null, '2e9cdab9-1243-4d4f-88cf-b155973da798');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452902400, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452902400, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452902400, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452902400, 'a2d7e338-7f7d-48e4-a49e-dd1cd0a0b776', 'ipvpn2@twtelecom.com', 'Y', null, 'e45b8db4-7804-467b-804f-1845026146b1');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452902400, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452902400, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452902400, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452902400, 'd598a927-799a-4ce3-be4b-55b7b4d0a7e5', 'ipvpn2@twtelecom.com', 'Y', null, '3b9a10f7-326d-4ee9-a893-5b047cd29251');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452902400, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452902400, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452902400, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452902400, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452902400, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452902400, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452902400, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452902400, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452902400, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452903900, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452906300, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452906300, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452906300, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452906300, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452906300, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452906300, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452906300, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452906300, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452906300, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452906300, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452906300, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452907500, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452909900, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452909900, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452909900, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452909900, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452909900, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452909900, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452909900, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452909900, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452909900, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452909900, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452909900, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452911400, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452913800, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452913800, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452913800, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452913800, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452913800, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452913800, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452913800, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452913800, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452913800, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452913800, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452913800, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452915000, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452917400, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452917400, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452917400, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452917400, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452917400, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452917400, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452917700, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452917700, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452917700, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452917700, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452917700, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452918900, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452921000, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452921300, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452921300, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452921300, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452921300, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452921300, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452921300, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452921300, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452921300, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452921300, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452921300, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452922500, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452924900, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452924900, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452925200, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452925200, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452925200, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452925200, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452925200, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452925200, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452925200, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452925200, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452925200, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452926400, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452928500, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452928800, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452928800, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452928800, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452928800, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452928800, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452928800, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452928800, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452929100, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452929100, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452929100, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452930000, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452932100, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452932400, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452932400, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452932400, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452932400, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452932400, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452932400, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452932700, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452932700, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452932700, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452932700, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452933600, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452936000, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452936000, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452936000, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452936000, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452936300, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452936300, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452936300, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452936300, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452936300, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452936300, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452936300, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452937500, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452939600, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452939900, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452939900, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452939900, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452939900, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452939900, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452939900, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452939900, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452939900, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452939900, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452939900, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452941100, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452943200, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452943500, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452943500, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452943500, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452943500, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452943500, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452943500, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452943800, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452943800, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452943800, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452943800, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452945000, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452948600, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452952500, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452956400, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452960000, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452963900, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452967800, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452971700, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452975600, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452979200, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452982800, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452986400, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452988800, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452988800, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452988800, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452988800, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452988800, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452988800, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452988800, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452988800, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452988800, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452988800, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452988800, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452990300, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452992700, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452992700, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452992700, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452992700, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452992700, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452992700, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452992700, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452992700, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452992700, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452992700, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452992700, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452993900, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452996300, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452996300, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452996300, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452996300, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452996300, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452996300, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452996300, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452996300, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452996300, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452996300, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452996300, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1452997800, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453000200, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453000200, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453000200, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453000200, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453000200, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453000200, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453000200, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453000200, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453000200, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453000200, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453000200, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453001400, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453003800, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453003800, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453003800, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453003800, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453003800, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453003800, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453003800, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453003800, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453003800, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453003800, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453003800, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453005000, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453007400, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453007400, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453007400, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453007400, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453007400, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453007400, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453007700, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453007700, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453007700, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453007700, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453007700, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453008600, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453011000, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453011000, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453011000, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453011000, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453011000, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453011000, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453011600, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453011600, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453011600, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453011600, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453011600, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453012500, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453014900, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453014900, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453014900, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453014900, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453014900, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453014900, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453015200, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453015200, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453015200, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453015200, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453015200, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453016100, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453018800, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453018800, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453018800, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453018800, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453018800, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453018800, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453019100, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453019100, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453019100, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453019100, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453019100, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453020000, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453022700, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453022700, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453022700, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453022700, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453022700, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453022700, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453022700, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453022700, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453022700, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453022700, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453022700, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453023600, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453026300, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453026300, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453026300, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453026300, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453026300, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453026300, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453026300, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453026300, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453026600, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453026600, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453026600, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453027500, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453029900, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453029900, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453029900, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453029900, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453029900, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453029900, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453029900, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453029900, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453030500, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453030500, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453030500, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453031100, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453034700, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453038600, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453042500, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453046100, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453050000, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453053900, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453057800, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453061700, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453065600, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453069200, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453072800, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453075200, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453075200, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453075200, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453075200, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453075200, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453075200, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453075200, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453075200, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453075200, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453075200, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453075200, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453076400, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453079100, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453079100, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453079100, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453079100, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453079100, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453079100, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453079100, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453079100, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453079100, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453079100, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453079100, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453080300, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453083000, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453083000, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453083000, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453083000, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453083000, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453083000, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453083000, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453083000, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453083000, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453083000, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453083000, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453083900, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453086600, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453086600, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453086600, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453086600, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453086600, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453086600, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453086900, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453086900, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453086900, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453086900, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453086900, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453087500, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453090500, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453090500, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453090500, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453090500, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453090500, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453090500, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453090500, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453090500, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453090500, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453090500, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453090500, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453091100, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453094100, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453094100, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453094100, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453094100, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453094100, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453094100, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453094100, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453094100, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453094100, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453094100, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453094100, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453094700, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453098000, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453098000, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453098000, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453098000, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453098000, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453098000, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453098000, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453098000, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453098000, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453098000, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453098000, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453098600, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453101600, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453101600, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453101600, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453101600, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453101600, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453101600, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453101900, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453101900, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453101900, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453101900, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453101900, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453102500, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453105200, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453105200, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453105200, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453105500, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453105500, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453105500, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453105500, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453105500, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453105500, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453105500, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453105500, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453106400, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453109100, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453109100, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453109100, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453109100, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453109100, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453109100, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453109400, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453109400, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453109400, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453109400, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453109400, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453110000, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453112700, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453112700, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453112700, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453112700, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453112700, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453112700, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453113000, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453113000, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453113000, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453113000, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453113000, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453113900, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453116300, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453116300, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453116300, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453116300, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453116300, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453116300, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453116600, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453116600, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453116900, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453116900, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453116900, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453117500, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453118400, '147ecca8-38aa-4750-868c-7f4f85a9f9f5', 'sptest@test.com', 'Y', null, 'de7f32ed-21d3-44b7-8415-49e4925a4048');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453118400, '2576b278-41a3-4190-a507-fe26fb2ee7d3', 'sptest@test.com', 'Y', null, 'c97dc83c-3aa9-49fb-8d30-18f418a6b078');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453118400, '2f508b6a-ebaf-499d-83f0-6c1c7de35714', 'sptest@test.com', 'Y', null, '155b8da7-0b43-4fd1-bed0-6795371995e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453118400, '73ef1ab5-d667-48db-8d86-d543a4695f52', 'sptest@test.com', 'Y', null, 'cb84d191-486b-44a7-84f9-3dbcbfcbc494');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453118400, 'a06efc9a-db48-43c3-838a-667cdb3060c0', 'sptest@test.com', 'Y', null, '784624b2-c82f-4c1b-a2e6-d5ae848baf21');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453121400, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453122300, '147ecca8-38aa-4750-868c-7f4f85a9f9f5', 'sptest@test.com', 'Y', null, 'de7f32ed-21d3-44b7-8415-49e4925a4048');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453122300, '2576b278-41a3-4190-a507-fe26fb2ee7d3', 'sptest@test.com', 'Y', null, 'c97dc83c-3aa9-49fb-8d30-18f418a6b078');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453122300, '2f508b6a-ebaf-499d-83f0-6c1c7de35714', 'sptest@test.com', 'Y', null, '155b8da7-0b43-4fd1-bed0-6795371995e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453122300, '73ef1ab5-d667-48db-8d86-d543a4695f52', 'sptest@test.com', 'Y', null, 'cb84d191-486b-44a7-84f9-3dbcbfcbc494');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453122300, 'a06efc9a-db48-43c3-838a-667cdb3060c0', 'sptest@test.com', 'Y', null, '784624b2-c82f-4c1b-a2e6-d5ae848baf21');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453125300, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453125900, '147ecca8-38aa-4750-868c-7f4f85a9f9f5', 'sptest@test.com', 'Y', null, 'de7f32ed-21d3-44b7-8415-49e4925a4048');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453125900, '2576b278-41a3-4190-a507-fe26fb2ee7d3', 'sptest@test.com', 'Y', null, 'c97dc83c-3aa9-49fb-8d30-18f418a6b078');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453125900, '2f508b6a-ebaf-499d-83f0-6c1c7de35714', 'sptest@test.com', 'Y', null, '155b8da7-0b43-4fd1-bed0-6795371995e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453125900, '73ef1ab5-d667-48db-8d86-d543a4695f52', 'sptest@test.com', 'Y', null, 'cb84d191-486b-44a7-84f9-3dbcbfcbc494');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453125900, 'a06efc9a-db48-43c3-838a-667cdb3060c0', 'sptest@test.com', 'Y', null, '784624b2-c82f-4c1b-a2e6-d5ae848baf21');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453128900, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453129500, '147ecca8-38aa-4750-868c-7f4f85a9f9f5', 'sptest@test.com', 'Y', null, 'de7f32ed-21d3-44b7-8415-49e4925a4048');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453129500, '2576b278-41a3-4190-a507-fe26fb2ee7d3', 'sptest@test.com', 'Y', null, 'c97dc83c-3aa9-49fb-8d30-18f418a6b078');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453129500, '2f508b6a-ebaf-499d-83f0-6c1c7de35714', 'sptest@test.com', 'Y', null, '155b8da7-0b43-4fd1-bed0-6795371995e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453129500, '73ef1ab5-d667-48db-8d86-d543a4695f52', 'sptest@test.com', 'Y', null, 'cb84d191-486b-44a7-84f9-3dbcbfcbc494');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453129500, 'a06efc9a-db48-43c3-838a-667cdb3060c0', 'sptest@test.com', 'Y', null, '784624b2-c82f-4c1b-a2e6-d5ae848baf21');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453132500, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453133100, '147ecca8-38aa-4750-868c-7f4f85a9f9f5', 'sptest@test.com', 'Y', null, 'de7f32ed-21d3-44b7-8415-49e4925a4048');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453133100, '2576b278-41a3-4190-a507-fe26fb2ee7d3', 'sptest@test.com', 'Y', null, 'c97dc83c-3aa9-49fb-8d30-18f418a6b078');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453133100, '2f508b6a-ebaf-499d-83f0-6c1c7de35714', 'sptest@test.com', 'Y', null, '155b8da7-0b43-4fd1-bed0-6795371995e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453133100, '73ef1ab5-d667-48db-8d86-d543a4695f52', 'sptest@test.com', 'Y', null, 'cb84d191-486b-44a7-84f9-3dbcbfcbc494');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453133100, 'a06efc9a-db48-43c3-838a-667cdb3060c0', 'sptest@test.com', 'Y', null, '784624b2-c82f-4c1b-a2e6-d5ae848baf21');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453135010, '9f43f39b-fa52-4e25-a862-de647e73f6cc', 'tca@test.com', 'Y', null, '05ebb5a3-c595-49c4-b167-c688a2d96df9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453135073, '56d3d622-faf0-4655-83ed-7b40cea03c78', null, 'N', 'No Parameter found for ID: ''4''', null);
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453136400, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453137000, '147ecca8-38aa-4750-868c-7f4f85a9f9f5', 'sptest@test.com', 'Y', null, 'de7f32ed-21d3-44b7-8415-49e4925a4048');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453137000, '2576b278-41a3-4190-a507-fe26fb2ee7d3', 'sptest@test.com', 'Y', null, 'c97dc83c-3aa9-49fb-8d30-18f418a6b078');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453137000, '2f508b6a-ebaf-499d-83f0-6c1c7de35714', 'sptest@test.com', 'Y', null, '155b8da7-0b43-4fd1-bed0-6795371995e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453137000, '73ef1ab5-d667-48db-8d86-d543a4695f52', 'sptest@test.com', 'Y', null, 'cb84d191-486b-44a7-84f9-3dbcbfcbc494');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453137000, 'a06efc9a-db48-43c3-838a-667cdb3060c0', 'sptest@test.com', 'Y', null, '784624b2-c82f-4c1b-a2e6-d5ae848baf21');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453140000, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453140900, '147ecca8-38aa-4750-868c-7f4f85a9f9f5', 'sptest@test.com', 'Y', null, 'de7f32ed-21d3-44b7-8415-49e4925a4048');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453140900, '2576b278-41a3-4190-a507-fe26fb2ee7d3', 'sptest@test.com', 'Y', null, 'c97dc83c-3aa9-49fb-8d30-18f418a6b078');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453140900, '2f508b6a-ebaf-499d-83f0-6c1c7de35714', 'sptest@test.com', 'Y', null, '155b8da7-0b43-4fd1-bed0-6795371995e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453140900, '73ef1ab5-d667-48db-8d86-d543a4695f52', 'sptest@test.com', 'Y', null, 'cb84d191-486b-44a7-84f9-3dbcbfcbc494');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453140900, 'a06efc9a-db48-43c3-838a-667cdb3060c0', 'sptest@test.com', 'Y', null, '784624b2-c82f-4c1b-a2e6-d5ae848baf21');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453143600, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453144800, '147ecca8-38aa-4750-868c-7f4f85a9f9f5', 'sptest@test.com', 'Y', null, 'de7f32ed-21d3-44b7-8415-49e4925a4048');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453144800, '2576b278-41a3-4190-a507-fe26fb2ee7d3', 'sptest@test.com', 'Y', null, 'c97dc83c-3aa9-49fb-8d30-18f418a6b078');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453144800, '2f508b6a-ebaf-499d-83f0-6c1c7de35714', 'sptest@test.com', 'Y', null, '155b8da7-0b43-4fd1-bed0-6795371995e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453144800, '73ef1ab5-d667-48db-8d86-d543a4695f52', 'sptest@test.com', 'Y', null, 'cb84d191-486b-44a7-84f9-3dbcbfcbc494');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453144800, 'a06efc9a-db48-43c3-838a-667cdb3060c0', 'sptest@test.com', 'Y', null, '784624b2-c82f-4c1b-a2e6-d5ae848baf21');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453147200, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453147605, '1c412296-773d-4d5b-bd14-94b5c854ad03', 'some.one@level3.com', 'Y', null, '86f95300-2f27-410a-b58a-38f50cf62388');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453148700, '147ecca8-38aa-4750-868c-7f4f85a9f9f5', 'sptest@test.com', 'Y', null, 'de7f32ed-21d3-44b7-8415-49e4925a4048');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453148700, '2576b278-41a3-4190-a507-fe26fb2ee7d3', 'sptest@test.com', 'Y', null, 'c97dc83c-3aa9-49fb-8d30-18f418a6b078');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453148700, '2f508b6a-ebaf-499d-83f0-6c1c7de35714', 'sptest@test.com', 'Y', null, '155b8da7-0b43-4fd1-bed0-6795371995e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453148700, '73ef1ab5-d667-48db-8d86-d543a4695f52', 'sptest@test.com', 'Y', null, 'cb84d191-486b-44a7-84f9-3dbcbfcbc494');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453148700, 'a06efc9a-db48-43c3-838a-667cdb3060c0', 'sptest@test.com', 'Y', null, '784624b2-c82f-4c1b-a2e6-d5ae848baf21');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453151100, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453152300, '2576b278-41a3-4190-a507-fe26fb2ee7d3', 'sptest@test.com', 'Y', null, 'c97dc83c-3aa9-49fb-8d30-18f418a6b078');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453152300, 'a06efc9a-db48-43c3-838a-667cdb3060c0', 'sptest@test.com', 'Y', null, '784624b2-c82f-4c1b-a2e6-d5ae848baf21');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453152600, '147ecca8-38aa-4750-868c-7f4f85a9f9f5', 'sptest@test.com', 'Y', null, 'de7f32ed-21d3-44b7-8415-49e4925a4048');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453152600, '2f508b6a-ebaf-499d-83f0-6c1c7de35714', 'sptest@test.com', 'Y', null, '155b8da7-0b43-4fd1-bed0-6795371995e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453152600, '73ef1ab5-d667-48db-8d86-d543a4695f52', 'sptest@test.com', 'Y', null, 'cb84d191-486b-44a7-84f9-3dbcbfcbc494');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453155000, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453155900, '2576b278-41a3-4190-a507-fe26fb2ee7d3', 'sptest@test.com', 'Y', null, 'c97dc83c-3aa9-49fb-8d30-18f418a6b078');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453155900, 'a06efc9a-db48-43c3-838a-667cdb3060c0', 'sptest@test.com', 'Y', null, '784624b2-c82f-4c1b-a2e6-d5ae848baf21');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453156200, '147ecca8-38aa-4750-868c-7f4f85a9f9f5', 'sptest@test.com', 'Y', null, 'de7f32ed-21d3-44b7-8415-49e4925a4048');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453156200, '2f508b6a-ebaf-499d-83f0-6c1c7de35714', 'sptest@test.com', 'Y', null, '155b8da7-0b43-4fd1-bed0-6795371995e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453156200, '73ef1ab5-d667-48db-8d86-d543a4695f52', 'sptest@test.com', 'Y', null, 'cb84d191-486b-44a7-84f9-3dbcbfcbc494');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453158600, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453159500, '2576b278-41a3-4190-a507-fe26fb2ee7d3', 'sptest@test.com', 'Y', null, 'c97dc83c-3aa9-49fb-8d30-18f418a6b078');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453159500, 'a06efc9a-db48-43c3-838a-667cdb3060c0', 'sptest@test.com', 'Y', null, '784624b2-c82f-4c1b-a2e6-d5ae848baf21');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453160100, '147ecca8-38aa-4750-868c-7f4f85a9f9f5', 'sptest@test.com', 'Y', null, 'de7f32ed-21d3-44b7-8415-49e4925a4048');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453160100, '2f508b6a-ebaf-499d-83f0-6c1c7de35714', 'sptest@test.com', 'Y', null, '155b8da7-0b43-4fd1-bed0-6795371995e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453160100, '73ef1ab5-d667-48db-8d86-d543a4695f52', 'sptest@test.com', 'Y', null, 'cb84d191-486b-44a7-84f9-3dbcbfcbc494');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453161600, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453161600, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453161600, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453161600, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453161600, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453161600, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453161600, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453161600, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453161600, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453161600, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453161600, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453162200, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453165500, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453165500, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453165500, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453165500, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453165500, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453165500, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453165500, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453165500, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453165500, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453165500, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453165500, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453166100, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453169100, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453169100, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453169100, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453169100, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453169100, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453169100, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453169100, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453169100, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453169100, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453169100, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453169100, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453170000, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453172700, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453172700, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453172700, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453172700, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453172700, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453172700, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453172700, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453172700, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453172700, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453172700, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453173000, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453173900, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453176600, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453176600, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453176600, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453176600, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453176600, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453176600, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453176600, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453176600, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453176600, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453176600, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453176600, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453177500, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453180200, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453180200, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453180200, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453180200, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453180200, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453180200, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453180500, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453180500, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453180500, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453180500, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453180500, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453181100, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453183800, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453183800, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453183800, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453183800, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453183800, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453183800, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453184100, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453184100, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453184100, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453184100, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453184100, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453185000, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453187400, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453187400, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453187400, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453187400, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453187400, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453187400, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453188000, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453188000, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453188000, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453188000, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453188000, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453188900, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453191000, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453191000, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453191000, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453191000, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453191000, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453191000, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453191900, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453191900, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453191900, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453191900, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453191900, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453192800, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453194900, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453194900, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453194900, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453194900, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453194900, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453194900, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453195500, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453195500, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453195500, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453195500, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453195500, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453196700, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453198500, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453198500, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453198500, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453198500, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453198500, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453198800, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453199100, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453199100, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453199100, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453199100, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453199100, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453200300, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453202100, '6e11e108-c365-45f3-8f71-59a4e805470b', 'ipvpn2@twtelecom.com', 'Y', null, '53629a0a-7452-4873-9a16-32ace013262c');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453202100, 'c76be200-dff2-4a6b-aaca-19648ed77b8b', 'ipvpn2@twtelecom.com', 'Y', null, 'f8fcc115-6450-4d6f-82b9-df23394291d9');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453202400, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453202400, 'fd2d4c3d-a8c3-4828-a79c-30e93651633f', 'ipvpn2@twtelecom.com', 'Y', null, 'e427c2bc-6ff6-4102-a851-f557e54a005a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453202400, 'ffb35923-c0d9-448d-a64d-c121e5bd81e7', 'ipvpn2@twtelecom.com', 'Y', null, 'b278f16e-a652-4368-be5f-fddaa7afe1f8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453202700, 'e349d9af-db15-4cc6-875b-cef46846e312', 'ipvpn2@twtelecom.com', 'Y', null, 'c47885d1-6e17-449f-a7a1-ddeb6b585b70');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453203000, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453203000, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453203000, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453203000, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453203000, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453204200, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453204800, '147ecca8-38aa-4750-868c-7f4f85a9f9f5', 'sptest@test.com', 'Y', null, 'de7f32ed-21d3-44b7-8415-49e4925a4048');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453204800, '2576b278-41a3-4190-a507-fe26fb2ee7d3', 'sptest@test.com', 'Y', null, 'c97dc83c-3aa9-49fb-8d30-18f418a6b078');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453204800, '2f508b6a-ebaf-499d-83f0-6c1c7de35714', 'sptest@test.com', 'Y', null, '155b8da7-0b43-4fd1-bed0-6795371995e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453204800, '73ef1ab5-d667-48db-8d86-d543a4695f52', 'sptest@test.com', 'Y', null, 'cb84d191-486b-44a7-84f9-3dbcbfcbc494');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453204800, 'a06efc9a-db48-43c3-838a-667cdb3060c0', 'sptest@test.com', 'Y', null, '784624b2-c82f-4c1b-a2e6-d5ae848baf21');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453208100, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453208700, '147ecca8-38aa-4750-868c-7f4f85a9f9f5', 'sptest@test.com', 'Y', null, 'de7f32ed-21d3-44b7-8415-49e4925a4048');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453208700, '2576b278-41a3-4190-a507-fe26fb2ee7d3', 'sptest@test.com', 'Y', null, 'c97dc83c-3aa9-49fb-8d30-18f418a6b078');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453208700, '2f508b6a-ebaf-499d-83f0-6c1c7de35714', 'sptest@test.com', 'Y', null, '155b8da7-0b43-4fd1-bed0-6795371995e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453208700, '73ef1ab5-d667-48db-8d86-d543a4695f52', 'sptest@test.com', 'Y', null, 'cb84d191-486b-44a7-84f9-3dbcbfcbc494');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453208700, 'a06efc9a-db48-43c3-838a-667cdb3060c0', 'sptest@test.com', 'Y', null, '784624b2-c82f-4c1b-a2e6-d5ae848baf21');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453211700, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453212300, '147ecca8-38aa-4750-868c-7f4f85a9f9f5', 'sptest@test.com', 'Y', null, 'de7f32ed-21d3-44b7-8415-49e4925a4048');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453212300, '2576b278-41a3-4190-a507-fe26fb2ee7d3', 'sptest@test.com', 'Y', null, 'c97dc83c-3aa9-49fb-8d30-18f418a6b078');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453212300, '2f508b6a-ebaf-499d-83f0-6c1c7de35714', 'sptest@test.com', 'Y', null, '155b8da7-0b43-4fd1-bed0-6795371995e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453212300, '73ef1ab5-d667-48db-8d86-d543a4695f52', 'sptest@test.com', 'Y', null, 'cb84d191-486b-44a7-84f9-3dbcbfcbc494');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453212300, 'a06efc9a-db48-43c3-838a-667cdb3060c0', 'sptest@test.com', 'Y', null, '784624b2-c82f-4c1b-a2e6-d5ae848baf21');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453215600, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453216200, '147ecca8-38aa-4750-868c-7f4f85a9f9f5', 'sptest@test.com', 'Y', null, 'de7f32ed-21d3-44b7-8415-49e4925a4048');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453216200, '2576b278-41a3-4190-a507-fe26fb2ee7d3', 'sptest@test.com', 'Y', null, 'c97dc83c-3aa9-49fb-8d30-18f418a6b078');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453216200, '2f508b6a-ebaf-499d-83f0-6c1c7de35714', 'sptest@test.com', 'Y', null, '155b8da7-0b43-4fd1-bed0-6795371995e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453216200, '73ef1ab5-d667-48db-8d86-d543a4695f52', 'sptest@test.com', 'Y', null, 'cb84d191-486b-44a7-84f9-3dbcbfcbc494');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453216200, 'a06efc9a-db48-43c3-838a-667cdb3060c0', 'sptest@test.com', 'Y', null, '784624b2-c82f-4c1b-a2e6-d5ae848baf21');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453219200, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453219800, '147ecca8-38aa-4750-868c-7f4f85a9f9f5', 'sptest@test.com', 'Y', null, 'de7f32ed-21d3-44b7-8415-49e4925a4048');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453219800, '2576b278-41a3-4190-a507-fe26fb2ee7d3', 'sptest@test.com', 'Y', null, 'c97dc83c-3aa9-49fb-8d30-18f418a6b078');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453219800, '2f508b6a-ebaf-499d-83f0-6c1c7de35714', 'sptest@test.com', 'Y', null, '155b8da7-0b43-4fd1-bed0-6795371995e0');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453219800, '73ef1ab5-d667-48db-8d86-d543a4695f52', 'sptest@test.com', 'Y', null, 'cb84d191-486b-44a7-84f9-3dbcbfcbc494');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453219800, 'a06efc9a-db48-43c3-838a-667cdb3060c0', 'sptest@test.com', 'Y', null, '784624b2-c82f-4c1b-a2e6-d5ae848baf21');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453223100, 'f9938084-00c1-4a14-a45d-820990ee3e16', 'ipvpn2@twtelecom.com', 'Y', null, 'bef1e263-9b70-4934-b868-db51254feb1e');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453239051, '0fc5f43c-c399-4b5e-a564-374cea0dce16', null, 'N', 'bad lexical cast: source type value could not be interpreted as target', 'd95e23f4-d881-48ed-9911-635eab2fc78a');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453239051, '0fc5f43c-c399-4b5e-a564-374cea0dce16', 'anand.agrawal@level3.com', 'Y', 'bad lexical cast: source type value could not be interpreted as target', 'dd963576-9fb4-4134-ae30-31456ca8ad54');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453239051, '6236fdb9-b6f6-4cc4-91d7-522ac751e290', 'anand.agrawal@level3.com', 'Y', null, '94fa9a06-0dd3-4d29-be84-78356dbc03bf');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453239051, '6236fdb9-b6f6-4cc4-91d7-522ac751e290', 'anand.agrawal@level3.com', 'Y', null, 'e0dd7852-896d-49cb-bc82-5c788d0dfff8');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453239051, '8dcd94f1-75ca-4a7b-b4ed-4a56bd70a699', 'anand.agrawal@level3.com', 'Y', null, '7fb56c5d-3aad-452a-9dcf-f50dbc070a55');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453239051, '8dcd94f1-75ca-4a7b-b4ed-4a56bd70a699', 'anand.agrawal@level3.com', 'Y', null, '2966bdd0-bcd7-40ac-974a-a89942ed2e1b');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453239270, 'c6e0cfc4-ba92-4bef-b424-ae3912468228', null, 'N', null, null);
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453248000, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453251900, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453255800, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453259400, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453263300, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453266900, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453269300, '6f55fd50-71a8-489e-9aba-07529f2943ff', 'ipvpn2@twtelecom.com', 'Y', null, '88dc2dd2-2f82-439c-9daa-3ffff56b6528');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453269300, '8dbeceef-d63e-403c-89f7-513ef036a1bf', 'testall@test.com', 'Y', null, '9691ae29-6d8e-4794-ad96-fc7fe9027f1f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453269300, 'bd75f381-efbb-43a4-b516-d677092b629b', 'ipvpn2@twtelecom.com', 'Y', null, 'be12ba97-a2b7-481a-ac4b-f52f74e0d32f');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453269300, 'f162f67d-cedb-41bb-aef4-b5b87c1f3301', 'ipvpn2@twtelecom.com', 'Y', null, '4539d5b8-e0bb-4bb2-828b-27cded21e615');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453269300, 'fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', 'ipvpn2@twtelecom.com', 'Y', null, 'c49e02ea-bda7-4864-b449-a019554228e6');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453270800, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453274400, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453278300, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453281900, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453285500, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453289400, 'd8a74449-f368-41e6-b3fb-47dd2c8bb50a', 'ipvpn2@twtelecom.com', 'Y', null, '157fbbdf-a844-4089-81fd-bfa39ceabb35');
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453300500, '6b485259-1ad0-4a6a-86a0-6b325aa415b6', null, 'N', null, null);
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453305300, '6b485259-1ad0-4a6a-86a0-6b325aa415b6', null, 'N', null, null);
INSERT INTO alert_history (stamp, tca_instance, alert_recipient, alert_sent, failure, action_guid) VALUES (1453313400, '6b485259-1ad0-4a6a-86a0-6b325aa415b6', null, 'N', null, null);
DROP TABLE alert_history_backup;
CREATE TABLE npm_tca_iot.alert_history_backup
(
    stamp int,
    tca_instance char(36),
    alert_recipient varchar(512),
    alert_sent char(1),
    failure varchar(512),
    action_guid char(36)
);



CREATE PROJECTION npm_tca_iot.alert_history_backup /*+createtype(A)*/ 
(
 stamp,
 tca_instance,
 alert_recipient,
 alert_sent,
 failure,
 action_guid
)
AS
 SELECT alert_history_backup.stamp,
        alert_history_backup.tca_instance,
        alert_history_backup.alert_recipient,
        alert_history_backup.alert_sent,
        alert_history_backup.failure,
        alert_history_backup.action_guid
 FROM npm_tca_iot.alert_history_backup
 ORDER BY alert_history_backup.stamp,
          alert_history_backup.tca_instance
SEGMENTED BY hash(alert_history_backup.stamp, alert_history_backup.alert_sent, alert_history_backup.tca_instance, alert_history_backup.action_guid, alert_history_backup.alert_recipient, alert_history_backup.failure) ALL NODES KSAFE 1;


SELECT MARK_DESIGN_KSAFE(1);
DROP TABLE criteria;
CREATE TABLE npm_tca_iot.criteria
(
    id int CONSTRAINT criteria__id NOT NULL,
    name varchar(128) CONSTRAINT criteria__name NOT NULL
);

ALTER TABLE npm_tca_iot.criteria ADD CONSTRAINT criteria__pk PRIMARY KEY (id); 


CREATE PROJECTION npm_tca_iot.criteria /*+createtype(P)*/ 
(
 id ENCODING RLE,
 name
)
AS
 SELECT criteria.id,
        criteria.name
 FROM npm_tca_iot.criteria
 ORDER BY criteria.id
UNSEGMENTED ALL NODES;


SELECT MARK_DESIGN_KSAFE(1);
INSERT INTO criteria (id, name) VALUES (100, 'BY_GROUP_ID');
INSERT INTO criteria (id, name) VALUES (101, 'BY_RESOURCE_UUID');
INSERT INTO criteria (id, name) VALUES (102, 'BY_UNIQUE_RESOURCE');
INSERT INTO criteria (id, name) VALUES (104, 'BY_RESOURCE_QOS');
INSERT INTO criteria (id, name) VALUES (201, 'BY_METRIC_UUID');
INSERT INTO criteria (id, name) VALUES (202, 'BY_METRIC_NAME');
INSERT INTO criteria (id, name) VALUES (301, 'BY_ALERT_UUID');
INSERT INTO criteria (id, name) VALUES (302, 'BY_ALERT_ACTION_TYPE');
INSERT INTO criteria (id, name) VALUES (303, 'BY_ALERT_ACTION_UUID');
DROP TABLE criteria_parameter;
CREATE TABLE npm_tca_iot.criteria_parameter
(
    criteria int CONSTRAINT criteria_parameter__id NOT NULL,
    name varchar(128) CONSTRAINT criteria_parameter__name NOT NULL
);


ALTER TABLE npm_tca_iot.criteria_parameter ADD CONSTRAINT C_FOREIGN FOREIGN KEY (criteria) references npm_tca_iot.criteria (id);

CREATE PROJECTION npm_tca_iot.criteria_parameter /*+createtype(P)*/ 
(
 criteria ENCODING RLE,
 name
)
AS
 SELECT criteria_parameter.criteria,
        criteria_parameter.name
 FROM npm_tca_iot.criteria_parameter
 ORDER BY criteria_parameter.criteria
UNSEGMENTED ALL NODES;


SELECT MARK_DESIGN_KSAFE(1);
INSERT INTO criteria_parameter (criteria, name) VALUES (100, 'resource->group_id');
INSERT INTO criteria_parameter (criteria, name) VALUES (101, 'resource->identifier');
INSERT INTO criteria_parameter (criteria, name) VALUES (102, 'resource->circuit_id');
INSERT INTO criteria_parameter (criteria, name) VALUES (102, 'resource->bclli');
INSERT INTO criteria_parameter (criteria, name) VALUES (104, 'resource->circuit_id');
INSERT INTO criteria_parameter (criteria, name) VALUES (104, 'resource->qos');
INSERT INTO criteria_parameter (criteria, name) VALUES (201, 'resource->identifier');
INSERT INTO criteria_parameter (criteria, name) VALUES (201, 'metric->identifier');
INSERT INTO criteria_parameter (criteria, name) VALUES (202, 'resource->identifier');
INSERT INTO criteria_parameter (criteria, name) VALUES (202, 'metric->name');
INSERT INTO criteria_parameter (criteria, name) VALUES (301, 'resource->identifier');
INSERT INTO criteria_parameter (criteria, name) VALUES (301, 'alert->identifier');
INSERT INTO criteria_parameter (criteria, name) VALUES (302, 'metric->identifier');
INSERT INTO criteria_parameter (criteria, name) VALUES (302, 'alert->action->type');
INSERT INTO criteria_parameter (criteria, name) VALUES (303, 'alert->action->identifier');
DROP TABLE element;
CREATE TABLE npm_tca_iot.element
(
    id int CONSTRAINT element__id NOT NULL,
    tca_type int CONSTRAINT element__tca_type NOT NULL,
    name varchar(128) CONSTRAINT element__name NOT NULL,
    info varchar(128) CONSTRAINT element__info NOT NULL,
    description varchar(512)
);

ALTER TABLE npm_tca_iot.element ADD CONSTRAINT element__pk PRIMARY KEY (id); 

ALTER TABLE npm_tca_iot.element ADD CONSTRAINT C_FOREIGN FOREIGN KEY (tca_type) references npm_tca_iot.tca_subtype (id);

CREATE PROJECTION npm_tca_iot.element /*+createtype(P)*/ 
(
 id ENCODING RLE,
 tca_type ENCODING RLE,
 name,
 info,
 description
)
AS
 SELECT element.id,
        element.tca_type,
        element.name,
        element.info,
        element.description
 FROM npm_tca_iot.element
 ORDER BY element.id,
          element.tca_type
UNSEGMENTED ALL NODES;


SELECT MARK_DESIGN_KSAFE(1);
INSERT INTO element (id, tca_type, name, info, description) VALUES (501, 2, 'Utilization', '%', 'HighUtilization');
INSERT INTO element (id, tca_type, name, info, description) VALUES (502, 2, 'Latency', '', 'HighCPELatency');
INSERT INTO element (id, tca_type, name, info, description) VALUES (503, 2, 'Jitter', 'ms', 'HighCPEJitter');
INSERT INTO element (id, tca_type, name, info, description) VALUES (504, 2, 'Packet Delivery', '%', 'LowCPEPacketDelivery');
INSERT INTO element (id, tca_type, name, info, description) VALUES (1001, 4, 'DC', 'bps', 'alert driven dynamic capacity bandwidth upgrade. bandwidth upgrade value is in bps');
INSERT INTO element (id, tca_type, name, info, description) VALUES (1003, 4, 'EMAIL', 'some.person@domain.com', 'send email alert to the given email address');
INSERT INTO element (id, tca_type, name, info, description) VALUES (0, 1, '0', '', 'Best Effort/Basic Internet');
INSERT INTO element (id, tca_type, name, info, description) VALUES (1, 1, '1', '', 'Basic/Basic Plus');
INSERT INTO element (id, tca_type, name, info, description) VALUES (2, 1, '2', '', 'Priority/Enhanced');
INSERT INTO element (id, tca_type, name, info, description) VALUES (3, 1, '3', '', 'Mission Critical/Enhanced Plus');
INSERT INTO element (id, tca_type, name, info, description) VALUES (4, 1, '4', '', 'Interactive/Premium');
INSERT INTO element (id, tca_type, name, info, description) VALUES (5, 1, '5', '', 'Real Time/Dedicated/Premium Plus');
INSERT INTO element (id, tca_type, name, info, description) VALUES (-1, 1, '-1', '', 'NA');
DROP TABLE element_subtype;
CREATE TABLE npm_tca_iot.element_subtype
(
    id int CONSTRAINT element_subtype__id NOT NULL,
    tca_subtype int CONSTRAINT element_subtype__tca_subtype NOT NULL,
    name varchar(128) CONSTRAINT element_subtype__name NOT NULL,
    info varchar(128) CONSTRAINT element_subtype__info NOT NULL,
    description varchar(512)
);

ALTER TABLE npm_tca_iot.element_subtype ADD CONSTRAINT element_subtype__pk PRIMARY KEY (id); 
ALTER TABLE npm_tca_iot.element_subtype ADD CONSTRAINT element_subtype__name__unique UNIQUE (name); 

ALTER TABLE npm_tca_iot.element_subtype ADD CONSTRAINT C_FOREIGN FOREIGN KEY (tca_subtype) references npm_tca_iot.tca_subtype (id);

CREATE PROJECTION npm_tca_iot.element_subtype /*+createtype(P)*/ 
(
 id ENCODING RLE,
 tca_subtype ENCODING RLE,
 name,
 info,
 description
)
AS
 SELECT element_subtype.id,
        element_subtype.tca_subtype,
        element_subtype.name,
        element_subtype.info,
        element_subtype.description
 FROM npm_tca_iot.element_subtype
 ORDER BY element_subtype.tca_subtype,
          element_subtype.id
UNSEGMENTED ALL NODES;


SELECT MARK_DESIGN_KSAFE(1);
INSERT INTO element_subtype (id, tca_subtype, name, info, description) VALUES (1, 1, 'Primitive', '', 'metric type with single metric');
INSERT INTO element_subtype (id, tca_subtype, name, info, description) VALUES (501, 2, 'Watch', '', 'alert that just acts for warning level');
INSERT INTO element_subtype (id, tca_subtype, name, info, description) VALUES (502, 2, 'Warning', '', 'alert that just acts for critical alert level');
INSERT INTO element_subtype (id, tca_subtype, name, info, description) VALUES (1001, 3, 'Peak_hrs', '', 'M-F, 7:00am-7:00pm');
INSERT INTO element_subtype (id, tca_subtype, name, info, description) VALUES (1002, 3, 'Off_Peak', '', 'M-F, 7:00pm-7:00am; S-S, all hrs');
INSERT INTO element_subtype (id, tca_subtype, name, info, description) VALUES (1003, 3, 'All', '', 'M-F, S-S, all hrs');
INSERT INTO element_subtype (id, tca_subtype, name, info, description) VALUES (2001, 4, 'AT', 'America/Phoenix', 'US Arizona Time');
INSERT INTO element_subtype (id, tca_subtype, name, info, description) VALUES (2002, 4, 'CT', 'America/Chicago', 'US Central Time');
INSERT INTO element_subtype (id, tca_subtype, name, info, description) VALUES (2003, 4, 'ET', 'America/New_York', 'US Eastern Time');
INSERT INTO element_subtype (id, tca_subtype, name, info, description) VALUES (2004, 4, 'HT', 'Pacific/Honolulu', 'US Hawaiian Time');
INSERT INTO element_subtype (id, tca_subtype, name, info, description) VALUES (2005, 4, 'MT', 'America/Denver', 'US Mountain Time');
INSERT INTO element_subtype (id, tca_subtype, name, info, description) VALUES (2006, 4, 'PT', 'America/Los_Angeles', 'US Pacific Time');
DROP TABLE metric;
CREATE TABLE npm_tca_iot.metric
(
    guid char(36) CONSTRAINT metric__guid NOT NULL,
    metric int CONSTRAINT metric__metric NOT NULL,
    threshold_type int CONSTRAINT metric__threshold_type NOT NULL,
    threshold varchar(128) CONSTRAINT metric__threshold NOT NULL,
    level int CONSTRAINT metric__level NOT NULL
);

ALTER TABLE npm_tca_iot.metric ADD CONSTRAINT metric__pk PRIMARY KEY (guid); 

ALTER TABLE npm_tca_iot.metric ADD CONSTRAINT C_FOREIGN FOREIGN KEY (threshold_type) references npm_tca_iot.threshold_type (id);

CREATE PROJECTION npm_tca_iot.metric /*+createtype(P)*/ 
(
 guid,
 metric ENCODING RLE,
 threshold_type ENCODING RLE,
 threshold,
 level ENCODING RLE
)
AS
 SELECT metric.guid,
        metric.metric,
        metric.threshold_type,
        metric.threshold,
        metric.level
 FROM npm_tca_iot.metric
 ORDER BY metric.guid,
          metric.metric,
          metric.level
UNSEGMENTED ALL NODES;


SELECT MARK_DESIGN_KSAFE(1);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('0332c86b-bacd-464e-8727-6646f83ca3e4', 502, 1, '100X', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('03ac7c56-172c-48e5-8ba7-5df5e5e2e120', 504, 1, '96.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('03ed601e-2808-4b96-ab86-f926d23cb74a', 502, 1, '100X', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('04d1abe6-948e-434d-9391-930e7c966b2d', 503, 1, '6.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('0737d4d1-cc59-4186-a671-160790c1a04b', 503, 1, '4.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('07c41a39-5a63-43a0-8e1f-3028543c7d83', 504, 1, '95.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('09a18dd2-5434-429a-a47e-6ff15bca260c', 502, 1, '200X', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('0df8840b-9727-4e2d-9f74-8ce8a7432825', 503, 1, '7.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('0ea664e8-6950-44ac-b56b-6d7deb1ef143', 501, 1, '95.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('0eb8ee06-ad8a-4a93-8fbb-f3af3c2864f9', 504, 1, '95.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('1282f43a-c12e-4a20-9b93-2f97e0d0e1f0', 501, 1, '99.9', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('1290b82a-d8f0-46f4-8f5c-1d7dc2e59e08', 504, 1, '97.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('16469b2a-2a1e-412f-8203-513b7088de21', 502, 1, '200X', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('180946c3-35eb-4c90-806a-739b3627ab08', 501, 1, '50.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('18e3c5f9-b198-4a63-a401-74c4c66abc1e', 503, 1, '4.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('1b32da11-1fdd-4419-852d-3d1b77779cb9', 502, 1, '30X', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('1b3368ff-8309-4534-9385-b2ce13ab5414', 502, 1, '200X', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('1e14906c-0297-4a37-bd06-a330cc63d93f', 501, 1, '50.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('1e5c00e4-1e9b-4ebc-95e3-ff8c50ba4fed', 503, 1, '5.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('1fa36281-0e37-40e0-beca-5fc24353d728', 501, 1, '95.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('1fb62bd1-bc88-4dc6-a11a-45099d71a1a5', 503, 1, '3.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('1fd49beb-a1e3-4bf1-8ff3-fcf3621b07d4', 502, 1, '200X', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('20acee67-3a1e-4db0-962a-7e62edcb5854', 504, 1, '96.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('20be2cb0-0fd4-4548-8608-b5cc9f80e8ee', 501, 1, '99.9', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('218ed5c6-d4f6-4810-b25e-0d8b33a6970c', 501, 1, '60.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('223edc59-1eed-4727-a2b4-a05f0fa7c081', 502, 1, '100X', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('22a1e6da-3716-44ed-9873-02d41ceaa8ed', 502, 1, '7.5X', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('24632261-6f92-490d-ad24-79591e7d454b', 501, 1, '50.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('27c721b9-61a2-4d88-9557-d7f520c0eb14', 501, 1, '95.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('2de0597c-26c0-4ef5-a719-e85f54770b70', 503, 1, '6.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('2fcd93f4-3cfc-4bd9-96f2-9f62af228beb', 503, 1, '3.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('31bcf249-20d0-44d3-a997-aa972f62c973', 503, 1, '4.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('31d3a2ff-14cd-4155-abc8-708ce4197599', 501, 1, '60.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('31ebc5c4-9c98-475d-abcb-302280433c3e', 503, 1, '3.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('32dbab32-e7f8-4709-a1f7-3ff51094fc55', 502, 1, '200X', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('33739aa4-172b-4d1d-9125-e154c7c227b3', 501, 1, '60.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('33913238-d069-4dd9-837e-cfe2ca70acea', 504, 1, '96.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('357263ad-4d2e-4ba0-84ff-fa9253bc4e43', 502, 1, '200X', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('369fbdee-cebc-4c29-ae86-7f6ef03cdd96', 502, 1, '100X', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('39f00ce0-abab-4bcd-8dea-69fb2ed420c6', 504, 1, '98.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('3a2c6fba-3117-45d2-b2cb-61f70f9cd9f5', 502, 1, '200X', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('3a64d8b0-d8fa-4580-b8cd-367063d71519', 503, 1, '4.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('3aeab440-005a-452a-9ce8-cbbd77b3796e', 503, 1, '6.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('3c352948-c631-4867-bedb-f8af6de3fc7b', 503, 1, '3.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('3e4fdab0-3a5b-441d-a3d8-d07c3d97d43a', 502, 1, '2.5X', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('400c6f27-d4da-42df-bd0a-517867eaf508', 504, 1, '95.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('408fbe77-178a-4776-befc-8b3cbdb90d75', 503, 1, '7.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('40fe8c24-925b-4169-b86f-9503327d078c', 503, 1, '3.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('467fd22f-acd2-4eea-be65-55a8d9ae9a57', 502, 1, '200X', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('46a0ac06-4aff-4247-b45c-686c1370a09a', 501, 1, '60.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('47e82ef2-2447-43f0-a052-02c1e2e62b7e', 501, 1, '80.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('4883b5dd-86d1-4c9b-8c90-51cc14bba9bf', 504, 1, '95.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('49f8c336-f297-49b0-951d-bfff8d9276be', 503, 1, '3.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('4c9b37c7-a20a-45fe-9e14-6465f134f456', 501, 1, '50.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('4d34dbd1-6f2a-401a-9e75-5fd59407ca7e', 503, 1, '6.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('5157721b-0705-41ca-b7ca-84c5125c7692', 504, 1, '98.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('517eeea3-57da-4790-89b1-5e4bc2ff5149', 501, 1, '70.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('54a34b9f-9168-4bb2-a92a-152f8e49b982', 504, 1, '96.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('5713c547-1e2e-4854-8d4a-e240ddb5c7d1', 502, 1, '100X', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('59292fff-da8b-408c-87c5-bae9bfab3e26', 504, 1, '96.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('5959a232-1a90-4615-9255-275ed098dfed', 502, 1, '5X', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('59bb7563-6833-433f-9cf1-5c0e9bec44e6', 504, 1, '96.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('5ad4bc13-bad7-4240-a198-36bee416441c', 503, 1, '4.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('5cf35543-3579-4fdf-a0e4-5daa4e7d00c8', 504, 1, '96.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('5d6e6157-7075-4e90-89d2-fc5876f65be8', 503, 1, '4.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('5fe04124-7a17-44e1-8f62-daa2941afe3f', 504, 1, '96.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('61414281-5c2e-41e8-9804-7467fc6a8151', 503, 1, '7.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('61786861-ff85-48e0-b73a-408b683b2a43', 503, 1, '3.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('62c9055c-0fe2-4469-9b1a-d40eaed73f9f', 503, 1, '3.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('656cf111-f46b-4a85-a32d-a295a62267c5', 504, 1, '95.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('66163e1b-4d40-4bdb-8854-5ea8b585724f', 503, 1, '5.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('6a527314-c4a0-4041-932e-6e188a3dd120', 502, 1, '85X', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('703974de-a735-4928-9aec-c15bde1b8ed1', 504, 1, '95.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('72956cb1-03b2-4d63-b0f2-eba6fb58e090', 503, 1, '6.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('72caaee6-b73e-45e5-af51-b4561b1936bb', 504, 1, '98.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('72dd17fb-de35-4730-a707-96178bf52136', 503, 1, '6.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('74404e7f-3941-43e6-96c2-2e1e70134a8a', 502, 1, '100X', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('751c78bd-0473-43b7-9ee1-3652b3ccc36a', 501, 1, '90.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('7539e76e-b656-4a3f-a3aa-1bd18f0b14c3', 504, 1, '96.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('7a5e3f05-7637-4d0a-b7e4-843b26a73576', 502, 1, '100X', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('7b5b4cd4-8853-4fe2-8ac6-e016a1c2997d', 502, 1, '65X', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('7b767d72-2928-41ae-8e96-2d0f91a14409', 501, 1, '50.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('7b7aa1f9-1cef-4b60-a944-f0266c71bbf7', 502, 1, '100X', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('7bbf84c6-a800-4a5f-9e12-7c132adcf416', 501, 1, '60.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('7c406122-0396-442b-a73c-a0b6204959c6', 504, 1, '96.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('7cf3fbc2-b0a4-4aee-b726-8cea6f1d8e0b', 502, 1, '45X', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('7e54e0ba-4cad-45be-81d1-5cb96e144daa', 504, 1, '96.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('7e5dcab9-18de-49af-a956-17ac499448c3', 503, 1, '3.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('7e757e0a-4f92-44b7-945f-3b4aeafd3455', 504, 1, '96.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('8378f003-b96f-4b16-a7da-6203e08fdb06', 504, 1, '95.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('84f19ebc-f2c9-41c1-b944-ac2af0c76f88', 502, 1, '200X', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('85967329-efc2-4514-ad22-c0951627097d', 502, 1, '1X', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('89966a30-b122-44b5-af57-6ef63357f711', 504, 1, '96.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('8b619214-7ea0-4bc4-b98c-08a1f5a18ee7', 502, 1, '200X', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('8bb0144b-dd58-4283-9194-28b523916050', 504, 1, '95.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('8c71a09a-6b43-4a97-88c1-4ae797e8ff0c', 502, 1, '100X', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('8c7a0595-2d70-4fe8-935b-9810c2a00e12', 502, 1, '30X', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('8d99f7be-e12d-402a-839f-9bbd8c311736', 504, 1, '95.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('8da52c13-39a7-4b40-9d3b-21de52fbf08e', 501, 1, '95.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('8dbd7a42-7d97-4835-83d4-3765d2f216b4', 503, 1, '4.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('9051532c-f513-400a-997d-56e743c37137', 503, 1, '5.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('945ed764-50fa-43ac-b76e-1169550345b2', 502, 1, '20X', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('959749f8-6df1-49c2-80b0-a288ea5c6d7e', 501, 1, '50.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('95d79185-6417-4503-ad8d-51b41e413216', 502, 1, '100X', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('977ca944-b9a9-4c34-ae2a-e82a8bdc0426', 504, 1, '96.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('98607b27-8fa9-43b5-8c7a-60c63159f307', 504, 1, '96.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('994b14f2-eb1d-4678-aecd-1f3525fe0d24', 502, 1, '100X', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('9acb3640-841e-48fd-abdc-a222f1e1ec20', 503, 1, '4.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('9df5adbf-44d6-48aa-9beb-06181e8cc70e', 503, 1, '4.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('a19e42aa-6889-479d-84a8-a61fc9a9a672', 504, 1, '95.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('a26ab6d1-88ae-4f53-a2f0-449943cda67f', 502, 1, '100X', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('a50bc4c5-b66d-4e2d-bfcb-c616e028cde7', 504, 1, '95.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('a5ee8735-89d2-4f93-988e-4f4301a51ed5', 503, 1, '3.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('a674df69-05c0-4911-8085-9dcca447e819', 504, 1, '98.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('a72098f8-76f5-440c-a486-2a4356d1f6ed', 503, 1, '6.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('a7b22238-f00e-49fd-874e-cad6c00b9480', 504, 1, '95.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('ac25e91d-bac4-4e27-96cb-1e9d07d6a7e1', 504, 1, '96.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('ad42b489-cca9-4a28-b217-9d5273493993', 501, 1, '50.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('af3c3e58-8240-45ab-895a-796a6d2743d6', 502, 1, '5X', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('afd7b849-dcb8-4819-90ee-1daf13b7e4ef', 502, 1, '50X', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('b133c2d2-1ea8-4491-b036-8144dbbbeea6', 503, 1, '3.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('b37e917b-92cc-4b02-9c2b-733ddf4ccec2', 502, 1, '100X', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('b471400a-535b-4806-8e6e-da6a3d5349a1', 504, 1, '95.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('b70d7dba-53aa-46c3-94db-ec663e4ec7d4', 501, 1, '99.9', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('b7d560c4-3e27-4bcb-846c-9cde6a6a5434', 503, 1, '6.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('ba29557a-6c69-4346-bc36-57acd1a5df9d', 503, 1, '7.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('ba2dd743-e44f-404a-8e8a-89856c4c61d3', 503, 1, '4.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('ba93e946-a29c-471e-9fe0-be2b3b51758a', 501, 1, '95.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('be0036f8-0046-49c3-8d74-72a5f28448ac', 502, 1, '200X', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('be4cff60-c929-4e76-b696-a94d4c6814c4', 502, 1, '100X', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('bfb58834-bf6a-4755-ba63-2e66f7f64e1a', 504, 1, '95.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('c195711b-7d1c-4b99-84c2-fd79f0412f48', 504, 1, '96.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('c33ba7fb-ea75-4c0e-9005-e7ec6c128310', 503, 1, '4.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('c48ba3a1-3cb6-4f3f-9022-24426e8f7e07', 502, 1, '5X', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('c5b2c597-7b0b-4127-8687-ead1f48b1f38', 503, 1, '9.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('c8642e13-e616-4b46-9a25-715d85c6758d', 502, 1, '200X', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('c9aec4b2-36ac-4e6b-9832-7e98133b2a87', 504, 1, '97.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('ca01404a-f0f1-4152-9296-b6bdca7d0a7a', 504, 1, '96.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('ca73e90e-3ea7-46bd-b4bc-b677a6eaf0de', 502, 1, '50X', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('cb28800a-4263-4768-bb8f-302df2bf6db8', 501, 1, '70.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('cc0e5169-01ac-44c1-95e7-03bad5f2cd54', 503, 1, '5.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('ce921a0b-30d4-496d-a522-ac110e9fee83', 503, 1, '4.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('d26c42af-09f7-4fcd-bbde-e44227fea035', 502, 1, '100X', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('d32393d0-8307-4746-8a0a-75ecf11f9981', 501, 1, '80.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('d3685d5e-a91d-4dfc-bfa5-6453848fa111', 503, 1, '4.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('d3be4a13-4fd5-4660-8a23-432bedfa8b4b', 502, 1, '200X', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('d78b98c9-f0b1-452e-9a23-0c9c9dc776ec', 504, 1, '95.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('d78dec1b-1f90-404a-8a4e-754ca833dda1', 503, 1, '7.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('d7fa1c79-1e30-4d77-8ac2-53bd08db9aea', 503, 1, '4.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('d9fe98c4-2f41-4cc3-b182-bdb4d7deb6c6', 503, 1, '3.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('dab89042-17ed-44e1-a84b-88e0e1bd34a1', 504, 1, '96.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('db0c7222-5ffd-46a8-b01b-299e643eaff6', 503, 1, '5.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('dc652cb5-9135-44a7-8440-61ad0c7e9072', 503, 1, '3.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('dd9a2c6b-08b2-4355-8ad5-218a2a1b8957', 502, 1, '65X', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('ddc9bcfb-60bd-4a20-ae7d-96485fd55f90', 504, 1, '95.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('df329803-4341-4697-a1c3-83dbcdad4e22', 504, 1, '95.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('e2333273-60e9-4097-a08c-34e526f696d7', 501, 1, '50.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('e35a0fcd-4617-47fe-84d0-3c05c04deac0', 503, 1, '4.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('e51ffec9-05e7-4552-ad6b-bd8c32b21df4', 504, 1, '96.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('e7562a71-4214-4852-8eea-afaaaa840d5e', 503, 1, '4.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('eb089ae7-8eed-49ec-af03-242b4c4d8e7c', 504, 1, '95.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('ec00a1c8-b77d-4d61-92e8-736c5f27608c', 503, 1, '3.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('ed14a9a6-eee1-40a1-b1cf-894b238244f7', 503, 1, '3.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('f18dfa40-3298-4b79-ae04-6c673efb964b', 504, 1, '95.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('f19062cb-b365-4cb0-a5c0-ce648a47b4ec', 503, 1, '3.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('f1eece4c-2d29-427f-b302-9a45278eebf8', 501, 1, '60.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('f22ca9e2-4c72-439e-a3df-d1c1d90ab2b1', 501, 1, '95.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('f4002ec1-6b16-463b-93bd-becae3747cfe', 502, 1, '10X', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('f4f9959e-4af6-45ba-a968-7b03660fe36c', 502, 1, '200X', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('f510c115-3f2b-4ee7-a1b5-2ca06c0dafba', 503, 1, '3.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('f5dc2bb8-9425-4df3-bda4-d07ade5c8f37', 502, 1, '200X', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('f6185027-09b0-44d5-820a-f2b4c7c10e55', 503, 1, '4.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('f699facf-84a1-4be9-b386-73d782304195', 502, 1, '45X', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('f70f07e8-4ab9-42d7-95e3-f451f359ee1e', 502, 1, '100X', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('fa3e5318-36fb-47bd-9a02-df20577f3bf1', 502, 1, '5X', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('fb3312ba-06b1-40f1-aa71-bff44b018b78', 502, 1, '200X', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('fd0f94df-20ac-483f-8d06-36877428e83f', 503, 1, '4.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('fe3aa58d-640b-4d57-b503-af99e830c45e', 504, 1, '96.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('fe3c17d4-3c52-486d-be8e-b65b5bc4a55f', 501, 1, '80.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('a11020b4-08d4-4b72-86b3-0d9619127167', 501, 1, '90.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('edad9465-4371-488c-a218-e26feac698fd', 501, 1, '60.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('ac61de9d-19f1-4fa1-af60-0f62bc9515b5', 501, 1, '60.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('fcd4c6ba-1bde-4987-ad51-a7394572117f', 501, 1, '60.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('b9f57499-79a2-49fb-9c1c-4eb7ff7398fa', 501, 1, '60.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('edcc6b8b-b7c0-41e8-b9d0-9e7804b17685', 501, 1, '95.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('b1e5d219-1368-4447-b9f5-14f8c0bf401a', 501, 1, '80.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('8aa9bbd5-36da-4aa1-8d65-345ef92913fb', 501, 1, '60.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('2f1f80b1-fee4-40ce-ae6f-60aab092746a', 501, 1, '99.9', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('abda30fe-8d24-4977-b856-b5c7de0d3823', 502, 1, '5X', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('0e250664-a399-4279-82b9-c6841310d9dd', 504, 1, '99.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('27e2eb08-8b78-401a-bd21-cfab767a7011', 504, 1, '96.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('5e32b9f6-4bf3-4b98-af97-dfa467a99042', 504, 1, '96.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('5fa675e4-ae22-451c-b0b4-1ed848d1ad54', 504, 1, '96.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('790d4869-7bee-42b3-ba48-c4d329dd8794', 504, 1, '96.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('0d15a719-cae4-4c28-979e-7a7b04e26dd7', 504, 1, '96.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('1ce6779c-5006-4640-b043-4b81e435d34e', 503, 1, '5.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('328029ce-71e1-438a-a10c-8c2857789216', 502, 1, '50X', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('5c9da90d-c3aa-4cdf-ac46-4429b8d0caf4', 504, 1, '97.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('604fad05-f338-436f-8156-5d785be976e2', 502, 1, '50X', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('6a66aed0-197c-47b4-8f36-a6ea649c63c7', 503, 1, '4.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('93ecacff-9714-43ba-9883-67850aaaa1c7', 504, 1, '97.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('9653e96c-9755-4c75-bb9e-ddbd36f9d42a', 504, 1, '97.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('c6582617-961c-45f0-bcdf-deecabf715e6', 502, 1, '65X', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('e14ced60-088f-4ef3-9977-770627d5a4cc', 502, 1, '50X', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('e1517dbe-d914-4423-9e21-4550e9263609', 503, 1, '3.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('e190b97b-defc-41d4-8193-04f805a953ef', 503, 1, '3.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('e202481c-eff6-4d27-be87-57b33235ea2d', 504, 1, '97.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('f60bb8a1-2b39-4d02-a0e7-5d3e5e61d128', 503, 1, '5.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('fa080e3b-0eae-4316-b72f-4330b42790e8', 502, 1, '100X', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('6cc32181-3d26-4ff1-9336-4a4e339e1b02', 501, 1, '90.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('383138c9-b74a-43f0-86d4-80000a3807f9', 501, 1, '90.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('f1d28a2f-5be5-42ba-8cdb-983fb8eb7bee', 501, 1, '90.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('0e07b585-08b5-4894-9c52-82157db4937f', 501, 1, '50.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('e7a6e741-11a7-4229-92cb-22ab13a33491', 501, 1, '50.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('393ea1c4-c88b-41cd-86d3-f3ef366b6a21', 501, 1, '90.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('fa28da53-f847-4c7c-8337-3b09f9b9b96d', 501, 1, '50.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('b02280c6-669b-460c-aa97-547a2209c202', 501, 1, '50.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('42f3d5f4-16b1-43ae-98e7-d6fac42f6b2a', 501, 1, '50.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('0becc6e9-9442-4ba7-81b4-6335a586b0ec', 501, 1, '60.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('d500dc34-7466-406d-8110-69496581ece9', 501, 1, '80.0', 502);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('b8f06941-3e97-480e-b8ae-54496db5b4af', 501, 1, '70.0', 501);
INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ('71184118-137d-450d-8a9b-b8ca6453be6e', 501, 1, '50.0', 501);
DROP TABLE metric_threshold;
CREATE TABLE npm_tca_iot.metric_threshold
(
    element int CONSTRAINT metric_threshold__element NOT NULL,
    element_subtype int CONSTRAINT metric_threshold__element_subtype NOT NULL,
    threshold_type int CONSTRAINT metric_threshold__threshold_type NOT NULL,
    threshold varchar(128) CONSTRAINT metric_threshold__threshold NOT NULL
);

ALTER TABLE npm_tca_iot.metric_threshold ADD CONSTRAINT metric_threshold__pk PRIMARY KEY (element, element_subtype, threshold_type); 

ALTER TABLE npm_tca_iot.metric_threshold ADD CONSTRAINT C_FOREIGN FOREIGN KEY (element) references npm_tca_iot.element (id);
ALTER TABLE npm_tca_iot.metric_threshold ADD CONSTRAINT C_FOREIGN_1 FOREIGN KEY (element_subtype) references npm_tca_iot.element_subtype (id);
ALTER TABLE npm_tca_iot.metric_threshold ADD CONSTRAINT C_FOREIGN_2 FOREIGN KEY (threshold_type) references npm_tca_iot.threshold_type (id);

CREATE PROJECTION npm_tca_iot.metric_threshold /*+createtype(P)*/ 
(
 element ENCODING RLE,
 element_subtype ENCODING RLE,
 threshold_type ENCODING RLE,
 threshold
)
AS
 SELECT metric_threshold.element,
        metric_threshold.element_subtype,
        metric_threshold.threshold_type,
        metric_threshold.threshold
 FROM npm_tca_iot.metric_threshold
 ORDER BY metric_threshold.element,
          metric_threshold.element_subtype,
          metric_threshold.threshold_type
UNSEGMENTED ALL NODES;


SELECT MARK_DESIGN_KSAFE(1);
INSERT INTO metric_threshold (element, element_subtype, threshold_type, threshold) VALUES (501, 1, 1, '50.0');
INSERT INTO metric_threshold (element, element_subtype, threshold_type, threshold) VALUES (501, 1, 1, '60.0');
INSERT INTO metric_threshold (element, element_subtype, threshold_type, threshold) VALUES (501, 1, 1, '70.0');
INSERT INTO metric_threshold (element, element_subtype, threshold_type, threshold) VALUES (501, 1, 1, '80.0');
INSERT INTO metric_threshold (element, element_subtype, threshold_type, threshold) VALUES (501, 1, 1, '90.0');
INSERT INTO metric_threshold (element, element_subtype, threshold_type, threshold) VALUES (501, 1, 1, '95.0');
INSERT INTO metric_threshold (element, element_subtype, threshold_type, threshold) VALUES (503, 1, 1, '3.0');
INSERT INTO metric_threshold (element, element_subtype, threshold_type, threshold) VALUES (503, 1, 1, '4.0');
INSERT INTO metric_threshold (element, element_subtype, threshold_type, threshold) VALUES (503, 1, 1, '5.0');
INSERT INTO metric_threshold (element, element_subtype, threshold_type, threshold) VALUES (503, 1, 1, '6.0');
INSERT INTO metric_threshold (element, element_subtype, threshold_type, threshold) VALUES (503, 1, 1, '7.0');
INSERT INTO metric_threshold (element, element_subtype, threshold_type, threshold) VALUES (503, 1, 1, '8.0');
INSERT INTO metric_threshold (element, element_subtype, threshold_type, threshold) VALUES (503, 1, 1, '9.0');
INSERT INTO metric_threshold (element, element_subtype, threshold_type, threshold) VALUES (503, 1, 1, '10.0');
INSERT INTO metric_threshold (element, element_subtype, threshold_type, threshold) VALUES (504, 1, 1, '95.0');
INSERT INTO metric_threshold (element, element_subtype, threshold_type, threshold) VALUES (504, 1, 1, '96.0');
INSERT INTO metric_threshold (element, element_subtype, threshold_type, threshold) VALUES (504, 1, 1, '97.0');
INSERT INTO metric_threshold (element, element_subtype, threshold_type, threshold) VALUES (504, 1, 1, '98.0');
INSERT INTO metric_threshold (element, element_subtype, threshold_type, threshold) VALUES (504, 1, 1, '99.0');
INSERT INTO metric_threshold (element, element_subtype, threshold_type, threshold) VALUES (504, 1, 1, '99.5');
INSERT INTO metric_threshold (element, element_subtype, threshold_type, threshold) VALUES (504, 1, 1, '99.75');
INSERT INTO metric_threshold (element, element_subtype, threshold_type, threshold) VALUES (504, 1, 1, '99.9');
INSERT INTO metric_threshold (element, element_subtype, threshold_type, threshold) VALUES (504, 1, 1, '99.95');
INSERT INTO metric_threshold (element, element_subtype, threshold_type, threshold) VALUES (502, 1, 1, '1x');
INSERT INTO metric_threshold (element, element_subtype, threshold_type, threshold) VALUES (502, 1, 1, '2.5x');
INSERT INTO metric_threshold (element, element_subtype, threshold_type, threshold) VALUES (502, 1, 1, '5x');
INSERT INTO metric_threshold (element, element_subtype, threshold_type, threshold) VALUES (502, 1, 1, '7.5x');
INSERT INTO metric_threshold (element, element_subtype, threshold_type, threshold) VALUES (502, 1, 1, '10x');
INSERT INTO metric_threshold (element, element_subtype, threshold_type, threshold) VALUES (502, 1, 1, '20x');
INSERT INTO metric_threshold (element, element_subtype, threshold_type, threshold) VALUES (502, 1, 1, '30x');
INSERT INTO metric_threshold (element, element_subtype, threshold_type, threshold) VALUES (502, 1, 1, '45x');
INSERT INTO metric_threshold (element, element_subtype, threshold_type, threshold) VALUES (502, 1, 1, '50x');
INSERT INTO metric_threshold (element, element_subtype, threshold_type, threshold) VALUES (502, 1, 1, '65x');
INSERT INTO metric_threshold (element, element_subtype, threshold_type, threshold) VALUES (502, 1, 1, '85x');
INSERT INTO metric_threshold (element, element_subtype, threshold_type, threshold) VALUES (502, 1, 1, '100x');
INSERT INTO metric_threshold (element, element_subtype, threshold_type, threshold) VALUES (502, 1, 1, '200x');
DROP TABLE resource;
CREATE TABLE npm_tca_iot.resource
(
    guid char(36) CONSTRAINT resource__guid NOT NULL,
    circuit varchar(256) CONSTRAINT resource__circuit NOT NULL,
    virtual_circuit varchar(256) CONSTRAINT resource__virtual_circuit NOT NULL,
    bclli varchar(16),
    rgroup varchar(256)
);

ALTER TABLE npm_tca_iot.resource ADD CONSTRAINT resource__pk PRIMARY KEY (guid); 
ALTER TABLE npm_tca_iot.resource ADD CONSTRAINT resource_unique UNIQUE (circuit, bclli); 


CREATE PROJECTION npm_tca_iot.resource /*+createtype(P)*/ 
(
 guid,
 circuit,
 virtual_circuit,
 bclli,
 rgroup
)
AS
 SELECT resource.guid,
        resource.circuit,
        resource.virtual_circuit,
        resource.bclli,
        resource.rgroup
 FROM npm_tca_iot.resource
 ORDER BY resource.circuit,
          resource.bclli
UNSEGMENTED ALL NODES;


SELECT MARK_DESIGN_KSAFE(1);
INSERT INTO resource (guid, circuit, virtual_circuit, bclli, rgroup) VALUES ('8a031ec8-960e-4283-9e91-1e2947ab3d41', '40/KEFN/109886/TWCS', '', 'DNVRCO26', '');
INSERT INTO resource (guid, circuit, virtual_circuit, bclli, rgroup) VALUES ('2d2a4770-37d8-4bb3-864f-ba7866b5db05', '44/KFFN/124278/TWCS', '', 'FRBRTXJG', '');
INSERT INTO resource (guid, circuit, virtual_circuit, bclli, rgroup) VALUES ('32d560fc-6ea2-404f-905d-e53700e5557c', '46/KFFN/106699/DEMO', 'VLXX/140162/DEMO', 'IRVECAJT', '');
INSERT INTO resource (guid, circuit, virtual_circuit, bclli, rgroup) VALUES ('1d07a5b4-8ec9-47f3-adbc-a3687ae67105', '44/KEFN/124848/DEMO', '', 'DLLFTXFQ', '');
INSERT INTO resource (guid, circuit, virtual_circuit, bclli, rgroup) VALUES ('c6f1a77d-4a57-4abc-8c04-01a0e9fa1e5f', '65/KFFN/654321/DEMO', 'VLXX/654321/DEMO', 'bclli1', '');
INSERT INTO resource (guid, circuit, virtual_circuit, bclli, rgroup) VALUES ('f9a4c9d1-2a5a-4ec2-a90c-f3d4dab8b863', '40/KFFN/106140/DEMO', 'VLXX/109482/DEMO', 'AURSCOFW', '');
INSERT INTO resource (guid, circuit, virtual_circuit, bclli, rgroup) VALUES ('7a615287-8b49-4bc6-893f-4726a8174fcc', '40/KFFN/107436/TWCS', 'VLXX/142662/TWCS', 'DNVRCO26', '');
INSERT INTO resource (guid, circuit, virtual_circuit, bclli, rgroup) VALUES ('b62b2c33-c845-44d1-a865-1bfef66f7d33', '63/KFFN/105395/TWCS', 'VLXX/146162/TWCS', 'SNJUCACL', '');
INSERT INTO resource (guid, circuit, virtual_circuit, bclli, rgroup) VALUES ('0396702b-0bfd-4edf-b6f0-ba10f25f3ed9', '44/KFFN/115624/TWCS', 'VLXX/109482/DEMO', 'DLLFTXFQ', '');
INSERT INTO resource (guid, circuit, virtual_circuit, bclli, rgroup) VALUES ('687a014f-ae81-4e92-ae32-480b0b44ac65', '4T/KEFN/002007/TWCS', '
            
        ', 'LENXKSAC', '');
INSERT INTO resource (guid, circuit, virtual_circuit, bclli, rgroup) VALUES ('7aac8a26-926b-4520-a993-e1e65e477918', '4T/KEFN/002119/TWCS', '
            
        ', 'LENYKSRC', '');
INSERT INTO resource (guid, circuit, virtual_circuit, bclli, rgroup) VALUES ('a58d5e78-cb5c-4ad0-ab38-bfb015987b59', '48/KEFN/107049/TWCS', '', 'MNNTMNIC', '');
INSERT INTO resource (guid, circuit, virtual_circuit, bclli, rgroup) VALUES ('9f3fbec7-29c9-4bf0-951d-dc5a92ab247e', '99/YHXX/100673/TWCS', '', 'MNTR3903', '');
INSERT INTO resource (guid, circuit, virtual_circuit, bclli, rgroup) VALUES ('3d912648-9da6-40ed-aa4c-8682a3f06609', '13/KEFN/110424/DEMO', '', 'CLMCOHIB', '');
INSERT INTO resource (guid, circuit, virtual_circuit, bclli, rgroup) VALUES ('519430d0-5c9b-4628-a09d-6f75b2a160e1', '40/KFFN/107674/TWCS', '', 'WMNS080F', '');
INSERT INTO resource (guid, circuit, virtual_circuit, bclli, rgroup) VALUES ('493b7321-789e-448e-a126-7a5ec857d3e5', '40/KEFN/110228/TWCS', '', 'WMNS080F', '');
INSERT INTO resource (guid, circuit, virtual_circuit, bclli, rgroup) VALUES ('4dfe429a-6b51-4a21-a355-67fe47171c34', '40/KEFN/110595/TWCS', '', 'AURSCOFW', '');
INSERT INTO resource (guid, circuit, virtual_circuit, bclli, rgroup) VALUES ('33590e16-a900-455c-8842-c0473abd80f3', '58/HCFS/107357/TWCS', '', 'AMRL480D', '');
INSERT INTO resource (guid, circuit, virtual_circuit, bclli, rgroup) VALUES ('c776e85f-51fc-438f-905e-4a08bee2ad74', '17/KEFN/106690/TWCS', '', 'MLBYOHAH', '');
INSERT INTO resource (guid, circuit, virtual_circuit, bclli, rgroup) VALUES ('14c53326-ffaf-4efa-862d-b5fb56d9f2a3', '4Y/HCFS/000087/TWCS', '', 'STBR1309', '');
INSERT INTO resource (guid, circuit, virtual_circuit, bclli, rgroup) VALUES ('0824f6fe-2c41-45d1-83fa-ca939167bb66', '13/KFFN/108377/TWCS', '', 'WEVLOHEU', '');
INSERT INTO resource (guid, circuit, virtual_circuit, bclli, rgroup) VALUES ('0d2eb4cb-4976-4db2-a0a6-add9cb7042ab', '39/HCFS/112073/TWCS', '', 'CHTG470H', '');
INSERT INTO resource (guid, circuit, virtual_circuit, bclli, rgroup) VALUES ('8b87b038-471e-4a0f-bea6-b9a79f9eef36', '16/HCFS/115360/TWCS', '', 'CHRXNCQZ', '');
INSERT INTO resource (guid, circuit, virtual_circuit, bclli, rgroup) VALUES ('ff4d0ab4-b1c6-46c1-8a4f-4dad1685a408', '10/KFFN/104604/DEMO', 'VLXX/140142/DEMO', 'GNBPNCDN', '');
INSERT INTO resource (guid, circuit, virtual_circuit, bclli, rgroup) VALUES ('e20eb299-b6d4-46f6-ab87-f066cdd41681', '40/KEFN/110127/DEMO', '', 'AURSCOFW', '');
INSERT INTO resource (guid, circuit, virtual_circuit, bclli, rgroup) VALUES ('221978e5-e2cb-42a9-a1c4-76d447acf66d', '01/KFFN/123456/DEMO', 'VLXX/654321/DEMO', 'silly', '');
INSERT INTO resource (guid, circuit, virtual_circuit, bclli, rgroup) VALUES ('84a0d8e1-9b83-48c1-a381-4dfe14c04755', '39/HCFS/112073/TWCS01/HCFS/100920/DEMO', '', '', '');
INSERT INTO resource (guid, circuit, virtual_circuit, bclli, rgroup) VALUES ('6fa42b1e-6549-4d95-8b57-b525c4c0f701', '25/KFFN/000000/DEMO', '', '', '');
INSERT INTO resource (guid, circuit, virtual_circuit, bclli, rgroup) VALUES ('1e9555ab-52a0-4099-a1a9-4e488bf7284b', '25/KFFN/000001/DEMO', '', '', '');
INSERT INTO resource (guid, circuit, virtual_circuit, bclli, rgroup) VALUES ('9a627fcc-b60b-4a37-8211-2f1a2191648f', '25/KFFN/000002/DEMO', '', '', '');
INSERT INTO resource (guid, circuit, virtual_circuit, bclli, rgroup) VALUES ('c23c7d16-3b3f-4f20-a246-2c2247649c1d', '25/KFFN/000003/DEMO', '', '', '');
INSERT INTO resource (guid, circuit, virtual_circuit, bclli, rgroup) VALUES ('e1826a73-2131-4c51-a06c-f0e93e867a52', '25/KFFN/000004/DEMO', '', '', '');
DROP TABLE tca_instance;
CREATE TABLE npm_tca_iot.tca_instance
(
    guid char(36) CONSTRAINT tca_instance__guid NOT NULL,
    resource char(36) CONSTRAINT tca_instance__resource NOT NULL,
    metric char(36) CONSTRAINT tca_instance__metric NOT NULL,
    qos int CONSTRAINT tca_instance__qos NOT NULL,
    owner varchar(256) CONSTRAINT tca_instance__owner NOT NULL,
    created_on int CONSTRAINT tca_instance__created_on NOT NULL,
    modified_by varchar(256) CONSTRAINT tca_instance__modified_by NOT NULL,
    modified_on int CONSTRAINT tca_instance__modified_on NOT NULL
);

ALTER TABLE npm_tca_iot.tca_instance ADD CONSTRAINT tca_instance__pk PRIMARY KEY (guid); 
ALTER TABLE npm_tca_iot.tca_instance ADD CONSTRAINT tca_instance__unique UNIQUE (resource, metric, qos); 

ALTER TABLE npm_tca_iot.tca_instance ADD CONSTRAINT C_FOREIGN FOREIGN KEY (resource) references npm_tca_iot.resource (guid);
ALTER TABLE npm_tca_iot.tca_instance ADD CONSTRAINT C_FOREIGN_1 FOREIGN KEY (metric) references npm_tca_iot.metric (guid);

CREATE PROJECTION npm_tca_iot.tca_instance /*+createtype(P)*/ 
(
 guid,
 resource,
 metric,
 qos ENCODING RLE,
 owner,
 created_on,
 modified_by,
 modified_on
)
AS
 SELECT tca_instance.guid,
        tca_instance.resource,
        tca_instance.metric,
        tca_instance.qos,
        tca_instance.owner,
        tca_instance.created_on,
        tca_instance.modified_by,
        tca_instance.modified_on
 FROM npm_tca_iot.tca_instance
 ORDER BY tca_instance.guid,
          tca_instance.resource,
          tca_instance.metric,
          tca_instance.qos
UNSEGMENTED ALL NODES;


SELECT MARK_DESIGN_KSAFE(1);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('00584d42-9b81-4a3f-8747-fceec218e5d1', '4dfe429a-6b51-4a21-a355-67fe47171c34', 'be0036f8-0046-49c3-8d74-72a5f28448ac', 1, 'sptest@test.com', 1452717672, 'sptest@test.com', 1452717672);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('0373ba20-436f-416a-84f0-e48000b37e96', '4dfe429a-6b51-4a21-a355-67fe47171c34', 'd26c42af-09f7-4fcd-bbde-e44227fea035', 5, 'sptest@test.com', 1452717672, 'sptest@test.com', 1452717672);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('0391ab4e-e276-41c8-a57b-f055be960ea5', '32d560fc-6ea2-404f-905d-e53700e5557c', '59292fff-da8b-408c-87c5-bae9bfab3e26', 1, 'tca@test.com', 1452283560, 'tca@test.com', 1452283560);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('044cce15-6591-4af7-becf-6c9db5ed75bd', 'a58d5e78-cb5c-4ad0-ab38-bfb015987b59', 'ca73e90e-3ea7-46bd-b4bc-b677a6eaf0de', 3, 'sptest@test.com', 1452784809, 'sptest@test.com', 1452784809);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('05b7bec2-27f3-4776-8f2c-685f83639e39', '14c53326-ffaf-4efa-862d-b5fb56d9f2a3', '5fe04124-7a17-44e1-8f62-daa2941afe3f', 5, 'ipvpn2@twtelecom.com', 1452720659, 'ipvpn2@twtelecom.com', 1452720659);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('064dfc54-d9ab-455d-ab24-28ed6b37531e', '7aac8a26-926b-4520-a993-e1e65e477918', '72caaee6-b73e-45e5-af51-b4561b1936bb', 3, 'sptest@test.com', 1452541847, 'sptest@test.com', 1452541847);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('069d2a33-1da8-4e13-8cef-143fec0ecbcc', '0d2eb4cb-4976-4db2-a0a6-add9cb7042ab', '20acee67-3a1e-4db0-962a-7e62edcb5854', 3, 'ipvpn2@twtelecom.com', 1452721274, 'ipvpn2@twtelecom.com', 1452721274);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('06f526d6-e6a8-4951-aab2-d1c4f5980b61', '7aac8a26-926b-4520-a993-e1e65e477918', 'dd9a2c6b-08b2-4355-8ad5-218a2a1b8957', 3, 'sptest@test.com', 1452541847, 'sptest@test.com', 1452541847);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('070fa7cb-2ee8-4112-8894-8831d04484bc', 'b62b2c33-c845-44d1-a865-1bfef66f7d33', 'ba93e946-a29c-471e-9fe0-be2b3b51758a', -1, '311536@test.com', 1452292350, '311536@test.com', 1452292350);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('08f97554-e7ec-4c5b-aea3-2c36b03a91dd', '0d2eb4cb-4976-4db2-a0a6-add9cb7042ab', '7b7aa1f9-1cef-4b60-a944-f0266c71bbf7', 5, 'ipvpn2@twtelecom.com', 1452721274, 'ipvpn2@twtelecom.com', 1452721274);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('0ccc22a3-f65c-4f35-972d-ca4b453acdd9', '8b87b038-471e-4a0f-bea6-b9a79f9eef36', '7e5dcab9-18de-49af-a956-17ac499448c3', 2, 'ipvpn2@twtelecom.com', 1452788882, 'ipvpn2@twtelecom.com', 1452788882);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('1121d02f-e025-4152-9522-ce05e58197ff', '0d2eb4cb-4976-4db2-a0a6-add9cb7042ab', '32dbab32-e7f8-4709-a1f7-3ff51094fc55', 4, 'ipvpn2@twtelecom.com', 1452721274, 'ipvpn2@twtelecom.com', 1452721274);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('1159ea5b-825e-4cc9-bb56-11ce3f007cb0', '0d2eb4cb-4976-4db2-a0a6-add9cb7042ab', '09a18dd2-5434-429a-a47e-6ff15bca260c', 2, 'ipvpn2@twtelecom.com', 1452721274, 'ipvpn2@twtelecom.com', 1452721274);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('14662da2-29ef-45ae-89ba-bc4fa44ed959', 'a58d5e78-cb5c-4ad0-ab38-bfb015987b59', '7b5b4cd4-8853-4fe2-8ac6-e016a1c2997d', 1, 'sptest@test.com', 1452784809, 'sptest@test.com', 1452784809);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('15d1aa8a-f2bb-4e74-afdc-665e539f0001', '0396702b-0bfd-4edf-b6f0-ba10f25f3ed9', '180946c3-35eb-4c90-806a-739b3627ab08', -1, 'sptest@test.com', 1452529841, 'sptest@test.com', 1452529841);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('168332e9-b824-45d2-838a-b6c5907e082f', '3d912648-9da6-40ed-aa4c-8682a3f06609', 'b7d560c4-3e27-4bcb-846c-9cde6a6a5434', 4, 'sptest@test.com', 1452548556, 'sptest@test.com', 1452548556);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('184587c1-8cda-48a2-a3e7-2f92f543874b', '7aac8a26-926b-4520-a993-e1e65e477918', '1b32da11-1fdd-4419-852d-3d1b77779cb9', 4, 'sptest@test.com', 1452541847, 'sptest@test.com', 1452541847);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('18c8be4e-5670-4730-a752-7df676379d71', '7aac8a26-926b-4520-a993-e1e65e477918', 'ac25e91d-bac4-4e27-96cb-1e9d07d6a7e1', 0, 'sptest@test.com', 1452541847, 'sptest@test.com', 1452541847);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('192f470d-0f42-4287-80a8-d5123e074523', '9f3fbec7-29c9-4bf0-951d-dc5a92ab247e', '66163e1b-4d40-4bdb-8854-5ea8b585724f', 2, 'sptest@test.com', 1452548394, 'sptest@test.com', 1452548394);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('1c25febb-723c-4d08-9c0d-2bc605e71af9', '14c53326-ffaf-4efa-862d-b5fb56d9f2a3', '1fb62bd1-bc88-4dc6-a11a-45099d71a1a5', 1, 'ipvpn2@twtelecom.com', 1452720370, 'ipvpn2@twtelecom.com', 1452720370);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('1ca654c1-7b84-4d1d-913f-4f77d18094a2', '4dfe429a-6b51-4a21-a355-67fe47171c34', 'f4f9959e-4af6-45ba-a968-7b03660fe36c', 2, 'sptest@test.com', 1452717672, 'sptest@test.com', 1452717672);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('1cf3927d-35e3-42cb-9c7d-0174f200c680', '8b87b038-471e-4a0f-bea6-b9a79f9eef36', '95d79185-6417-4503-ad8d-51b41e413216', 1, 'ipvpn2@twtelecom.com', 1452788882, 'ipvpn2@twtelecom.com', 1452788882);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('1f8ab351-4e53-4e24-96e5-868cf421e322', '4dfe429a-6b51-4a21-a355-67fe47171c34', '0332c86b-bacd-464e-8727-6646f83ca3e4', 3, 'sptest@test.com', 1452717672, 'sptest@test.com', 1452717672);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('1fec4230-3885-4713-8c59-11c3967e4401', '8b87b038-471e-4a0f-bea6-b9a79f9eef36', '40fe8c24-925b-4169-b86f-9503327d078c', 1, 'ipvpn2@twtelecom.com', 1452788882, 'ipvpn2@twtelecom.com', 1452788882);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('2186a9da-1826-4916-a1bc-46a17aa02abc', '8a031ec8-960e-4283-9e91-1e2947ab3d41', '27c721b9-61a2-4d88-9557-d7f520c0eb14', -1, 'tca@test.com', 1452790356, 'tca@test.com', 1452790356);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('2497e007-393f-49c2-92ac-6d9f2028ea6b', '8b87b038-471e-4a0f-bea6-b9a79f9eef36', '61786861-ff85-48e0-b73a-408b683b2a43', 4, 'ipvpn2@twtelecom.com', 1452788882, 'ipvpn2@twtelecom.com', 1452788882);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('27576e5f-5805-4724-88b6-8bfe0031c22e', '7aac8a26-926b-4520-a993-e1e65e477918', 'dc652cb5-9135-44a7-8440-61ad0c7e9072', 0, 'sptest@test.com', 1452541847, 'sptest@test.com', 1452541847);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('28f71293-5e46-4b5e-b78f-7dfc6e3fcc3b', '32d560fc-6ea2-404f-905d-e53700e5557c', 'fe3c17d4-3c52-486d-be8e-b65b5bc4a55f', -1, 'tca@test.com', 1452283560, 'tca@test.com', 1452283560);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('2b0bc392-6bf0-4ebf-9161-aab25792a276', '4dfe429a-6b51-4a21-a355-67fe47171c34', 'f70f07e8-4ab9-42d7-95e3-f451f359ee1e', 1, 'sptest@test.com', 1452717672, 'sptest@test.com', 1452717672);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('2e6e9cb7-dd12-46c1-9de3-df303d7bd975', '14c53326-ffaf-4efa-862d-b5fb56d9f2a3', '357263ad-4d2e-4ba0-84ff-fa9253bc4e43', 1, 'ipvpn2@twtelecom.com', 1452719662, 'ipvpn2@twtelecom.com', 1452719662);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('2ec2699f-502f-4dfb-89c3-f9ed0b91cdc5', 'c6f1a77d-4a57-4abc-8c04-01a0e9fa1e5f', '20be2cb0-0fd4-4548-8608-b5cc9f80e8ee', -1, 'user@level3.com', 1452285534, 'user@level3.com', 1452285534);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('2ec67e3d-ae53-471d-9f32-af3c2c3e3551', '14c53326-ffaf-4efa-862d-b5fb56d9f2a3', 'a5ee8735-89d2-4f93-988e-4f4301a51ed5', 5, 'ipvpn2@twtelecom.com', 1452720370, 'ipvpn2@twtelecom.com', 1452720370);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('2f0de4f4-ffe6-43de-a266-1e704ade3438', '8b87b038-471e-4a0f-bea6-b9a79f9eef36', 'f19062cb-b365-4cb0-a5c0-ce648a47b4ec', 3, 'ipvpn2@twtelecom.com', 1452788882, 'ipvpn2@twtelecom.com', 1452788882);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('30715bf7-bcdb-49d5-8f68-9f91429e9302', '3d912648-9da6-40ed-aa4c-8682a3f06609', 'ba2dd743-e44f-404a-8e8a-89856c4c61d3', 1, 'sptest@test.com', 1452548556, 'sptest@test.com', 1452548556);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('313bc8b5-b976-4cc0-99cd-f5f551f4136e', '0d2eb4cb-4976-4db2-a0a6-add9cb7042ab', 'fb3312ba-06b1-40f1-aa71-bff44b018b78', 5, 'ipvpn2@twtelecom.com', 1452721274, 'ipvpn2@twtelecom.com', 1452721274);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('316aec93-33c6-42f8-8fff-a6643b11f4fa', '4dfe429a-6b51-4a21-a355-67fe47171c34', '5157721b-0705-41ca-b7ca-84c5125c7692', 5, 'sptest@test.com', 1452783487, 'sptest@test.com', 1452783487);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('32cbc2c5-5ba3-4653-945d-82db70b567b1', '519430d0-5c9b-4628-a09d-6f75b2a160e1', '5713c547-1e2e-4854-8d4a-e240ddb5c7d1', 0, 'ipvpn2@twtelecom.com', 1452788625, 'ipvpn2@twtelecom.com', 1452788625);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('33214f4e-c3f4-4a93-921c-c190be63252b', '0d2eb4cb-4976-4db2-a0a6-add9cb7042ab', '8d99f7be-e12d-402a-839f-9bbd8c311736', 1, 'ipvpn2@twtelecom.com', 1452721274, 'ipvpn2@twtelecom.com', 1452721274);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('34354562-218c-4005-868f-1f9d50ffcca9', '8b87b038-471e-4a0f-bea6-b9a79f9eef36', 'd3685d5e-a91d-4dfc-bfa5-6453848fa111', 3, 'ipvpn2@twtelecom.com', 1452788882, 'ipvpn2@twtelecom.com', 1452788882);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('34e50220-a56a-4a29-b6fb-7b5944cc7d1e', '8b87b038-471e-4a0f-bea6-b9a79f9eef36', '9acb3640-841e-48fd-abdc-a222f1e1ec20', 4, 'ipvpn2@twtelecom.com', 1452788882, 'ipvpn2@twtelecom.com', 1452788882);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('35ffb920-ede7-46d6-b7fa-622e30be459a', '1d07a5b4-8ec9-47f3-adbc-a3687ae67105', 'cc0e5169-01ac-44c1-95e7-03bad5f2cd54', 1, 'tca@test.com', 1452283914, 'tca@test.com', 1452283914);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('3be1f658-718e-40cd-b475-a2cd76639d55', '8b87b038-471e-4a0f-bea6-b9a79f9eef36', '7bbf84c6-a800-4a5f-9e12-7c132adcf416', -1, 'ipvpn2@twtelecom.com', 1452788882, 'ipvpn2@twtelecom.com', 1452788882);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('3c5e75c5-9341-4d4d-8d92-ed97150adb98', '0d2eb4cb-4976-4db2-a0a6-add9cb7042ab', 'a26ab6d1-88ae-4f53-a2f0-449943cda67f', 3, 'ipvpn2@twtelecom.com', 1452721274, 'ipvpn2@twtelecom.com', 1452721274);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('3d1c3a1c-9544-4eff-b7de-5fe543ab37d0', '8b87b038-471e-4a0f-bea6-b9a79f9eef36', 'f4002ec1-6b16-463b-93bd-becae3747cfe', 3, 'ipvpn2@twtelecom.com', 1452788882, 'ipvpn2@twtelecom.com', 1452788882);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('3de768b3-06ee-4533-94fd-da7fb4131527', '14c53326-ffaf-4efa-862d-b5fb56d9f2a3', '7e757e0a-4f92-44b7-945f-3b4aeafd3455', 1, 'ipvpn2@twtelecom.com', 1452720659, 'ipvpn2@twtelecom.com', 1452720659);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('41df71be-58b4-43fc-ab28-81f8651e7d9b', '9f3fbec7-29c9-4bf0-951d-dc5a92ab247e', '61414281-5c2e-41e8-9804-7467fc6a8151', 4, 'sptest@test.com', 1452548394, 'sptest@test.com', 1452548394);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('426caae2-0a26-4971-b0a1-670d10cef8c3', '4dfe429a-6b51-4a21-a355-67fe47171c34', '994b14f2-eb1d-4678-aecd-1f3525fe0d24', 2, 'sptest@test.com', 1452717672, 'sptest@test.com', 1452717672);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('43badc7f-2bca-4814-84d0-8d94519189e0', '7a615287-8b49-4bc6-893f-4726a8174fcc', '33739aa4-172b-4d1d-9125-e154c7c227b3', -1, '311536@test.com', 1452292413, '311536@test.com', 1452292413);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('44ef3788-8874-4aae-8afb-6f9d9e06f716', '4dfe429a-6b51-4a21-a355-67fe47171c34', '84f19ebc-f2c9-41c1-b944-ac2af0c76f88', 3, 'sptest@test.com', 1452717672, 'sptest@test.com', 1452717672);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('49e9b14a-8589-4e83-be17-e3c09e02111e', '4dfe429a-6b51-4a21-a355-67fe47171c34', '89966a30-b122-44b5-af57-6ef63357f711', 3, 'sptest@test.com', 1452783487, 'sptest@test.com', 1452783487);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('4bcb97a8-365d-4d55-a5d3-d4bfc0445466', '14c53326-ffaf-4efa-862d-b5fb56d9f2a3', 'b37e917b-92cc-4b02-9c2b-733ddf4ccec2', 1, 'ipvpn2@twtelecom.com', 1452719662, 'ipvpn2@twtelecom.com', 1452719662);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('4c54004a-7b90-41f4-be12-16fce7cda04c', '0d2eb4cb-4976-4db2-a0a6-add9cb7042ab', 'dab89042-17ed-44e1-a84b-88e0e1bd34a1', 2, 'ipvpn2@twtelecom.com', 1452721274, 'ipvpn2@twtelecom.com', 1452721274);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('4cc8f259-8baf-4e44-a8eb-478d4ce36107', '14c53326-ffaf-4efa-862d-b5fb56d9f2a3', 'df329803-4341-4697-a1c3-83dbcdad4e22', 2, 'ipvpn2@twtelecom.com', 1452720659, 'ipvpn2@twtelecom.com', 1452720659);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('4db6467e-fa35-4099-abc0-67499cb874de', '0d2eb4cb-4976-4db2-a0a6-add9cb7042ab', '3a2c6fba-3117-45d2-b2cb-61f70f9cd9f5', 3, 'ipvpn2@twtelecom.com', 1452721274, 'ipvpn2@twtelecom.com', 1452721274);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('4ead29f1-ffcc-400b-8fc4-b40f369bfe28', '14c53326-ffaf-4efa-862d-b5fb56d9f2a3', 'd78b98c9-f0b1-452e-9a23-0c9c9dc776ec', 3, 'ipvpn2@twtelecom.com', 1452720659, 'ipvpn2@twtelecom.com', 1452720659);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('521019e5-6945-4fdb-8943-0e203f1a12cc', '4dfe429a-6b51-4a21-a355-67fe47171c34', 'd7fa1c79-1e30-4d77-8ac2-53bd08db9aea', 1, 'sptest@test.com', 1452785820, 'sptest@test.com', 1452785820);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('57d47500-097b-4553-8f26-457847c711c4', '4dfe429a-6b51-4a21-a355-67fe47171c34', 'be4cff60-c929-4e76-b696-a94d4c6814c4', 4, 'sptest@test.com', 1452717672, 'sptest@test.com', 1452717672);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('57ecd0dc-c43f-445f-9779-2278edca9c89', '8a031ec8-960e-4283-9e91-1e2947ab3d41', '4c9b37c7-a20a-45fe-9e14-6465f134f456', -1, 'tca@test.com', 1452790356, 'tca@test.com', 1452790356);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('5b3c759f-8d05-4500-afba-1147aca2bdff', '4dfe429a-6b51-4a21-a355-67fe47171c34', 'ba29557a-6c69-4346-bc36-57acd1a5df9d', 4, 'sptest@test.com', 1452785820, 'sptest@test.com', 1452785820);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('5b3d73ca-e95f-4691-b63f-f30b172107d4', '32d560fc-6ea2-404f-905d-e53700e5557c', '8da52c13-39a7-4b40-9d3b-21de52fbf08e', -1, 'tca@test.com', 1452283560, 'tca@test.com', 1452283560);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('5baf641f-6ec4-4ab2-ae1b-4aa7a568c4b3', 'c6f1a77d-4a57-4abc-8c04-01a0e9fa1e5f', 'af3c3e58-8240-45ab-895a-796a6d2743d6', 5, 'user@level3.com', 1452287302, 'user@level3.com', 1452287302);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('5ce36d6e-f019-483d-8647-0238f74656ef', 'c6f1a77d-4a57-4abc-8c04-01a0e9fa1e5f', '5959a232-1a90-4615-9255-275ed098dfed', 5, 'user@level3.com', 1452285534, 'user@level3.com', 1452285534);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('5fb4cba0-833a-4af4-90e4-8a9e7c448ee0', '8b87b038-471e-4a0f-bea6-b9a79f9eef36', 'c8642e13-e616-4b46-9a25-715d85c6758d', 2, 'ipvpn2@twtelecom.com', 1452788882, 'ipvpn2@twtelecom.com', 1452788882);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('60b8da3e-b496-4cd6-a8bc-0ceaad37739e', '4dfe429a-6b51-4a21-a355-67fe47171c34', '0df8840b-9727-4e2d-9f74-8ce8a7432825', 5, 'sptest@test.com', 1452785820, 'sptest@test.com', 1452785820);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('60de63c0-b0e0-44b2-8ead-86e23beb3cea', '0d2eb4cb-4976-4db2-a0a6-add9cb7042ab', '7b767d72-2928-41ae-8e96-2d0f91a14409', -1, 'ipvpn2@twtelecom.com', 1452721274, 'ipvpn2@twtelecom.com', 1452721274);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('6299131d-02c1-437f-943a-9e8dfb8da626', 'c6f1a77d-4a57-4abc-8c04-01a0e9fa1e5f', 'fa3e5318-36fb-47bd-9a02-df20577f3bf1', 5, 'user@level3.com', 1452287041, 'user@level3.com', 1452287041);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('63da5961-255e-4808-b8d7-08780a0ffa8e', '7a615287-8b49-4bc6-893f-4726a8174fcc', '0ea664e8-6950-44ac-b56b-6d7deb1ef143', -1, '311536@test.com', 1452292413, '311536@test.com', 1452292413);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('65474c6e-adfe-4877-94c6-2823f89f252a', '0d2eb4cb-4976-4db2-a0a6-add9cb7042ab', 'e7562a71-4214-4852-8eea-afaaaa840d5e', 4, 'ipvpn2@twtelecom.com', 1452721274, 'ipvpn2@twtelecom.com', 1452721274);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('6618baf2-b611-4633-a3c5-fbaa0c3e20b6', '8b87b038-471e-4a0f-bea6-b9a79f9eef36', 'fd0f94df-20ac-483f-8d06-36877428e83f', 2, 'ipvpn2@twtelecom.com', 1452788882, 'ipvpn2@twtelecom.com', 1452788882);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('6675fd7a-96cd-4f29-9965-19a8529fddc8', '0d2eb4cb-4976-4db2-a0a6-add9cb7042ab', '1b3368ff-8309-4534-9385-b2ce13ab5414', 1, 'ipvpn2@twtelecom.com', 1452721274, 'ipvpn2@twtelecom.com', 1452721274);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('6706a793-c1ff-4db5-8e26-a6a91ce7be03', '0d2eb4cb-4976-4db2-a0a6-add9cb7042ab', 'b471400a-535b-4806-8e6e-da6a3d5349a1', 4, 'ipvpn2@twtelecom.com', 1452721274, 'ipvpn2@twtelecom.com', 1452721274);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('6778ebb4-a2da-4bc6-9053-61a407854f24', '8b87b038-471e-4a0f-bea6-b9a79f9eef36', '8378f003-b96f-4b16-a7da-6203e08fdb06', 4, 'ipvpn2@twtelecom.com', 1452788882, 'ipvpn2@twtelecom.com', 1452788882);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('693fdf58-b359-4957-956d-b2b22ca45fe8', '8b87b038-471e-4a0f-bea6-b9a79f9eef36', '656cf111-f46b-4a85-a32d-a295a62267c5', 3, 'ipvpn2@twtelecom.com', 1452788882, 'ipvpn2@twtelecom.com', 1452788882);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('6a81b638-74b6-4e7e-a5c0-d9af0e01384c', '14c53326-ffaf-4efa-862d-b5fb56d9f2a3', 'c33ba7fb-ea75-4c0e-9005-e7ec6c128310', 5, 'ipvpn2@twtelecom.com', 1452720370, 'ipvpn2@twtelecom.com', 1452720370);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('6d256005-da36-4eac-b471-997b2deeee4a', '0d2eb4cb-4976-4db2-a0a6-add9cb7042ab', '3c352948-c631-4867-bedb-f8af6de3fc7b', 3, 'ipvpn2@twtelecom.com', 1452721274, 'ipvpn2@twtelecom.com', 1452721274);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('6e11e108-c365-45f3-8f71-59a4e805470b', '8b87b038-471e-4a0f-bea6-b9a79f9eef36', 'ca01404a-f0f1-4152-9296-b6bdca7d0a7a', 3, 'ipvpn2@twtelecom.com', 1452788882, 'ipvpn2@twtelecom.com', 1452788882);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('6f55fd50-71a8-489e-9aba-07529f2943ff', '0d2eb4cb-4976-4db2-a0a6-add9cb7042ab', '7e54e0ba-4cad-45be-81d1-5cb96e144daa', 4, 'ipvpn2@twtelecom.com', 1452721274, 'ipvpn2@twtelecom.com', 1452721274);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('71d1d5cf-bac6-4812-a9df-8d7ace41a082', '8b87b038-471e-4a0f-bea6-b9a79f9eef36', '24632261-6f92-490d-ad24-79591e7d454b', -1, 'ipvpn2@twtelecom.com', 1452788882, 'ipvpn2@twtelecom.com', 1452788882);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('73d7a5ba-e8ba-4c5b-9b86-abe3778ed330', '14c53326-ffaf-4efa-862d-b5fb56d9f2a3', 'e51ffec9-05e7-4552-ad6b-bd8c32b21df4', 4, 'ipvpn2@twtelecom.com', 1452720659, 'ipvpn2@twtelecom.com', 1452720659);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('79168591-6436-42bf-8aca-5280799093ff', '9f3fbec7-29c9-4bf0-951d-dc5a92ab247e', '4d34dbd1-6f2a-401a-9e75-5fd59407ca7e', 3, 'sptest@test.com', 1452548394, 'sptest@test.com', 1452548394);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('79946b8a-14f9-48e4-9bf7-40a5633a5e0a', '2d2a4770-37d8-4bb3-864f-ba7866b5db05', '1fa36281-0e37-40e0-beca-5fc24353d728', -1, 'tca@test.com', 1452283197, 'tca@test.com', 1452283197);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('79b886d3-7df1-46a3-a38f-20411a5aed2e', '0d2eb4cb-4976-4db2-a0a6-add9cb7042ab', '31bcf249-20d0-44d3-a997-aa972f62c973', 3, 'ipvpn2@twtelecom.com', 1452721274, 'ipvpn2@twtelecom.com', 1452721274);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('7d6286e0-2067-4b51-8bfe-e3fa82bedba1', '14c53326-ffaf-4efa-862d-b5fb56d9f2a3', 'f18dfa40-3298-4b79-ae04-6c673efb964b', 1, 'ipvpn2@twtelecom.com', 1452720659, 'ipvpn2@twtelecom.com', 1452720659);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('7d978e5a-2a91-40cd-ad11-31f576d7f7d2', '7aac8a26-926b-4520-a993-e1e65e477918', '72dd17fb-de35-4730-a707-96178bf52136', 4, 'sptest@test.com', 1452541847, 'sptest@test.com', 1452541847);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('7e6c1eb3-e143-48d1-8b55-012b1d371336', '32d560fc-6ea2-404f-905d-e53700e5557c', '400c6f27-d4da-42df-bd0a-517867eaf508', 1, 'tca@test.com', 1452283560, 'tca@test.com', 1452283560);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('7f7fb9e3-b718-4aa6-a34f-8241feed0041', '8b87b038-471e-4a0f-bea6-b9a79f9eef36', '85967329-efc2-4514-ad22-c0951627097d', 4, 'ipvpn2@twtelecom.com', 1452788882, 'ipvpn2@twtelecom.com', 1452788882);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('7fb0ca50-b699-4a9e-86c1-8199cc5b2d04', '14c53326-ffaf-4efa-862d-b5fb56d9f2a3', '31ebc5c4-9c98-475d-abcb-302280433c3e', 4, 'ipvpn2@twtelecom.com', 1452720370, 'ipvpn2@twtelecom.com', 1452720370);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('80112505-6909-40f0-857d-c869384f3193', '9f3fbec7-29c9-4bf0-951d-dc5a92ab247e', 'd78dec1b-1f90-404a-8a4e-754ca833dda1', 5, 'sptest@test.com', 1452548394, 'sptest@test.com', 1452548394);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('83e83452-f6c5-48bc-b630-27007dacca33', '0d2eb4cb-4976-4db2-a0a6-add9cb7042ab', '223edc59-1eed-4727-a2b4-a05f0fa7c081', 1, 'ipvpn2@twtelecom.com', 1452721274, 'ipvpn2@twtelecom.com', 1452721274);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('84a887cb-5c78-41f6-b869-d899003809f7', '8b87b038-471e-4a0f-bea6-b9a79f9eef36', 'fe3aa58d-640b-4d57-b503-af99e830c45e', 1, 'ipvpn2@twtelecom.com', 1452788882, 'ipvpn2@twtelecom.com', 1452788882);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('8500ffad-de10-4fd0-bde3-a5fef6a7b445', 'c6f1a77d-4a57-4abc-8c04-01a0e9fa1e5f', '1282f43a-c12e-4a20-9b93-2f97e0d0e1f0', -1, 'user@level3.com', 1452287302, 'user@level3.com', 1452287302);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('866a5ab4-e0d2-440a-8463-d29f225bbd00', '4dfe429a-6b51-4a21-a355-67fe47171c34', 'f5dc2bb8-9425-4df3-bda4-d07ade5c8f37', 4, 'sptest@test.com', 1452717672, 'sptest@test.com', 1452717672);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('8769752c-e358-4cef-adb6-a37ff4593ddd', '2d2a4770-37d8-4bb3-864f-ba7866b5db05', '517eeea3-57da-4790-89b1-5e4bc2ff5149', -1, 'sptest@test.com', 1452529620, 'sptest@test.com', 1452529620);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('890f7afb-40e4-4d8a-a094-e1eefe1f84fc', '519430d0-5c9b-4628-a09d-6f75b2a160e1', 'f1eece4c-2d29-427f-b302-9a45278eebf8', -1, 'ipvpn2@twtelecom.com', 1452788625, 'ipvpn2@twtelecom.com', 1452788625);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('89d6f79b-84ed-4ed2-bc33-bac02b5e6729', '0d2eb4cb-4976-4db2-a0a6-add9cb7042ab', '977ca944-b9a9-4c34-ae2a-e82a8bdc0426', 5, 'ipvpn2@twtelecom.com', 1452721274, 'ipvpn2@twtelecom.com', 1452721274);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('8aa1666c-6988-4d0b-bd59-3637fda2ea90', '0d2eb4cb-4976-4db2-a0a6-add9cb7042ab', '62c9055c-0fe2-4469-9b1a-d40eaed73f9f', 1, 'ipvpn2@twtelecom.com', 1452721274, 'ipvpn2@twtelecom.com', 1452721274);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('8dbeceef-d63e-403c-89f7-513ef036a1bf', '0d2eb4cb-4976-4db2-a0a6-add9cb7042ab', '59bb7563-6833-433f-9cf1-5c0e9bec44e6', 1, 'ipvpn2@twtelecom.com', 1452721274, 'ipvpn2@twtelecom.com', 1452721274);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('8e16ea82-5d68-4988-85df-50058bee7e42', '0d2eb4cb-4976-4db2-a0a6-add9cb7042ab', '2fcd93f4-3cfc-4bd9-96f2-9f62af228beb', 5, 'ipvpn2@twtelecom.com', 1452721274, 'ipvpn2@twtelecom.com', 1452721274);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('90ac0d74-d915-46ce-bafa-3a1bca35560d', '519430d0-5c9b-4628-a09d-6f75b2a160e1', 'a7b22238-f00e-49fd-874e-cad6c00b9480', 0, 'ipvpn2@twtelecom.com', 1452788625, 'ipvpn2@twtelecom.com', 1452788625);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('919db025-d0b2-4557-afc2-975d31109125', '0d2eb4cb-4976-4db2-a0a6-add9cb7042ab', 'b133c2d2-1ea8-4491-b036-8144dbbbeea6', 2, 'ipvpn2@twtelecom.com', 1452721274, 'ipvpn2@twtelecom.com', 1452721274);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('97d31236-6d73-44f7-afd5-097c39aeaf5c', '14c53326-ffaf-4efa-862d-b5fb56d9f2a3', '98607b27-8fa9-43b5-8c7a-60c63159f307', 2, 'ipvpn2@twtelecom.com', 1452720659, 'ipvpn2@twtelecom.com', 1452720659);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('9b0410b8-0492-4c1c-bbd4-9737ae72faff', 'a58d5e78-cb5c-4ad0-ab38-bfb015987b59', '7a5e3f05-7637-4d0a-b7e4-843b26a73576', 1, 'sptest@test.com', 1452717821, 'sptest@test.com', 1452717821);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('9bb4a53d-80cc-4897-ab4d-371630626948', '8b87b038-471e-4a0f-bea6-b9a79f9eef36', '22a1e6da-3716-44ed-9873-02d41ceaa8ed', 5, 'ipvpn2@twtelecom.com', 1452788882, 'ipvpn2@twtelecom.com', 1452788882);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('9d14407a-98c1-454b-ad5a-7758f3bcc556', '0d2eb4cb-4976-4db2-a0a6-add9cb7042ab', 'ec00a1c8-b77d-4d61-92e8-736c5f27608c', 4, 'ipvpn2@twtelecom.com', 1452721274, 'ipvpn2@twtelecom.com', 1452721274);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('9d533a97-906f-40d7-b84a-1961af78f67d', '14c53326-ffaf-4efa-862d-b5fb56d9f2a3', '5ad4bc13-bad7-4240-a198-36bee416441c', 2, 'ipvpn2@twtelecom.com', 1452720370, 'ipvpn2@twtelecom.com', 1452720370);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('9f0927a5-c445-4362-bde0-eaf7a8eb77d2', '7aac8a26-926b-4520-a993-e1e65e477918', '1290b82a-d8f0-46f4-8f5c-1d7dc2e59e08', 2, 'sptest@test.com', 1452541847, 'sptest@test.com', 1452541847);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('a2d7e338-7f7d-48e4-a49e-dd1cd0a0b776', '8b87b038-471e-4a0f-bea6-b9a79f9eef36', '8bb0144b-dd58-4283-9194-28b523916050', 2, 'ipvpn2@twtelecom.com', 1452788882, 'ipvpn2@twtelecom.com', 1452788882);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('a5cdf084-9e53-46f0-99f7-977355b85a20', '14c53326-ffaf-4efa-862d-b5fb56d9f2a3', '5d6e6157-7075-4e90-89d2-fc5876f65be8', 4, 'ipvpn2@twtelecom.com', 1452720370, 'ipvpn2@twtelecom.com', 1452720370);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('aa9b1b47-2aba-48a8-bf00-7da7239d7204', '14c53326-ffaf-4efa-862d-b5fb56d9f2a3', 'eb089ae7-8eed-49ec-af03-242b4c4d8e7c', 5, 'ipvpn2@twtelecom.com', 1452720659, 'ipvpn2@twtelecom.com', 1452720659);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('acb631a0-5960-4c76-a04b-335d9bb07484', '0d2eb4cb-4976-4db2-a0a6-add9cb7042ab', '0737d4d1-cc59-4186-a671-160790c1a04b', 2, 'ipvpn2@twtelecom.com', 1452721274, 'ipvpn2@twtelecom.com', 1452721274);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('ad328a0d-8cb2-409a-9009-7167e40cd18d', '14c53326-ffaf-4efa-862d-b5fb56d9f2a3', '33913238-d069-4dd9-837e-cfe2ca70acea', 3, 'ipvpn2@twtelecom.com', 1452720659, 'ipvpn2@twtelecom.com', 1452720659);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('adbbf041-c5b4-4f76-b3fb-403decab5ffe', '33590e16-a900-455c-8842-c0473abd80f3', '03ed601e-2808-4b96-ab86-f926d23cb74a', 3, 'sptest@test.com', 1452718029, 'sptest@test.com', 1452718029);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('b508ba55-41e1-4970-9226-108365f58f84', '33590e16-a900-455c-8842-c0473abd80f3', '8b619214-7ea0-4bc4-b98c-08a1f5a18ee7', 3, 'sptest@test.com', 1452718029, 'sptest@test.com', 1452718029);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('b6551dd0-18b8-4ca5-a91c-56445386e6a1', '519430d0-5c9b-4628-a09d-6f75b2a160e1', 'cb28800a-4263-4768-bb8f-302df2bf6db8', -1, 'ipvpn2@twtelecom.com', 1452788625, 'ipvpn2@twtelecom.com', 1452788625);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('b7bd3b43-96ff-45f2-903b-0ec86c564cb3', '0d2eb4cb-4976-4db2-a0a6-add9cb7042ab', '46a0ac06-4aff-4247-b45c-686c1370a09a', -1, 'ipvpn2@twtelecom.com', 1452721274, 'ipvpn2@twtelecom.com', 1452721274);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('b7fdd47a-0095-4258-9524-85e3a4fcf439', '7aac8a26-926b-4520-a993-e1e65e477918', '408fbe77-178a-4776-befc-8b3cbdb90d75', 5, 'sptest@test.com', 1452541847, 'sptest@test.com', 1452541847);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('b8589d5c-a320-4458-8a21-469f0fa61d11', '8b87b038-471e-4a0f-bea6-b9a79f9eef36', 'c48ba3a1-3cb6-4f3f-9022-24426e8f7e07', 5, 'ipvpn2@twtelecom.com', 1452788882, 'ipvpn2@twtelecom.com', 1452788882);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('b9486290-3667-40e9-af2c-dd08bc0933bc', '519430d0-5c9b-4628-a09d-6f75b2a160e1', 'e35a0fcd-4617-47fe-84d0-3c05c04deac0', 0, 'ipvpn2@twtelecom.com', 1452788625, 'ipvpn2@twtelecom.com', 1452788625);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('bb62aa5e-876f-4640-8952-939a0ecd9eef', '3d912648-9da6-40ed-aa4c-8682a3f06609', '72956cb1-03b2-4d63-b0f2-eba6fb58e090', 3, 'sptest@test.com', 1452548556, 'sptest@test.com', 1452548556);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('bd245474-ca96-4d87-98bc-d4edfcbd84b2', '7aac8a26-926b-4520-a993-e1e65e477918', '218ed5c6-d4f6-4810-b25e-0d8b33a6970c', -1, 'sptest@test.com', 1452541847, 'sptest@test.com', 1452541847);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('bd75f381-efbb-43a4-b516-d677092b629b', '0d2eb4cb-4976-4db2-a0a6-add9cb7042ab', 'ddc9bcfb-60bd-4a20-ae7d-96485fd55f90', 3, 'ipvpn2@twtelecom.com', 1452721274, 'ipvpn2@twtelecom.com', 1452721274);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('be656ccb-9004-4408-9f5d-6f77f1104c90', '7aac8a26-926b-4520-a993-e1e65e477918', 'a50bc4c5-b66d-4e2d-bfcb-c616e028cde7', 2, 'sptest@test.com', 1452541847, 'sptest@test.com', 1452541847);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('c0082f8f-9adb-48c9-995c-0f581b6a560b', '4dfe429a-6b51-4a21-a355-67fe47171c34', '1e5c00e4-1e9b-4ebc-95e3-ff8c50ba4fed', 2, 'sptest@test.com', 1452785820, 'sptest@test.com', 1452785820);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('c1014e35-5a03-436f-9bd3-0a1d585e8b5e', '0d2eb4cb-4976-4db2-a0a6-add9cb7042ab', '9df5adbf-44d6-48aa-9beb-06181e8cc70e', 5, 'ipvpn2@twtelecom.com', 1452721274, 'ipvpn2@twtelecom.com', 1452721274);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('c21d768e-abca-4144-8bef-ac384b71eb2a', '7aac8a26-926b-4520-a993-e1e65e477918', 'afd7b849-dcb8-4819-90ee-1daf13b7e4ef', 2, 'sptest@test.com', 1452541847, 'sptest@test.com', 1452541847);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('c47b5f5e-9eab-476c-9afd-8700ea52ff47', '8a031ec8-960e-4283-9e91-1e2947ab3d41', '751c78bd-0473-43b7-9ee1-3652b3ccc36a', -1, 'tca@test.com', 1452282913, 'tca@test.com', 1452282913);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('c47d788f-2178-4c5c-b720-7f90551162ac', '0d2eb4cb-4976-4db2-a0a6-add9cb7042ab', '369fbdee-cebc-4c29-ae86-7f6ef03cdd96', 4, 'ipvpn2@twtelecom.com', 1452721274, 'ipvpn2@twtelecom.com', 1452721274);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('c76be200-dff2-4a6b-aaca-19648ed77b8b', '8b87b038-471e-4a0f-bea6-b9a79f9eef36', '7c406122-0396-442b-a73c-a0b6204959c6', 2, 'ipvpn2@twtelecom.com', 1452788882, 'ipvpn2@twtelecom.com', 1452788882);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('c86f7163-4c4e-4a2b-8a2a-9227be890400', '8b87b038-471e-4a0f-bea6-b9a79f9eef36', '3a64d8b0-d8fa-4580-b8cd-367063d71519', 1, 'ipvpn2@twtelecom.com', 1452788882, 'ipvpn2@twtelecom.com', 1452788882);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('c95bedb1-5500-470e-b4e5-d67d69999a62', 'b62b2c33-c845-44d1-a865-1bfef66f7d33', '959749f8-6df1-49c2-80b0-a288ea5c6d7e', -1, '311536@test.com', 1452292350, '311536@test.com', 1452292350);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('cb8d5a29-4504-45ec-9b1d-5a2179e9e1e5', '687a014f-ae81-4e92-ae32-480b0b44ac65', '31d3a2ff-14cd-4155-abc8-708ce4197599', -1, 'sptest@test.com', 1452537761, 'sptest@test.com', 1452537761);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('cbc4dc41-f01b-4986-afcd-0579d296e06e', '14c53326-ffaf-4efa-862d-b5fb56d9f2a3', 'bfb58834-bf6a-4755-ba63-2e66f7f64e1a', 4, 'ipvpn2@twtelecom.com', 1452720659, 'ipvpn2@twtelecom.com', 1452720659);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('cca09dfa-bb28-410f-809c-aac83c698b46', 'a58d5e78-cb5c-4ad0-ab38-bfb015987b59', '8c7a0595-2d70-4fe8-935b-9810c2a00e12', 4, 'sptest@test.com', 1452784809, 'sptest@test.com', 1452784809);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('ced16644-e2f4-4f79-90f0-493a3f1ff1ad', '8b87b038-471e-4a0f-bea6-b9a79f9eef36', '8dbd7a42-7d97-4835-83d4-3765d2f216b4', 5, 'ipvpn2@twtelecom.com', 1452788882, 'ipvpn2@twtelecom.com', 1452788882);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('cf57f598-c7c2-4e51-b375-d6d80eb4cae5', '9f3fbec7-29c9-4bf0-951d-dc5a92ab247e', '9051532c-f513-400a-997d-56e743c37137', 1, 'sptest@test.com', 1452548394, 'sptest@test.com', 1452548394);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('d0672ce1-601e-4f34-a53d-632305c7bcf3', '3d912648-9da6-40ed-aa4c-8682a3f06609', '2de0597c-26c0-4ef5-a719-e85f54770b70', 5, 'sptest@test.com', 1452548556, 'sptest@test.com', 1452548556);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('d2cb6c9a-4896-4b4d-8d6d-aeea00cc8289', '4dfe429a-6b51-4a21-a355-67fe47171c34', '16469b2a-2a1e-412f-8203-513b7088de21', 5, 'sptest@test.com', 1452717672, 'sptest@test.com', 1452717672);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('d3d870f2-0594-4bd0-af38-3e33351a9526', '7aac8a26-926b-4520-a993-e1e65e477918', 'a72098f8-76f5-440c-a486-2a4356d1f6ed', 3, 'sptest@test.com', 1452541847, 'sptest@test.com', 1452541847);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('d48e0f42-1435-432d-92f2-d286b92a9102', '8b87b038-471e-4a0f-bea6-b9a79f9eef36', '49f8c336-f297-49b0-951d-bfff8d9276be', 5, 'ipvpn2@twtelecom.com', 1452788882, 'ipvpn2@twtelecom.com', 1452788882);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('d598a927-799a-4ce3-be4b-55b7b4d0a7e5', '8b87b038-471e-4a0f-bea6-b9a79f9eef36', '0eb8ee06-ad8a-4a93-8fbb-f3af3c2864f9', 5, 'ipvpn2@twtelecom.com', 1452788882, 'ipvpn2@twtelecom.com', 1452788882);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('d5fe4a50-5a55-4cee-8b35-efb1b939d23e', '4dfe429a-6b51-4a21-a355-67fe47171c34', '7539e76e-b656-4a3f-a3aa-1bd18f0b14c3', 1, 'sptest@test.com', 1452783487, 'sptest@test.com', 1452783487);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('d82590a5-bf3f-4f95-b481-bffc2f1fc802', '2d2a4770-37d8-4bb3-864f-ba7866b5db05', '47e82ef2-2447-43f0-a052-02c1e2e62b7e', -1, 'tca@test.com', 1452283197, 'tca@test.com', 1452283197);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('d8a74449-f368-41e6-b3fb-47dd2c8bb50a', '8b87b038-471e-4a0f-bea6-b9a79f9eef36', '3e4fdab0-3a5b-441d-a3d8-d07c3d97d43a', 4, 'ipvpn2@twtelecom.com', 1452788882, 'ipvpn2@twtelecom.com', 1452788882);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('d91f346c-0227-4199-9fe9-8370d22666b4', '14c53326-ffaf-4efa-862d-b5fb56d9f2a3', 'ce921a0b-30d4-496d-a522-ac110e9fee83', 3, 'ipvpn2@twtelecom.com', 1452720370, 'ipvpn2@twtelecom.com', 1452720370);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('d96a7e34-608f-4baf-aad4-3c3394773130', '519430d0-5c9b-4628-a09d-6f75b2a160e1', 'ed14a9a6-eee1-40a1-b1cf-894b238244f7', 0, 'ipvpn2@twtelecom.com', 1452788625, 'ipvpn2@twtelecom.com', 1452788625);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('dbeb4dd8-1fb3-44ed-9463-a797928730a0', '687a014f-ae81-4e92-ae32-480b0b44ac65', 'e2333273-60e9-4097-a08c-34e526f696d7', -1, 'sptest@test.com', 1452537761, 'sptest@test.com', 1452537761);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('dd2ab6da-6244-43b5-a2a2-268f25ca4851', '3d912648-9da6-40ed-aa4c-8682a3f06609', 'db0c7222-5ffd-46a8-b01b-299e643eaff6', 2, 'sptest@test.com', 1452548556, 'sptest@test.com', 1452548556);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('df12b1a4-1287-4a7c-ad3b-29826b6614e2', '0d2eb4cb-4976-4db2-a0a6-add9cb7042ab', '8c71a09a-6b43-4a97-88c1-4ae797e8ff0c', 2, 'ipvpn2@twtelecom.com', 1452721274, 'ipvpn2@twtelecom.com', 1452721274);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('e2d33616-337f-4b01-a678-73e11be6194c', '4dfe429a-6b51-4a21-a355-67fe47171c34', '39f00ce0-abab-4bcd-8dea-69fb2ed420c6', 4, 'sptest@test.com', 1452783487, 'sptest@test.com', 1452783487);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('e349d9af-db15-4cc6-875b-cef46846e312', '519430d0-5c9b-4628-a09d-6f75b2a160e1', '54a34b9f-9168-4bb2-a92a-152f8e49b982', 0, 'ipvpn2@twtelecom.com', 1452788625, 'ipvpn2@twtelecom.com', 1452788625);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('e3ee17ed-94b1-433a-a19f-c2f79e7c043f', '7aac8a26-926b-4520-a993-e1e65e477918', 'a674df69-05c0-4911-8085-9dcca447e819', 4, 'sptest@test.com', 1452541847, 'sptest@test.com', 1452541847);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('e5f9efb9-5d20-4f20-a3d7-2f461a7cd3c0', '4dfe429a-6b51-4a21-a355-67fe47171c34', '3aeab440-005a-452a-9ce8-cbbd77b3796e', 3, 'sptest@test.com', 1452785820, 'sptest@test.com', 1452785820);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('e6d52933-4d7f-47bf-a75c-24c55877b9d4', '14c53326-ffaf-4efa-862d-b5fb56d9f2a3', 'f6185027-09b0-44d5-820a-f2b4c7c10e55', 1, 'ipvpn2@twtelecom.com', 1452720370, 'ipvpn2@twtelecom.com', 1452720370);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('e8451976-daad-4dad-a5e3-1595c8c13f19', '8b87b038-471e-4a0f-bea6-b9a79f9eef36', 'd3be4a13-4fd5-4660-8a23-432bedfa8b4b', 1, 'ipvpn2@twtelecom.com', 1452788882, 'ipvpn2@twtelecom.com', 1452788882);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('e9a7638d-c44f-4274-9711-105b0bb12fce', 'f9a4c9d1-2a5a-4ec2-a90c-f3d4dab8b863', 'ad42b489-cca9-4a28-b217-9d5273493993', -1, 'tca@test.com', 1452291420, 'tca@test.com', 1452291420);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('eb540625-c30a-4f7a-8e6e-c4a7723c3245', '0d2eb4cb-4976-4db2-a0a6-add9cb7042ab', '18e3c5f9-b198-4a63-a401-74c4c66abc1e', 1, 'ipvpn2@twtelecom.com', 1452721274, 'ipvpn2@twtelecom.com', 1452721274);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('ebbb0117-3d9e-45e9-893e-f190ebb42072', '7aac8a26-926b-4520-a993-e1e65e477918', '4883b5dd-86d1-4c9b-8c90-51cc14bba9bf', 0, 'sptest@test.com', 1452541847, 'sptest@test.com', 1452541847);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('ecb97287-f276-4e01-bb57-857fd550bea6', '8a031ec8-960e-4283-9e91-1e2947ab3d41', 'd32393d0-8307-4746-8a0a-75ecf11f9981', -1, 'tca@test.com', 1452282913, 'tca@test.com', 1452282913);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('ecbfcdd9-0755-4852-8bd2-91a057b096c2', '7aac8a26-926b-4520-a993-e1e65e477918', 'f699facf-84a1-4be9-b386-73d782304195', 5, 'sptest@test.com', 1452541847, 'sptest@test.com', 1452541847);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('ed458d33-2568-4899-88f9-95e6cd8c22ea', '4dfe429a-6b51-4a21-a355-67fe47171c34', '5cf35543-3579-4fdf-a0e4-5daa4e7d00c8', 2, 'sptest@test.com', 1452783487, 'sptest@test.com', 1452783487);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('ed9b6df0-174e-4d4e-9289-5dc75be35639', '1d07a5b4-8ec9-47f3-adbc-a3687ae67105', 'c5b2c597-7b0b-4127-8687-ead1f48b1f38', 1, 'tca@test.com', 1452283914, 'tca@test.com', 1452283914);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('edc49470-9b6c-4ada-a699-fda0b3629035', 'a58d5e78-cb5c-4ad0-ab38-bfb015987b59', '467fd22f-acd2-4eea-be65-55a8d9ae9a57', 1, 'sptest@test.com', 1452717821, 'sptest@test.com', 1452717821);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('edcfd7c7-7783-412b-90f7-d19c4f7a904f', 'a58d5e78-cb5c-4ad0-ab38-bfb015987b59', '7cf3fbc2-b0a4-4aee-b726-8cea6f1d8e0b', 2, 'sptest@test.com', 1452784809, 'sptest@test.com', 1452784809);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('ef091e27-07fd-4dbf-9e94-b148a9b90c88', 'c6f1a77d-4a57-4abc-8c04-01a0e9fa1e5f', 'b70d7dba-53aa-46c3-94db-ec663e4ec7d4', -1, 'user@level3.com', 1452287041, 'user@level3.com', 1452287041);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('f0eaadd3-ff9d-414c-b5f5-85c2dcaeae39', '7aac8a26-926b-4520-a993-e1e65e477918', '1e14906c-0297-4a37-bd06-a330cc63d93f', -1, 'sptest@test.com', 1452541847, 'sptest@test.com', 1452541847);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('f162f67d-cedb-41bb-aef4-b5b87c1f3301', '0d2eb4cb-4976-4db2-a0a6-add9cb7042ab', '07c41a39-5a63-43a0-8e1f-3028543c7d83', 2, 'ipvpn2@twtelecom.com', 1452721274, 'ipvpn2@twtelecom.com', 1452721274);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('f1b1f3c3-fcf2-4ca8-ba2d-118e31832b79', '7aac8a26-926b-4520-a993-e1e65e477918', 'c9aec4b2-36ac-4e6b-9832-7e98133b2a87', 5, 'sptest@test.com', 1452541847, 'sptest@test.com', 1452541847);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('f1fe02b7-928f-434d-b3a4-e471173714a4', 'f9a4c9d1-2a5a-4ec2-a90c-f3d4dab8b863', 'f22ca9e2-4c72-439e-a3df-d1c1d90ab2b1', -1, 'tca@test.com', 1452291420, 'tca@test.com', 1452291420);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('f3838930-838d-488f-9527-a3b4b3b26a5c', '14c53326-ffaf-4efa-862d-b5fb56d9f2a3', 'f510c115-3f2b-4ee7-a1b5-2ca06c0dafba', 3, 'ipvpn2@twtelecom.com', 1452720370, 'ipvpn2@twtelecom.com', 1452720370);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('f3bc7e59-ddc3-4eb7-bb88-2ee7f1977b6a', '7aac8a26-926b-4520-a993-e1e65e477918', '04d1abe6-948e-434d-9391-930e7c966b2d', 2, 'sptest@test.com', 1452541847, 'sptest@test.com', 1452541847);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('f53d183f-ce35-4dfd-ae95-cea6326109aa', '14c53326-ffaf-4efa-862d-b5fb56d9f2a3', 'd9fe98c4-2f41-4cc3-b182-bdb4d7deb6c6', 2, 'ipvpn2@twtelecom.com', 1452720370, 'ipvpn2@twtelecom.com', 1452720370);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('f5fd8dee-19aa-46cb-be05-e5082296d1f7', '8b87b038-471e-4a0f-bea6-b9a79f9eef36', '945ed764-50fa-43ac-b76e-1169550345b2', 3, 'ipvpn2@twtelecom.com', 1452788882, 'ipvpn2@twtelecom.com', 1452788882);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('f895b83d-4eed-416b-bd92-8f57de03dcdc', '8b87b038-471e-4a0f-bea6-b9a79f9eef36', '74404e7f-3941-43e6-96c2-2e1e70134a8a', 2, 'ipvpn2@twtelecom.com', 1452788882, 'ipvpn2@twtelecom.com', 1452788882);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('f99334b4-6f30-48b4-bd85-6d042bfb8f1d', '7aac8a26-926b-4520-a993-e1e65e477918', '6a527314-c4a0-4041-932e-6e188a3dd120', 0, 'sptest@test.com', 1452541847, 'sptest@test.com', 1452541847);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('f9938084-00c1-4a14-a45d-820990ee3e16', '8b87b038-471e-4a0f-bea6-b9a79f9eef36', 'a19e42aa-6889-479d-84a8-a61fc9a9a672', 1, 'ipvpn2@twtelecom.com', 1452788882, 'ipvpn2@twtelecom.com', 1452788882);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('fa0f4c8d-6cc8-4d44-986b-ed3d01ed8931', '519430d0-5c9b-4628-a09d-6f75b2a160e1', '1fd49beb-a1e3-4bf1-8ff3-fcf3621b07d4', 0, 'ipvpn2@twtelecom.com', 1452788625, 'ipvpn2@twtelecom.com', 1452788625);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('fd2d4c3d-a8c3-4828-a79c-30e93651633f', '8b87b038-471e-4a0f-bea6-b9a79f9eef36', '03ac7c56-172c-48e5-8ba7-5df5e5e2e120', 5, 'ipvpn2@twtelecom.com', 1452788882, 'ipvpn2@twtelecom.com', 1452788882);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('fe6fbdd0-9ff8-4a50-86bd-b1ba7719a4c9', '0d2eb4cb-4976-4db2-a0a6-add9cb7042ab', '703974de-a735-4928-9aec-c15bde1b8ed1', 5, 'ipvpn2@twtelecom.com', 1452721274, 'ipvpn2@twtelecom.com', 1452721274);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('ffb35923-c0d9-448d-a64d-c121e5bd81e7', '8b87b038-471e-4a0f-bea6-b9a79f9eef36', 'c195711b-7d1c-4b99-84c2-fd79f0412f48', 4, 'ipvpn2@twtelecom.com', 1452788882, 'ipvpn2@twtelecom.com', 1452788882);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('db58bae6-35a7-4e86-a4fe-4809b794a7d3', '7a615287-8b49-4bc6-893f-4726a8174fcc', 'a11020b4-08d4-4b72-86b3-0d9619127167', -1, '311536@test.com', 1452791445, '311536@test.com', 1452791445);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('f221ae5d-0f6c-4feb-bd00-2eb4fa2de42c', '7a615287-8b49-4bc6-893f-4726a8174fcc', 'edad9465-4371-488c-a218-e26feac698fd', -1, '311536@test.com', 1452791445, '311536@test.com', 1452791445);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('01c31be2-535d-4859-a833-a7c3657aecb9', '32d560fc-6ea2-404f-905d-e53700e5557c', 'fcd4c6ba-1bde-4987-ad51-a7394572117f', -1, 'emdemo@level3.com', 1452795645, 'emdemo@level3.com', 1452795645);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('7ec149d7-b8f4-4a16-8e47-5dd9e01a2dee', '32d560fc-6ea2-404f-905d-e53700e5557c', 'ac61de9d-19f1-4fa1-af60-0f62bc9515b5', -1, 'emdemo@level3.com', 1452795645, 'emdemo@level3.com', 1452795645);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('0e249bd4-b6fb-49b2-a36b-c17069a437cb', '32d560fc-6ea2-404f-905d-e53700e5557c', 'edcc6b8b-b7c0-41e8-b9d0-9e7804b17685', -1, 'emdemo@level3.com', 1452797273, 'emdemo@level3.com', 1452797273);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('a8ddb1e0-3155-4248-a0ac-9553308f6684', '32d560fc-6ea2-404f-905d-e53700e5557c', 'b9f57499-79a2-49fb-9c1c-4eb7ff7398fa', -1, 'emdemo@level3.com', 1452797273, 'emdemo@level3.com', 1452797273);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('82adc1c0-7c26-4278-8cff-66063dfad6fe', 'ff4d0ab4-b1c6-46c1-8a4f-4dad1685a408', 'b1e5d219-1368-4447-b9f5-14f8c0bf401a', -1, 'emdemo@level3.com', 1452799323, 'emdemo@level3.com', 1452799323);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('4135e21c-a39e-4451-a6f4-5069e57576f0', '3d912648-9da6-40ed-aa4c-8682a3f06609', '8aa9bbd5-36da-4aa1-8d65-345ef92913fb', -1, '304254@test.com', 1452803290, '304254@test.com', 1452803290);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('78842d85-24fd-4ed4-b1ca-a45fba85ef71', '221978e5-e2cb-42a9-a1c4-76d447acf66d', '2f1f80b1-fee4-40ce-ae6f-60aab092746a', -1, 'Chunky Monkey', 1452815096, 'Chunky Monkey', 1452815096);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('d03ddfd8-9a39-43c4-9072-7053ddf9fce8', '221978e5-e2cb-42a9-a1c4-76d447acf66d', 'abda30fe-8d24-4977-b856-b5c7de0d3823', 5, 'Chunky Monkey', 1452815096, 'Chunky Monkey', 1452815096);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('122c72c3-1122-4d80-8df1-be049a2f13f9', '4dfe429a-6b51-4a21-a355-67fe47171c34', '790d4869-7bee-42b3-ba48-c4d329dd8794', 3, 'sptest@test.com', 1452874912, 'sptest@test.com', 1452874912);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('24d61381-b78b-4c78-a392-922cb98ab23b', '4dfe429a-6b51-4a21-a355-67fe47171c34', '5e32b9f6-4bf3-4b98-af97-dfa467a99042', 4, 'sptest@test.com', 1452874912, 'sptest@test.com', 1452874912);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('8222123e-9f67-4520-90ce-53e5f236da5e', '4dfe429a-6b51-4a21-a355-67fe47171c34', '5fa675e4-ae22-451c-b0b4-1ed848d1ad54', 1, 'sptest@test.com', 1452874912, 'sptest@test.com', 1452874912);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('84c6b503-953d-4d01-b346-19b2ee60360f', '4dfe429a-6b51-4a21-a355-67fe47171c34', '27e2eb08-8b78-401a-bd21-cfab767a7011', 2, 'sptest@test.com', 1452874912, 'sptest@test.com', 1452874912);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('e73f5a2b-2fe3-4010-bf4b-5e733f49e5eb', '4dfe429a-6b51-4a21-a355-67fe47171c34', '0e250664-a399-4279-82b9-c6841310d9dd', 5, 'sptest@test.com', 1452874912, 'sptest@test.com', 1452874912);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('06a17b79-8ace-46e9-a187-524bb07e64a4', '4dfe429a-6b51-4a21-a355-67fe47171c34', 'f60bb8a1-2b39-4d02-a0e7-5d3e5e61d128', 4, 'sptest@test.com', 1452875301, 'sptest@test.com', 1452875301);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('111036b7-6158-4989-9330-d411b8e47290', '4dfe429a-6b51-4a21-a355-67fe47171c34', '1ce6779c-5006-4640-b043-4b81e435d34e', 2, 'sptest@test.com', 1452875301, 'sptest@test.com', 1452875301);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('147ecca8-38aa-4750-868c-7f4f85a9f9f5', '4dfe429a-6b51-4a21-a355-67fe47171c34', 'e202481c-eff6-4d27-be87-57b33235ea2d', 5, 'sptest@test.com', 1452875301, 'sptest@test.com', 1452875301);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('2576b278-41a3-4190-a507-fe26fb2ee7d3', '4dfe429a-6b51-4a21-a355-67fe47171c34', '9653e96c-9755-4c75-bb9e-ddbd36f9d42a', 2, 'sptest@test.com', 1452875301, 'sptest@test.com', 1452875301);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('2e676dc8-293e-4f33-96de-67e998951129', '4dfe429a-6b51-4a21-a355-67fe47171c34', '604fad05-f338-436f-8156-5d785be976e2', 2, 'sptest@test.com', 1452875301, 'sptest@test.com', 1452875301);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('2f508b6a-ebaf-499d-83f0-6c1c7de35714', '4dfe429a-6b51-4a21-a355-67fe47171c34', '5c9da90d-c3aa-4cdf-ac46-4429b8d0caf4', 4, 'sptest@test.com', 1452875301, 'sptest@test.com', 1452875301);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('39ea95bf-15de-4ed4-896b-ad76a9bac122', '4dfe429a-6b51-4a21-a355-67fe47171c34', 'e1517dbe-d914-4423-9e21-4550e9263609', 3, 'sptest@test.com', 1452875301, 'sptest@test.com', 1452875301);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('3b4ddf66-52b9-4aac-868e-efab92c6df7e', '4dfe429a-6b51-4a21-a355-67fe47171c34', 'fa080e3b-0eae-4316-b72f-4330b42790e8', 1, 'sptest@test.com', 1452875301, 'sptest@test.com', 1452875301);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('3bdd51ac-7282-4ae9-b9f5-7466492207a2', '4dfe429a-6b51-4a21-a355-67fe47171c34', 'e14ced60-088f-4ef3-9977-770627d5a4cc', 5, 'sptest@test.com', 1452875301, 'sptest@test.com', 1452875301);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('40b4165f-4826-477d-b7db-c67235c75dc9', '4dfe429a-6b51-4a21-a355-67fe47171c34', 'e190b97b-defc-41d4-8193-04f805a953ef', 1, 'sptest@test.com', 1452875301, 'sptest@test.com', 1452875301);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('6e9c987d-489e-49e1-ab72-2ec848fe085d', '4dfe429a-6b51-4a21-a355-67fe47171c34', '328029ce-71e1-438a-a10c-8c2857789216', 4, 'sptest@test.com', 1452875301, 'sptest@test.com', 1452875301);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('73ef1ab5-d667-48db-8d86-d543a4695f52', '4dfe429a-6b51-4a21-a355-67fe47171c34', '93ecacff-9714-43ba-9883-67850aaaa1c7', 3, 'sptest@test.com', 1452875301, 'sptest@test.com', 1452875301);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('7623037f-4432-4bc2-af8b-51d76685daa3', '4dfe429a-6b51-4a21-a355-67fe47171c34', 'c6582617-961c-45f0-bcdf-deecabf715e6', 3, 'sptest@test.com', 1452875301, 'sptest@test.com', 1452875301);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('a06efc9a-db48-43c3-838a-667cdb3060c0', '4dfe429a-6b51-4a21-a355-67fe47171c34', '0d15a719-cae4-4c28-979e-7a7b04e26dd7', 1, 'sptest@test.com', 1452875301, 'sptest@test.com', 1452875301);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('d35b5008-3b0d-46bc-89ad-bba0a320a438', '4dfe429a-6b51-4a21-a355-67fe47171c34', '6a66aed0-197c-47b4-8f36-a6ea649c63c7', 5, 'sptest@test.com', 1452875301, 'sptest@test.com', 1452875301);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('6b485259-1ad0-4a6a-86a0-6b325aa415b6', '0d2eb4cb-4976-4db2-a0a6-add9cb7042ab', '6cc32181-3d26-4ff1-9336-4a4e339e1b02', -1, 'geoff.white@level3.com', 1453078848, 'geoff.white@level3.com', 1453078848);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('03d4dca1-82c6-4302-8d5c-dfc91d767897', '84a0d8e1-9b83-48c1-a381-4dfe14c04755', '383138c9-b74a-43f0-86d4-80000a3807f9', -1, 'geoff.white@level3.com', 1453083853, 'geoff.white@level3.com', 1453083853);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('080e1e2e-4a19-431c-8b02-9498d751ac00', '84a0d8e1-9b83-48c1-a381-4dfe14c04755', 'f1d28a2f-5be5-42ba-8cdb-983fb8eb7bee', -1, 'geoff.white@level3.com', 1453083833, 'geoff.white@level3.com', 1453083833);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('56d3d622-faf0-4655-83ed-7b40cea03c78', '1e9555ab-52a0-4099-a1a9-4e488bf7284b', 'e7a6e741-11a7-4229-92cb-22ab13a33491', -1, 'tca@test.com', 1453135072, 'tca@test.com', 1453135072);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('9f43f39b-fa52-4e25-a862-de647e73f6cc', '6fa42b1e-6549-4d95-8b57-b525c4c0f701', '0e07b585-08b5-4894-9c52-82157db4937f', -1, 'tca@test.com', 1453135009, 'tca@test.com', 1453135009);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('f61e22f0-c2c0-450f-91bd-5f1941256845', '84a0d8e1-9b83-48c1-a381-4dfe14c04755', '393ea1c4-c88b-41cd-86d3-f3ef366b6a21', -1, 'geoff.white@level3.com', 1453136830, 'geoff.white@level3.com', 1453136830);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('5b91594e-73b8-4c74-bc7b-21deef4e8104', '9a627fcc-b60b-4a37-8211-2f1a2191648f', 'fa28da53-f847-4c7c-8337-3b09f9b9b96d', -1, 'tca@test.com', 1453141209, 'tca@test.com', 1453141209);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('1c412296-773d-4d5b-bd14-94b5c854ad03', '9a627fcc-b60b-4a37-8211-2f1a2191648f', 'b02280c6-669b-460c-aa97-547a2209c202', -1, 'tca@test.com', 1453147604, 'tca@test.com', 1453147604);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('9e25808b-c3a2-41ae-b688-613eb9130d4e', 'c23c7d16-3b3f-4f20-a246-2c2247649c1d', '42f3d5f4-16b1-43ae-98e7-d6fac42f6b2a', -1, 'tca@test.com', 1453235273, 'tca@test.com', 1453235273);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('0fc5f43c-c399-4b5e-a564-374cea0dce16', 'ff4d0ab4-b1c6-46c1-8a4f-4dad1685a408', 'd500dc34-7466-406d-8110-69496581ece9', -1, 'tca@test.com', 1453237352, 'tca@test.com', 1453237352);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('8dcd94f1-75ca-4a7b-b4ed-4a56bd70a699', 'ff4d0ab4-b1c6-46c1-8a4f-4dad1685a408', '0becc6e9-9442-4ba7-81b4-6335a586b0ec', -1, 'tca@test.com', 1453237352, 'tca@test.com', 1453237352);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('6236fdb9-b6f6-4cc4-91d7-522ac751e290', 'e20eb299-b6d4-46f6-ab87-f066cdd41681', 'b8f06941-3e97-480e-b8ae-54496db5b4af', -1, 'emdemo@level3.com', 1453238128, 'emdemo@level3.com', 1453238128);
INSERT INTO tca_instance (guid, resource, metric, qos, owner, created_on, modified_by, modified_on) VALUES ('c6e0cfc4-ba92-4bef-b424-ae3912468228', 'e1826a73-2131-4c51-a06c-f0e93e867a52', '71184118-137d-450d-8a9b-b8ca6453be6e', -1, 'tca@test.com', 1453239269, 'tca@test.com', 1453239269);
DROP TABLE tca_subtype;
CREATE TABLE npm_tca_iot.tca_subtype
(
    id int CONSTRAINT tca_subtype__id NOT NULL,
    tca_type int CONSTRAINT tca_subtype__tca_type NOT NULL,
    name varchar(128) CONSTRAINT tca_subtype__name NOT NULL
);

ALTER TABLE npm_tca_iot.tca_subtype ADD CONSTRAINT tca_subtype__pk PRIMARY KEY (id); 

ALTER TABLE npm_tca_iot.tca_subtype ADD CONSTRAINT C_FOREIGN FOREIGN KEY (tca_type) references npm_tca_iot.tca_type (id);

CREATE PROJECTION npm_tca_iot.tca_subtype /*+createtype(P)*/ 
(
 id ENCODING RLE,
 tca_type ENCODING RLE,
 name
)
AS
 SELECT tca_subtype.id,
        tca_subtype.tca_type,
        tca_subtype.name
 FROM npm_tca_iot.tca_subtype
 ORDER BY tca_subtype.id,
          tca_subtype.tca_type
UNSEGMENTED ALL NODES;


SELECT MARK_DESIGN_KSAFE(1);
INSERT INTO tca_subtype (id, tca_type, name) VALUES (1, 2, 'METRIC_TYPE');
INSERT INTO tca_subtype (id, tca_type, name) VALUES (2, 2, 'LEVEL');
INSERT INTO tca_subtype (id, tca_type, name) VALUES (3, 3, 'PERIOD');
INSERT INTO tca_subtype (id, tca_type, name) VALUES (4, 3, 'TIMEZONE');
DROP TABLE tca_type;
CREATE TABLE npm_tca_iot.tca_type
(
    id int CONSTRAINT tca_type__id NOT NULL,
    element varchar(128) CONSTRAINT tca_type__element NOT NULL
);

ALTER TABLE npm_tca_iot.tca_type ADD CONSTRAINT tca_type__pk PRIMARY KEY (id); 


CREATE PROJECTION npm_tca_iot.tca_type /*+createtype(P)*/ 
(
 id ENCODING RLE,
 element
)
AS
 SELECT tca_type.id,
        tca_type.element
 FROM npm_tca_iot.tca_type
 ORDER BY tca_type.id
UNSEGMENTED ALL NODES;


SELECT MARK_DESIGN_KSAFE(1);
INSERT INTO tca_type (id, element) VALUES (1, 'QOS');
INSERT INTO tca_type (id, element) VALUES (2, 'METRIC');
INSERT INTO tca_type (id, element) VALUES (3, 'ALERT');
INSERT INTO tca_type (id, element) VALUES (4, 'ACTION');
DROP TABLE threshold_type;
CREATE TABLE npm_tca_iot.threshold_type
(
    id int CONSTRAINT threshold_type__id NOT NULL,
    name varchar(128) CONSTRAINT threshold_type__name NOT NULL,
    operator varchar(5) CONSTRAINT threshold_type__operator NOT NULL,
    detail varchar(512)
);

ALTER TABLE npm_tca_iot.threshold_type ADD CONSTRAINT threshold_type__pk PRIMARY KEY (id); 
ALTER TABLE npm_tca_iot.threshold_type ADD CONSTRAINT threshold_type__name__unique UNIQUE (name); 


CREATE PROJECTION npm_tca_iot.threshold_type /*+createtype(P)*/ 
(
 id ENCODING RLE,
 name,
 operator,
 detail
)
AS
 SELECT threshold_type.id,
        threshold_type.name,
        threshold_type.operator,
        threshold_type.detail
 FROM npm_tca_iot.threshold_type
 ORDER BY threshold_type.id
UNSEGMENTED ALL NODES;


SELECT MARK_DESIGN_KSAFE(1);
INSERT INTO threshold_type (id, name, operator, detail) VALUES (1, 'Above', '>=', 'above threshold');
