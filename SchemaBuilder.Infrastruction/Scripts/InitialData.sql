SET IDENTITY_INSERT [dbo].[Schema] ON 
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (1, N'Thing', NULL)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (2, N'Organization', 1)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (3, N'Corporation', 2)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (4, N'EducationalOrganization', 2)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (5, N'ElementarySchool', 4)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (6, N'School', 4)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (7, N'CollegeOrUniversity', 4)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (8, N'LocalBusiness', 2)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (9, N'AutomotiveBusiness', 8)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (10, N'AutoBodyShop', 9)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (11, N'AutoDealer', 9)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (12, N'MotorcycleDealer', 9)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (13, N'EntertainmentBusiness', 8)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (14, N'AdultEntertainment', 13)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (15, N'ArtGallery', 13)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (16, N'NightClub', 13)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (17, N'MedicalBusiness', 8)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (18, N'Dentist', 17)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (19, N'Optician', 17)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (20, N'Pharmacy', 17)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (21, N'Physician', 17)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (22, N'Store', 8)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (23, N'ClothingStore', 22)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (24, N'GroceryStore', 22)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (25, N'LiquorStore', 22)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (26, N'WholesaleStore', 22)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (27, N'OnlineBusiness', 2)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (28, N'OnlineStore', 27)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (29, N'SportsOrganization', 2)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (30, N'SportsTeam', 29)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (31, N'Person', 1)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (32, N'Patient', 31)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (33, N'Place', 1)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (34, N'Accommodation', 33)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (35, N'TouristAttraction', 33)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (36, N'LocalBusiness', 33)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (37, N'Apartment', 34)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (38, N'Suite', 34)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (39, N'Product', 1)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (40, N'IndividualProduct', 39)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (41, N'ProductGroup', 39)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (42, N'Event', 1)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (43, N'BusinessEvent', 42)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (44, N'EducationEvent', 42)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (45, N'SocialEvent', 42)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (46, N'FoodEvent', 42)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (47, N'SportsEvent', 42)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (48, N'MusicEvent', 42)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (49, N'CreativeWork', 1)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (50, N'Blog', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (51, N'CreativeWorkSeries', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (52, N'BookSeries', 51)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (53, N'MovieSeries', 51)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (54, N'TvSeries', 51)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (55, N'Drawing', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (56, N'Movie', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (57, N'TVSeries', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (58, N'WebSite', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (59, N'VisualArtwork', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (60, N'CoverArt', 59)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (61, N'MedicalEntity', 1)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (62, N'MedicalDevice', 61)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (63, N'MedicalGuideline', 61)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (64, N'MedicalGuidelineRecommendation', 63)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (65, N'MedicalIndication', 61)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (66, N'TreatmentIndication', 65)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (67, N'PreventionIndication', 65)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (68, N'MedicalRiskFactor', 61)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (69, N'MedicalTest', 61)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (70, N'Blood Test', 69)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (71, N'Pathology Test', 69)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (72, N'Action', 1)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (73, N'AssessAction', 72)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (74, N'IgnoreAction', 73)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (75, N'ReviewAction', 73)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (76, N'SearchAction', 72)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (77, N'UpdateAction', 72)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (78, N'AddAction', 77)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (79, N'InsertAction', 78)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (80, N'Delete Action', 77)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (81, N'Replace Action', 77)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (82, N'BioChemEntity', 1)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (83, N'ChemicalSubstance', 82)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (84, N'MolecularEntity', 82)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (85, N'Protein', 82)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (86, N'AchieveAction', 72)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (87, N'LoseAction', 86)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (88, N'TieAction', 86)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (89, N'WinAction', 86)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (90, N'ConsumeAction', 72)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (91, N'DrinkAction', 90)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (92, N'EatAction', 90)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (93, N'InstallAction', 90)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (94, N'ListenAction', 90)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (95, N'PlayGameAction', 90)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (96, N'ReadAction', 90)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (97, N'UseAction', 90)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (98, N'WearAction', 97)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (99, N'ViewAction', 90)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (100, N'WatchAction', 90)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (101, N'ControlAction', 72)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (102, N'ActivateAction', 101)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (103, N'DeactivateAction', 101)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (104, N'ResumeAction', 101)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (105, N'SuspendAction', 101)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (106, N'CreateAction', 72)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (107, N'CookAction', 106)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (108, N'DrawAction', 106)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (109, N'FilmAction', 106)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (110, N'PaintAction', 106)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (111, N'PhotographAction', 106)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (112, N'WriteAction', 106)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (113, N'FindAction', 72)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (114, N'CheckAction', 113)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (115, N'DiscoverAction', 113)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (116, N'TrackAction', 113)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (117, N'InteractAction', 72)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (118, N'BefriendAction', 117)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (119, N'CommunicateAction', 117)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (120, N'AskAction', 119)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (121, N'CheckInAction', 119)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (122, N'CheckOutAction', 119)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (123, N'CommentAction', 119)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (124, N'InviteAction', 119)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (125, N'ReplyAction', 119)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (126, N'ShareAction', 119)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (127, N'InformAction', 119)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (128, N'ConfirmAction', 127)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (129, N'RsvpAction', 127)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (130, N'FollowAction', 117)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (131, N'JoinAction', 117)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (132, N'LeaveAction', 117)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (133, N'MarryAction', 117)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (134, N'RegisterAction', 117)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (135, N'SubscribeAction', 117)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (136, N'UnRegisterAction', 117)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (137, N'MoveAction', 72)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (138, N'ArriveAction', 137)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (139, N'DepartAction', 137)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (140, N'TravelAction', 137)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (141, N'OrganizeAction', 72)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (142, N'AllocateAction', 141)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (143, N'AcceptAction', 142)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (144, N'AssignAction', 142)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (145, N'AuthorizeAction', 142)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (146, N'RejectAction', 142)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (147, N'ApplyAction', 141)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (148, N'BookMarkAction', 141)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (149, N'PlanAction', 141)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (150, N'CancelAction', 149)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (151, N'ReserverAction', 149)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (152, N'ScheduleAction', 149)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (153, N'PlayAction', 72)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (154, N'ExerciseAction', 153)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (155, N'PerformAction', 153)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (156, N'TradeAction', 72)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (157, N'BuyAction', 156)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (158, N'DonateAction', 156)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (159, N'OrderAction', 156)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (160, N'PayAction', 156)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (161, N'PreOrderAction', 156)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (162, N'QuoteAction', 156)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (163, N'RentAction', 156)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (164, N'SellAction', 156)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (165, N'TipAction', 156)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (166, N'TransferAction', 72)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (167, N'BorrowAction', 166)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (168, N'DowloadAction', 166)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (169, N'GiveAction', 166)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (170, N'LendAction', 166)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (171, N'MoneyTransfer', 166)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (172, N'ReceiveAction', 166)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (173, N'ReturnAction', 166)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (174, N'SendAction', 166)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (175, N'TakeAction', 166)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (176, N'ProductCollection', 39)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (177, N'ProductModel', 39)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (178, N'SomeProducts', 39)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (179, N'Vehicle', 39)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (180, N'BusOrCoach', 179)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (181, N'Car', 179)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (182, N'Motorcycle', 179)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (183, N'MotorizedBicycle', 179)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (184, N'Taxon', 1)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (185, N'CampingPitch', 34)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (186, N'House', 34)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (187, N'SingleFamilyResidence', 186)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (188, N'Room', 34)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (189, N'HotelRoom', 188)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (190, N'MeetingRoom', 188)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (191, N'AdministrativeArea', 33)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (192, N'City', 191)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (193, N'Country', 191)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (194, N'SchoolDistrict', 191)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (195, N'State', 191)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (196, N'CivicStructure', 33)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (197, N'Airport', 196)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (198, N'Aquarium', 196)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (199, N'Beach', 196)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (200, N'BoatTerminal', 196)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (201, N'Bridge', 196)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (202, N'BusStation', 196)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (203, N'BusStop', 196)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (204, N'Campground', 196)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (205, N'Cemetery', 196)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (206, N'Crematorium', 196)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (207, N'EducationalOrganization', 196)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (208, N'EventVenue', 196)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (209, N'FireStation', 196)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (210, N'GovernmentBuilding', 196)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (211, N'CityHall', 210)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (212, N'Courthouse', 210)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (213, N'DefenceEstablishment', 210)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (214, N'Embassy', 210)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (215, N'LegislativeBuilding', 210)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (216, N'Hospital', 196)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (217, N'MovieTheater', 196)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (218, N'Museum', 196)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (219, N'MusicVenue', 196)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (220, N'Park', 196)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (221, N'ParkingFacility', 196)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (222, N'PerformingArtsTheater', 196)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (223, N'PlaceOfWorship', 196)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (224, N'BuddhistTemple', 223)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (225, N'Church', 223)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (226, N'CatholicChurch', 225)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (227, N'HinduTemple', 223)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (228, N'Mosque', 223)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (229, N'Synagogue', 223)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (230, N'Playground', 196)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (231, N'PoliceStation', 196)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (232, N'PublicToilet', 196)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (233, N'RVPark', 196)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (234, N'StadiumOrArena', 196)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (235, N'SubwayStation', 196)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (236, N'TaxiStand', 196)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (237, N'TrainStation', 196)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (238, N'Zoo', 196)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (239, N'Landform', 33)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (240, N'BodyOfWater', 239)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (241, N'Canal', 240)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (242, N'LakeBodyOfWater', 240)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (243, N'OceanBodyOfWater', 240)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (244, N'Pond', 240)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (245, N'Reservoir', 240)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (246, N'RiverBodyOfWater', 240)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (247, N'SeaBodyOfWater', 240)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (248, N'Waterfall', 240)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (249, N'Continent', 239)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (250, N'Mountain', 239)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (251, N'Volcano', 239)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (252, N'LandmarksOrHistoricalBuildings', 33)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (253, N'Residence', 33)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (254, N'ApartmentComplex', 253)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (255, N'GatedResidenceCommunity', 253)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (256, N'TouristDestination', 33)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (257, N'ChildrensEvent', 42)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (258, N'ComedyEvent', 42)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (259, N'CourseInstance', 42)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (260, N'DanceEvent', 42)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (261, N'DeliveryEvent', 42)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (262, N'EventSeries', 42)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (263, N'ExhibitionEvent', 42)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (264, N'Festival', 42)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (265, N'Hackathon', 42)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (266, N'LiteraryEvent', 42)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (267, N'PublicationEvent', 42)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (268, N'BroadcastEvent', 267)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (269, N'OnDemandEvent', 267)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (270, N'SaleEvent', 42)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (271, N'ScreeningEvent', 42)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (272, N'TheaterEvent', 42)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (273, N'UserInteraction', 42)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (274, N'UserBlocks', 273)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (275, N'UserCheckins', 273)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (276, N'UserComments', 273)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (277, N'UserDownloads', 273)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (278, N'UserLikes', 273)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (279, N'UserPageVisits', 273)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (280, N'UserPlays', 273)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (281, N'UserPlusOnes', 273)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (282, N'UserTweets', 273)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (283, N'VisualArtsEvent', 42)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (284, N'Intangible', 1)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (285, N'Brand', 284)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (286, N'BroadcastChannel', 284)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (287, N'RadioChannel', 286)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (288, N'AMRadioChannel', 287)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (289, N'FMRadioChannel', 287)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (290, N'TelevisionChannel', 286)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (291, N'Class', 284)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (292, N'ComputerLanguage', 284)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (293, N'DataFeedItem', 284)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (294, N'GameServer', 284)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (295, N'HealthInsurancePlan', 284)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (296, N'HealthPlanCostSharingSpecification', 284)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (297, N'HealthPlanFormulary', 284)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (298, N'HealthPlanNetwork', 284)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (299, N'ItemList', 284)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (300, N'BreadcrumbList', 299)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (301, N'HowToSection', 299)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (302, N'HowToStep', 299)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (303, N'OfferCatalog', 299)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (304, N'JobPosting', 284)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (305, N'MediaSubscription', 284)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (306, N'Offer', 284)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (307, N'AggregateOffer', 306)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (308, N'OfferForLease', 306)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (309, N'OfferForPurchase', 306)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (310, N'Ticket', 284)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (311, N'Trip', 284)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (312, N'BoatTrip', 311)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (313, N'BusTrip', 311)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (314, N'Flight', 311)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (315, N'TouristTrip', 311)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (316, N'TrainTrip', 311)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (317, N'VirtualLocation', 284)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (318, N'Article', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (319, N'AdvertiserContentArticle', 318)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (320, N'NewsArticle', 318)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (321, N'AnalysisNewsArticle', 320)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (322, N'AskPublicNewsArticle', 320)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (323, N'BackgroundNewsArticle', 320)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (324, N'OpinionNewsArticle', 320)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (325, N'ReportageNewsArticle', 320)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (326, N'ReviewNewsArticle', 320)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (327, N'Report', 318)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (328, N'SatiricalArticle', 318)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (329, N'ScholarlyArticle', 318)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (330, N'MedicalScholarlyArticle', 329)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (331, N'SocialMediaPosting', 318)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (332, N'BlogPosting', 331)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (333, N'LiveBlogPosting', 332)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (334, N'DiscussionForumPosting', 331)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (335, N'TechArticle', 318)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (336, N'APIReference', 335)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (337, N'Atlas', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (338, N'Book', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (339, N'Audiobook', 338)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (340, N'Chapter', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (341, N'Claim', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (342, N'Clip', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (343, N'MovieClip', 342)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (344, N'RadioClip', 342)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (345, N'TVClip', 342)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (346, N'VideoGameClip', 342)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (347, N'Code', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (348, N'Collection', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (349, N'ProductCollection', 348)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (350, N'ComicStory', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (351, N'ComicCoverArt', 350)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (352, N'Comment', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (353, N'Answer', 352)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (354, N'CorrectionComment', 352)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (355, N'Question', 352)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (356, N'Conversation', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (357, N'Course', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (358, N'CreativeWorkSeason', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (359, N'PodcastSeason', 358)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (360, N'RadioSeason', 358)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (361, N'TVSeason', 358)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (362, N'DataCatalog', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (363, N'Dataset', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (364, N'DataFeed', 363)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (365, N'CompleteDataFeed', 364)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (366, N'Diet', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (367, N'DigitalDocument', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (368, N'NoteDigitalDocument', 367)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (369, N'PresentationDigitalDocument', 367)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (370, N'SpreadsheetDigitalDocument', 367)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (371, N'TextDigitalDocument', 367)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (372, N'ExercisePlan', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (373, N'EducationalOccupationalCredential', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (374, N'Episode', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (375, N'PodcastEpisode', 374)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (376, N'RadioEpisode', 374)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (377, N'TvEpisode', 374)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (378, N'Game', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (379, N'VideoGame', 378)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (380, N'Guide', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (381, N'HowTo', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (382, N'Recipe', 381)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (383, N'HowToDirection', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (384, N'HowToSection', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (385, N'HowToStep', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (386, N'HowToTip', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (387, N'HyperToc', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (388, N'HyperTocEntry', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (389, N'LearningResource', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (390, N'Course', 389)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (391, N'Quiz', 389)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (392, N'Legislation', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (393, N'LegislationObject', 392)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (394, N'Manuscript', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (395, N'Map', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (396, N'MathSolver', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (397, N'MediaObject', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (398, N'3DModel', 397)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (399, N'AmpStory', 397)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (400, N'AudioObject', 397)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (401, N'AudioObjectSnapshot', 400)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (402, N'Audiobook', 400)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (403, N'DataDownload', 397)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (404, N'ImageObject', 397)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (405, N'Barcode', 404)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (406, N'ImageObjectSnapshot', 404)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (407, N'LegislationObject', 397)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (408, N'MusicVideoObject', 397)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (409, N'VideoObject', 397)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (410, N'VideoObjectSnapshot', 409)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (411, N'MediaReviewItem', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (412, N'Menu', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (413, N'MenuSection', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (415, N'MusicComposition', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (416, N'MusicPlaylist', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (417, N'MusicAlbum', 416)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (418, N'MusicRelease', 416)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (419, N'MusicRecording', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (420, N'Painting', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (421, N'Photograph', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (422, N'Play', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (423, N'Poster', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (424, N'PublicationIssue', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (425, N'ComicIssue', 424)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (426, N'PublicationVolume', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (427, N'Quotation', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (428, N'Sculpture', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (429, N'Season', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (430, N'SheetMusic', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (431, N'ShortStory', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (432, N'SoftwareApplication', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (433, N'MobileApplication', 432)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (434, N'VideoGame', 432)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (435, N'WebApplication', 432)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (436, N'SoftwareSourceCode', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (437, N'SpecialAnnouncement', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (438, N'Statement', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (439, N'TvSeason', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (440, N'Thesis', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (441, N'WebPage', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (442, N'AboutPage', 441)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (443, N'CheckoutPage', 441)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (444, N'CollectionPage', 441)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (445, N'MediaGallery', 444)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (446, N'ImageGallery', 445)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (447, N'VideoGallery', 445)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (448, N'ContactPage', 441)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (449, N'FAQPage', 441)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (450, N'ItemPage', 441)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (451, N'MedicalWebPage', 441)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (452, N'ProfilePage', 441)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (453, N'SearchResultsPage', 441)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (454, N'WebPageElement', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (455, N'SiteNavigationElement', 454)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (456, N'Table', 454)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (457, N'WPAdBlock', 454)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (458, N'WPFooter', 454)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (459, N'WPAHeader', 454)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (460, N'WPSideBar', 454)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (464, N'StructuredValue', 284)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (465, N'PropertyValue', 464)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (466, N'Rating', 284)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (467, N'AggregateRating', 466)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (468, N'LocationFeatureSpecification', 465)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (469, N'Review', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (470, N'OpeningHoursSpecification', 464)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (471, N'QuantitativeValue', 464)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (472, N'MedicalProcedure', 61)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (473, N'Enumeration', 284)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (474, N'Specialty', 473)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (475, N'MedicalSpecialty', 474)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (476, N'FloorPlan', 284)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (477, N'service', 284)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (480, N'TypeAndQuantityNode', 464)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (482, N'ContactPoint', 464)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (483, N'Occupation', 284)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (484, N'MedicalCondition', 61)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (485, N'Substance', 484)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (486, N'Drug', 485)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (487, N'DefinedTerm', 284)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (488, N'Airline', 2)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (489, N'Consortium', 2)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (490, N'FundingScheme', 2)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (491, N'GovernmentOrganization', 2)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (492, N'LibrarySystem', 2)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (493, N'MedicalOrganization', 2)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (494, N'Dentist', 493)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (495, N'DiagnosticLab', 493)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (496, N'Hospital', 493)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (497, N'MedicalClinic', 493)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (498, N'Pharmacy', 493)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (499, N'Physician', 493)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (500, N'VeterinaryCare', 493)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (501, N'NGO', 2)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (502, N'NewsMediaOrganization', 2)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (503, N'PerformingGroup', 2)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (504, N'DanceGroup', 503)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (505, N'MusicGroup', 503)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (506, N'TheaterGroup', 503)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (507, N'Project', 2)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (508, N'FundingAgency', 507)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (509, N'ResearchProject', 507)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (510, N'ResearchOrganization', 2)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (511, N'SearchRescueOrganization', 2)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (513, N'WorkersUnion', 2)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (514, N'NonprofitType', 2)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (515, N'BoardingPolicyType', 473)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (517, N'AnatomicalStructure', 61)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (518, N'Bone', 517)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (519, N'BrainStructure', 517)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (520, N'Joint', 517)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (521, N'Ligament', 517)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (522, N'Muscle', 517)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (523, N'Nerve', 517)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (524, N'Vessel', 517)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (525, N'Artery', 524)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (526, N'LymphaticVessel', 524)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (527, N'Vein', 524)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (528, N'AnatomicalSystem', 61)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (529, N'DrugClass', 61)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (530, N'DrugCost', 61)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (531, N'LifestyleModification', 61)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (533, N'PhysicalActivity', 531)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (534, N'ExercisePlan', 533)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (535, N'MedicalCause', 61)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (537, N'InfectiousDisease', 484)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (538, N'MedicalSignOrSymptom', 484)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (539, N'MedicalSign', 538)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (540, N'VitalSign', 539)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (541, N'MedicalSymptom', 538)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (542, N'MedicalContraindication', 61)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (544, N'MedicalGuidelineContraindication', 63)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (545, N'ApprovedIndication', 65)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (546, N'PreventionIndication', 65)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (548, N'MedicalIntangible', 61)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (549, N'DDxElement', 548)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (550, N'DoseSchedule', 548)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (551, N'MaximumDoseSchedule', 550)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (552, N'RecommendedDoseSchedule', 550)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (553, N'ReportedDoseSchedule', 550)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (554, N'DrugLegalStatus', 548)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (555, N'DrugStrength', 548)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (556, N'MedicalCode', 548)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (557, N'MedicalConditionStage', 548)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (558, N'DiagnosticProcedure', 472)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (559, N'PalliativeProcedure', 472)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (560, N'PhysicalExam', 472)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (561, N'SurgicalProcedure', 472)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (562, N'TherapeuticProcedure', 472)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (563, N'MedicalTherapy', 562)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (564, N'OccupationalTherapy', 563)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (565, N'PalliativeProcedure', 563)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (566, N'PhysicalTherapy', 563)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (567, N'RadiationTherapy', 563)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (568, N'RespiratoryTherapy', 563)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (569, N'PsychologicalTreatment', 562)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (570, N'MedicalRiskEstimator', 61)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (571, N'MedicalRiskCalculator', 570)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (572, N'MedicalRiskScore', 570)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (573, N'MedicalStudy', 61)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (574, N'MedicalObservationalStudy', 573)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (575, N'MedicalTrial', 573)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (576, N'BloodTest', 69)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (577, N'ImagingTest', 69)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (578, N'MedicalTestPanel', 69)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (579, N'PathologyTest', 69)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (580, N'DietarySupplement', 485)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (582, N'SuperficialAnatomy', 61)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (583, N'PostalAddress', 482)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (584, N'Schedule', 284)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (585, N'Quantity', 284)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (586, N'Duration', 585)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (588, N'MedicalEnumeration', 473)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (589, N'DrugCostCategory', 588)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (590, N'ProcedureType', 588)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (591, N'MedicalObservationalStudyDesign', 588)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (592, N'MedicalTrialDesign', 588)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (593, N'MedicalImagingTechnique', 588)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (594, N'DeliveryMethod', 473)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (595, N'BroadcastService', 477)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (596, N'Gene', 82)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (597, N'ChooseAction', 73)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (598, N'VoteAction', 597)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (599, N'ReactAction', 73)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (600, N'AgreeAction', 599)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (601, N'DisagreeAction', 599)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (602, N'DislikeAction', 599)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (603, N'EndorseAction', 599)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (604, N'LikeAction', 599)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (605, N'WantAction', 599)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (607, N'StatusEnumeration', 473)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (608, N'ActionStatusType', 607)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (609, N'EntryPoint', 284)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (610, N'ActionAccessSpecification', 284)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (611, N'Distance', 585)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (612, N'Audience', 284)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (613, N'RealEstateAgent', 8)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (614, N'AlignmentObject', 284)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (615, N'BusinessAudience', 612)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (616, N'EducationalAudience', 612)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (617, N'MedicalAudience', 612)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (618, N'Patient', 612)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (619, N'PeopleAudience', 612)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (620, N'ParentAudience', 619)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (621, N'Researcher', 612)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (622, N'BedDetails', 284)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (623, N'BroadcastFrequencySpecification', 284)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (624, N'BoatTerminal', 196)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (625, N'Message', 49)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (626, N'MenuItem', 284)
GO
INSERT [dbo].[Schema] ([id], [name], [parentId]) VALUES (627, N'RestrictedDiet', 473)
GO
SET IDENTITY_INSERT [dbo].[Schema] OFF
GO
SET IDENTITY_INSERT [dbo].[SchemaProperty] ON 
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (1, N'PropertyID', 465, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (2, N'Value', 465, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (3, N'identifier', 1, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (4, N'description', 1, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (5, N'image', 1, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (6, N'name', 1, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (7, N'potentialAction', 1, 0, 72, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (8, N'url', 1, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (9, N'additionalProperty', 33, 4, 465, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (10, N'address', 33, 4, 583, N'Address', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (11, N'aggregateRating', 33, 4, 467, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (12, N'amenityFeature', 33, 4, 468, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (13, N'branchCode', 33, 0, NULL, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (14, N'event', 33, 4, 42, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (15, N'faxNumber', 33, 0, NULL, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (16, N'globalLocationNumber', 33, 0, NULL, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (17, N'hasMap', 33, 0, NULL, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (18, N'isAccessibleForFree', 33, 1, NULL, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (19, N'isicV4', 33, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (20, N'latitude', 33, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (21, N'logo', 33, 0, NULL, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (22, N'maximumAttendeeCapacity', 33, 2, NULL, N'Maximum Attendee Capacity', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (23, N'publicAccess', 33, 1, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (24, N'review', 33, 4, 469, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (25, N'telephone', 33, 0, NULL, N'Telephone', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (26, N'specialOpeningHoursSpecification', 33, 4, 470, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (27, N'smokingAllowed', 33, 1, NULL, N'Smoking Allowed', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (28, N'longitude', 33, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (29, N'accommodationCategory', 34, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (30, N'floorLevel', 34, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (31, N'floorSize', 34, 4, 471, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (32, N'numberOfBedrooms', 34, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (33, N'numberOfRooms', 34, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (34, N'permittedUsage', 34, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (35, N'petsAllowed', 34, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (36, N'yearBuilt', 34, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (37, N'numberOfRooms', 37, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (38, N'occupancy', 37, 4, 471, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (39, N'numberOfRooms', 186, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (40, N'bed', 38, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (41, N'numberOfRooms', 38, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (42, N'occupancy', 38, 4, 471, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (43, N'openingHours', 196, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (44, N'iataCode', 197, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (45, N'icaoCode', 197, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (46, N'alumni', 207, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (47, N'availableService', 216, 4, 472, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (48, N'medicalSpecialty', 216, 4, 475, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (49, N'screenCount', 217, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (50, N'currenciesAccepted', 36, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (51, N'openingHours', 36, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (52, N'paymentAccepted', 36, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (53, N'priceRange', 36, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (54, N'accommodationFloorPlan', 253, 4, 476, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (55, N'numberOfBedrooms', 254, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (56, N'petsAllowed', 254, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (57, N'numberOfAccommodationUnits', 254, 4, 471, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (58, N'availableLanguage', 35, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (59, N'touristType', 35, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (60, N'touristType', 256, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (61, N'includesAttraction', 256, 4, 35, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (62, N'additionalProperty', 39, 4, 465, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (63, N'aggregateRating', 39, 4, 467, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (64, N'award', 39, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (65, N'brand', 39, 4, 285, N'Brand', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (66, N'category', 39, 0, NULL, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (67, N'color', 39, 0, NULL, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (68, N'depth', 39, 4, 471, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (69, N'gtin', 39, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (70, N'hasMeasurement', 39, 4, 471, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (71, N'height', 39, 4, 471, N'Height', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (72, N'isFamilyFriendly', 39, 1, NULL, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (73, N'isRelatedTo', 39, 4, 477, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (74, N'isSimilarTo', 39, 4, 477, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (75, N'keywords', 39, 0, NULL, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (76, N'logo', 39, 0, NULL, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (77, N'material', 39, 0, NULL, N'Material', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (78, N'model', 39, 0, NULL, N'Model', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (79, N'mpn', 39, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (80, N'nsn', 39, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (81, N'offers', 39, 4, 306, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (82, N'pattern', 39, 0, NULL, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (83, N'productID', 39, 0, NULL, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (84, N'productionDate', 39, 3, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (85, N'purchaseDate', 39, 3, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (87, N'size', 39, 0, NULL, N'Size', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (88, N'review', 39, 4, 469, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (89, N'slogan', 39, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (90, N'weight', 39, 4, 471, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (91, N'width', 39, 4, 471, N'Width', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (92, N'serialNumber', 40, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (93, N'includesObject', 176, 4, 480, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (94, N'productGroupID', 41, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (95, N'variesBy', 41, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (96, N'isVariantOf', 177, 4, 177, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (97, N'predecessorOf', 177, 4, 177, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (98, N'successorOf', 177, 4, 177, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (99, N'inventoryLevel', 178, 4, 471, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (100, N'accelerationTime', 179, 4, 471, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (101, N'bodyType', 179, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (102, N'callSign', 179, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (103, N'dateVehicleFirstRegistered', 179, 3, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (104, N'driveWheelConfiguration', 179, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (105, N'fuelCapacity', 179, 4, 471, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (106, N'fuelConsumption', 179, 4, 471, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (107, N'fuelEfficiency', 179, 4, 471, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (108, N'fuelType', 179, 4, 471, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (109, N'modelDate', 179, 3, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (110, N'numberOfAirbags', 179, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (111, N'numberOfDoors', 179, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (112, N'productionDate', 179, 3, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (113, N'purchaseDate', 179, 3, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (114, N'seatingCapacity', 179, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (115, N'speed', 179, 4, 471, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (116, N'vehicleConfiguration', 179, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (117, N'vehicleIdentificationNumber', 179, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (118, N'vehicleModelDate', 179, 3, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (119, N'vehicleTransmission', 179, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (120, N'acrissCode', 180, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (121, N'roofLoad', 180, 4, 471, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (122, N'acrissCode', 181, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (123, N'roofLoad', 181, 4, 471, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (124, N'vehicleInteriorColor', 179, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (125, N'vehicleInteriorType', 179, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (126, N'additionalName', 31, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (127, N'address', 31, 4, 583, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (128, N'affiliation', 31, 4, 2, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (129, N'alumniOf', 2, 4, 31, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (130, N'award', 31, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (131, N'birthDate', 31, 3, NULL, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (132, N'birthPlace', 31, 4, 33, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (133, N'callSign', 31, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (134, N'colleague', 31, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (135, N'ContactPoint', 31, 4, 482, N'Contact Point', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (136, N'deathDate', 31, 3, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (137, N'deathPlace', 31, 4, 33, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (138, N'email', 31, 0, NULL, N'Email', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (139, N'familyName', 31, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (140, N'faxNumber', 31, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (141, N'gender', 31, 0, NULL, N'Gender', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (142, N'givenName', 31, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (143, N'globalLocationNumber', 31, 0, NULL, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (144, N'hasOccupation', 31, 4, 483, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (145, N'homeLocation', 31, 4, 482, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (146, N'honorificPrefix', 31, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (147, N'honorificSuffix', 31, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (148, N'isicV4', 31, 0, NULL, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (149, N'code', 61, 4, 556, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (150, N'jobTitle', 31, 0, NULL, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (151, N'memberOf', 2, 4, 31, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (152, N'naics', 31, 0, NULL, N'Naics', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (153, N'nationality', 31, 0, NULL, N'Nationality', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (154, N'parent', 31, 0, 31, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (155, N'spouse', 31, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (156, N'taxID', 31, 0, NULL, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (157, N'telephone', 31, 0, NULL, N'Telephone', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (158, N'weight', 31, 4, 471, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (159, N'worksFor', 2, 4, 31, N'Works For', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (160, N'diagnosis', 32, 4, 484, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (161, N'healthCondition', 32, 4, 484, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (162, N'drug', 32, 4, 486, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (163, N'childTaxon', 184, 0, NULL, N'Child Taxon', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (164, N'parentTaxon', 184, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (165, N'taxonRank', 184, 0, NULL, N'Taxon Rank', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (166, N'hasDefinedTerm', 184, 4, 487, N'Has Defined Term', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (167, N'actionableFeedbackPolicy', 2, 0, NULL, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (168, N'address', 2, 4, 583, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (169, N'aggregateRating', 2, 4, 467, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (170, N'alumni', 2, 4, 31, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (171, N'areaServed', 2, 0, NULL, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (172, N'award', 2, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (173, N'brand', 2, 4, 285, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (174, N'correctionsPolicy', 2, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (175, N'department', 2, 0, 2, N'Department', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (176, N'dissolutionDate', 2, 3, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (177, N'diversityPolicy', 2, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (178, N'diversityStaffingReport', 2, 0, NULL, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (179, N'duns', 2, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (180, N'email', 2, 0, NULL, N'Email', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (181, N'employee', 2, 4, 31, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (182, N'ethicsPolicy', 2, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (183, N'faxNumber', 2, 0, NULL, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (184, N'founder', 2, 4, 31, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (185, N'foundingDate', 2, 3, NULL, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (186, N'foundingLocation', 2, 4, 33, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (187, N'funder', 2, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (188, N'globalLocationNumber', 2, 0, NULL, N'Global Location Number', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (189, N'hasCredential', 2, 4, 373, N' ', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (190, N'hasPOS', 2, 4, 33, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (191, N'isicV4', 2, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (192, N'iso6523Code', 2, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (193, N'keywords', 2, 0, NULL, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (194, N'legalName', 2, 0, NULL, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (195, N'leiCode', 2, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (196, N'location', 2, 0, NULL, N'Location', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (197, N'logo', 2, 0, NULL, N'Logo', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (198, N'member', 2, 4, 31, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (199, N'naics', 2, 0, NULL, N'Naics', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (200, N'numberOfEmployees', 2, 4, 471, N'Number Of Employees', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (201, N'slogan', 2, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (202, N'taxID', 2, 0, NULL, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (203, N'sponsor', 2, 4, 31, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (204, N'telephone', 2, 0, NULL, N'TelePhone', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (205, N'vatID', 2, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (206, N'parentOrganization', 2, 4, 2, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (207, N'nonprofitStatus', 2, 0, 514, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (208, N'unnamedSourcesPolicy', 2, 0, NULL, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (209, N'boardingPolicy', 488, 4, 515, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (210, N'iataCode', 488, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (211, N'tickerSymbol', 3, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (212, N'alumni', 4, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (213, N'currenciesAccepted', 8, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (214, N'openingHours', 8, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (215, N'paymentAccepted', 8, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (216, N'priceRange', 8, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (217, N'healthPlanNetworkId', 494, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (218, N'isAcceptingNewPatients', 494, 1, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (219, N'medicalSpecialty', 494, 4, 475, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (220, N'availableTest', 495, 4, 69, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (221, N'availableService', 496, 4, 69, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (222, N'medicalSpecialty', 496, 4, 475, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (223, N'availableService', 497, 4, 69, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (224, N'medicalSpecialty', 497, 4, 475, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (225, N'availableService', 499, 4, 69, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (226, N'hospitalAffiliation', 499, 4, 216, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (227, N'medicalSpecialty', 499, 4, 475, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (228, N'actionableFeedbackPolicy', 502, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (229, N'correctionsPolicy', 502, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (230, N'diversityPolicy', 502, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (231, N'diversityStaffingReport', 502, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (232, N'ethicsPolicy', 502, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (233, N'ownershipFundingInfo', 502, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (234, N'verificationFactCheckingPolicy', 502, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (235, N'sport', 29, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (236, N'athlete', 30, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (237, N'coach', 30, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (238, N'gender', 30, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (239, N'maxValue', 465, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (240, N'minValue', 465, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (241, N'unitCode', 465, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (242, N'addressCountry', 583, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (243, N'addressLocality', 583, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (244, N'addressRegion', 583, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (245, N'postOfficeBoxNumber', 583, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (246, N'PostalCode', 583, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (247, N'StreetAddress', 583, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (248, N'ratingCount', 467, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (249, N'reviewCount', 467, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (250, N'itemReviewed', 467, 4, 1, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (251, N'validFrom', 468, 3, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (252, N'validThrough', 468, 3, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (253, N'hoursAvailable', 468, 4, 470, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (254, N'photo', 33, 4, 404, N'Photo', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (255, N'caption', 404, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (256, N'embeddedTextCaption', 404, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (257, N'exifData', 404, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (258, N'representativeOfPage', 404, 1, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (259, N'thumbnail', 404, 4, 404, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (260, N'closes', 470, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (261, N'opens', 470, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (262, N'validFrom', 470, 3, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (263, N'validThrough', 470, 3, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (264, N'associatedClaimReview', 469, 0, 469, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (265, N'itemReviewed', 469, 4, 1, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (266, N'negativeNotes', 469, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (267, N'positiveNotes', 469, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (268, N'reviewBody', 469, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (269, N'reviewAspect', 469, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (270, N'reviewRating', 469, 4, 466, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (271, N'amenityFeature', 476, 4, 468, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (272, N'floorSize', 476, 4, 471, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (273, N'numberOfAccommodationUnits', 476, 4, 471, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (274, N'numberOfAvailableAccommodationUnits', 476, 4, 471, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (275, N'numberOfBedrooms', 476, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (276, N'numberOfFullBathrooms', 476, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (277, N'numberOfRooms', 476, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (278, N'petsAllowed', 476, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (279, N'maxValue', 471, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (280, N'minValue', 471, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (281, N'unitText', 471, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (282, N'unitCode', 471, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (283, N'valueReference', 471, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (284, N'about', 42, 4, 1, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (285, N'actor', 42, 0, 31, N'Actor', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (286, N'aggregateRating', 42, 4, 467, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (287, N'attendee', 42, 0, 31, N'Attendee', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (288, N'composer', 31, 0, 42, N'Composer', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (289, N'director', 31, 4, 42, N'Director', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (290, N'doorTime', 42, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (291, N'endDate', 42, 3, NULL, N'End Date', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (292, N'eventSchedule', 42, 4, 584, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (293, N'byDay', 584, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (294, N'byMonth', 584, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (295, N'byMonthWeek', 584, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (296, N'guideline', 61, 4, 63, N'Guideline', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (297, N'evidenceOrigin', 63, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (298, N'endDate', 584, 3, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (299, N'endTime', 584, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (300, N'startDate', 584, 3, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (301, N'startTime', 584, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (302, N'inLanguage', 42, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (303, N'keywords', 42, 0, NULL, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (304, N'location', 42, 0, NULL, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (305, N'advanceBookingRequirement', 306, 4, 471, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (306, N'aggregateRating', 306, 4, 467, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (307, N'areaServed', 306, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (308, N'availableAtOrFrom', 306, 4, 33, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (309, N'category', 306, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (310, N'hasMeasurement', 306, 4, 471, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (311, N'itemOffered', 306, 0, 42, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (312, N'price', 306, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (313, N'priceCurrency', 306, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (314, N'priceValidUntil', 306, 3, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (315, N'seller', 306, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (316, N'serialNumber', 306, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (317, N'validFrom', 306, 3, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (318, N'validThrough', 306, 3, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (319, N'offers', 42, 4, 306, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (320, N'organizer', 31, 4, 42, N'Organizer', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (321, N'performer', 31, 4, 42, N'Performer', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (322, N'sponsor', 42, 0, 31, N'Sponser', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (323, N'remainingAttendeeCapacity', 42, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (324, N'startDate', 42, 3, NULL, N'Start Date', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (325, N'subEvent', 42, 0, 42, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (326, N'superEvent', 42, 0, 42, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (327, N'typicalAgeRange', 42, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (328, N'areaServed', 482, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (329, N'availableLanguage', 482, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (330, N'contactType', 482, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (331, N'email', 482, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (332, N'faxNumber', 482, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (333, N'telephone', 482, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (334, N'termCode', 487, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (335, N'inDefinedTermSet', 487, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (336, N'amountOfThisGood', 480, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (337, N'typeOfGood', 480, 4, 39, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (338, N'unitCode', 480, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (339, N'unitText', 480, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (340, N'competencyRequired', 373, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (341, N'credentialCategory', 373, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (342, N'educationalLevel', 373, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (343, N'recognizedBy', 373, 4, 2, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (344, N'validFor', 373, 0, 586, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (345, N'validIn', 373, 0, 191, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (346, N'codeValue', 556, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (347, N'codingSystem', 556, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (348, N'guidelineDate', 63, 3, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (349, N'guidelineSubject', 63, 4, 61, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (350, N'legalStatus', 61, 0, NULL, N'Legal status', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (351, N'recognizingAuthority', 61, 4, 2, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (352, N'relevantSpecialty', 61, 0, 475, N'Relevant Speciality', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (353, N'study', 61, 4, 573, N'Study', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (354, N'healthCondition', 573, 4, 484, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (355, N'sponsor', 573, 0, 2, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (356, N'status', 573, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (357, N'studyLocation', 573, 0, 191, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (358, N'studySubject', 573, 4, 61, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (359, N'epidemiology', 484, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (360, N'expectedPrognosis', 484, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (361, N'naturalProgression', 484, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (362, N'pathophysiology', 484, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (363, N'status', 484, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (364, N'signOrSymptom', 484, 4, 538, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (365, N'possibleTreatment', 538, 0, 563, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (366, N'contraindication', 538, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (367, N'duplicateTherapy', 538, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (368, N'seriousAdverseOutcome', 538, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (369, N'associatedPathophysiology', 517, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (370, N'bodyLocation', 517, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (371, N'diagram', 517, 4, 404, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (372, N'connectedTo', 517, 4, 517, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (373, N'relatedCondition', 517, 4, 484, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (374, N'relatedTherapy', 517, 4, 563, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (375, N'subStructure', 517, 4, 517, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (376, N'biomechnicalClass', 520, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (377, N'functionalClass', 520, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (378, N'structuralClass', 520, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (379, N'antagonist', 522, 4, 522, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (380, N'bloodSupply', 522, 4, 524, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (381, N'insertion', 522, 4, 517, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (382, N'muscleAction', 522, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (383, N'nerve', 522, 4, 523, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (384, N'nerveMotor', 523, 4, 522, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (385, N'sensoryUnit', 523, 4, 517, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (386, N'arterialBranch', 525, 4, 517, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (387, N'supplyTo', 525, 4, 517, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (388, N'originatesFrom', 526, 4, 524, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (389, N'regionDrained', 526, 4, 517, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (390, N'runsTo', 526, 4, 524, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (391, N'drainsTo', 527, 4, 524, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (392, N'regionDrained', 527, 4, 517, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (393, N'tributary', 527, 4, 517, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (394, N'associatedPathophysiology', 528, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (395, N'comprisedOf', 528, 4, 517, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (396, N'relatedCondition', 528, 4, 484, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (397, N'relatedStructure', 528, 4, 517, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (398, N'relatedTherapy', 528, 4, 563, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (399, N'drug', 529, 4, 486, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (400, N'activeIngredient', 486, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (401, N'administrationRoute', 486, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (402, N'alcoholWarning', 486, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (403, N'breastfeedingWarning', 486, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (404, N'clinicalPharmacology', 486, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (405, N'dosageForm', 486, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (406, N'drugUnit', 486, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (407, N'foodWarning', 486, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (408, N'interactingDrug', 486, 4, 486, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (409, N'isProprietary', 486, 1, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (410, N'labelDetails', 486, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (411, N'legalStatus', 486, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (412, N'manufacturer', 486, 4, 2, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (413, N'nonProprietaryName', 486, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (414, N'overdosage', 486, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (415, N'pregnancyWarning', 486, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (416, N'prescribingInfo', 486, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (417, N'prescriptionStatus', 486, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (418, N'relatedDrug', 486, 4, 486, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (419, N'warning', 486, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (420, N'applicableLocation', 530, 4, 191, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (421, N'costCurrency', 530, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (422, N'costOrigin', 530, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (423, N'costPerUnit', 530, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (424, N'drugUnit', 530, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (425, N'costCategory', 530, 4, 589, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (431, N'associatedAnatomy', 533, 4, 517, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (432, N'category', 533, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (433, N'epidemiology', 533, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (434, N'pathophysiology', 533, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (435, N'activityDuration', 534, 4, 471, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (436, N'activityFrequency', 534, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (437, N'additionalVariable', 534, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (438, N'exerciseType', 534, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (439, N'intensity', 534, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (440, N'repetitions', 534, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (441, N'restPeriods', 534, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (442, N'workload', 534, 4, 471, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (443, N'alignmentType', 614, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (444, N'causeOf', 535, 4, 61, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (445, N'infectiousAgent', 537, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (446, N'transmissionMethod', 537, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (447, N'identifyingExam', 539, 0, 560, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (448, N'identifyingTest', 539, 4, 69, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (449, N'affectedBy', 69, 4, 486, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (450, N'normalRange', 69, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (451, N'signDetected', 69, 4, 539, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (452, N'usedToDiagnose', 69, 4, 484, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (453, N'adverseOutcome', 62, 4, 61, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (454, N'contraindication', 62, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (455, N'postOp', 62, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (456, N'preOp', 62, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (457, N'procedure', 62, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (458, N'seriousAdverseOutcome', 62, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (459, N'guidelineSubject', 62, 4, 61, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (460, N'recommendationStrength', 64, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (461, N'diagnosis', 549, 4, 484, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (462, N'distinguishingSign', 549, 4, 538, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (463, N'doseUnit', 550, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (464, N'doseValue', 550, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (465, N'frequency', 550, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (466, N'targetPopulation', 550, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (467, N'applicableLocation', 554, 4, 191, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (468, N'activeIngredient', 555, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (469, N'availableIn', 555, 4, 191, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (470, N'strengthUnit', 555, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (471, N'strengthValue', 555, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (472, N'stageAsNumber', 557, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (473, N'subStageSuffix', 557, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (474, N'bodyLocation', 472, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (475, N'followup', 472, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (476, N'howPerformed', 472, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (477, N'preparation', 472, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (478, N'status', 472, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (479, N'procedureType', 472, 4, 590, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (480, N'adverseOutcome', 562, 4, 61, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (481, N'drug', 562, 4, 486, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (482, N'doseSchedule', 562, 4, 550, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (483, N'estimatesRiskOf', 570, 4, 61, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (484, N'includedRiskFactor', 570, 4, 68, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (485, N'increasesRiskOf', 68, 4, 61, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (486, N'algorithm', 572, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (487, N'studyDesign', 574, 4, 591, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (488, N'trialDesign', 575, 4, 592, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (489, N'imagingTechnique', 577, 4, 593, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (490, N'subTest', 578, 4, 69, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (491, N'tissueSample', 579, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (492, N'activeIngredient', 485, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (493, N'maximumIntake', 485, 4, 551, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (494, N'activeIngredient', 580, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (495, N'isProprietary', 580, 1, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (496, N'legalStatus', 580, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (497, N'manufacturer', 580, 4, 2, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (498, N'mechanismOfAction', 580, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (499, N'maximumIntake', 580, 4, 551, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (500, N'nonProprietaryName', 580, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (501, N'proprietaryName', 580, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (502, N'safetyConsideration', 580, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (503, N'targetPopulation', 580, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (504, N'associatedPathophysiology', 582, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (505, N'relatedAnatomy', 582, 4, 517, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (506, N'relatedCondition', 582, 4, 484, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (507, N'relatedTherapy', 582, 4, 563, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (508, N'significance', 582, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (509, N'differentialDiagnosis', 484, 4, 549, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (510, N'riskFactor', 484, 4, 68, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (511, N'typicalTest', 484, 4, 69, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (512, N'possibleTreatment', 484, 0, 563, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (513, N'primaryPrevention', 484, 0, 563, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (514, N'accessCode', 261, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (515, N'availableFrom', 261, 6, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (516, N'availableThrough', 261, 6, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (517, N'hasDeliveryMethod', 261, 4, 594, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (518, N'assesses', 44, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (519, N'educationalLevel', 44, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (520, N'teaches', 44, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (521, N'publishedBy', 267, 4, 2, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (522, N'publishedOn', 267, 4, 595, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (523, N'broadcastAffiliateOf', 595, 4, 2, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (524, N'broadcastFrequency', 595, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (525, N'broadcastDisplayName', 595, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (526, N'broadcastTimezone', 595, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (527, N'broadcaster', 595, 4, 2, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (528, N'callSign', 595, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (529, N'inLanguage', 595, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (530, N'videoFormat', 595, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (531, N'broadcastOfEvent', 268, 4, 42, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (532, N'isLiveBroadcast', 268, 1, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (533, N'subtitleLanguage', 268, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (534, N'videoFormat', 268, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (535, N'subtitleLanguage', 271, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (536, N'videoFormat', 271, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (537, N'workPresented', 271, 4, 56, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (538, N'actor', 56, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (539, N'director', 56, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (540, N'duration', 56, 4, 586, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (541, N'musicBy', 56, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (542, N'productionCompany', 56, 4, 2, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (543, N'subtitleLanguage', 56, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (544, N'titleEIDR', 56, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (545, N'trailer', 56, 4, 409, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (546, N'awayTeam', 47, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (547, N'competitor', 47, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (548, N'homeTeam', 47, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (549, N'sport', 47, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (550, N'associatedDisease', 82, 4, 484, N'Associated Disease', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (551, N'bioChemInteraction', 82, 4, 82, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (552, N'bioChemSimilarity', 82, 4, 82, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (553, N'hasBioChemEntityPart', 82, 4, 82, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (554, N'hasMolecularFunction', 82, 0, NULL, N'Has Molecular Function', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (555, N'hasRepresentation', 82, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (556, N'isEncodedByBioChemEntity', 82, 4, 596, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (557, N'isInvolvedInBiologicalProcess', 82, 0, NULL, N'Is Involved In Biological Process', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (558, N'isLocatedInSubcellularLocation', 82, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (559, N'isPartOfBioChemEntity', 82, 4, 82, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (560, N'taxonomicRange', 82, 0, NULL, N'Taxonomic Range', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (561, N'chemicalComposition', 83, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (562, N'chemicalRole', 83, 4, 487, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (563, N'potentialUse', 83, 4, 487, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (564, N'alternativeOf', 596, 4, 596, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (565, N'encodesBioChemEntity', 596, 4, 82, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (566, N'expressedIn', 596, 4, 487, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (567, N'hasBioPolymerSequence', 596, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (568, N'chemicalRole', 84, 4, 487, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (569, N'inChI', 84, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (570, N'inChIKey', 84, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (571, N'iupacName', 84, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (572, N'molecularFormula', 84, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (573, N'molecularWeight', 84, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (574, N'potentialUse', 84, 4, 487, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (575, N'smiles', 84, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (576, N'hasBioPolymerSequence', 85, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (577, N'actionStatus', 72, 0, 608, N'Action Status', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (578, N'agent', 72, 4, 31, N'Agent', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (579, N'endTime', 72, 5, NULL, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (580, N'error', 72, 4, 1, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (581, N'instrument', 72, 4, 1, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (582, N'location', 72, 4, 583, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (583, N'object', 72, 4, 1, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (584, N'participant', 72, 4, 2, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (585, N'provider', 72, 4, 2, N'Provider', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (586, N'result', 72, 4, 1, N'Result', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (587, N'startTime', 72, 5, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (588, N'target', 72, 4, 609, N'Target', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (589, N'actionPlatform', 609, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (590, N'contentType', 609, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (591, N'encodingType', 609, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (592, N'httpMethod', 609, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (593, N'urlTemplate', 609, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (594, N'winner', 87, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (595, N'loser', 89, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (596, N'actionOption', 597, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (597, N'candidate', 598, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (598, N'actionAccessibilityRequirement', 90, 4, 610, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (599, N'expectsAcceptanceOf', 90, 4, 306, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (600, N'availabilityEnds', 610, 5, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (601, N'availabilityStarts', 610, 5, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (602, N'category', 610, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (603, N'eligibleRegion', 610, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (604, N'expectsAcceptanceOf', 610, 4, 306, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (605, N'ineligibleRegion', 610, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (606, N'requiresSubscription', 610, 1, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (607, N'foodEstablishment', 107, 4, 33, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (608, N'foodEvent', 107, 4, 46, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (609, N'inLanguage', 112, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (610, N'followee', 130, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (611, N'about', 119, 4, 1, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (612, N'inLanguage', 119, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (613, N'recipient', 119, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (614, N'question', 120, 4, 355, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (615, N'acceptedAnswer', 355, 4, 353, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (616, N'answerCount', 355, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (617, N'eduQuestionType', 355, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (618, N'suggestedAnswer', 355, 4, 353, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (619, N'answerExplanation', 353, 4, 352, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (620, N'resultComment', 123, 4, 352, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (621, N'event', 127, 4, 42, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (622, N'resultComment', 124, 4, 352, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (623, N'fromLocation', 137, 4, 33, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (624, N'toLocation', 137, 4, 33, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (625, N'distance', 140, 4, 611, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (626, N'scheduledTime', 149, 6, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (627, N'event', 153, 4, 42, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (628, N'audience', 153, 4, 612, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (629, N'audienceType', 612, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (630, N'geographicArea', 612, 4, 191, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (631, N'diet', 154, 4, 366, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (632, N'distance', 154, 4, 611, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (633, N'exerciseCourse', 154, 4, 33, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (634, N'exercisePlan', 154, 4, 372, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (635, N'exerciseType', 154, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (636, N'fromLocation', 154, 4, 33, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (637, N'opponent', 154, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (638, N'sportsEvent', 154, 4, 47, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (639, N'sportsTeam', 154, 4, 30, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (640, N'toLocation', 154, 4, 33, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (641, N'query', 76, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (642, N'price', 156, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (643, N'priceCurrency', 156, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (644, N'seller', 157, 4, 2, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (645, N'recipient', 158, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (646, N'deliveryMethod', 159, 4, 594, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (647, N'recipient', 160, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (648, N'landlord', 163, 4, 2, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (649, N'realEstateAgent', 163, 4, 613, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (650, N'buyer', 164, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (651, N'recipient', 165, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (652, N'fromLocation', 166, 4, 33, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (653, N'toLocation', 166, 4, 33, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (654, N'lender', 167, 4, 2, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (655, N'recipient', 169, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (656, N'borrower', 170, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (657, N'amount', 171, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (658, N'beneficiaryBank', 171, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (659, N'deliveryMethod', 172, 4, 594, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (660, N'sender', 172, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (661, N'recipient', 173, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (662, N'deliveryMethod', 174, 4, 594, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (663, N'recipient', 174, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (664, N'targetCollection', 77, 4, 1, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (665, N'toLocation', 79, 4, 33, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (666, N'replacee', 81, 4, 1, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (667, N'replacer', 81, 4, 1, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (668, N'educationalFramework', 614, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (669, N'targetDescription', 614, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (670, N'targetName', 614, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (671, N'targetUrl', 614, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (672, N'numberOfEmployees', 615, 4, 471, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (673, N'yearlyRevenue', 615, 4, 471, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (674, N'yearsInOperation', 615, 4, 471, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (675, N'educationalRole', 616, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (676, N'diagnosis', 618, 4, 484, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (677, N'drug', 618, 4, 486, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (678, N'healthCondition', 618, 4, 484, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (679, N'healthCondition', 619, 4, 484, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (680, N'requiredGender', 619, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (681, N'requiredMaxAge', 619, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (682, N'requiredMinAge', 619, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (683, N'suggestedAge', 619, 4, 471, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (684, N'suggestedGender', 619, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (685, N'suggestedMaxAge', 619, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (686, N'suggestedMeasurement', 619, 4, 471, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (687, N'suggestedMinAge', 619, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (688, N'childMaxAge', 620, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (689, N'childMinAge', 620, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (690, N'numberOfBeds', 622, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (691, N'typeOfBed', 622, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (692, N'aggregateRating', 285, 4, 467, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (693, N'logo', 285, 4, 404, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (694, N'slogan', 285, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (695, N'review', 285, 4, 469, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (696, N'broadcastChannelId', 286, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (697, N'broadcastFrequency', 286, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (698, N'broadcastServiceTier', 286, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (699, N'genre', 286, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (700, N'providesBroadcastService', 286, 4, 595, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (701, N'broadcastFrequencyValue', 623, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (702, N'broadcastSignalModulation', 623, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (703, N'broadcastSubChannel', 623, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (704, N'supersededBy', 291, 4, 473, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (705, N'dateCreated', 293, 3, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (706, N'dateDeleted', 293, 3, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (707, N'dateModified', 293, 3, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (708, N'item', 293, 4, 1, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (709, N'game', 294, 4, 379, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (710, N'actor', 379, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (711, N'cheatCode', 379, 4, 49, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (712, N'director', 379, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (713, N'gameEdition', 379, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (714, N'gamePlatform', 379, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (715, N'gameTip', 379, 4, 49, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (716, N'musicBy', 379, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (717, N'playersOnline', 294, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (718, N'benefitsSummaryUrl', 295, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (719, N'healthPlanDrugOption', 295, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (720, N'healthPlanDrugTier', 295, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (721, N'healthPlanId', 295, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (722, N'usesHealthPlanIdStandard', 295, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (723, N'healthPlanMarketingUrl', 295, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (724, N'healthPlanCoinsuranceOption', 296, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (725, N'healthPlanCoinsuranceRate', 296, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (726, N'healthPlanCopayOption', 296, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (727, N'healthPlanPharmacyCategory', 296, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (728, N'healthPlanCostSharing', 297, 1, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (729, N'healthPlanDrugTier', 297, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (730, N'offersPrescriptionByMail', 297, 1, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (731, N'healthPlanCostSharing', 298, 1, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (732, N'healthPlanNetworkId', 298, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (733, N'healthPlanNetworkTier', 298, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (734, N'itemListElement', 299, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (735, N'itemListOrder', 299, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (736, N'numberOfItems', 299, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (737, N'applicantLocationRequirements', 304, 4, 191, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (738, N'applicationContact', 304, 4, 482, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (739, N'baseSalary', 304, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (740, N'datePosted', 304, 3, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (741, N'directApply', 304, 1, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (742, N'educationRequirements', 304, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (743, N'employerOverview', 304, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (744, N'employmentType', 304, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (745, N'estimatedSalary', 304, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (746, N'jobImmediateStart', 304, 1, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (747, N'jobLocationType', 304, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (748, N'jobStartDate', 304, 3, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (749, N'qualifications', 304, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (750, N'responsibilities', 304, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (751, N'salaryCurrency', 304, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (752, N'skills', 304, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (753, N'title', 304, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (754, N'workHours', 304, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (755, N'highPrice', 307, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (756, N'lowPrice', 307, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (757, N'offerCount', 307, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (758, N'dateIssued', 310, 3, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (759, N'priceCurrency', 310, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (760, N'ticketNumber', 310, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (761, N'ticketToken', 310, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (762, N'totalPrice', 310, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (763, N'arrivalTime', 311, 5, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (764, N'departureTime', 311, 5, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (765, N'itinerary', 311, 4, 299, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (766, N'offers', 311, 4, 306, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (767, N'arrivalBoatTerminal', 312, 4, 624, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (768, N'departureBoatTerminal', 312, 4, 624, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (769, N'busName', 313, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (770, N'busNumber', 313, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (771, N'aircraft', 314, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (772, N'arrivalGate', 314, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (773, N'arrivalTerminal', 314, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (774, N'departureGate', 314, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (775, N'departureTerminal', 314, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (776, N'estimatedFlightDuration', 314, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (777, N'flightDistance', 314, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (778, N'flightNumber', 314, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (779, N'mealService', 314, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (780, N'touristType', 315, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (781, N'arrivalPlatform', 316, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (782, N'departurePlatform', 316, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (783, N'trainName', 316, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (784, N'trainNumber', 316, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (785, N'about', 49, 4, 1, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (786, N'abstract', 49, 0, NULL, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (787, N'accessMode', 49, 0, NULL, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (788, N'accessModeSufficient', 49, 4, 299, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (789, N'accessibilityAPI', 49, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (790, N'accessibilityControl', 49, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (791, N'accessibilitySummary', 49, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (792, N'assesses', 49, 0, NULL, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (793, N'citation', 49, 0, NULL, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (794, N'contentRating', 49, 0, NULL, N'Content Rating', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (795, N'copyrightNotice', 49, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (796, N'creativeWorkStatus', 49, 0, NULL, N'Creative Work Status', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (797, N'creditText', 49, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (798, N'editEIDR', 49, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (799, N'dateCreated', 49, 3, NULL, N'Date Created', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (800, N'dateModified', 49, 3, NULL, N'Date Modified', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (801, N'datePublished', 49, 3, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (802, N'encoding', 49, 4, 397, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (803, N'encodingFormat', 49, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (804, N'headline', 49, 0, NULL, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (805, N'version', 49, 0, NULL, N'Version', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (806, N'thumbnailUrl', 49, 0, NULL, N'', 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (807, N'sdDatePublished', 49, 3, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (808, N'size', 49, 4, 471, N'Size', 1)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (809, N'articleBody', 318, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (810, N'articleSection', 318, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (811, N'pageEnd', 318, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (812, N'pageStart', 318, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (813, N'wordCount', 318, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (814, N'issn', 50, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (815, N'abridged', 338, 1, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (816, N'bookEdition', 338, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (817, N'isbn', 338, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (818, N'numberOfPages', 338, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (819, N'duration', 339, 4, 586, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (820, N'readBy', 339, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (821, N'pageEnd', 340, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (822, N'pageStart', 340, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (823, N'pagination', 340, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (824, N'clipNumber', 342, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (825, N'endOffset', 342, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (826, N'director', 342, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (827, N'startOffset', 342, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (828, N'musicBy', 342, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (829, N'collectionSize', 348, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (830, N'artist', 350, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (831, N'colorist', 350, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (832, N'inker', 350, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (833, N'letterer', 350, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (834, N'penciler', 350, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (835, N'downvoteCount', 352, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (836, N'upvoteCount', 352, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (837, N'courseCode', 357, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (838, N'coursePrerequisites', 357, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (839, N'numberOfCredits', 357, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (840, N'actor', 358, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (841, N'director', 358, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (842, N'endDate', 358, 3, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (843, N'numberOfEpisodes', 358, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (844, N'seasonNumber', 358, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (845, N'startDate', 358, 3, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (846, N'endDate', 51, 3, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (847, N'issn', 51, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (848, N'startDate', 51, 3, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (849, N'measurementTechnique', 362, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (850, N'includedInDataCatalog', 363, 4, 362, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (851, N'issn', 363, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (852, N'measurementTechnique', 363, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (853, N'variableMeasured', 363, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (854, N'dietFeatures', 366, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (855, N'expertConsiderations', 366, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (856, N'physiologicalBenefits', 366, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (857, N'risks', 366, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (858, N'actor', 374, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (859, N'director', 374, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (860, N'duration', 374, 4, 586, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (861, N'episodeNumber', 374, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (862, N'productionCompany', 374, 4, 2, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (863, N'activityDuration', 372, 4, 471, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (864, N'additionalVariable', 372, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (865, N'exerciseType', 372, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (866, N'intensity', 372, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (867, N'repetitions', 372, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (868, N'restPeriods', 372, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (869, N'characterAttribute', 378, 4, 1, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (870, N'gameItem', 378, 4, 1, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (871, N'numberOfPlayers', 378, 4, 471, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (872, N'quest', 378, 4, 1, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (873, N'estimatedCost', 381, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (874, N'performTime', 381, 4, 586, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (875, N'prepTime', 381, 4, 586, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (876, N'step', 381, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (877, N'supply', 381, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (878, N'tool', 381, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (879, N'yield', 381, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (880, N'afterMedia', 383, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (881, N'beforeMedia', 383, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (882, N'duringMedia', 383, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (883, N'totalTime', 383, 4, 586, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (884, N'mathExpression', 396, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (885, N'bitrate', 397, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (886, N'contentSize', 397, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (887, N'contentUrl', 397, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (888, N'encodingFormat', 397, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (889, N'endTime', 397, 5, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (890, N'playerType', 397, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (891, N'startTime', 397, 5, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (892, N'uploadDate', 397, 3, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (893, N'actor', 409, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (894, N'caption', 409, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (895, N'director', 409, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (896, N'embeddedTextCaption', 409, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (897, N'transcript', 409, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (898, N'videoFrameSize', 409, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (899, N'videoQuality', 409, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (900, N'caption', 400, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (901, N'embeddedTextCaption', 400, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (902, N'transcript', 400, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (903, N'bccRecipient', 625, 4, 482, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (904, N'ccRecipient', 625, 4, 482, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (905, N'dateRead', 625, 3, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (906, N'dateReceived', 625, 6, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (907, N'dateSent', 625, 6, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (908, N'recipient', 625, 4, 482, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (909, N'sender', 625, 4, 2, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (910, N'toRecipient', 625, 4, 482, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (911, N'composer', 415, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (912, N'firstPerformance', 415, 4, 42, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (913, N'iswcCode', 415, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (914, N'lyricist', 415, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (915, N'lyrics', 415, 4, 49, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (916, N'musicCompositionForm', 415, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (917, N'musicalKey', 415, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (918, N'numTracks', 416, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (919, N'track', 416, 4, 299, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (920, N'issn', 58, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (921, N'applicationCategory', 432, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (922, N'applicationSubCategory', 432, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (923, N'applicationSuite', 432, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (924, N'availableOnDevice', 432, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (925, N'countriesSupported', 432, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (926, N'downloadUrl', 432, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (927, N'featureList', 432, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (928, N'fileSize', 432, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (929, N'installUrl', 432, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (930, N'memoryRequirements', 432, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (931, N'operatingSystem', 432, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (932, N'permissions', 432, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (933, N'processorRequirements', 432, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (934, N'releaseNotes', 432, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (935, N'softwareRequirements', 432, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (936, N'softwareVersion', 432, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (937, N'storageRequirements', 432, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (938, N'codeRepository', 436, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (939, N'codeSampleType', 436, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (940, N'programmingLanguage', 436, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (941, N'runtimePlatform', 436, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (942, N'carrierRequirements', 433, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (943, N'browserRequirements', 435, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (944, N'actor', 57, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (945, N'containsSeason', 57, 4, 358, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (946, N'director', 57, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (947, N'episode', 57, 4, 374, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (948, N'numberOfEpisodes', 57, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (949, N'numberOfSeasons', 57, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (950, N'trailer', 57, 4, 409, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (951, N'inSupportOf', 440, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (952, N'artEdition', 59, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (953, N'artMedium', 59, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (954, N'artform', 59, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (955, N'artist', 59, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (956, N'artworkSurface', 59, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (957, N'depth', 59, 4, 471, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (958, N'height', 59, 4, 471, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (959, N'width', 59, 4, 471, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (960, N'penciler', 59, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (961, N'inker', 59, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (962, N'breadcrumb', 441, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (963, N'lastReviewed', 441, 3, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (964, N'mainContentOfPage', 441, 4, 454, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (965, N'primaryImageOfPage', 441, 4, 404, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (966, N'relatedLink', 441, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (967, N'significantLink', 441, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (968, N'cssSelector', 454, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (969, N'xpath', 454, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (970, N'cookTime', 382, 4, 586, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (971, N'cookingMethod', 382, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (972, N'recipeCategory', 382, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (973, N'recipeCuisine', 382, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (974, N'recipeIngredient', 382, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (975, N'recipeInstructions', 382, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (976, N'recipeYield', 382, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (977, N'hasMenuItem', 412, 4, 626, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (978, N'hasMenuSection', 412, 4, 413, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (979, N'menuAddOn', 626, 4, 413, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (980, N'offers', 626, 4, 306, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (981, N'suitableForDiet', 626, 4, 627, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (982, N'isResizable', 398, 1, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (983, N'measurementTechnique', 403, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (984, N'byArtist', 419, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (985, N'duration', 419, 4, 586, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (986, N'isrcCode', 419, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (987, N'educationRequirements', 483, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (988, N'estimatedSalary', 483, 2, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (989, N'experienceRequirements', 483, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (992, N'occupationLocation', 483, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (993, N'qualifications', 483, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (995, N'responsibilities', 483, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (996, N'skills', 483, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (997, N'occupationalCategory', 483, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (998, N'author', 466, 4, 31, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (999, N'bestRating', 466, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (1000, N'ratingExplanation', 466, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (1001, N'ratingValue', 466, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (1002, N'aggregateRating', 477, 4, 467, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (1003, N'award', 477, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (1004, N'logo', 477, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (1005, N'category', 477, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (1006, N'termsOfService', 477, 0, NULL, NULL, 0)
GO
INSERT [dbo].[SchemaProperty] ([id], [name], [schemaId], [datatype], [schemaDataTypeId], [friendlyName], [visible]) VALUES (1007, N'serviceType', 477, 0, NULL, NULL, 0)
GO
SET IDENTITY_INSERT [dbo].[SchemaProperty] OFF
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'34145b47-a9df-4f4e-a645-003f99904b1f', N'Fast Food Restaurant ', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'722513    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'359f1aee-0504-496c-99f0-0041ae25d698', N'Personal Assistant ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'bb80a95f-4824-4e37-a4b0-005e431316c8', N'Florists/flower Shops ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'8ab1c0bf-0f7d-46b9-a907-00a627de256f', N'Mediterranean Restaurant', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'722511    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'c042dfde-ffde-41ce-93e4-0112be5e8c05', N'Artist', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'6e0b4d58-f242-4d0a-9451-01bc337e9a11', N'Energy Consulting ', 0, N'991bf5a3-cf7f-482b-9a17-29bb08cb072e', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'c242c9ed-b40f-4420-902e-01e76f06f004', N'shipping supply and service', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'16282078-1649-49ca-a8da-01fbd3aa49a9', N'Oral Surgeon ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'3026548b-dfa0-47a0-8846-0238eedb0a94', N'Interior Painting ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'45c4563b-0f3c-4de7-b316-024e079b198d', N'Pharmaceutical Company ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'6f694093-87ed-41fd-867d-025f9de7b139', N'clothing and accessories', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'85b45ddb-617e-4f00-9c4b-02986c892b5e', N'Addiction Treatment Center ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'65610e91-cc4a-467d-9f15-032fd4e580e4', N'Music ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'ffd864fd-9185-4411-811d-03523638929c', N'Social Media ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'fe319d63-0c40-49cc-abef-0358e00d5193', N'Brand Strategy', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'541611    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'd4705ff0-4d76-49c0-bc16-03638e13a140', N'Dj', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'be349606-7b36-40ae-91d9-036b8292de2c', N'Astrologist & Psychic ', 0, N'74ef2a5a-1a4e-4523-8601-b753506e8d88', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'4eaf93d6-3e1a-4909-bf60-037e2de44e93', N'catering and supplies', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'722320    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'bf517bd6-1cdd-4a70-a255-039251d58da4', N'Event Planners & Supplies ', 0, N'1bb0f4d4-733b-4260-96ea-7593e9113cc7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'7b6a2cdd-8a8b-4a55-bd9e-0394a13f8b69', N'Party Entertainment Service ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'780674d1-fbbf-4020-b3c0-03a1dcaccbf0', N'Water Restoration', 0, N'991bf5a3-cf7f-482b-9a17-29bb08cb072e', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'fa05c0f0-bd2c-4260-bf03-045f7949586a', N'Hair Color Specialist ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'915f8911-27c8-4236-8cd3-04fda45f931a', N'Lactation Consultant ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'3408c199-a470-426f-b845-0547c7e2d94a', N'Information Technology Company ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'319f8d25-c8dd-4ea1-ba5f-054bf2a853ed', N'personal stylist', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'948bfebf-d7c9-47ee-9a1f-0580b9f6b1f3', N'Electronics Company ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'2d6c4075-9700-4f5c-a3f1-060d96c20073', N'Music Venue ', 0, N'1bb0f4d4-733b-4260-96ea-7593e9113cc7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'3d174442-a1e0-446e-95a2-0656e29a4336', N'Public Adjuster ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'0763879f-4816-472e-bc6e-0670f23eda83', N'Vegan Restaurant', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'722511    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'f74d6c28-9acc-4d58-bf26-06fb3f790fbb', N'Outdoor Advertising', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'541850    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'28c15e6d-effe-4b24-8fad-0715dcb0d194', N'Certified Public Accountant ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'e5f44665-3f2d-4124-9b1e-0796aca15887', N'Orthopedist ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'525c87a3-413d-406f-ad22-07c43ee23c43', N'Optician ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'55bc61de-b0ff-46b0-904c-07d13e8dcbf3', N'clothing company ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'debc1a89-3801-4e97-9b08-091b6f4203d1', N'Wendy''s subway', 0, N'974bbfce-2fd7-4385-a72d-df65fb760631', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'f3b612c2-38d8-4443-b1b1-0983fc48842b', N'Market Research Consultant ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'541613    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'055c7f3a-1824-42c9-a4da-09e059caf042', N'Business Coach', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'0c410b97-38a3-45d9-af0f-0a040fddb73b', N'Educational Research center', 0, N'85ee45c4-a96d-48d3-a291-8c45a05b17a7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'7a2e4023-d835-41ae-b3ef-0a3661ca2077', N'Sports League ', 0, N'8a30a498-47cc-4e85-8567-996e0059253d', N'713940    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'9d15c4cf-fc07-4c95-b45c-0a42ae4cc592', N'Singer / Songwriter ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'a55bdd4b-a2e3-4d30-9d23-0a7c5f42d045', N'Department store', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'e62f30d0-d51b-4a6d-a787-0ac7d2b5d152', N'Audiologist ', 0, N'991bf5a3-cf7f-482b-9a17-29bb08cb072e', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'c0d78f19-000a-4801-bc88-0af0b44b009b', N'Commercial Photographer ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'541922    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'4e1782ca-9927-4be2-bd88-0b88ad3d88d3', N'Real Estate ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'e10760e5-53d6-459d-9b8c-0bea60e773c0', N'Media Conferencing', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'541840    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'8aac4396-85b5-4d46-b1ab-0c32d54c84c0', N'Indian Store', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'452319    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'20ee3fcd-2b87-4d20-8fbc-0c74a4a9c03f', N'Theater ', 0, N'1bb0f4d4-733b-4260-96ea-7593e9113cc7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'ed8c4dad-6f71-4e9d-b21c-0c8eac8d163d', N'Grocery Store ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'03959b2e-0897-40bc-ae57-0ceb84c0a3bb', N'Brand Ambassador ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'54        ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'c9b7c456-d996-4748-be59-0d1652a50e87', N'Park', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'4c6bb6f3-ced3-469a-bb44-0d1ee51f997e', N'Building Material Store ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'82f4a8a2-f631-4370-981c-0dadaf07e096', N'Entertainment ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', N'71        ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'c9f71000-adae-4c34-ad6e-0e61ebd80ab6', N'Agriculture', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'11        ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'aec89f29-759a-4ea8-aa6b-0f0554eeeb26', N'Optometrist ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'87375815-be7c-4cb9-a139-0f3247d2f497', N'pizza store', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'2c0b4b38-e300-4e3c-8a89-10db7de36cd7', N'Art Teacher ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'd1a47ded-c7d8-4db1-afb3-1203e9f7db5f', N'Business Center ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'64d04360-8245-48d4-97bc-123257ea1834', N'Nursing Home ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'215243c4-0451-4838-871b-1258160f0b58', N'Videographer', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'9797317b-5948-4ee1-9ef5-127e4667cc8b', N'Party Supply & Rental Shop ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'ca897075-f34f-47b0-9d9b-12ad35ea5a82', N'Dating Service ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'70741020-4e70-4f88-860e-12be1d901726', N'Asian Restaurant', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'722511    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'ed4ff098-6466-400e-b455-14065a9bc25f', N'Financial Service ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'87c152e6-4c9e-4a4f-8c0a-14a9d75d8e4e', N'Tire Dealer & Repair Shop ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', N'423620    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'20e8bb1d-4fe9-484b-bdda-14ad114414b3', N'Email Marketing ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'3edb550d-e179-4c9b-8ab3-150a76b6ddd6', N'Junk Removal Services', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'7418337a-acc7-4586-a339-150f1cc55c23', N'Boutique gyms', 0, N'8a30a498-47cc-4e85-8567-996e0059253d', N'713940    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'23deac27-072f-4973-a98b-152efd3180d0', N'Government Official ', 0, N'0b354b25-2cf1-4ab1-a0ee-5ceda107af47', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'36679429-1d15-49d9-a1d8-15cdd749189b', N'Brand Identity ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'339940    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'65ecd491-d38a-4b01-8e28-163b75edfbcd', N'Hotel & Lodging ', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'721110    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'914a5844-d3bd-4457-ac03-16642ea37225', N'Bakery', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'311812    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'35a089d4-0b43-45be-b244-168176ad8f6d', N'Lumber Yard ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'ece3594f-7d17-4352-a1dd-16c4849f3516', N'Event Coordinator ', 0, N'1bb0f4d4-733b-4260-96ea-7593e9113cc7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'd012748e-0ca3-4468-b169-16f7018c48fc', N'Dentist ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'f55afca7-feb7-49e3-accf-173d583be6b8', N'Ticket Sales ', 0, N'1bb0f4d4-733b-4260-96ea-7593e9113cc7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'46b65469-dc53-4069-a18a-179d25d1fefb', N'Auto Accessories ', 0, N'71c784a9-033d-4c70-8d9e-e54c1f63cea9', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'4717d0df-4d32-4b22-85e2-17b1dc153343', N'Social Media Marketing ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'55131     ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'f32ff8f1-d766-40ad-8090-180f9964418c', N'Payment Processing ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'19c1ae5b-b1e0-4063-998d-18246231b9f5', N'Pharmacy / Drugstore ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'25415db7-0933-4ac0-90e5-184086596027', N'Pet store', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', N'453910    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'4a3fd36e-ee4d-461e-a1fd-187e078d8b54', N'Sports & Fitness Instruction ', 0, N'8a30a498-47cc-4e85-8567-996e0059253d', N'713940    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'b0718833-1b36-4313-a213-18b80e173527', N'Actress ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'ce7e0c11-5c40-42c5-8dcd-18bcee7825e0', N'pest control service', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'c0a4a390-1ca9-4402-8dc3-18c590df5c70', N'Postpartum Doula ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'04e05117-fee8-44f3-b80f-18fa580e3bce', N'Dietitian ', 0, N'8a30a498-47cc-4e85-8567-996e0059253d', N'713940    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'dd46c259-bb63-4ce8-a620-18ff3a2db9f0', N'Jewelry Wholesaler ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'851d2e7d-997f-4fdf-bb18-191944b9d19f', N'Motion Graphics ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'3d5fdd90-077e-43be-a6fa-1925a5ec3dac', N'Tax Preparation Service ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'0efc5a25-1991-4e6b-9693-196647d3d18e', N'Title Insurance Company ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'a6b391e4-7d2c-4efb-a955-1a1743dbc36b', N'Paint & Sip ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'570c0bc6-1d69-4569-9b7f-1a970abac8b4', N'Title Insurance', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'071f63a7-169b-4ea3-8381-1aa563c3c802', N'Nutrition ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'6d964c9d-8cd7-4266-955d-1ad9a110e28d', N'Wine Bar', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'312130    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'8f688a5e-fcdc-4c39-ae0c-1adb9cbb2944', N'Subcontractor ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'12da1562-144f-4592-9b22-1b3a75735290', N'Surgeon ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'f0399c69-ca3e-432c-9db2-1be385100cb6', N'Hotel ', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'721110    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'32a28846-0117-4743-99c1-1c0bfef90b3f', N'Media Agency ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'541830    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'c8ecf59f-20aa-4b31-87b3-1c61af655a84', N'Lawyer & Law Firm ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'e47f7ec4-f75e-45d6-83dd-1c91fb731dec', N'Video Creator', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', N'512110    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'34f50a36-19d9-4a12-abab-1cb6c265df35', N'Plastic Company ', 0, N'991bf5a3-cf7f-482b-9a17-29bb08cb072e', N'326199    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'b6680721-f097-49a1-a93a-1db33371fc0c', N'Coaching ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'130e0712-4c55-4d53-b5db-1e5f4b554b8e', N'Summer Camp ', 0, N'8a30a498-47cc-4e85-8567-996e0059253d', N'713940    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'93bcfe56-6edc-40ae-ba0d-1eb64b6f9e03', N'Writing Service ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'561410    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'2ce498ee-7339-4330-b655-1edea1af2a50', N'Garage Door Service ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'c23fc381-640c-4956-8690-1f1eec893dd9', N'Water Treatment Service ', 0, N'991bf5a3-cf7f-482b-9a17-29bb08cb072e', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'61250950-9691-40af-9ea2-1f3d054dfde7', N'Creative Agency ', 0, N'b6c7296e-43b4-42ee-b6fc-75db3a9be8b0', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'00f86495-361f-4cba-a350-1f65d98f3764', N'Criminal Lawyer ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'7f568333-7685-4d32-97f3-1f901240245f', N'Fashion Photography ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'972a4669-9522-4fe0-b9fc-1fbfcf1290ea', N'Family Law Attorney ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'baf019e6-9f43-4126-a4fe-201a54c21a9d', N'Trade fair venues', 0, N'1bb0f4d4-733b-4260-96ea-7593e9113cc7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'd24d1432-f8cc-42e0-91c6-203a03b3c9f9', N'Social Media Agency ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'541830    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'6b99c197-dba9-487e-9c56-204378b0b6b2', N'Portrait photographer', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'7d171f63-0127-487b-8289-20a74e75f593', N'Band', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'e141fff5-bbea-4dfb-9ebb-20d35e10b7ad', N'Shopping & Retail ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'f6011f9e-7d8c-4dda-a146-20f9be354b85', N'Dental ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'c8005ef9-bf40-444e-962f-210cbe371f24', N'Sales Training ', 0, N'85ee45c4-a96d-48d3-a291-8c45a05b17a7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'616dedd9-0b11-4d11-9599-21a2ce717cb9', N'Theatrical Play ', 0, N'1bb0f4d4-733b-4260-96ea-7593e9113cc7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'900757a9-f23a-4be3-95c2-22c02e85bb6f', N'Home Inspector ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'2707db4e-ed48-4d89-9348-22dde788652a', N'Dog Day care center', 0, N'19ca8d21-34d5-4434-aa6a-58e17db7058c', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'ff6f6f65-dcfe-4c50-8fa4-2388e5562bc1', N'Travel & Transportation ', 0, N'974bbfce-2fd7-4385-a72d-df65fb760631', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'188f9446-a48c-4292-b92e-23fdab35f388', N'Software company', 0, N'd11ebccd-851d-4770-b088-a5a3d3302ca6', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'f04836b7-4584-438f-92e8-2403e9073524', N'Wholesale Bakery', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'42        ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'cbf06f8b-8593-42e8-8c5d-245676ef5820', N'Environmental Consultant ', 0, N'991bf5a3-cf7f-482b-9a17-29bb08cb072e', N'541620    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'4088c612-0c23-4b51-9eef-245e65b20296', N'Distribution, Import & Export ', 0, N'991bf5a3-cf7f-482b-9a17-29bb08cb072e', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'1d4f5d71-725d-48d2-86ef-24d321ed76c1', N'Business analyst', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'8bb38ec9-8903-4071-b720-25a350b007e9', N'Corporation Company', 0, N'd11ebccd-851d-4770-b088-a5a3d3302ca6', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'a9d55238-2043-4652-af9a-25a8a41880dc', N'Yoga ', 0, N'8a30a498-47cc-4e85-8567-996e0059253d', N'713940    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'ab04a521-5616-49de-afcc-25dd9ae00655', N'Social Club ', 0, N'1bb0f4d4-733b-4260-96ea-7593e9113cc7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'929889f2-ed01-444e-abbd-2616b80349e2', N'Video Production', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'337b1250-f746-41bb-b9fe-26650e212872', N'Chiropractor ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'94426cc7-6589-4130-b823-2724386f1e50', N'Cruise Agency ', 0, N'974bbfce-2fd7-4385-a72d-df65fb760631', N'561510    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'0d208dac-d37d-415d-a543-28247ab82ab5', N'Art School', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'333fca7d-eca0-4b95-ac46-296dd75d7a82', N'Insurance Company ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'1b139d27-50fa-4867-a127-2976f3d6c0f7', N'Electrical Contractor ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'ae3eba58-6e21-4c77-87fa-298ee1066610', N'Art Museums', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'991bf5a3-cf7f-482b-9a17-29bb08cb072e', N'Energy, Utilities & Resources', 0, NULL, N'213112')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'0d52601a-53cc-41cc-9873-29e0eeb99e4f', N'Criminal Defense Attorney ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'a888a604-c2b7-41f4-90c2-2a0ec8138c6a', N'farmers market', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', N'11        ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'70da9f5b-8414-400d-b61f-2a36118f7f54', N'Acupuncture ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'4e31267e-89ae-4331-b335-2a90d748e2ca', N'Embroidery ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'b0c6e49f-5598-4449-badc-2b2a722773b1', N'Healthcare Solutions ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'36d9c356-90e2-4b1f-932e-2b4a50beca87', N'Furniture Store ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', N'339930    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'6eb0e4ad-63c7-41bc-82ff-2b78b9edad3a', N'super market', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'99951579-747a-4576-adf9-2ba6e515142e', N'Therapist ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'545d913c-5efe-4575-9368-2bf1192ec83e', N'Structural Engineer', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'1af0c925-f650-4c91-a4c1-2c17b35470d5', N'Skin Care Service ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'd27aa247-54b6-4c77-afe5-2c42c627e2e2', N'Broker ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', N'425120    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'b93425f7-a04b-4435-bd95-2cb501984ab0', N'Software ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'1a2d3297-8825-46ed-be36-2cbeb425caa7', N'Health Insurance Benefits ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'99faab3f-aba7-4d97-a4a2-2f09a41fa91f', N'Health & Wellness  website', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'fc33a7d0-b718-448a-8ba9-2f2680155c43', N'Loan Service ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'7603541e-a934-49bf-bb59-2f320f59fdae', N'Italian Restaurant', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'236220    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'acae6fc4-193b-44b8-a698-2f74bdfa4d16', N'Geriatric Care Manager ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'78613744-0b3b-4ae7-8ee9-2f797cdec1e2', N'Artists and writers', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'77ba1acb-5b3c-4d31-8447-2fda66513b36', N'Appliances ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'0755a7fe-4691-4244-943f-30120cb79541', N'Auto Service, Repair & Parts ', 0, N'71c784a9-033d-4c70-8d9e-e54c1f63cea9', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'e11a5aab-bb07-42ff-8cf3-3012437daa45', N'Online Marketing ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'541910    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'b16536b8-3230-470d-a21b-30127a466565', N'Health & Wellness & Beauty', 0, NULL, N'812112')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'1c034fa2-4c7d-40a6-a45c-302ca5d80c3a', N'Solar Energy Service ', 0, N'991bf5a3-cf7f-482b-9a17-29bb08cb072e', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'aaf86dc0-668c-47aa-b2d3-305b2abb127c', N'Tattoo & Piercing Shop ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'f96d32a6-4f6c-40bc-9eb0-3093cd81d4dd', N'Clinics, Hospitals & Medical Centers ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'10ff7b43-96af-48e9-8f1b-30d03c9a06a7', N'Private Equity ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'eea8d414-02bb-4604-8d8c-31475d3b2281', N'Private School ', 0, N'85ee45c4-a96d-48d3-a291-8c45a05b17a7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'7c27120f-8ed4-4b71-ab30-3147d37fbfce', N'Digital / Online Marketing Agency ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'50244f70-029c-4adc-9b28-31990145b495', N'Real Estate Agent ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'0506f562-28c3-4afc-bf73-31a37ca0a83d', N'Home Health Care Service ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'7463c785-29e5-46b6-9b27-31b1fb8f5b78', N'Automotive Company', 0, N'71c784a9-033d-4c70-8d9e-e54c1f63cea9', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'87bc3b02-9db4-43d7-897e-31fc49f74030', N'Public School', 0, N'85ee45c4-a96d-48d3-a291-8c45a05b17a7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'1dc01d79-e36a-426a-941f-33035739401b', N'Pregnancy Care Center ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'436afee9-1fbb-4b74-9e9c-331305bfebcc', N'Restaurant Wholesaler ', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'423210    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'e167bc08-e55e-409d-95cb-336c99eac046', N'Blogger ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'0079c193-efe6-4347-8e86-337f50dd3fb3', N'Cell phone & Mobile advertising', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'443142    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'98906510-f7d2-4d65-8f35-33c65c893b1e', N'Hair Salon ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'ed21c434-8a5d-4340-b6dc-3409df477018', N'Musician/band', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'892dbbb8-a364-4f72-a9d1-346b1f24e645', N'Chemical Company ', 0, N'991bf5a3-cf7f-482b-9a17-29bb08cb072e', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'd81a1715-cde6-407a-9f1a-34d9318e48de', N'Medical Center ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'8a68f8d4-2e50-4fad-a46e-34e08e499ed4', N'Food service Distributor', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'722330    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'74a17794-97a5-4811-82c8-34e9241df7fb', N'Deli', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'311       ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'9e456858-6425-4d25-a223-34f5bfbfff24', N'Advertising & Communication ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'541800    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'6596b4b0-78ec-4710-b35b-34fd62b505d9', N'Tree Cutting Service ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'9c19437b-a296-4612-923f-356afdfede39', N'Cryptocurrency ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'e42bbc77-85a0-49a3-bf3a-3621f6387432', N'Licensed Massage Therapist ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'39a29bf1-1b66-4d2b-81c2-364ccd483f75', N'Gym franchise', 0, N'8a30a498-47cc-4e85-8567-996e0059253d', N'713940    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'98b3a808-7235-4feb-a856-367b0db66f06', N'Online Retail ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', N'611310    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'e539a201-24df-4607-8854-37230bb10e35', N'Demolition & Excavation Company ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'cd6984db-73a7-4fb8-8219-37d4b8acf593', N'Educator ', 0, N'85ee45c4-a96d-48d3-a291-8c45a05b17a7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'5ae637d1-1f7b-4186-9694-3807a3b968b7', N'Meeting Room ', 0, N'1bb0f4d4-733b-4260-96ea-7593e9113cc7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'6a1bd5d8-dbe8-4845-b962-3820d291bd76', N'Driving School ', 0, N'85ee45c4-a96d-48d3-a291-8c45a05b17a7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'dd7f7710-9f04-4467-8185-388db263b072', N'Meetings & Events ', 0, N'1bb0f4d4-733b-4260-96ea-7593e9113cc7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'73b06374-726a-49ee-9f12-38908e1528f1', N'Factory Automation', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'73151c61-dcbb-4ec8-9f1b-38c1decae845', N'Commercial Bank ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'4db17964-c51b-423f-95f6-390a47ee0c13', N'Hospitality Service ', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'721110    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'899aeb2a-2c0c-4387-b475-39674f151a62', N'Jewelry Store ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'69a69195-b24a-41be-97db-398cfd43e41c', N'Engineering Service ', 0, N'd11ebccd-851d-4770-b088-a5a3d3302ca6', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'7d699f33-ecfa-4c40-8706-39aae5cfa6f8', N'Blinds & Curtains Store ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'25416b70-2f9e-476a-bc48-39f5b7154739', N'Winery/vineyard ', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'111332    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'73d6899e-3d03-4f61-91fd-3a4238d42090', N'Wine Bar', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'9ea12874-6b85-4fe5-b4a7-3a47e2f5bf2c', N'Automotive Parts & Accessories ', 0, N'71c784a9-033d-4c70-8d9e-e54c1f63cea9', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'08843d44-91b2-4415-ae14-3a4d2cda0d8d', N'Workshop Leader ', 0, N'74ef2a5a-1a4e-4523-8601-b753506e8d88', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'dc141567-993f-4720-a3a4-3a73da10daa6', N'Computer Consultant & Support ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'bd90311a-8ec1-4e65-a7b9-3a7713b3c294', N'Automotive Body Shop ', 0, N'71c784a9-033d-4c70-8d9e-e54c1f63cea9', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'8896a968-8cf2-4404-b675-3aa08527e8b8', N'Hair Removal Service ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'd8097d93-4add-4df9-b39e-3abbb7b9063b', N'Voice Teacher ', 0, N'85ee45c4-a96d-48d3-a291-8c45a05b17a7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'e3f67e9e-0e35-47e0-a482-3b5580a99696', N'Consulting & Services', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'9885503b-8274-47a5-9986-3c4478cfff9d', N'Real Estate Broker ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'dac8fc8e-8622-426f-b3c6-3c7cb566cc18', N'Healthcare Administrator ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'9e4392a5-ef96-44fd-a003-3cabae5908e0', N'Car Rental ', 0, N'71c784a9-033d-4c70-8d9e-e54c1f63cea9', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'971b7b19-ce35-4eb5-ac8a-3db778f767d3', N'Aviation ', 0, N'71c784a9-033d-4c70-8d9e-e54c1f63cea9', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'9bc78c77-2fb6-479d-93d7-3dec898fee50', N'Radio', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'7728fb77-4781-493e-89ab-3ded4f766e32', N'Appliance Repair ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', N'Information Technology', 0, NULL, N'611310')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'24f72541-4407-49e7-85b4-3e63060644e6', N'Social Media ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'541512    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'6874ca5c-521e-49e5-8e28-3eac5ea557bf', N'Food & Beverage ', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'445       ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'7b46c94e-0e73-468e-af02-3ebcadfc7184', N'Fitness Boot Camp ', 0, N'8a30a498-47cc-4e85-8567-996e0059253d', N'713940    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'7b6bca88-b09d-4d60-8a87-3f2a756c1156', N'Orthodontist ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'66df8e85-4640-4e7c-afa0-3fc1cadcaff7', N'Book Store ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'7f4b9104-62b7-4bcc-a9df-400a37a3d513', N'jewelry/watches', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'7673d2b7-f7cb-4d00-8a90-407f4eb568cb', N'Movie/television Studio ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'883b5291-d076-4c82-b185-408dfad9b9df', N'Electronics Store ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'be02df1f-64b5-420f-b5b1-40c2445a1aec', N'Concrete Contractor ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'c1f8d54c-7382-4e5a-9521-4159ac1ce597', N'Digital Marketing ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'998311    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'd27894ac-a497-4aa6-a9df-41b9bf28f3ee', N'Interest ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'82812735-b0e4-486b-8759-4285f92c67d7', N'Personal Trainer', 0, N'8a30a498-47cc-4e85-8567-996e0059253d', N'713940    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'7b5a7379-ba34-43d2-877a-42ee9872da0f', N'books and magazines', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'098d87f4-208f-4ac0-8bd1-431888e6e811', N'Birth Doula ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'0932a641-54af-4e44-820e-43363024dfac', N'Travel & Tourism ', 0, N'974bbfce-2fd7-4385-a72d-df65fb760631', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'b0ebd59c-47d4-46ff-a8a7-436d25389f01', N'Architectural Engineer ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'5a9029ea-c050-4bd7-afa8-43b19d4a1f36', N'Hair Stylist ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'38c5f8fe-b3ff-4d2e-a255-43b399d043c3', N'Community centers', 0, N'1bb0f4d4-733b-4260-96ea-7593e9113cc7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'c265a9f9-e1cc-449c-8f48-44177dcd5af2', N'Herbal Medicine ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'da1ee9c5-2642-4ef6-9c43-442f4ff6bd9f', N'Sound Healer ', 0, N'74ef2a5a-1a4e-4523-8601-b753506e8d88', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'cfe3b718-bb60-4eef-85ba-444424337de8', N'Writer ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'711510    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'a4248f1d-39b3-4b89-bdcb-4451b6b3c804', N'Energy Company ', 0, N'991bf5a3-cf7f-482b-9a17-29bb08cb072e', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'40bc3dd2-19c9-4cf7-91e1-44672d0fd082', N'Organization ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', N'813920    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'3f2c323a-01af-4fff-8957-4525e6c7313d', N'Tobacco Store', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'0648a35d-b131-4ef9-b759-452ea580f732', N'Intellectual Property Lawyer ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'46b47472-3cc7-435e-b80d-457b915fa109', N'Doula ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'20f893fd-d9bd-4b7d-a773-45ecb733ad2f', N'Film Composer ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', N'326113    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'edf7ca4b-ece6-4848-88ae-45ee30326141', N'Education', 0, N'85ee45c4-a96d-48d3-a291-8c45a05b17a7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'4cca208e-3976-4846-a576-4618449d7695', N'Equipment area', 0, N'8a30a498-47cc-4e85-8567-996e0059253d', N'713940    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'772d13e9-2c98-402f-b9d3-462c1c8c3d6f', N'Public Speaking ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'cf809410-5d7d-42d9-9919-46eff4948da3', N'Music Production ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'd02f5929-37c8-4b1c-b367-473e51606d6c', N'Technology ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'10526109-9607-4684-b2d9-47675efae81e', N'pet Groomer', 0, N'19ca8d21-34d5-4434-aa6a-58e17db7058c', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'f16c9330-de45-4086-a838-48197f18fa6c', N'Camera Store', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'd406e344-2444-4034-b72b-49045b6168b9', N'Writing Coach ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'711510    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'd780706b-6f31-4c38-8073-498c7f738ea8', N'Neuropsychologist ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'389c0c89-1a87-44f9-ab20-49d43233ca04', N'Barber ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'ca2eeff5-566e-4387-98fc-49fe3f8bbe34', N'Lawyer', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'ea40164e-55d3-4807-9534-4a6d5bb0c20c', N'Executive Coach ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'541611    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'341fbb59-d936-4f53-ab59-4a74b1b29efb', N'Print Media', 0, N'b6c7296e-43b4-42ee-b6fc-75db3a9be8b0', N'541840    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'f98c56e9-92ec-4f36-b17e-4af4d93146b3', N'pizza place', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'b1df36b2-9810-4dfb-84c6-4b0fd92c72ea', N'Truck Repair Shop ', 0, N'71c784a9-033d-4c70-8d9e-e54c1f63cea9', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'9e3acdb0-3ece-4983-9f5e-4b375bae682e', N'Tourist Information Center ', 0, N'974bbfce-2fd7-4385-a72d-df65fb760631', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'61157cad-65fd-4fa0-a006-4b715898cba1', N'Resume Writer ', 0, N'85ee45c4-a96d-48d3-a291-8c45a05b17a7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'1ade6aa0-8985-4405-98a6-4b9a98ca8818', N'Restaurant ', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'722511    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'bd6127ec-56f6-4b51-ae9a-4bd12a7af49b', N'Nursing Agency ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'9ba5698a-47c9-4227-a2c4-4be37a92050f', N'Insurance Agency ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'e0efb1db-64d8-4bd0-8444-4c373feabc11', N'Automobile Leasing ', 0, N'71c784a9-033d-4c70-8d9e-e54c1f63cea9', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'91fd82cb-3fb8-4d4f-859a-4cfb8444ae58', N'clothing brand ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'79aa114b-8e2f-4fde-9f0f-4d3b36ad9c79', N'Event Space ', 0, N'1bb0f4d4-733b-4260-96ea-7593e9113cc7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'bc2c6984-9f69-4f9e-b4b3-4d71aecdc073', N'Healthcare ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'750eb7d9-70ad-4dae-be1b-4db70e01b2c5', N'Ticket Sales ', 0, N'85ee45c4-a96d-48d3-a291-8c45a05b17a7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'2fa975c4-8d69-4ea9-9914-4dba7a6eeddb', N'Arts and Entertainment', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'c4f597f7-24cc-42a5-b294-4e11f43c14b4', N'Film Festival', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', N'326113    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'bf696cc3-a870-48fa-9178-4e31c0e7b6ff', N'Investment Bank ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'6e76dde8-f113-4f38-8fe7-4e46589070fe', N'Private Equity Fund ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'7f176230-1c20-4056-83e5-4e66c6333617', N'Fine Art Photography ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', N'611610    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'f4d7b917-b2ba-400c-8aca-4eac85b9320c', N'News & Media Website', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'519130    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', N'Finance & Insurance & Legal', 0, NULL, N'525990')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'86da4717-0b33-4ae6-a1b6-4f4de69b5025', N'Mortgage Lender ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'28e0b0c2-8303-4302-8f47-503f5b8fe4fc', N'latin American Restaurent', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'72251     ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'7a779639-0a8d-4803-80e0-505e78863e3f', N'Galleries & Museums ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', N'424490    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'a96994ab-bb43-450c-9ad1-50e287f6be47', N'Art Gallery', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'4fabb2dc-2d77-4827-acd1-514ede1a0dc8', N'Art Restoration', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'7327e116-5741-4c53-966c-5186db5960c3', N'Mediator ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'8022edb8-b497-4fea-943c-51bd7dfe0cb4', N'Vocalist ', 0, N'74ef2a5a-1a4e-4523-8601-b753506e8d88', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'be1d63b6-a045-49ff-b9d1-523d63705b06', N'Building Materials ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'75fabcce-932b-4cc8-88b2-5274ba1089df', N'Ophthalmologist ', 0, N'b16536b8-3230-470d-a21b-30127a466565', N'          ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'497561c8-f1ad-4473-b8b4-52b8e18dc44d', N'Welding ', 0, N'991bf5a3-cf7f-482b-9a17-29bb08cb072e', N'333992    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'69949ec7-b72d-4bdd-a58f-53c094ec7a6d', N'Brand Management ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'54161     ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'ee256a52-6a3c-4ffc-b5f1-5402fd65dd56', N'Medical Aesthetics ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'64a0a11f-60e0-42c2-88d2-54869e606a5a', N'Filmmaker ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'62192db0-f182-4971-94e8-54e83212d706', N'Social Enterprise ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'813410    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'a132fa68-3174-44e9-940d-54efb54cdc84', N'Business Consultant ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'b26535ed-d5ef-4690-bea1-5515033d21d2', N'Video Producer ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'4dbc5b9b-63af-48d4-9c2a-5607935bbdde', N'Party Planner ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'd219e36b-840a-4a72-b68a-567d70e64fb3', N'Radio Advertising ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'515112    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'0ba7c42d-e238-4574-8086-573ed2b50f31', N'Dentist & Dental Office ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'9a8253cd-6a2b-487c-8d85-5773f6ce758c', N'Marketing, Advertising & Communication ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'541810    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'946ef1c3-693c-4b3c-886d-5774ded51604', N'Business Services ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'2621f9b5-6372-48a6-b877-57a3026a6e33', N'Speciality Retail ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'c402441e-0d3b-4de6-99e5-57aaf4d003f4', N'Library ', 0, N'974bbfce-2fd7-4385-a72d-df65fb760631', N'512199    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'66484aea-5572-4975-966f-57d10288f431', N'Newspaper ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'511110    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'ae5a982e-441c-42f6-ad31-57df95829183', N'Wedding Venue', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'61550444-7444-4a4a-b50b-581a1ce147d5', N'Yoga ', 0, N'b16536b8-3230-470d-a21b-30127a466565', N'611699    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'320b9724-8b63-4376-95a6-582245ee97bd', N'Health & Beauty ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'52077a0b-b184-421c-b47e-584f1f2e4aa4', N'Mobile Notary', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'35944bcf-88d9-4442-9236-585287edc3cb', N'Influencer ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'731301    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'd5cdf995-9f07-4eef-b955-586951dbae67', N'Handyman ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'Advertising/Public Relations', 0, NULL, N'541890')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'4ce257f0-a467-48ff-963f-58cc6c5963f2', N'Magazines', 0, N'b6c7296e-43b4-42ee-b6fc-75db3a9be8b0', N'511199    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'19ca8d21-34d5-4434-aa6a-58e17db7058c', N'Animal Related', 0, NULL, N'453910')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'5c081314-b026-452e-8e77-58f4773ecabc', N'Landscape Designer ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'fe159b72-24a5-4c4b-9427-58f6990b2e6b', N'clothing store', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'aa13216e-d8d8-4fca-9cb2-58f872cd5f94', N'Stadium, Arena & Sports Venue ', 0, N'8a30a498-47cc-4e85-8567-996e0059253d', N'713940    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'0697c5de-3ca0-4fdf-8259-594dc13bad4c', N'Events ', 0, N'1bb0f4d4-733b-4260-96ea-7593e9113cc7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'0116d5af-f82b-4ceb-9050-59548f960e19', N'Influencer Marketing ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'5415418   ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'49c6e03a-85a4-46ef-b34c-596ba70e7487', N'Supermarket ', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'445110    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'855eb756-b32a-4f57-aa87-598c74344a46', N'Women''s gyms', 0, N'8a30a498-47cc-4e85-8567-996e0059253d', N'713940    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'b87c30d8-dbe8-4cc7-a7fd-5a254f3ea4b7', N'Dance Studio ', 0, N'85ee45c4-a96d-48d3-a291-8c45a05b17a7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'c9b46a4e-2a17-4d6e-a44d-5b2100c4d4b0', N'Energy Broker ', 0, N'974bbfce-2fd7-4385-a72d-df65fb760631', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'32c3f1d1-fb47-4dcf-bec3-5beb0b886558', N'Glass Service ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'33d4868b-d631-4a1d-9c70-5cc183632104', N'Candy Store ', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'544100    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'0b354b25-2cf1-4ab1-a0ee-5ceda107af47', N'Non-Profit & Government', 0, NULL, N'813110')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'd069dd22-8dc6-4f4b-ad8a-5d042b9f3e7d', N'Dance & Night Club ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'7fa37d3c-7dce-4040-ad12-5d3a0f5bb60e', N'Coach ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'5d94433b-33d1-4cc4-af79-5e428effc4b0', N'New American Restaurent ', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'722511    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'c734c2a0-a008-42d4-82ee-5e536f3e2f3b', N'Accounting Software ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'ea61b06e-6f36-4e83-a6b8-5e60d4be1aa6', N'Spiritual Life Coach ', 0, N'74ef2a5a-1a4e-4523-8601-b753506e8d88', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'99541eea-269d-4a43-b029-5e842bdcf386', N'Automotive ', 0, N'71c784a9-033d-4c70-8d9e-e54c1f63cea9', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'a9bfee93-25b1-40ca-8076-5f0f491b7122', N'Business & Economy Website ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'dfc84a24-90a4-472e-a741-5f30d2989668', N'Telecommunications Company', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'10e53eff-284c-4d47-a4fb-5f6af7aaaf5c', N'Specialty Grocery Store ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'5e5688d3-624f-4e5b-9450-5f9f44993a17', N'Real Estate Developer ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'd27d3814-1cd4-4ae1-814a-601420c426f4', N'Vintage Store ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'a787e2e8-84e0-4136-a6d8-60146bf1d374', N'Chamber of Commerce ', 0, N'0b354b25-2cf1-4ab1-a0ee-5ceda107af47', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'12fa698f-9432-4c8f-9480-6064b7be2766', N'Actor', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', N'711510    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'ed8173f0-375a-4fd8-b234-606e24af5866', N'Graphic Design ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'c7140a65-f6ea-4b46-8233-60cafa612c48', N'Language School ', 0, N'85ee45c4-a96d-48d3-a291-8c45a05b17a7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'bf54275f-1d54-4b7f-b0d9-60fcd2bdc461', N'Music Producer', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'4faf3c54-d852-4845-8d46-6152d5909a43', N'Home Improvements & Repairs ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'8078da6b-9723-4af5-b828-61597fba7eb9', N'Personal Coach ', 0, N'8a30a498-47cc-4e85-8567-996e0059253d', N'713940    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'6d449dc4-df50-4664-a82a-61717e462521', N'Roofing Service ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'39fe48c8-055c-4b36-92c6-617db871a8d0', N'Sports', 0, N'8a30a498-47cc-4e85-8567-996e0059253d', N'611620    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'4f06f618-2c85-49d5-811c-61b102da49f9', N'Interior Decorator ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'06e5b74e-e391-45be-ad85-61b553b65211', N'Dance & Performing Arts Studios', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'20fde838-89a4-42c3-a961-6290fa0fa7d9', N'Mental Health Service ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'75db70be-6914-40fd-b9bb-62db09554fcf', N'Arts & Humanities Website ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'ac99486f-c698-4397-901f-62edfae028ba', N'Editor', 0, N'85ee45c4-a96d-48d3-a291-8c45a05b17a7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'f78e474b-d76c-4c03-a36a-63033cc6bfec', N'Hypnotherapy ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'2cab5964-6ca5-460c-9245-631695299e92', N'Kratom', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'552391    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'1e89d05c-81af-48ff-a434-636bcb97386d', N'Cbd', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'453998    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'52c94a7d-4822-465a-9759-63aac2f4c50f', N'Facilities Services ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'61f06919-05d4-4e36-8052-63b35e01550d', N'event', 0, N'1bb0f4d4-733b-4260-96ea-7593e9113cc7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'66692707-3c68-4bea-93bb-64960cbf41e9', N'Kitchen & Bath Designer ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'8a174f13-b5d3-4bcf-accc-649babd64c2e', N'Bar and grill', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'722514    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'6ed05fc7-11f2-478a-b654-64cd853c96d2', N'Machine Shop ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'b951121d-7303-4931-9810-6682c962d2bd', N'comedian ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'429f4009-d77b-4ea0-849b-66d34e68ba5c', N'Pilates Studio ', 0, N'8a30a498-47cc-4e85-8567-996e0059253d', N'713940    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'8cac3d0a-d9b2-4da1-b2b5-66ef1b521300', N'Weight Loss Center ', 0, N'8a30a498-47cc-4e85-8567-996e0059253d', N'713940    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'812f7b07-a496-4963-b6e5-675f2ef6e918', N'Performing Arts ', 0, N'85ee45c4-a96d-48d3-a291-8c45a05b17a7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'12673652-7018-4157-8897-6892c0ae516c', N'Home Improvement', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'f216dcec-4084-43d0-9ed5-68bbf25cfcf3', N'Public Relations Agency ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'541820    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'000de8f0-e225-4406-811c-68d8b3d9ed39', N'Event & Caterer Staffing ', 0, N'1bb0f4d4-733b-4260-96ea-7593e9113cc7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'82bfc684-9f7c-4530-b2ef-694a63970a28', N'Bankruptcy Law ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'ee85a4cc-e4cf-49d5-91d5-69a20c5501be', N'Elementary school', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'd7aa2dc2-5bd4-4aa3-aaa5-69bf00b55f2c', N'Music Studio ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'fd9910d9-d097-4c38-9892-69db864714ac', N'App page', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'ea16c29a-25d8-4b90-b2a9-6a0a4cdc8a5f', N'Swimming Pool & Hot Tub Service ', 0, N'8a30a498-47cc-4e85-8567-996e0059253d', N'713940    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'8f2a2745-369b-429e-9c40-6a20246b2683', N'Graphic Designing ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'5a0adade-405c-4425-8d15-6a646b1f0fb0', N'Electronic store', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'd1413806-35d7-4428-99de-6a878d629473', N'Electrician ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'503e9489-9aed-4162-addb-6acd0098cf41', N'Real Estate Investor ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'1f4e704f-9e20-4e97-b1cd-6af684834a60', N'Heating, Ventilating & Air Conditioning Service ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'd7113c3b-5b74-48d4-9a84-6b0f1748490a', N'Automotive, Aircraft & Boat ', 0, N'71c784a9-033d-4c70-8d9e-e54c1f63cea9', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'f13b8b7f-004f-4a65-85a2-6b3a7fe51a5e', N'Cbd oil', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'453998    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'06daf630-7c63-4e52-bb13-6b42dc217555', N'Yoga studio', 0, N'b16536b8-3230-470d-a21b-30127a466565', N'812990    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'076ce658-00b9-41d0-8122-6bba4ece0b15', N'Consulting/business ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'49df9530-3ad3-48c3-af9d-6bcf996f2e9f', N'Bagel Shop', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'311812    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'faa8d48c-ff6d-4990-96ca-6c4417e99d26', N'Yoga Teacher ', 0, N'b16536b8-3230-470d-a21b-30127a466565', N'611699    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'035bd4a1-715f-4e2e-8ef9-6ca01270eda4', N'Composer', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'6359d043-2d30-429f-8db8-6cb8313b8330', N'Advertising Agency ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'541810    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'8abd4cf5-6a10-4562-a3a1-6d11ace8aabb', N'Nurse Practitioner ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'f2cd2dbd-fdae-469d-9292-6d2807f8dc45', N'Tour Guide ', 0, N'974bbfce-2fd7-4385-a72d-df65fb760631', N'561520    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'f222ab2b-b4ef-435d-a8d7-6d3fac62c7d3', N'Housing Assistance Service ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'4bfcb53a-e511-4e64-8d39-6d4795f5775e', N'Environmental Service ', 0, N'991bf5a3-cf7f-482b-9a17-29bb08cb072e', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'cd1a3281-7acb-4389-b742-6dc1ee404cb7', N'Diet & Nutrition ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'da05d133-cbbd-4b8c-bb8b-6dcfa7b9ef3b', N'Jewelry & Watches Company ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'5ae1568c-5193-437e-83e2-6def55260506', N'Sporting Goods Store ', 0, N'8a30a498-47cc-4e85-8567-996e0059253d', N'451110    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'8a7e170f-7f1e-45c5-9d75-6e357c700566', N'Carpenter ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'47d6b824-745a-497c-a85b-6e779c96ebb1', N'Product warehouse', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'236210    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'557d4a07-cdab-46f5-ab4c-6e7fb4792484', N'Marriage Therapist ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'5b771c86-b338-462d-9e68-6eafc1a5a6f6', N'Psychic Medium ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'b94277f3-695e-4583-8589-6eb2a0e29eaf', N'Live Music Venue ', 0, N'1bb0f4d4-733b-4260-96ea-7593e9113cc7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'9b52c698-cbab-433d-adf8-6f02b6eb9879', N'Science, Technology & Engineering ', 0, N'85ee45c4-a96d-48d3-a291-8c45a05b17a7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'd53e9653-bdd3-47ca-822e-6f9efe0fdebc', N'Financial Administrator', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'6fc78ee2-d131-4a5b-b49a-7075167d3977', N'Gas station', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'd0a76220-81e6-431b-9c83-7112fbc4bd4b', N'European Restaurant ', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'236220    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'5a6b221f-5bc7-4613-927f-711dffcee0e8', N'Computer Programming Services ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'fa4fb1cf-3370-4d3e-afb6-71415a2f5f51', N'Performance Art Theatre ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', N'711       ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'7a88cd99-387d-4e01-a50d-715354065488', N'Landscape Architect ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'2a2ca3e7-dbab-4726-aff9-7160f873cbd6', N'Office Furniture ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'c3640ece-2948-4dfa-8f65-71b16b2d527e', N'Industrial Company ', 0, N'991bf5a3-cf7f-482b-9a17-29bb08cb072e', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'e084594c-bb4e-4cd5-a936-71ef3d374cef', N'Fashion Photographer ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'2b73fd09-f71a-4482-9267-72495f61c15e', N'Finance ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'7717d3a4-90a2-433f-a8d8-72812368bace', N'Summer Camp ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'8e4f3038-05d5-4d8c-abf2-7294445f8edd', N'video editor', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', N'512110    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'776b0c09-5e0c-482f-b0bb-72b5bb8843a2', N'Analytics Software ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'f344276e-b3fc-436c-a1cb-72e537af2a79', N'Training Service ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'efb85831-d159-4479-a10c-738e78609588', N'Email Marketing ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'541860    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'4feea30e-93f2-41ab-8c08-73f4e942e706', N'Wholesale Grocery ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'e8ac3b39-1e24-4185-9d0b-745d4df148ed', N'Publicity ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'541910    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'1b28ddc3-b86a-4f0a-8349-748e29e6dab6', N'Hospital ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'2a40f0e8-da7a-4f71-b611-74a602eccb2b', N'Carpet & Flooring Store ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'e005443e-0d3c-448d-a21f-74ccbae4df0a', N'Auction House ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'0bea5399-d6ff-4af5-9458-750da0d73174', N'Catering', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'722320    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'f3e2c56e-b3bf-47f2-8941-75205fc12167', N'private chef', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'b27f0e16-9ca0-4d63-961e-757fd79663af', N'Songwriter ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'1bb0f4d4-733b-4260-96ea-7593e9113cc7', N'Conferences & Events', 0, NULL, N'711310')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'b6c7296e-43b4-42ee-b6fc-75db3a9be8b0', N'News and media', 0, NULL, N'519110')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'e3fa446f-4046-4f4a-a10f-75e30e7bcb50', N'Tools/equipment ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'9ff22b0d-ce65-466a-810b-765b7b4c33a5', N'Musician ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'5ee2295b-af16-45ea-9cce-76a1eda15586', N'Power BI', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'4b1084f2-6a0d-4cef-8ef7-76b23202f624', N'Property Management Company ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', N'531312    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'b4bef815-f3c6-4ab4-8121-7713d1fb81dd', N'Masonry Contractor', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'4fde7c8c-7248-4bd1-a684-77676e1d25fd', N'Laser Hair Removal Service ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'7bf243e3-ad70-4068-a868-77d7b3df3fac', N'Home Goods Store ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'd295f7c8-5e4e-4bf6-af04-7827b29e913a', N'Theatre', 0, N'1bb0f4d4-733b-4260-96ea-7593e9113cc7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'2071d537-0c3f-4717-90a5-782f45fcc287', N'Sporting Goods store', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'288232ef-2495-467e-bcd8-7836fb8a1496', N'Media/news Company ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'511110    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'152b0db3-03be-409d-b9ec-788e462ff04b', N'Wedding Photography ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'5e2da438-468d-466a-960e-794ffbb951fa', N'Project Manager ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'60680a3e-3e25-447d-95bb-7982b6651a74', N'Real Estate Title & Development ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'eedf3da2-e4f3-44e7-b31e-7999c27107ce', N'General Dentist ', 0, N'b16536b8-3230-470d-a21b-30127a466565', N'621210    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'83b0d6e2-ab6d-4e8e-abb1-79d8603a49db', N'Local & Travel Website ', 0, N'974bbfce-2fd7-4385-a72d-df65fb760631', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'37af3191-e62e-48ee-a885-79f5d17cd14b', N'Food Supplier ', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'722310    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'272bbb41-bfc1-444d-acd2-7a0929ad1119', N'Surveyor ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'6453b85c-ca47-4d19-89f4-7a31fe307e2e', N'Interior Design Studio', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'6dde284c-975b-4515-8aa5-7a5546aba1d0', N'Nail Salon ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'f48d629c-fa50-4714-8eae-7ad41cdd2596', N'Barbers, Hairstyling, Spas & Beauty Salons ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'503d7bf6-b46f-4620-a4f9-7af1933a0532', N'Computer Training School ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'a4bffacf-f44d-4d96-a9ae-7b4879de832f', N'Commercial & Industrial Equipment Supplier ', 0, N'974bbfce-2fd7-4385-a72d-df65fb760631', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'549a6aa4-6f42-435d-8c5e-7bddb5a3ff11', N'Dietitian ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'd6a90f28-ad3c-457c-a561-7c0f730b62d4', N'Health Spa ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'6d26f8eb-53d5-4a9d-852f-7c748dad2847', N'Home Decor ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', N'453998    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'be04d876-2ad5-4119-ad89-7ca9cf05c759', N'Beauty Supplier ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'99821936-d478-4a68-a1b6-7cba741baae2', N'Early Childhood Education ', 0, N'85ee45c4-a96d-48d3-a291-8c45a05b17a7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'85151c6b-c6eb-455f-8d7f-7d469a44bcb2', N'Network Marketing ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'541613    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'224f6308-86bc-46f7-8ffa-7d65e52d9281', N'Home Mover ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'88224671-320b-40fc-8c5c-7d7faa5c0c84', N'Pizza place', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'722513    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'b50a9d96-db96-4c20-a522-7da1958c4cea', N'Real Estate Broker Associate ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'b1b0a7c5-2e93-4803-9ac3-7dbc0c55d995', N'Contractor ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'e90a889e-1efb-4471-9e61-7e0e2919fca9', N'Herbalist ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'dd2b5355-134a-4796-a341-7e8d04337808', N'Music and recording studios', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'324c17a3-e770-4c38-81d7-7eb99cb30b44', N'Wine, Beer & Spirits Store', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'445310    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'c9e4c00e-e420-474d-abaa-7f954c12ef56', N'Search Engine Marketing ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'561312    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'9dc25c46-29fc-4cf3-8bf4-7fd4df854869', N'Youth Organization ', 0, N'85ee45c4-a96d-48d3-a291-8c45a05b17a7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'495943a9-7b27-47de-a74b-7fef93d8f83d', N'Marketing/strategy ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'541613    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'962cc4a2-4f2d-4c6c-bb3b-803254b6e45f', N'Building Material Supplier ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'cb8e5b22-73de-40fd-a8c3-808678de5008', N'Investment Management Company ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'6c6b85f2-bf91-42f0-a5a4-809444778e35', N'Sports Team ', 0, N'8a30a498-47cc-4e85-8567-996e0059253d', N'713940    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'8a52b7bf-034b-4b80-842a-8097b57de5a4', N'Journalist', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'44846047-dc03-44ff-ba31-812278e39787', N'Party Planner ', 0, N'1bb0f4d4-733b-4260-96ea-7593e9113cc7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'd9b0c96d-8dbc-4c6b-b657-81bef8bc1e45', N'Government Building ', 0, N'0b354b25-2cf1-4ab1-a0ee-5ceda107af47', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'd2be15da-ce83-4187-983f-82597dc0ac79', N'Internet Marketing Service ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'6f478cc9-cb59-4c4f-8538-82a405ac964e', N'Rituals', 0, N'74ef2a5a-1a4e-4523-8601-b753506e8d88', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'5e5c24e8-da25-49e1-9abe-83845ba04ab2', N'Cultural Center ', 0, N'74ef2a5a-1a4e-4523-8601-b753506e8d88', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'0553f419-ba95-4043-b1df-83dbba4474ed', N'Cooking School ', 0, N'85ee45c4-a96d-48d3-a291-8c45a05b17a7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'0804c016-893b-4f43-80dc-83f69756d8a4', N'Industrial plant engineering', 0, N'd11ebccd-851d-4770-b088-a5a3d3302ca6', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'79004459-4129-4b3e-99ae-84426ea32449', N'Yoga Instructor ', 0, N'b16536b8-3230-470d-a21b-30127a466565', N'611699    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'c04a3d07-e1e2-44af-a643-84553042562a', N'Apartments & Home Rentals ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', N'531190    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'582ca7df-4aca-4512-b948-845db29a06c5', N'Automotive Repair Shop ', 0, N'71c784a9-033d-4c70-8d9e-e54c1f63cea9', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'33cb7b31-dab2-4667-b329-846a46eaf389', N'Home Window Service ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'a2ac82d3-76e2-4702-b76e-85820b0681ef', N'Movie & Music Store ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'0fc411ac-0f8f-48f7-b574-85b445f93530', N'Clinical Psychologist ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'30a5d717-ced6-4d92-8278-85c76f0177a0', N'Healthcare Provider ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'692a3436-1ea3-4d17-adc1-85f709c630f6', N'Adult Entertainment ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', N'71        ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'93083669-6214-470b-85a6-860e148fe965', N'Elevator Service ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'54933764-2ca4-4b83-b7aa-8632fcbb2549', N'Internet Company ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'83475acb-29dd-41b2-877a-8651ceec09fc', N'playwright', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'5741624b-e772-4852-947d-86f26b993400', N'Screen Printing & Embroidery ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'323113    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'68a553c9-f0df-45d4-a051-86fe5299b4ac', N'Mental Health ', 0, N'991bf5a3-cf7f-482b-9a17-29bb08cb072e', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'25709d59-e69e-4382-aae5-8707623a151a', N'Radio station', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'6e3dfe1b-9a05-429d-80c6-871efe149587', N'Vp marketing', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'a6a187de-37d1-469c-b2dc-87dd00c8b49c', N'Photographer', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', N'541921    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'2d32ee55-f443-4cc4-8c98-8803b974f411', N'Business Brokerage ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'cd8af678-1024-4a3e-89c5-8830d81c243f', N'Creative Agency ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'311813    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'7359ead0-859c-4d1e-af01-88a1f6008608', N'Personal Chef', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'812990    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'6d490de3-c94d-4725-add6-892971951431', N'Ice cream shop', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'31152     ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'b3b0c380-8cbb-40b0-adc2-893635c0d418', N'Film industry', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', N'711510    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'a5a10a0c-8946-4e9b-b012-894c02cd19c8', N'Commercial Lender ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'99802a81-08b8-463b-abfe-8971b054c2e7', N'Fitness Coach ', 0, N'8a30a498-47cc-4e85-8567-996e0059253d', N'713940    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'09248179-27ca-49f0-8d4b-89c1ca3b9002', N'Gardener ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', N'444220    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'3ea768bc-18b1-4879-8b48-89da5f92cd2c', N'Physical Therapist ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'7bfff8a7-2c05-438c-ba52-8abf7f924cec', N'Regional News', 0, N'b6c7296e-43b4-42ee-b6fc-75db3a9be8b0', N'519110    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'707b7bb5-144b-40bc-a3cd-8acff187af28', N'retail/department stores', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'6e57b418-892d-428b-9e3e-8bd58a5d4396', N'Estate Planning Lawyer ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'11d9a5a8-4a51-48a7-ac67-8c1e400af80d', N'Screenwriter', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'9e4742dd-ce5c-4023-8001-8c25f4d9a613', N'Auto Detailing Service ', 0, N'71c784a9-033d-4c70-8d9e-e54c1f63cea9', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'85ee45c4-a96d-48d3-a291-8c45a05b17a7', N'Education', 0, NULL, N'61')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'afdc0109-a8da-4ddd-a902-8c5756cac52b', N'Performing Arts ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', N'711190    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'27fb50fe-f40a-4124-9a76-8c787c50f330', N'retail space', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'6c076478-212b-4c2d-915a-8c943c978249', N'Search Engine Marketing ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'00b23cdf-2a7d-4b20-b7c3-8cf94ad65c54', N'Media ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'541840    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'3ef41e9f-eef4-49ab-bb80-8d04f989b9b4', N'Graphic Designer ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'21304f1a-0a0b-4ccb-8eee-8d4023228d01', N'Transportation ', 0, N'974bbfce-2fd7-4385-a72d-df65fb760631', N'48        ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'2be65d0e-929c-4e5b-bcd1-8d4158bc68d1', N'Mortgage Loan Officer ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'1ab90b21-783f-4b34-b876-8d6b41254c75', N'comedy club', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'21886d71-0e0c-4924-93e1-8da8f8913e7c', N'Parking Garage / Lot ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'a71dc5f6-8d2a-40fa-b886-8e0350d0e79d', N'Vitamins/supplements ', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'424210    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'3836fa97-5ac4-405c-8fdb-8e305b8f0b24', N'Psychiatrist ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'e3c0e96a-05e9-4f3e-bad6-8e5178dd7f58', N'Obstetrician Gynecologist (Obgyn) ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'7ab3e6c4-eb2d-4921-83ee-8e7a2c95fc04', N'Workplace & Office ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'c51076d1-4d8f-4413-b7f1-8e8385efdf77', N'Doctor ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'807816a4-7358-48e0-8c2f-8ec9864f0597', N'Boutique Store ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'b19f6a8c-dae2-46eb-8412-8f64a9ae68b4', N'Real Estate Professional ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'53ab03c7-fb18-4b86-b7e5-8f854f35e0d1', N'choreographer', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'e4a66bf8-ebdf-4d99-be2b-8fc2df87ba3c', N'Fashion Model ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'080818b6-22e7-4207-b696-901eec57116a', N'Gym Equipment shop', 0, N'8a30a498-47cc-4e85-8567-996e0059253d', N'713940    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'743e00eb-259e-4cf0-8c2e-9039478829f2', N'Dance Company ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'f4874ab5-1ab8-4119-b65b-90bccd7ddc99', N'Politics', 0, N'b6c7296e-43b4-42ee-b6fc-75db3a9be8b0', N'813940    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'870e4649-b6a1-4098-9bac-9158f58357e4', N'Appraiser ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'f0b5607b-5670-45c6-91ea-91995032691f', N'Public Utility Company ', 0, N'991bf5a3-cf7f-482b-9a17-29bb08cb072e', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'0aa6aedc-25c6-4fe0-8ea0-91a2c2992815', N'Loan Consulting ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'4f2df94b-4dee-4f4f-ab79-91ad0f85d95d', N'Private Money Lender ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'c280c762-1e92-4ac5-948b-91cc6705dc0a', N'Loan Officer ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'84996667-9427-4158-8154-91e295e443cc', N'Cooking school', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'611110    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'70590780-30b8-457f-9aef-922317eab0bb', N'Accounting Software ', 0, N'71c784a9-033d-4c70-8d9e-e54c1f63cea9', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'b598277c-5447-4ebe-95f5-9235ffba435c', N'Insurance ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'9b8876cb-1d62-4252-8a49-93c98dbe78be', N'Commercial Real Estate ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'a722d75a-c7d1-486a-9087-945c8f2c6cac', N'Veterinarian ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'84d21763-67e0-4f37-878a-94889ac8972a', N'Design and fashion', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'b5f528c2-70db-4f8b-9c5c-94eb4d6843a9', N'Photography ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', N'541921    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'a74885fc-ea54-465e-91c9-9502c813f08a', N'Aromatherapy Service ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', N'485310    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'46412c1a-2477-4659-bfc8-9547b3192737', N'Real Estate Service ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'539f0ed9-6b1b-4f48-a362-954ede7fde7a', N'Automotive Parts Store ', 0, N'71c784a9-033d-4c70-8d9e-e54c1f63cea9', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'94710006-ae29-4546-9c0d-9566913aca86', N'Web Design, Graphic Design, & Audio ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'0792e635-9687-41d8-ae23-95d61206c386', N'Massage Service ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'60c0d2b0-ac92-4777-baca-97727a82f603', N'Construction Companies ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'c551c504-da03-42db-8388-9783637fc562', N'Live  Event', 0, N'1bb0f4d4-733b-4260-96ea-7593e9113cc7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'cb88d2d7-ee76-4e0a-bbc6-97e3839d8436', N'Auditoriums‎', 0, N'85ee45c4-a96d-48d3-a291-8c45a05b17a7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'aa7f8164-0494-4230-8f17-98846cd0b698', N'Auto Body Shop', 0, N'71c784a9-033d-4c70-8d9e-e54c1f63cea9', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'87d384ff-89bc-4131-a419-9889334b318e', N'Preschool ', 0, N'85ee45c4-a96d-48d3-a291-8c45a05b17a7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'b1407ac8-9272-4b15-97e5-99127b26e8a5', N'Games/toys ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'29b64e50-c0df-42c0-97a1-991fc5579f4b', N'Cabinet & Countertop Store ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'8a30a498-47cc-4e85-8567-996e0059253d', N'Sports & Fitness', 0, NULL, N'713940')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'aee1041c-b0cd-4244-9c12-99a95759f2f5', N'Yoga Teacher', 0, N'8a30a498-47cc-4e85-8567-996e0059253d', N'713940    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'1773733c-b44c-4e9f-b1ec-99d501b158d6', N'Investor ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'fd295717-a993-4d8f-9245-9a9c9743bf52', N'Commercial & Industrial ', 0, N'991bf5a3-cf7f-482b-9a17-29bb08cb072e', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'd3c88c65-b51a-47c5-8f11-9ad4b1b2d377', N'Home Products ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'339059b8-ada5-4086-b30f-9b5414655caa', N'Sculptor ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'a6f69f57-244e-4926-8689-9ba4290b172f', N'Audio Engineer ', 0, N'991bf5a3-cf7f-482b-9a17-29bb08cb072e', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'7bbeb2ab-3542-4281-b2ae-9bb3b0341978', N'Physiotherapist ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'c05d40e1-8c73-4f78-b705-9bdc6c8f3e38', N'Family Therapist ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'2b0e6bc9-8685-4e0a-9b5b-9be74258e37d', N'Food Wholesaler ', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'722310    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'ee8909ec-bbc6-45e7-a882-9caf72e298a5', N'Industrial Designer ', 0, N'991bf5a3-cf7f-482b-9a17-29bb08cb072e', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'1c2d2118-9103-43f9-9aaf-9cd129df3b9b', N'Labor & Employment Lawyer ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'f8b480aa-3147-4c0c-89ca-9d17725bfecc', N'Plastic Surgeon ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'4dbd2a91-66fa-4bcf-a9e1-9df0c82fcdd4', N'Travel Service ', 0, N'974bbfce-2fd7-4385-a72d-df65fb760631', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'b8a31fe0-b5db-4e2a-8899-9e30d7575204', N'Alcohol and Tobacco', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'3122      ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'086a82bf-8cea-4cf7-b992-9e56d223a127', N'Music Lessons & Instruction School ', 0, N'85ee45c4-a96d-48d3-a291-8c45a05b17a7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'16dd574f-ccde-41b7-af2b-9ea4414efda4', N'Dessert Shop', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'311520    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'a305a3cf-7eac-4e15-8341-9f1b4071f75b', N'Performer ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', N'711510    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'a29d1de5-0cc7-4415-a006-9f654df482f4', N'Outdoor Recreation ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'1fa58d58-b4aa-48a1-852e-9f8e0d59a2c0', N'Festival', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', N'711310    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'270f75a2-5105-4f14-97fa-9fb4bfa65ecd', N'House Painting ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'03766244-8622-42bf-b09c-9ff8356c4614', N'Wellness Center ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'2709394b-10bd-49bf-b174-a02a953759a2', N'Furniture ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'1227e7ea-48fc-4b47-9b58-a03358eaf39b', N'Insurance Broker ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'6bdbc27f-3e40-4cbb-91b0-a04f528d6852', N'Insurance Agent ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'362af51d-0e72-4d45-a7a1-a0c12a762d2e', N'Wine/spirits ', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'445310    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'6d184f0a-fc14-4270-9ebc-a0c2f9b2e844', N'Awning Supplier ', 0, N'991bf5a3-cf7f-482b-9a17-29bb08cb072e', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'bb27cba8-8ea5-42b7-a900-a11210a5a981', N'Guitar Lessons', 0, N'85ee45c4-a96d-48d3-a291-8c45a05b17a7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'e1bd5d13-eb3d-4bf6-aa20-a11e36aff4ed', N'Health & Wellness ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'b048c288-95bc-4560-a44f-a1362fbee354', N'bakeries and Desserts', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'311811    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'b39551d2-3be7-4357-b116-a1f143e7e9a1', N'Architectural Designer ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'6b7a20ed-88c4-4cab-9a98-a1f473419084', N'Japanese Restaurant', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'722511    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'8f438247-df50-460c-970b-a20e777d1c57', N'Pharmaceuticals ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'9fcc8a9f-f946-4cd1-b32a-a21a4ef1ec07', N'Permanent Makeup ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'04e2f907-ed44-4d45-a497-a22c9574204f', N'Entertainment Website ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', N'71        ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'1df447b9-03a7-49b2-8fe4-a243e179e8e7', N'Bridal Shop ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'6770f112-5e80-4b65-a5e8-a2825eca84b1', N'Website ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'c68dc18a-19df-4d59-9992-a2b9afb9b334', N'New Construction ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'57239297-bfd7-4764-b5dd-a2c047c92317', N'Experiential Marketing ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'511130    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'27a22aed-47bb-4642-8e8c-a301d154b9f6', N'Violinist ', 0, N'85ee45c4-a96d-48d3-a291-8c45a05b17a7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'8b228211-9649-4f03-a3f1-a3807032b25b', N'Fence & Gate Contractor ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'c1a6376c-4726-4d04-bfd1-a3903249eb00', N'Real Estate Attorney ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'47b90d8d-48ca-4a8d-a82d-a3985134f0e7', N'Digital Marketing', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'51803fcb-521b-413f-9cd4-a3dd6a5769d5', N'Food Industry ', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'311       ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'a6c77fdc-030e-4773-b161-a3fbb250318f', N'TV Show ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'515120    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'8211b3fe-4e89-494e-b6c6-a42151fecff9', N'Nanny ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'4f008c34-d6b2-4ca7-a208-a424a74c762a', N'Image Consultant', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'621512    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'032e9ce4-3e6d-42b0-8556-a4514b4d8c87', N'Illustrator ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'cb40d3cb-dc5c-4649-a880-a452cde95a70', N'Addiction Service ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'f0d2f214-6275-4b34-8736-a5423186fa7e', N'Automotive Repair ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'd11ebccd-851d-4770-b088-a5a3d3302ca6', N'Engineering & Construction', 0, NULL, N'813110')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'f8e17823-2ffc-4d9c-8955-a734538bf210', N'Real Estate Lawyer ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'4986db30-d29a-4552-9c07-a755d7901383', N'Cybersecurity Company ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'70bd01a5-b4d6-42a0-b7a1-a75ba73d6085', N'Computer Repair Service ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'7de59247-7827-4f90-8809-a7aa1e658368', N'Social Media Agency ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'5a9787b8-18f4-4b73-b9f3-a7b2e1f04c32', N'Personal Blog ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'519130    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'28fa2a0c-71c8-4189-a2ef-a7e34d067b68', N'Transportation Service ', 0, N'974bbfce-2fd7-4385-a72d-df65fb760631', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'50053b5b-491c-4d79-99ea-a8c402266e3e', N'Baby Goods/kids Goods ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', N'311340    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'b3b8c164-dfce-459f-96e3-a8c4720b6733', N'Film Producer ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'd97de2c0-749c-4b9b-bb4c-a8db96ed6112', N'Editing ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'dfa8a8dc-b149-4580-901e-a93401f7e4d2', N'Mergers & Acquisitions ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'ae403d53-4abe-4343-b31d-a9bf70b3442f', N'Musical Instrument Store ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'bc1967c7-16cf-4764-bff7-a9e945ba1953', N'Gym/physical Fitness Center ', 0, N'8a30a498-47cc-4e85-8567-996e0059253d', N'713940    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'ab984883-f9ef-49af-88f8-ab1de8eb7d95', N'Musical Instrument ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'1c247b46-739c-4b67-8bbc-ab76f20cdccc', N'Financial Services ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'91930d46-168c-41eb-a823-ab92f6a709b3', N'Arts,Crafts and hobbies', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'6a788fbf-628b-4f74-9437-abbaea8ce1cc', N'Music production studio', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'e1ecd8f4-1727-4e90-be50-ac242fc2a8a1', N'Cosmetics Store ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'0c244cf3-a543-4762-99d8-ac55e3299f73', N'Website Design ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'62850ea1-d1fc-4332-825f-acc02fd57368', N'Content Marketing ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'519130    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'c6501532-dc2d-4eac-89f9-acd771a93a03', N'Marketing Strategy ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'541613    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'8880b60d-9e6b-47f5-b251-ace8a4ba33ad', N'Consulting Agency ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'c8e01601-e9fc-473b-9726-adb37501f1db', N'Cleaning Service ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'8eedb9b0-de8d-4a6b-9b5a-add8fbbf264f', N'Event Planner ', 0, N'1bb0f4d4-733b-4260-96ea-7593e9113cc7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'0a288094-6736-4171-8073-ae6207247c3b', N'Branding Photography ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'541922    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'01d4db87-8030-41b0-ad37-ae8beb1261ef', N'Candy Store ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'c3bc5535-4b85-4f91-8cd7-af82dde087b5', N'Massage Therapist ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'471ba3bf-c0f9-470c-983d-af855fe49512', N'Performance & Event Venue ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', N'711320    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'3d44ab9b-92b6-4446-afbf-af8f28248e5e', N'Legal Service ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'90ef57dd-3c79-44a3-add0-af903e9bb9d1', N'Engineering Service ', 0, N'991bf5a3-cf7f-482b-9a17-29bb08cb072e', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'e23088e0-5311-440c-a3be-af9069842610', N'cafe', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'311920    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'fba5e8c4-ec6c-4b48-bf49-afba3822aeef', N'bartending service', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'999999    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'da26d4ad-df41-4b42-a9ba-afc8f66cb918', N'Tobacco Store ', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'453991    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'1d23182a-fa9b-43c0-bfd2-b01c7c8bf693', N'Arts and crafts store', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'492b2576-d47a-4d3a-9554-b07de1b2019d', N'Compliance Software', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'7f34f509-7bfa-424f-b906-b0b8aecbc122', N'Pet service', 0, N'19ca8d21-34d5-4434-aa6a-58e17db7058c', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'530d61f0-fb51-48ac-a9f8-b0bade796aba', N'Bars and clubs', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'711211    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'f5e48bee-7a94-4201-a5a7-b0bb51d505ea', N'Video Commercials ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N' 512110   ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'ae8ccf16-b79c-42df-af58-b0dddcdfe7dc', N'Convinient Store', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'445120    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'216fc330-c93a-4325-8a63-b0f7ab93e477', N'Marketing Consultant ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'541613    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'0fa68f35-e1bf-46bd-b8bf-b1418dd10463', N'Biotechnology Company ', 0, N'd11ebccd-851d-4770-b088-a5a3d3302ca6', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'c9e0d08c-e23a-4bda-bad5-b15c74486b89', N'Furniture Repair & Upholstery Service ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'a9a8d0ee-4c2a-4ad8-8c53-b17255f43c1a', N'Wedding Photographer', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'aafc22fd-92b5-4928-a930-b1bc86de1513', N'Hair Extensions Service ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'5ba3b839-ce5c-4d7f-b0c3-b1e0c5c50a3c', N'performance', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', N'711       ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'fd1fc3a8-6b23-44e4-a387-b1e668c36fd7', N'Web Designer ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'6121cbf3-bac9-4fa5-bbd8-b24459ace417', N'Gift Shop ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', N'541940    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'b8d594d3-5c86-4f04-9b4f-b33c989f8def', N'Pediatric Dentist ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'2d7f036d-ca09-4006-9282-b36857791067', N'Sewing & Alterations ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'137af3cf-64fe-41b7-899d-b3a0744178d5', N'Property Manager ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'26119ab6-de7a-4934-817d-b3a29dd6c852', N'Talent Agent', 0, N'1bb0f4d4-733b-4260-96ea-7593e9113cc7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'7c2364da-02a8-493f-915a-b3dc3fd0fc17', N'Baby & Children''s Clothing Store ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'c79d826d-8860-47ab-b4ed-b3e57b70b11d', N'Theatrical Productions ', 0, N'1bb0f4d4-733b-4260-96ea-7593e9113cc7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'16752fdb-7d40-44ec-8e57-b3eafd8e325b', N'Spiritual Leader ', 0, N'74ef2a5a-1a4e-4523-8601-b753506e8d88', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'6813bc30-decc-480a-a8c2-b4263375ab23', N'Home & Garden Store ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'9705db88-9bbd-47a7-aa44-b43d4d871e7f', N'Corporate Wellness ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'905a750c-b178-47c7-8c7e-b59236a899ba', N'Merchant Services ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'33911a4c-ff2a-46ec-a6d7-b651f394a9f1', N'Home Security Company ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'0a881aa3-6ff6-4959-bb77-b66aba003b86', N'Enterpreneur', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'541613    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'41f93c6f-590e-4882-9758-b68383e5dae4', N'Architects, Landscape Architects, Engineers, & Surveyors ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'1a0f0ccc-657a-45b5-8378-b6a63f1b9291', N'Infrastructure management', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'dda48a66-71c7-474c-9ffd-b6a86dce0e0d', N'coffee shop', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'd623be58-8ef6-4ec3-92ff-b730786ab4b5', N'Fitness Venue ', 0, N'8a30a498-47cc-4e85-8567-996e0059253d', N'713940    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'74ef2a5a-1a4e-4523-8601-b753506e8d88', N'Religion', 0, NULL, N'453910')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'43a0e49d-2d79-4ee3-9b8a-b7b2d89a004f', N'Meat Wholesaler', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'42        ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'fc6465cf-c636-42c5-87d8-b7f19867acf9', N'Photography and videography', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'26c9699f-3824-40ec-9eb0-b88becb41bea', N'Business Blog', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'454110    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'5e8ee15f-0134-4c85-8e5a-b8ceff09935d', N'Restaurant Supply Store ', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'452998    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'0d20ee21-ffa4-4b57-a890-b917a485c686', N'Web Developer ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'7cbe339c-e0bd-49c6-b299-b92eea9d4a90', N'Commercial Real Estate Agency ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'53c349a9-6179-449b-9172-b9993ab25ba6', N'Liquor Store', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'445310    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'22b000c7-8711-4ad9-b546-ba476bdcbc69', N'College and university', 0, N'85ee45c4-a96d-48d3-a291-8c45a05b17a7', N'611310    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'11f12699-9f7d-4631-bc68-ba74efada412', N'Yoga Studio', 0, N'8a30a498-47cc-4e85-8567-996e0059253d', N'713940    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'a9cafa15-a302-44a5-8459-bac4a3f49bd3', N'Wardrobe Stylist ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'ac5e75a5-d82e-4a1b-8355-bb4d2badcb42', N'Contractors ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', N'238990    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'f8f36b34-d31c-4ddc-a3b0-bbf0cf00fe9f', N'Bank', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'436376bd-911c-4c8c-8f36-bc2b472c28cc', N'Sports & Recreation Venue ', 0, N'8a30a498-47cc-4e85-8567-996e0059253d', N'713940    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'f912fb0d-caa4-4a4c-bc99-bc2be9725b3d', N'Hotel, Motel ', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'721110    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'611a940a-8f53-4cb6-ae83-bc98108452fb', N'Real Estate Appraiser ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'27dbc107-d469-456a-9ad5-bcde604b2eec', N'Fashion ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'd840e7ff-9fcf-4fbb-b150-bd60f91bf5c6', N'Real Estate Sales ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'063017e5-eb93-4b66-b1d7-bd857beb0918', N'Elder Law Attorney ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'66e0d655-f827-4a9c-bbe9-bdaf95b426b4', N'Social Media Marketing ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'ec924bd6-c56c-4249-994c-be64441d0aa7', N'Marketing Agency ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'541613    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'072639d1-3b98-4eb0-b9dc-be6a81da34b7', N'Food Consultant ', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'722310    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'b09bf65c-d26a-4315-b7e8-bf069c29b1d2', N'Construction Manager ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'500a9b89-65db-4271-96b1-bf44305100cf', N'Interior Designer ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'042658e3-f699-4c65-a950-bf680f66109c', N'Doctors, Physicians & Assistants ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'd8854841-b27a-4240-9e9b-bf8fd15ca7be', N'Mortgage Brokers ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'bc4b918c-4696-4091-b58a-bf97c8f19f54', N'Training gyms', 0, N'8a30a498-47cc-4e85-8567-996e0059253d', N'713940    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'1192fff4-55a4-4382-9584-bfa338989b2e', N'Women''s clothing store', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'dca35278-72b9-4737-b495-c0f52bdc1dd5', N'Art consultant', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'338412df-8828-4fdb-b9d4-c1eb1feda3ce', N'Cosmetic Dentist ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'4a7cc53e-7fdd-4d0d-a17a-c1fe81153b11', N'Musical Genre ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'66a00e28-9ef6-4f52-8614-c2324de68c6e', N'Waste Management Company ', 0, N'991bf5a3-cf7f-482b-9a17-29bb08cb072e', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'c4c23553-fbd0-49e4-9540-c24c4e893a60', N'Content Writing ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'519130    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'1bf25676-dee5-4c0c-abe6-c30a81c48d84', N'Occupational Therapist ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'aaeb9121-2999-4683-a4e2-c32760ffcb1a', N'Kitchen & Bath Contractor ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'08877ed6-d83e-44e7-98ab-c35819475588', N'pet supplies', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', N'453910    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'46e32c60-dd87-4cba-bce6-c366f5ddd18e', N'Singer', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'591be297-485d-4fde-b6b5-c3fed4ba063c', N'Security & Training ', 0, N'85ee45c4-a96d-48d3-a291-8c45a05b17a7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'432e4d1a-25c5-4a84-9fd6-c40be1417fca', N'Barber Shop ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'ac946fde-738f-4f5a-9c39-c42b5835427c', N'Construction Company ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'f11f662b-aaa7-4fb0-9e91-c46ab0c3a299', N'Butcher Shop ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'1d5b31b7-d311-436e-b70c-c4904b3ec089', N'publisher', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'46a8f66a-40b1-4320-93dc-c4bafdca544b', N'Notary Public ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'fad4bc89-16dd-4a0f-bea3-c4ce91d02603', N'Notary Signing Agent ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'19817a09-0e8f-4b46-a26f-c5f430491413', N'Consumer Electronics & Accessories ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'0f4b9c9c-7e10-45a8-940d-c6173060b140', N'Hardware Store ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'1d2e8c6a-986d-4206-a222-c65dd6868e2d', N'Wholesale & Supply Store ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'a7d3b301-2b18-4c41-992f-c66c0e535d44', N'Travel Company ', 0, N'974bbfce-2fd7-4385-a72d-df65fb760631', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'e9a8e290-bc1d-47cf-b12a-c68e9a3b610e', N'Errand Services ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'9c57a0f1-b3a4-4627-9e25-c72d949848d6', N'Adult & Continuing Education ', 0, N'85ee45c4-a96d-48d3-a291-8c45a05b17a7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'54ea958c-a8e3-41f2-b95b-c75b796f9384', N'Entertainers, Actors, & Directors ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'd4fd7222-4d7f-408c-8a2e-c7ab5e025c66', N'Escape Game Room ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'08781987-02d0-4c7a-927a-c803e7a6705c', N'Tax Lawyer ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'af68e343-3edc-458c-ba1b-c81549565f83', N'Art Direction', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'fdbb89ca-79eb-421b-af76-c902fdf863f2', N'Media/news/publishing ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'519130    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'610c8c81-7f8a-414f-b35e-c95cd98afb1c', N'Advertising / Marketing ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'541613    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'291b935e-87d4-4433-921c-c9c3549db98d', N'music store', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'73bad097-77be-4684-ab09-ca55dff5e408', N'Strategic Planning ', 0, N'991bf5a3-cf7f-482b-9a17-29bb08cb072e', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'e70d60dc-9f5c-4ba0-89eb-ca925866ff76', N'Exercise & Fitness, Gyms ', 0, N'8a30a498-47cc-4e85-8567-996e0059253d', N'713940    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'86fd9448-f415-4ee9-bdcb-caa8a5d5e59c', N'Attorney at Law ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', N'541110    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'915042fb-f175-422f-beb8-cab8d4cf7e06', N'Illustration ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'5313a436-60f7-4f5e-b124-caeb310b6bad', N'Pharmacy, Drug & Vitamin Stores ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'c8d36942-465b-45c4-ab66-cb349e87f483', N'Author', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'711510    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'd194087a-f3c3-4612-93fc-cb420fc2d835', N'Day Spa ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'3f98856d-31b1-4b08-893d-cb6f52d87da9', N'Financial Planner', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'46462f1a-7925-42d5-98c3-cb84a7c3ec2b', N'Pop Up Shop', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'1bd8d431-a1ae-447e-93e1-cba90e485a09', N'Broadcast Media', 0, N'b6c7296e-43b4-42ee-b6fc-75db3a9be8b0', N'515       ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'17aa64f2-4038-494e-9b25-cbe950197bdb', N'Brand ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'312130    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'2f44be22-33f3-4bf9-9999-cc4267bef506', N'Bookkeeping ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'f190a943-8067-4139-8f16-cc946bb9e7d1', N'Office Supplies ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'ba088849-0927-47ba-aa7e-cca31144ef5a', N'Smoothie & Juice Bar ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'14c53ec2-4aec-4a52-905e-cd2809ed6c4b', N'Divorce & Family Lawyer ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'5e65af4e-a656-4b6f-9e7d-cd311878e43a', N'Gym', 0, N'8a30a498-47cc-4e85-8567-996e0059253d', N'713940    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'492f7011-ed48-46e3-b05f-cd897ec6df9a', N'Astrologist ', 0, N'74ef2a5a-1a4e-4523-8601-b753506e8d88', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'50013129-904b-4a14-8ca9-cde34c62c9ca', N'Data analyst', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'207197b5-5b83-4650-b85c-ce24f4826d6f', N'Computers & Internet Website ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'20357296-a72f-4178-b2b3-ce3c33769841', N'Merchandising Service ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'b3a8bf1e-9b47-4b9f-843a-ce8ce7ffa967', N'Hard Money Lender ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'dd534aea-22c7-4780-bfa0-ceb784bb7562', N'Architect ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', N'541310    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'f79b09d7-b334-41ed-9f0e-cf13cd213587', N'Design Build Construction ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'36f8f479-7484-49f5-b40a-cfd6d7daf2eb', N'Food ', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'722310    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'3308500d-0a3c-4898-8c49-cfea0dbb60ce', N'Performing Arts School ', 0, N'85ee45c4-a96d-48d3-a291-8c45a05b17a7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'9afda962-677e-4e44-a064-d0b60bbfae21', N'Home Furnishings, & Goods ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'7aeac8f1-3647-449f-b468-d0cc51ea1ae8', N'Petroleum Service', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'25b4a4d2-9ec9-4086-be78-d0ff37d5cc12', N'Legal ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'6a511d21-284b-458d-a7c4-d12e6303a81d', N'Dj ', 0, N'1bb0f4d4-733b-4260-96ea-7593e9113cc7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'd04d269d-1979-494d-80fe-d13f4760afac', N'Food Truck ', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'722330    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'c886866d-628a-45f7-963d-d1737f47946f', N'Museum ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'16b73f1b-d7d8-4ac0-978f-d225df793cf0', N'Attorneys/lawyers ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', N'541110    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'2a43d60d-3b41-4501-8055-d22a32891b80', N'Public Figure ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'f15f98ff-652d-49d5-8af8-d262fde36f21', N'Architectural ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'6f8cc8ba-89e3-49a6-8127-d2652dd591cd', N'Men''s Clothing Store ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'264d4e4f-df93-4ade-9d7d-d2830fcf82a3', N'bags/luggage', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'c9e73731-eee4-413f-b4cf-d2e0c75a35b9', N'Dessert Shop', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'40c6e9c0-047f-495c-ae85-d2f48a5af1d2', N'Dance School ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'0e76b8c2-7ad7-4ef1-bd08-d2fb7dcd3843', N'Janitorial Service ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'c591e12e-a23e-4d40-9261-d3074a1f1345', N'Dog walker', 0, N'19ca8d21-34d5-4434-aa6a-58e17db7058c', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'033a967a-2781-4d87-a0ad-d32bc27b1f64', N'Real Estate', 0, NULL, N'53')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'05952ad1-4974-4b35-ba41-d35fd9ed1bb1', N'Publicist ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'541820    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'4a457999-196d-4df6-8e0c-d371d5232091', N'Antiques & Collectibles', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', N'453310    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'098bc684-9884-473c-b16e-d48573eb9c5f', N'Automotive Dealership ', 0, N'71c784a9-033d-4c70-8d9e-e54c1f63cea9', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'303b8163-a678-49cd-aa3d-d4917b3a6d01', N'Animation studio', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'69a22802-0fdd-426e-ba1a-d4e286328687', N'Internet Service Provider ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'a9f225e3-ab5d-4d21-ac38-d55dd2fc9327', N'Office Equipment Store ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'8bd16e5e-6a9a-4b5f-9000-d587621cb282', N'Sports & Recreation ', 0, N'8a30a498-47cc-4e85-8567-996e0059253d', N'713940    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'c87b931f-0a8f-4660-aba0-d5cf227803cf', N'Integrative Medicine ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'34d311da-9971-4a86-ac8b-d606fd072eb6', N'Auto Dealers ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'b21bd459-72fa-4d49-9b86-d6119ade4427', N'Visual Arts ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'2c2ed170-27c4-4530-92d0-d6764f1f3887', N'Carpet Cleaner ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'e35ed701-c56e-4360-a8ea-d6bd338df9ed', N'Accounting ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'f7bd9479-0e5c-45ff-a3e4-d6c2dbca8633', N'Performance Art ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'eb418522-0047-4640-9781-d6df2c0317b1', N'Social Media Agency ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'541830    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'63c3b272-9338-4a62-8626-d7565137e114', N'Professional Services ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'6c87f6ed-1ca2-4ed2-b916-d788aa18d2fa', N'Investing Service ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'c26bc131-b840-4b69-a935-d798305e5293', N'Christian worship and liturgy‎', 0, N'74ef2a5a-1a4e-4523-8601-b753506e8d88', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'94e35884-7dbd-45d4-a503-d7db5994efca', N'Synagogue ', 0, N'74ef2a5a-1a4e-4523-8601-b753506e8d88', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'44cb7006-3ce0-42ec-bb79-d7f99bf93a67', N'High School ', 0, N'85ee45c4-a96d-48d3-a291-8c45a05b17a7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'4af65670-1b9f-433a-8aa3-d819f259d3a4', N'Housing & Homeless Shelter ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'a18bbf2e-8094-4fcd-a9a4-d872f59bb879', N'Appraisers ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'71bb0514-6f96-41f1-ae79-d8de34530fee', N'Dermatologist ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'29bf588c-1ad5-45bf-afa3-d996a8923af1', N'Brand Agency ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'541810    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'0a6fe010-06ef-4239-96e5-d9b207a90e32', N'Current events', 0, N'b6c7296e-43b4-42ee-b6fc-75db3a9be8b0', N'711310    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'cf98b444-1178-4c6f-86e3-da235d8ad51a', N'Real Estate Company ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'28e4540a-3fc7-47ff-b02c-da4898bf3b79', N'Footwear Store', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'2b8747b9-107f-4be7-8933-da4cd2e8fd69', N'Fashion Designer ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'64ef969b-5429-42bd-b944-db0fce51a733', N'Psychotherapist ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'75459ac1-4002-4e00-a0b9-db6d0c44402d', N'Market Research ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'541910    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'b1fb536e-00cc-4d7a-82a0-db6e408f0623', N'Book and magazine distributor', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', N'511130    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'258f6e63-a37e-495a-94ca-db8f0818c816', N'Mobile Phone Shop ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'a0c4830c-1e2f-4fe8-9588-dd1982c51ef0', N'Beauty, Cosmetic & Personal Care ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'48bab47e-5c4e-4320-8443-dd39b14613b1', N'retail company', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'd541c110-d754-4123-85cc-dd4aa787380b', N'School ', 0, N'85ee45c4-a96d-48d3-a291-8c45a05b17a7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'848bc715-d744-4e66-9a71-dd536f01aa9e', N'florist', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'875fbcec-bb22-40d8-a460-dd611176de2c', N'Fire Protection Service', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'115b9314-cdb0-48b4-a28d-dd820ccccdbc', N'farm', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'8d440a35-c106-46a0-83b9-ddb19a2444c1', N'Marketing Research ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'541910    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'111aab01-b848-4bee-8050-ddc38f0aac4d', N'coffee shop', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'28a2b8d6-2438-4c7a-89cb-de4a5db6d1cb', N'Martial Arts School ', 0, N'85ee45c4-a96d-48d3-a291-8c45a05b17a7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'ddbd6ee1-73bc-4b31-90e4-de4e1727fc2a', N'Cafe ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'ae9f31ef-e6b6-4e0a-8ff4-de82f43346b3', N'Sports club', 0, N'8a30a498-47cc-4e85-8567-996e0059253d', N'711211    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'ad574246-cea8-46e4-96c3-de92602cb182', N'Sports event', 0, N'8a30a498-47cc-4e85-8567-996e0059253d', N'713940    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'baa03f31-8f5a-4966-bf8b-df1980f7b5c3', N'Accountant ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'0ab83d4c-29a6-4328-9e3d-df601026755b', N'Pianist', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'974bbfce-2fd7-4385-a72d-df65fb760631', N'Travel & Tourism', 0, NULL, N' 541330')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'225f3e3a-4e3b-4b37-9cc2-df7b827bd96c', N'Piano Technician ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'a5928c5c-cefe-472a-9513-df828489dd8f', N'Jewelry & Watches Store ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'85646b7b-aaa4-47b0-8de2-e07962868fbf', N'Software Company ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'050b6bb0-c987-46a8-8a3c-e0810a0e062b', N'Bar', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'722514    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'0c40687a-766f-4ccb-80ee-e089855e9aa9', N'Beauty Supply Store ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'2e0b070b-283a-4c2a-b169-e0c587a87760', N'Print, Radio & Television Production ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'334220    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'4a487ec3-ba48-4c59-8890-e0e262e964a3', N'magazine', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'd00a5d90-6a5b-43bb-b2f4-e15dcdd564a0', N'Audio/video Services ', 0, N'991bf5a3-cf7f-482b-9a17-29bb08cb072e', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'3fb29955-b8c9-445e-a996-e2a13275925d', N'Movie Theater ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'2c05b707-d29a-4345-b02a-e2ab6b4e551e', N'Radiologist ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'3d344f84-102e-41ba-baa3-e2b5f158e3e4', N'Convention centers', 0, N'1bb0f4d4-733b-4260-96ea-7593e9113cc7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'3c18ad23-18f7-4d6e-80f5-e2b9df03be81', N'Pet Owners', 0, N'19ca8d21-34d5-4434-aa6a-58e17db7058c', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'2afaef80-4bbc-4e05-b2af-e34ec8c9b6d4', N'Social Media Company ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'0b62d1bb-c0b4-44c2-8d3a-e38c3889f3e5', N'Business Broker ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'21b8f1ba-0732-47db-bac1-e3ac61a64038', N'Taxi Service ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'9b768b86-eac1-466f-a7c5-e3eed6a2770c', N'Marketing ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'541613    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'85bcfb92-bc08-4860-a9a1-e3f4eca5f878', N'Party Supply & Rental Shop ', 0, N'1bb0f4d4-733b-4260-96ea-7593e9113cc7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'3bf75751-511f-46f6-aeb3-e4417b996402', N'eductation website', 0, N'85ee45c4-a96d-48d3-a291-8c45a05b17a7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'b18a7d7c-ab22-4aca-b917-e4666f73e7d5', N'Big box gyms', 0, N'8a30a498-47cc-4e85-8567-996e0059253d', N'713940    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'71c784a9-033d-4c70-8d9e-e54c1f63cea9', N'Automotive & Planes', 0, NULL, N'811121')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'fe78b133-1cf4-44e3-9218-e56a393e7829', N'General Contractor ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'6b492ec9-891f-4d1e-b6a7-e579b4ffeb84', N'Film ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', N'326113    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'6daae514-d0c2-46ee-9a30-e58c2d0f105a', N'Professor', 0, N'85ee45c4-a96d-48d3-a291-8c45a05b17a7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'1177ee6c-0c17-42d8-bd99-e59e55d0c105', N'Consultant ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'66679e9c-738c-4bbc-aa77-e6380058b05c', N'French Restaurant ', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'311813    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'41944fc5-4c40-4872-a3f0-e68986fd867e', N'Specialty School ', 0, N'85ee45c4-a96d-48d3-a291-8c45a05b17a7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'7d17e181-488e-43cc-a707-e6b3c730282b', N'Beauty Store ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'fac2ea5e-53b3-48df-a52b-e6dbc105ae0b', N'Photo Booth Service ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'8aa5a69d-d8a4-48df-904a-e6e21d0a191f', N'Architecture ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'4e2414cb-3dcc-41b6-8e7d-e6ef9db5ef18', N'Kids Entertainment Service', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'48203468-a650-4f39-94ff-e7287bd2f721', N'Computer Company ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'8295702c-f7aa-495f-afc4-e75ef8ed7fa1', N'Book', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', N'511130    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'969a6a4d-68f7-47ed-b8bd-e8087f913d4b', N'Home Organizer ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'5aaa736a-4c77-45ed-b502-e827c8740ddb', N'Financial Consultant ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'5c4815d4-7c01-4911-a4c6-e84bc0665352', N'Solar Energy Company ', 0, N'991bf5a3-cf7f-482b-9a17-29bb08cb072e', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', N'Arts & Entertainment', 0, NULL, N'71')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'44acc2ab-8821-4922-91a4-e8b180300361', N'Entertainment Lawyer ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'9be76206-2d19-4c0f-8922-e9b9a6aa82bc', N'Beauty Salon ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'aaf5de1e-270e-40cd-85c2-e9c7bc6f3da8', N'Sushi Restaurant', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'722511    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'd1d3cf16-0f4d-4a3f-9aaa-e9ee910b3231', N'Day Care ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'c90e73be-6e21-4551-bb8c-ea02c7ac27c3', N'Consultants ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'b17a69da-d3d9-4b26-8c1a-ea3d784797b9', N'Employment Agency ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'167d97c6-fb9d-45b0-891e-eadce82b0d29', N'Wedding Planning Service', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'de22d4f5-2f7c-439c-bb7b-eafe91f3ed75', N'Electricians', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'c16acc90-9ffc-46db-a344-ebcf67d458aa', N'self storage facility', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', N'115116    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'6d80e6f5-f5b4-441a-9b20-ebe65ba4250c', N'Social Media Company ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'541512    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'16a0422c-cdd7-4379-962f-ec174571fb79', N'Safety & First Aid Service ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'6bf721f4-d78c-4144-8228-ecc642dfba74', N'Performing Arts School ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', N'711190    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'896725a8-ef80-4424-829d-ed367837ca9c', N'Beauty', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'f4bfcd59-0a69-40e2-b6c3-ed9bfb9c6fe3', N'Home Staging Service ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'9288538a-1934-40c7-85fb-edad123cc636', N'Food Delivery Service', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'722310    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'38681048-fc91-4390-9bda-edc7efeab38b', N'Landscape Company ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'd9cc58ad-6108-4587-a063-edeee472f5c6', N'Environmental Conservation Organization ', 0, N'991bf5a3-cf7f-482b-9a17-29bb08cb072e', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'ce5f418e-ff06-4707-879d-ee357303c541', N'Dance School ', 0, N'85ee45c4-a96d-48d3-a291-8c45a05b17a7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'44254167-5454-46e7-b4ba-ee485ff3f834', N'Food & Drink & Hospitality', 0, NULL, N'722310')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'985f9cc6-5500-4d97-a9ad-eea972a9546c', N'Antique Store ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'c0afbd26-1c15-45f8-b260-ef7018a83792', N'Movie ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'9ec714c3-c134-4cf8-8d7f-ef9840d72f7a', N'Esthetician ', 0, N'b16536b8-3230-470d-a21b-30127a466565', N'812112    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'b080062f-e1a9-45de-895b-efa5b61d2ba6', N'Greek Restaurant ', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'236220    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'ccc7b063-2a4f-4089-8989-efd440c8494a', N'Funeral Service & Cemetery ', 0, N'74ef2a5a-1a4e-4523-8601-b753506e8d88', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'3f222e77-a73f-4ec3-8e28-eff11b9e2e88', N'Travel Agency ', 0, N'974bbfce-2fd7-4385-a72d-df65fb760631', N'561510    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'1c68af17-42d0-4f3a-8a29-f00648ba5d68', N'Consulting ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'4d79ad8d-e90a-41dc-818b-f05c1389c01b', N'Dog day care center', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'f4f2dd03-d355-4ed8-92cc-f15d81dee107', N'Bed and Breakfast', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'721191    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'df3c375e-1b91-4150-b8fc-f16d385ca358', N'Appliance Repair Service ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'e8f37105-f2f3-4716-9403-f22f7da55bad', N'Financial Advisor ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'b0266b58-217c-44f5-b001-f25853c10689', N'Fine Art ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', N'611610    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'd0042c45-2bbc-4d90-ad3b-f3115f7eef2a', N'Acupuncturist ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'fc00403c-36fb-44dc-9914-f3e457362fcc', N'Health Food Store ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'ab7bb004-e596-49d0-9bee-f3fda66f51ac', N'Flooring ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', N'238330    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'99e531b3-42fd-4ef7-a3ca-f42a8078fbc0', N'Film Production ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'49c99cea-0273-4ec6-85f8-f433353a0a5b', N'Advocate ', 0, N'74ef2a5a-1a4e-4523-8601-b753506e8d88', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'b3cdb2cd-5e9d-4a82-8a45-f4bff595d9d4', N'Nutritionist ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'573f1e61-76ed-4666-8fa3-f4d58dbccb4a', N'Astrologer ', 0, N'74ef2a5a-1a4e-4523-8601-b753506e8d88', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'14811ec5-9272-419f-afc1-f5d11891370b', N'Computer Programming, Software & Support ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'3ba7d06e-cb7b-4bb9-94c2-f60bb2969e32', N'Bicycle shop', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'46ac4c3d-92ec-48f0-a4cf-f647e2ea8c98', N'Personal Injury Lawyer ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'da686cd7-a2aa-4b42-8a33-f6550d5b19a3', N'Financial Management ', 0, N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'f9841bd4-f2f0-4b0f-a63a-f65e2bc17b4e', N'Psychologist ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', N'621330    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'df74c786-d162-456e-8c80-f65e7e9abc03', N'Electronics ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'6760daee-7c08-4e84-a320-f6aee8369789', N'Woodworking ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'c3b96ce0-9905-4362-baf8-f6c57ea07caa', N'cinematographer', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'57ddedad-dbdb-4f54-a3eb-f7aa3ddf8956', N'Glass & Mirror Shop ', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'2b3ad83b-c1e7-4b2b-98c4-f7f9da097224', N'Content Creator ', 0, N'8e2dde15-150c-4f2c-bd4b-58767e820091', N'519130    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'd9904ac0-1fb3-4415-847d-f817efadbaac', N'Employment Agency ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'147d5aac-2f55-4d9b-84d7-f87dfb8d56e1', N'Government administrator', 0, N'0b354b25-2cf1-4ab1-a0ee-5ceda107af47', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'a7021d0f-9a1e-4c08-ba26-f8d847bcb7c3', N'Dancer ', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'd80a621e-295d-47a6-b309-f94cd1286d51', N'Fashion Stylist ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'a45b3bcb-02a2-4d74-bab2-f9581d36904c', N'Art', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'679aac07-2d88-4d61-b0a0-f99571f05c4c', N'Business Service ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'7f7675ed-cf5d-4497-acff-f9d2bb42753b', N'Project Management ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'b9c1a9d9-4902-4e1b-aa20-f9d30e2a0b01', N'Financial Aid Service ', 0, N'71c784a9-033d-4c70-8d9e-e54c1f63cea9', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'043411d6-bf2f-4c5c-9a29-fa1c4aa476bc', N'Saas ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'5fba38cd-5890-46f8-83ea-fa4e5a1ec411', N'Real Estate Brokerage ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'65aa9958-0d05-495d-8832-fa7194294439', N'Spa ', 0, N'b16536b8-3230-470d-a21b-30127a466565', N'721110    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'db17096b-bde0-45aa-97b2-fac92684c3a3', N'Film Director', 0, N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4', N'326113    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'85d4c6a2-53a3-4755-9244-fb25e1ac6c63', N'Product Design Services ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', N'Retail', 0, NULL, N'4422')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'c2a6d915-2947-4893-a02e-fbbc5dd5fae8', N'E Commerce Website ', 0, N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'5e29e03e-f2e5-4a06-bb4a-fbfff6495da7', N'Dealership ', 0, N'71c784a9-033d-4c70-8d9e-e54c1f63cea9', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'14b6c973-b9ac-48b7-9ef0-fc505da1dd0f', N'Car Dealership ', 0, N'71c784a9-033d-4c70-8d9e-e54c1f63cea9', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'1907c7b0-a72c-45ed-bf1f-fc87444c5739', N'fabric store', 0, N'd85c03a0-6cdf-49a4-aed1-fb3393eae927', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'f98914c4-6a2a-49f0-873a-fd3f04c89038', N'Educational Consultant cdfv ', 0, N'85ee45c4-a96d-48d3-a291-8c45a05b17a7', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'561378e4-d0b8-44cf-8af4-fd8250e90b32', N'Dog trainer', 0, N'19ca8d21-34d5-4434-aa6a-58e17db7058c', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'07ff074a-edd4-471c-b33e-fe4499b75d4b', N'Medical Billing ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'a478be56-7412-4321-b6e1-fe4bbcacdac7', N'Health ', 0, N'b16536b8-3230-470d-a21b-30127a466565', NULL)
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'1a5b7a1d-0f7c-4d36-9dbd-feebf851e7b6', N'Caterer', 0, N'44254167-5454-46e7-b4ba-ee485ff3f834', N'722320    ')
GO
INSERT [dbo].[Category] ([id], [name], [popularity], [parentId], [naics]) VALUES (N'6cd3ef5c-adae-44bc-911f-ff22079a14c0', N'Brokerage Firm ', 0, N'033a967a-2781-4d87-a0ad-d32bc27b1f64', NULL)
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'7ebcb64b-e5d5-4eb1-919e-0209e24011d7', N'Book now', NULL, N'Appointment', N'974bbfce-2fd7-4385-a72d-df65fb760631')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'1b52eca5-1693-472a-aed0-024bbd8118e4', N'Help', NULL, N'Extra Information', N'974bbfce-2fd7-4385-a72d-df65fb760631')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'201cabb1-0fa6-42aa-ad74-03cb8226274e', N'Careers', NULL, N'Assets', N'991bf5a3-cf7f-482b-9a17-29bb08cb072e')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'1950b50d-1c26-4c18-a9e9-053bce72518a', N'News', NULL, N'Our Work', N'0b354b25-2cf1-4ab1-a0ee-5ceda107af47')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'446d1b48-8d40-4c8a-aaad-07e919137b76', N'Projects', NULL, N'Mission', N'd11ebccd-851d-4770-b088-a5a3d3302ca6')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'ace85d25-b563-4f6d-b2bd-09c1305118a8', N'Industries', NULL, N'Future', N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'592019b8-dc64-4a7b-a33c-0b392775b285', N'Register', NULL, N'Schedule', N'b16536b8-3230-470d-a21b-30127a466565')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'74cbc034-5ad0-4edb-abe1-0d5aefde646d', N'FAQs', NULL, N'Business Contact ', N'd85c03a0-6cdf-49a4-aed1-fb3393eae927')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'ec720fb2-9d03-427f-9ec5-0e8c6f73053a', N'Travel Agencies', NULL, N'Ticket Information', N'974bbfce-2fd7-4385-a72d-df65fb760631')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'8a1ce19d-3533-45ba-9351-0ecfdb106eee', N'Careers', NULL, N'Opportunities', N'974bbfce-2fd7-4385-a72d-df65fb760631')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'9eadd195-3544-44d3-8a26-0ee3af558873', N'Login', NULL, N'Contact Address', N'44254167-5454-46e7-b4ba-ee485ff3f834')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'175b4516-3685-417f-b746-0f29ad68b35b', N'Get started', NULL, N'Company', N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'f507b214-eee0-4fa4-9c70-12097d043528', N'About Us', NULL, N'About', N'8a30a498-47cc-4e85-8567-996e0059253d')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'ee7a8d9e-f214-4b6c-9d05-122a9d6f3eb8', N'Legal', NULL, N'Confidential', N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'aad8819e-2a0c-4427-a121-13a248c37876', N'Locations', NULL, N'Connect Details', N'8a30a498-47cc-4e85-8567-996e0059253d')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'dc08dd4c-63f2-4b08-85ee-168e44b32e82', N'News', NULL, N'Regulations', N'85ee45c4-a96d-48d3-a291-8c45a05b17a7')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'f7eb42c2-c813-4b47-80be-1759458b8ac0', N'Sign in', NULL, N'Description', N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'dd83eadd-4a53-4512-8c77-189613c74752', N'Locations', NULL, N'Contact Address', N'44254167-5454-46e7-b4ba-ee485ff3f834')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'a3852438-cee2-470f-b69b-194e4ff1ab99', N'About us', NULL, N'About Business', N'71c784a9-033d-4c70-8d9e-e54c1f63cea9')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'9f756957-0074-49ba-a9f3-19a6a7cca5a6', N'Contact', NULL, N'Details', N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'60842dbb-1dcd-4f05-95ca-1b6d55b08954', N'login', NULL, N'Connect Details', N'8a30a498-47cc-4e85-8567-996e0059253d')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'6ea19aa8-cae5-49ea-9a77-1d6c7560b06e', N'Collaborations', NULL, N'Offer', N'b6c7296e-43b4-42ee-b6fc-75db3a9be8b0')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'3e5b0d0d-706a-4315-b646-1e24a6904898', N'Contact', NULL, N'Conversation', N'0b354b25-2cf1-4ab1-a0ee-5ceda107af47')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'82ca1124-166d-423b-97a2-2118e9b4e489', N'Support us', NULL, N'Company Detailed Info', N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'2e935f6a-883b-4263-8ba2-220253914912', N'Products', NULL, N'Services', N'19ca8d21-34d5-4434-aa6a-58e17db7058c')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'1ed02d31-cc5a-44ba-adeb-251af6b92c94', N'Programs', NULL, N'History', N'85ee45c4-a96d-48d3-a291-8c45a05b17a7')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'19c077fb-1020-4fe6-aaf6-28454a8b83c9', N'About Us', NULL, N'Company Information ', N'd85c03a0-6cdf-49a4-aed1-fb3393eae927')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'447767b6-2698-45f2-85ad-284dc8acb44e', N'Services', NULL, N'Company Linking', N'd11ebccd-851d-4770-b088-a5a3d3302ca6')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'7bd5e26a-effe-4892-86e6-286acf031a19', N'Branches', NULL, N'Franchise', N'033a967a-2781-4d87-a0ad-d32bc27b1f64')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'6a3ec95e-beb8-4a07-81d5-29146af69e31', N'Contact Us', NULL, N'Company Detailed Info', N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'd0294dbf-e45d-458b-b3b1-2c7de246503e', N'careers', NULL, N'Franchise', N'033a967a-2781-4d87-a0ad-d32bc27b1f64')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'94b43fe7-e27b-44f8-a11c-2d90eec8c8fd', N'About Us', NULL, N'Business Detail', N'974bbfce-2fd7-4385-a72d-df65fb760631')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'ca929ea2-9bbf-45eb-924a-2db6ebde08a7', N'Contact Us', NULL, N'Business Contact', N'033a967a-2781-4d87-a0ad-d32bc27b1f64')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'123bbbb9-5f03-4aab-8e3d-2fe0a07f56d3', N'Services', NULL, N'Company Production', N'd85c03a0-6cdf-49a4-aed1-fb3393eae927')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'bb47be2f-a4dc-47dc-b4ba-301e1b3035a2', N'Company', NULL, N'Future', N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'92b70e63-9af6-4b92-bf1b-334e1a7dfac8', N'Sign In', NULL, N'Schedule', N'b16536b8-3230-470d-a21b-30127a466565')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'dbbdbf70-6224-490a-818d-339a1ad2f4d7', N'Offers', NULL, N'Media', N'19ca8d21-34d5-4434-aa6a-58e17db7058c')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'a0ad9e03-600f-48bd-9662-34ba574c490f', N'Chat', NULL, N'Appointment', N'974bbfce-2fd7-4385-a72d-df65fb760631')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'6d2b442f-e71a-40f0-bf68-35789bb53957', N'Special diets', NULL, N'Order Details', N'44254167-5454-46e7-b4ba-ee485ff3f834')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'e310d77a-8b5d-4869-8b5f-36aa75508211', N'Our stories', NULL, N'More About Us', N'85ee45c4-a96d-48d3-a291-8c45a05b17a7')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'c7a6fd1f-0616-4422-bd1a-3ab4a0b04e7d', N'Login', NULL, N'Company Detailed Info', N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'b50cc16e-86ab-4906-b264-3eba4ad31abe', N'Businesses', NULL, N'Offer', N'b6c7296e-43b4-42ee-b6fc-75db3a9be8b0')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'755b4638-2e04-402a-a217-40a3228a9ae7', N'Energy Evolution', NULL, N'Assets', N'991bf5a3-cf7f-482b-9a17-29bb08cb072e')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'42645a63-9714-42ba-919b-41d585b3c4db', N'Sign up', NULL, N'Contact Address', N'44254167-5454-46e7-b4ba-ee485ff3f834')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'ef0bc5e7-66d8-49c5-b8ac-4512ee70d055', N'Investors', NULL, N'Collaborations', N'b16536b8-3230-470d-a21b-30127a466565')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'd8f878b9-492b-4674-add4-454e5a01aab6', N'Contact Us', NULL, N'Company Details', N'991bf5a3-cf7f-482b-9a17-29bb08cb072e')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'f9dd9f72-9150-46b0-9ab1-4713c38c40c9', N'Pet care', NULL, N'Portal', N'19ca8d21-34d5-4434-aa6a-58e17db7058c')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'63e49b16-f030-4691-b8af-47705c437428', N'Careers', NULL, N'Offer', N'b6c7296e-43b4-42ee-b6fc-75db3a9be8b0')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'9c55c1f9-d646-477b-b8bb-4a886f5d5371', N'Our venues', NULL, N'Our Services', N'1bb0f4d4-733b-4260-96ea-7593e9113cc7')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'a4a47bf6-4ae6-44b3-a83b-4ac52d43bda6', N'Veterinary Services', NULL, N'About Services', N'19ca8d21-34d5-4434-aa6a-58e17db7058c')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'4604b705-ed08-4d6d-b09e-4d9e47f156bd', N'About Us', NULL, N'More Info', N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'1499957a-1e7b-4d7e-9a5e-4dae7bcfb082', N'Careers', NULL, N'History', N'85ee45c4-a96d-48d3-a291-8c45a05b17a7')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'019c691e-b2cb-4984-872e-4e42ec0672be', N'Training', NULL, N'Perk', N'8a30a498-47cc-4e85-8567-996e0059253d')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'd8d455ca-e281-4481-90af-4f06f3d833aa', N'Customer Support', NULL, N'Converse', N'71c784a9-033d-4c70-8d9e-e54c1f63cea9')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'9cf5da40-a295-492f-880e-4f1f237ce389', N'Contact us', NULL, N'Contact Info', N'19ca8d21-34d5-4434-aa6a-58e17db7058c')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'4fad27cd-5964-499f-8d4e-501c55f0b09e', N'News', NULL, N'AD', N'b6c7296e-43b4-42ee-b6fc-75db3a9be8b0')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'0a40f396-89cc-46bd-9ee8-52295f73ded4', N'Contact us', NULL, N'Company linking', N'd11ebccd-851d-4770-b088-a5a3d3302ca6')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'ec543a05-cd40-4db7-9a8f-52cdcf212076', N'Contact us', NULL, N'Business Contact ', N'd85c03a0-6cdf-49a4-aed1-fb3393eae927')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'd6b67224-7797-4a7d-a9b3-5495a6d7ee95', N'Search your region', NULL, N'User Authorization', N'71c784a9-033d-4c70-8d9e-e54c1f63cea9')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'8392a038-0ada-45f4-8379-56daef7c72a8', N'what we do', NULL, N'Company Details ', N'b6c7296e-43b4-42ee-b6fc-75db3a9be8b0')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'7f7abeb4-ae92-4f10-b9ca-58b796695a55', N'Special Events', NULL, N'Our Services', N'1bb0f4d4-733b-4260-96ea-7593e9113cc7')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'7176c060-997f-4305-9601-5980d16caeae', N'Contact Us', NULL, N'Description', N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'da1cc1c7-2f4b-4ea9-bbe6-59cc331d37b4', N'Sign up', NULL, N'Business Contact ', N'd85c03a0-6cdf-49a4-aed1-fb3393eae927')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'8a46e21d-9b4d-4637-bab2-5dbfcee92856', N'Government', NULL, N'Our Work', N'0b354b25-2cf1-4ab1-a0ee-5ceda107af47')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'1916a548-f5ee-4210-82bd-5e5509f54dbf', N'Login ', NULL, N'Business Contact ', N'd85c03a0-6cdf-49a4-aed1-fb3393eae927')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'c8f3b6b7-8686-488a-88d7-5e674569ba12', N'Locations', NULL, N'Business Contact ', N'd85c03a0-6cdf-49a4-aed1-fb3393eae927')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'86c3bfbe-3352-4799-a6bf-5f691ffe4a23', N'Investors', NULL, N'References', N'd11ebccd-851d-4770-b088-a5a3d3302ca6')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'666aced4-b084-4181-967e-5f9414bbd9d0', N'Sign Up', NULL, N'Cust Acc', N'85ee45c4-a96d-48d3-a291-8c45a05b17a7')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'37b9838c-a7e5-4b60-a8bc-5fb96bf0631d', N'Products', NULL, N'Company Tools', N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'5c811283-db74-4ddc-aeae-5fec7e72535e', N'Contact Us', NULL, N'Center Details', N'74ef2a5a-1a4e-4523-8601-b753506e8d88')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'cbcaeac9-7b5a-4684-be8c-604ffc3ed905', N'Locations', NULL, N'Center Details', N'74ef2a5a-1a4e-4523-8601-b753506e8d88')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'f1069369-ce0c-414c-9b9f-612be804011b', N'Investments', NULL, N'Confidential', N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'4489ca43-63c4-402a-9e30-626b2d7464e0', N'Products', NULL, N'Scenarios', N'71c784a9-033d-4c70-8d9e-e54c1f63cea9')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'4f23b1eb-75ef-4bec-81ad-6462f404e14f', N'media', NULL, N'AD', N'b6c7296e-43b4-42ee-b6fc-75db3a9be8b0')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'59b33d57-14da-4439-9a36-65d8bb377ba7', N'Investors Relations', NULL, N'Partnership', N'033a967a-2781-4d87-a0ad-d32bc27b1f64')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'f036deb2-3449-4035-b7eb-6709e4b2a533', N'Fitness', NULL, N'Assistance', N'8a30a498-47cc-4e85-8567-996e0059253d')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'd3f97320-5d8f-433c-beac-6829165ce640', N'Buy tickets', NULL, N'Tickets Info', N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'83b29963-b9e9-44e1-a6ed-68591bbc1406', N'Safety', NULL, N'Services', N'19ca8d21-34d5-4434-aa6a-58e17db7058c')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'96675fb5-7d73-4883-8c03-68c20183bd7f', N'Why', NULL, N'Business Detail', N'974bbfce-2fd7-4385-a72d-df65fb760631')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'f8807382-f46b-4be6-bc29-6b16a5e2b061', N'About Us', NULL, N'Center Description', N'74ef2a5a-1a4e-4523-8601-b753506e8d88')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'4306384b-4c02-49c8-ae6b-6b9f2d033269', N'locations', NULL, N'Located', N'b16536b8-3230-470d-a21b-30127a466565')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'7b52a079-e70c-486e-ba97-6ceeec4b0d65', N'Buy tickets', NULL, N'Event', N'1bb0f4d4-733b-4260-96ea-7593e9113cc7')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'88c39ea1-7a4b-4bab-8822-6f1d7caacc55', N'About Us', NULL, N'Company Details', N'b6c7296e-43b4-42ee-b6fc-75db3a9be8b0')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'8513c788-011f-4a0e-a891-6f2643340da7', N'What we do', NULL, N'Business Detail', N'974bbfce-2fd7-4385-a72d-df65fb760631')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'1cf8f024-ab45-44d7-a685-702e05c9719a', N'News', NULL, N'References', N'd11ebccd-851d-4770-b088-a5a3d3302ca6')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'798622ec-7238-41db-9ff7-70bd5c318d72', N'About Us', NULL, N'Company Regards', N'd11ebccd-851d-4770-b088-a5a3d3302ca6')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'55ee2f7e-515e-4532-8fe3-711a2c4427e5', N'Services', NULL, N'About Business', N'71c784a9-033d-4c70-8d9e-e54c1f63cea9')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'2d2cd3c0-b973-4adb-b039-748d24ba2ffa', N'locations', NULL, N'Details', N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'299d6471-5eaf-4fbd-9e53-749598d95885', N'About us', NULL, N'More About Us', N'85ee45c4-a96d-48d3-a291-8c45a05b17a7')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'f566371d-f170-41ab-8787-75747e959c1f', N'Deals', NULL, N'Ticket Information', N'974bbfce-2fd7-4385-a72d-df65fb760631')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'85a7d3bd-2b07-4f64-be73-759a3c127f41', N'Subscriptions', NULL, N'Perk', N'8a30a498-47cc-4e85-8567-996e0059253d')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'1176e9cd-5bfe-4ed5-9c2b-764108a7e3ca', N'Contact us', NULL, N'Extra Information', N'974bbfce-2fd7-4385-a72d-df65fb760631')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'9df899d2-420b-4a94-b7b2-76742d3eb6a6', N'Shows ', NULL, N'Tickets Info', N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'46246264-f733-48b6-8a43-770a5b27a588', N'Law', NULL, N'Confidential', N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'40b1324c-4b0d-455c-9458-7887f4d9645e', N'Career', NULL, N'Job Opportunity ', N'44254167-5454-46e7-b4ba-ee485ff3f834')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'6cd86ca7-201b-426a-9cc6-790a89cc9c6f', N'Investors', NULL, N'Assets', N'991bf5a3-cf7f-482b-9a17-29bb08cb072e')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'd7f4b19f-44dc-4161-9229-797eebbed1cf', N'Contact Us', NULL, N'User Authorization', N'71c784a9-033d-4c70-8d9e-e54c1f63cea9')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'114109ff-c86b-4c11-89dc-7ecf932fa9df', N'Choose pet', NULL, N'Portal', N'19ca8d21-34d5-4434-aa6a-58e17db7058c')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'4656ed15-5d28-4ec3-9854-801e72860f05', N'Locations', NULL, N'Company Detailed Info', N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'94a27792-891b-4ac0-98dd-80c3803b1773', N'Login ', NULL, N'Personal Acc', N'1bb0f4d4-733b-4260-96ea-7593e9113cc7')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'6e516dcc-4941-4714-900e-8196c057f647', N'Services', NULL, N'Services', N'0b354b25-2cf1-4ab1-a0ee-5ceda107af47')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'005ebbf5-60ac-4fd4-ac36-81d373718154', N'Enforcement and legal', NULL, N'Company''s Law', N'0b354b25-2cf1-4ab1-a0ee-5ceda107af47')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'43b0f3c7-64b2-45fc-97c8-82274758c390', N'Styles', NULL, N'Collaborations', N'b16536b8-3230-470d-a21b-30127a466565')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'8e3bba0a-49cf-472f-803a-82e62fc28c5a', N'About Us', NULL, N'About Services', N'19ca8d21-34d5-4434-aa6a-58e17db7058c')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'339978b1-6612-4ad7-b958-8306ff1ffb9f', N'Create account', NULL, N'Account', N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'076e15c1-9745-460c-a8f7-86eb36209963', N'About Us', NULL, N'Our Services', N'1bb0f4d4-733b-4260-96ea-7593e9113cc7')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'64cbd1d9-07ba-4cf7-8669-86ed1a35ed13', N'Destinations', NULL, N'Extra Information', N'974bbfce-2fd7-4385-a72d-df65fb760631')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'f9ac4251-9cda-48c1-a35c-8d68a412ce76', N'Artists', NULL, N'Advantage', N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'33391144-cf19-41fc-bb09-8e38dec025b7', N'Quality', NULL, N'Services', N'19ca8d21-34d5-4434-aa6a-58e17db7058c')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'6c72eb6a-25eb-49b7-9f64-906934cd5b85', N'Services', NULL, N'Company Information', N'991bf5a3-cf7f-482b-9a17-29bb08cb072e')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'8ade8d24-2234-4209-9ff1-91005c3f63e9', N'Shop', NULL, N'Centers', N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'20c114ac-a828-43ef-876c-91b22db96cc1', N'Department', NULL, N'Our Work', N'0b354b25-2cf1-4ab1-a0ee-5ceda107af47')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'39b628fb-6bd1-4329-a9f7-995ce74af686', N'Your Experience', NULL, N'Schedule', N'b16536b8-3230-470d-a21b-30127a466565')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'3dafd715-f30d-4671-8135-9988e4ca93b1', N'Instructors', NULL, N'Assistance', N'8a30a498-47cc-4e85-8567-996e0059253d')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'72735458-0b6f-4f75-b3b4-9c990691627f', N'Instructors', NULL, N'History', N'85ee45c4-a96d-48d3-a291-8c45a05b17a7')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'91ad6294-6715-4c3a-8890-9f1ff3f02ba0', N'Manage Trips', NULL, N'Ticket Information', N'974bbfce-2fd7-4385-a72d-df65fb760631')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'6faae139-067e-4867-8a5e-a185f48a1f50', N'Contact', NULL, N'Contact Address', N'44254167-5454-46e7-b4ba-ee485ff3f834')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'4e4fa3e8-cff5-4ba2-a11b-a1bba22c68d9', N'sign up', NULL, N'Connect Details', N'8a30a498-47cc-4e85-8567-996e0059253d')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'a7d748fe-8d83-420c-a67d-a35b4779a019', N'Services Centers', NULL, N'User Authorization', N'71c784a9-033d-4c70-8d9e-e54c1f63cea9')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'9bacfec2-eaf0-4341-9ba2-a3bb18d10dde', N'Media', NULL, N'Events', N'974bbfce-2fd7-4385-a72d-df65fb760631')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'3c865b0e-a041-45e4-8734-a3bc2e215790', N'Services', NULL, N'Business Detail', N'974bbfce-2fd7-4385-a72d-df65fb760631')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'e80bfcb6-76c6-48bc-a0af-a5e7306c9b3f', N'Investigations', NULL, N'Company''s Law', N'0b354b25-2cf1-4ab1-a0ee-5ceda107af47')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'a7d67863-c414-4ea4-8960-a5f6cbd81027', N'Products', NULL, N'Company Production', N'd85c03a0-6cdf-49a4-aed1-fb3393eae927')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'8b9eae86-5dfe-49aa-b387-a87496a773e4', N'Services', NULL, N'Company Achievements', N'44254167-5454-46e7-b4ba-ee485ff3f834')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'17efc44a-30a4-4028-bd34-aa246459d401', N'News', NULL, N'Media', N'19ca8d21-34d5-4434-aa6a-58e17db7058c')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'fd992d43-a7a6-4c34-a5ca-ac878df3651a', N'Calender', NULL, N'Time Out', N'85ee45c4-a96d-48d3-a291-8c45a05b17a7')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'2afd8ed2-7653-4af7-8d05-ad530bc8fbad', N'Services', NULL, N'More Information', N'033a967a-2781-4d87-a0ad-d32bc27b1f64')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'59c02b19-c255-452e-8fd1-adf9aabe42fb', N'Log in', NULL, N'Account', N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'19ccce8a-7f8e-4f15-980f-aef4c90a0ce5', N'Obituaries', NULL, N'Center ', N'74ef2a5a-1a4e-4523-8601-b753506e8d88')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'2d15a303-9d02-4c06-bf0e-b019f6614b10', N'Press', NULL, N'Company Newsletter', N'44254167-5454-46e7-b4ba-ee485ff3f834')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'c09c1a59-a225-40e6-a179-b0d960caf70d', N'Production', NULL, N'Assets', N'991bf5a3-cf7f-482b-9a17-29bb08cb072e')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'bb7588e0-50f3-4d4c-971b-b16ac6b13172', N'Brands', NULL, N'Organization', N'8a30a498-47cc-4e85-8567-996e0059253d')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'79b9a48c-ebb1-47f0-95df-b17963735fb7', N'Markets', NULL, N'References', N'd11ebccd-851d-4770-b088-a5a3d3302ca6')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'7944fdb8-4a48-4866-b0fd-b1964195928a', N'News', NULL, N'Assets', N'991bf5a3-cf7f-482b-9a17-29bb08cb072e')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'9a5cc276-0223-495a-a5a1-b1f9cae1f47b', N'About us', NULL, N'Company Information', N'991bf5a3-cf7f-482b-9a17-29bb08cb072e')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'a7223076-0fd3-4e24-8b6d-b35f7eb893aa', N'Book appointment', NULL, N'Portal', N'19ca8d21-34d5-4434-aa6a-58e17db7058c')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'a63be2b3-771e-4f2c-8c57-b456006b4cf7', N'Careers', NULL, N'Advantage', N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'99292ba2-ad74-4d70-9d76-b50cdff76c1e', N'Legal', NULL, N'Company legal ', N'991bf5a3-cf7f-482b-9a17-29bb08cb072e')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'bbf98a30-22de-49d7-b2bd-b532ea8c3734', N'Appointments', NULL, N'Schedule', N'b16536b8-3230-470d-a21b-30127a466565')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'1c3ee3f3-0463-4ddb-90dd-b560221efff8', N'Benefits', NULL, N'Profits', N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'171439c0-08ed-4fe2-bc76-b68fd6918cf6', N'Our services', NULL, N'Company data', N'b16536b8-3230-470d-a21b-30127a466565')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'6748c770-f193-429c-b4be-b824ccad6e0a', N'Franchising', NULL, N'Company data', N'b16536b8-3230-470d-a21b-30127a466565')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'9486670b-6406-48e0-9fdf-b9b92d17323d', N'Sign Up', NULL, N'Login Acc', N'b6c7296e-43b4-42ee-b6fc-75db3a9be8b0')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'c911d235-1785-47d2-b48b-ba0b16347846', N'Register', NULL, N'Extra Information', N'974bbfce-2fd7-4385-a72d-df65fb760631')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'48f35c24-81fb-4e7f-984c-ba5d3042597d', N'News', NULL, N'Company Newsletter', N'44254167-5454-46e7-b4ba-ee485ff3f834')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'48634556-880e-40fc-b65d-bc4dae7f067c', N'Business', NULL, N'Our Work', N'0b354b25-2cf1-4ab1-a0ee-5ceda107af47')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'4d4aa7f6-1148-48fe-ad38-be1928fe2418', N'Covid 19 rules', NULL, N'Regulations', N'85ee45c4-a96d-48d3-a291-8c45a05b17a7')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'c9ef5e62-998d-4657-9e8b-bf50caa664bc', N'Board', NULL, N'History', N'85ee45c4-a96d-48d3-a291-8c45a05b17a7')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'98368eb6-05ba-41a2-8283-bf7bed2da5bc', N'Log in', NULL, N'Company linking', N'd11ebccd-851d-4770-b088-a5a3d3302ca6')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'409d7be7-7eca-4054-95ea-c0d2b171f8db', N'Cart', NULL, N'Event', N'1bb0f4d4-733b-4260-96ea-7593e9113cc7')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'2a0fc05e-6a27-4289-b2ff-c132e86a2f4a', N'location', NULL, N'Contact Info', N'19ca8d21-34d5-4434-aa6a-58e17db7058c')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'374b418b-abee-4e38-a2db-c136a001a1fc', N'Investors Relations', NULL, N'Collaborations', N'b16536b8-3230-470d-a21b-30127a466565')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'7ce2f290-5521-449b-a0af-c25b3cf78de2', N'Member login ', NULL, N'Conversation', N'0b354b25-2cf1-4ab1-a0ee-5ceda107af47')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'abeedfeb-88c8-4efb-8416-c27955f4911a', N'Login', NULL, N'Cust Acc', N'85ee45c4-a96d-48d3-a291-8c45a05b17a7')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'2852ed29-3ed2-4dda-a2fb-c56fc9908ce9', N'Services', NULL, N'Company Tools', N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'92736cb0-9b2a-4ea3-a491-c68f34a92719', N'Order button', NULL, N'Order Details', N'44254167-5454-46e7-b4ba-ee485ff3f834')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'1911b698-8607-4720-a028-c7749dbab2e3', N'Log In', NULL, N'User Authorization', N'71c784a9-033d-4c70-8d9e-e54c1f63cea9')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'981f92d2-0b77-4032-86d4-cab1b3de0651', N'Gift cards', NULL, N'Company Production', N'd85c03a0-6cdf-49a4-aed1-fb3393eae927')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'dae904fc-5c69-4502-a765-cc4d28e77ff6', N'Actions', NULL, N'Company Action ', N'44254167-5454-46e7-b4ba-ee485ff3f834')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'686725e7-76c6-481c-9a51-cd17fe6e0005', N'Sign Up', NULL, N'Company Detailed Info', N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'52de06a4-42d6-4782-9e14-cddb3a851783', N'Add to cart', NULL, N'Order Details', N'44254167-5454-46e7-b4ba-ee485ff3f834')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'e96443d0-e7cb-4fc3-b359-ce66f63b89e2', N'Locations', NULL, N'Description', N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'7775825f-f8c0-4cb5-be42-cf9dfbd11987', N'Resources', NULL, N'Fund', N'74ef2a5a-1a4e-4523-8601-b753506e8d88')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'c3e724c3-db3d-499f-9f68-cfa9217869cd', N'Sign Up', NULL, N'Personal Acc', N'1bb0f4d4-733b-4260-96ea-7593e9113cc7')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'e9aab03f-39de-450c-95e1-d0ce4bc9f051', N'Home', NULL, N'More About Us', N'85ee45c4-a96d-48d3-a291-8c45a05b17a7')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'4bb42d28-b170-4e19-b9f5-d0eae35065ed', N'Nutrition', NULL, N'Perk ', N'8a30a498-47cc-4e85-8567-996e0059253d')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'd418f3d0-a742-4098-ab69-d0f4754f48c9', N'Studios', NULL, N'Centers', N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'67ebb8f7-8f2d-4833-a11f-d19bc50c6d10', N'Physicians', NULL, N'Collaborations', N'b16536b8-3230-470d-a21b-30127a466565')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'a38007e2-735c-4788-a593-d1c8fe7de3a4', N'Equipments', NULL, N'Assistance', N'8a30a498-47cc-4e85-8567-996e0059253d')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'781a7fa8-11ff-4973-9122-d32fb8578e16', N'Locations', NULL, N'Company linking', N'd11ebccd-851d-4770-b088-a5a3d3302ca6')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'c1bafecf-7197-4af5-8c5a-d3aa0ca42f77', N'Log in', NULL, N'Login Acc', N'b6c7296e-43b4-42ee-b6fc-75db3a9be8b0')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'0d3d0ce6-b720-4790-be10-d3bcf13be3af', N'Subscribe', NULL, N'Center Details', N'74ef2a5a-1a4e-4523-8601-b753506e8d88')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'6e7494a6-1870-4a49-965c-d524de6a4815', N'Our success', NULL, N'Company Achievements', N'44254167-5454-46e7-b4ba-ee485ff3f834')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'697917c1-9df3-4efa-bba8-d560e91d6617', N'Our work', NULL, N'Company Regards', N'd11ebccd-851d-4770-b088-a5a3d3302ca6')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'caf918a1-f930-4ba0-a215-d5f46293f36b', N'About Us', NULL, N'Information', N'0b354b25-2cf1-4ab1-a0ee-5ceda107af47')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'd87c98b5-edd4-4e7d-8585-d868ebf3c0c5', N'About us', NULL, N'Company', N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'7f3d0c99-12df-4d7c-af1a-dbaf0f1afae0', N'Issues', NULL, N'Company''s Law', N'0b354b25-2cf1-4ab1-a0ee-5ceda107af47')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'daced083-7c27-47c4-94c9-dbe25023571a', N'Menu', NULL, N'Order Details', N'44254167-5454-46e7-b4ba-ee485ff3f834')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'80bf35e8-05d6-4403-b185-dd12d0c11512', N'Resources', NULL, N'Company Tools', N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'6dac713a-bfff-4ced-ab18-ddd592351f5a', N'FAQ', NULL, N'Company Detailed Info', N'e2dc3a48-6775-42d3-8063-e87f1f5e4dd4')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'28b404e8-7286-461c-8d84-e1078e93dcfc', N'Sign Up', NULL, N'User Authorization', N'71c784a9-033d-4c70-8d9e-e54c1f63cea9')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'b5f26297-31cd-467a-a89c-e15d4a781d12', N'Tournaments', NULL, N'Our Services', N'1bb0f4d4-733b-4260-96ea-7593e9113cc7')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'58092911-150a-4c3b-acb9-e1bcc66235c9', N'Resources', NULL, N'Company Production', N'd85c03a0-6cdf-49a4-aed1-fb3393eae927')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'05a1e923-7567-4cfb-a240-e441411cc47f', N'Media', NULL, N'Conference', N'1bb0f4d4-733b-4260-96ea-7593e9113cc7')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'3e687c6c-29c4-4d06-b62b-e477ba986f29', N'Chat', NULL, N'Converse', N'71c784a9-033d-4c70-8d9e-e54c1f63cea9')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'174ab1a6-6f28-43fe-b586-e48e80f53c1a', N'Investors Relations', NULL, N'Public Relation', N'71c784a9-033d-4c70-8d9e-e54c1f63cea9')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'bf7b857d-0d82-47f8-a959-e6d08e8ea4c7', N'Why', NULL, N'About Us', N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'97ad215b-a385-454d-a816-e72ae61b557d', N'Clubs', NULL, N'Organization', N'8a30a498-47cc-4e85-8567-996e0059253d')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'c01c4efd-ed1f-4410-b05f-e9499b4049f4', N'Status', NULL, N'Ticket Information', N'974bbfce-2fd7-4385-a72d-df65fb760631')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'64a75954-f775-4163-97d1-ec72e3d082c8', N'Create Account', NULL, N'Description', N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'208ebd27-481d-4571-a330-ecb7ef6e16fc', N'Sign up ', NULL, N'Company linking', N'd11ebccd-851d-4770-b088-a5a3d3302ca6')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'14e03947-7bc8-4de2-a8f2-ece9013c792e', N'Resources', NULL, N'Mission', N'd11ebccd-851d-4770-b088-a5a3d3302ca6')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'7d382613-8752-49dd-9e13-edadb4e61088', N'About Us', NULL, N'About Us', N'736bdd7e-02d8-4ab4-8e8b-4ec80dfc44ab')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'cb88975a-1b8f-4310-996b-edfe4baa2354', N'News', NULL, N'Public Relation', N'71c784a9-033d-4c70-8d9e-e54c1f63cea9')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'04875a8c-2dff-47b1-a2b5-f105df5c8008', N'Contractors', NULL, N'Assets', N'991bf5a3-cf7f-482b-9a17-29bb08cb072e')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'c3dda9a7-5d4d-4ecf-aece-f13bd23fbc05', N'Log In', NULL, N'Extra Information', N'974bbfce-2fd7-4385-a72d-df65fb760631')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'1da04f6c-d4b9-454b-8815-f1432c658a97', N'Our Company', NULL, N'Company Achievements', N'44254167-5454-46e7-b4ba-ee485ff3f834')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'4faa7e09-edd2-4b62-9b8b-f3398437abeb', N'Contact us', NULL, N'Personal Acc', N'1bb0f4d4-733b-4260-96ea-7593e9113cc7')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'a79c86ea-4e82-40bf-a339-f60a1b793f1b', N'Resources', NULL, N'Assets', N'991bf5a3-cf7f-482b-9a17-29bb08cb072e')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'5eb17502-2929-4343-9867-f6eb809240e1', N'About Us', NULL, N'Company data', N'b16536b8-3230-470d-a21b-30127a466565')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'4a7d1f3c-ecfd-4cfe-a143-f92abf721735', N'Technology', NULL, N'Software', N'033a967a-2781-4d87-a0ad-d32bc27b1f64')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'6a4a2941-9f0b-46b1-bd99-f9c0592efa26', N'Resources', NULL, N'Scenarios', N'71c784a9-033d-4c70-8d9e-e54c1f63cea9')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'ce7a0e35-465d-4b2e-8b1d-faa6f9608a31', N'Careers', NULL, N'Opportunities', N'a1b15901-42a1-41fb-a8c0-3dfa76b89b3a')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'99265f42-d115-45b2-b000-fb0f4e7e0ddb', N'Contact us', NULL, N'Connect Details', N'8a30a498-47cc-4e85-8567-996e0059253d')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'b806c123-b963-4f77-b1c8-fcb38486bc6c', N'About Us', NULL, N'More Information', N'033a967a-2781-4d87-a0ad-d32bc27b1f64')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'57056adb-cdba-44d8-b575-fdca382b18d5', N'Contact Us', NULL, N'Cust Acc', N'85ee45c4-a96d-48d3-a291-8c45a05b17a7')
GO
INSERT [dbo].[WebsiteSection] ([id], [name], [description], [groupName], [categoryID]) VALUES (N'b206b68f-3f68-4b7f-afbd-ff407412dc23', N'Careers', NULL, N'Scenarios', N'71c784a9-033d-4c70-8d9e-e54c1f63cea9')
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'9449fd47-3bba-4cd3-a845-000040e857f3', N'Company Achievements', 49, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'8c881b07-e94e-4ec0-9871-012ba01e30bb', N'61', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'530c9731-9764-44ef-b306-01a7e34b2fba', N'46', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'438c14ee-ec63-4acb-84c7-01e739f64a30', N'32', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'bd7d4859-fe95-4d9b-9649-0209a2d4e7c3', N'Organization', 39, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'32424c84-d51a-4880-a1f8-02344d070912', N'80', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'abdf9d09-2ae9-454c-aa7f-0390c7f466b8', N'13', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'6c69dd72-9343-491f-a63c-041e68f1cdb5', N'Company Regards', 49, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'157c07ee-4bf8-4d53-838a-04dfe0f19b7c', N'41', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'222a9c51-19d8-4156-8f1d-058f47977f7a', N'33', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'3dca0751-9876-47e1-9e05-063f0ec9fd59', N'Company Details', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'1a9b3fe1-c1ec-4159-ab61-064d03e75495', N'73', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'54e88417-5da8-4c80-b9f5-080b6b3271bd', N'31', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'0c4cb7b2-fd55-46e8-bd16-08247a08acf1', N'Our Work', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'105d908f-e40d-417c-847d-091116341d66', N'1', 31, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'2b160679-5fbd-41bd-9c84-098ac9614ed2', N'48', 31, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'b670817d-9206-4c1f-8713-0a8641739638', N'11', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'86ebbec2-03d2-4665-9bd0-0ba93bd57651', N'60', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'e4ccbb91-6c27-4091-9e4d-0e8f82639cdf', N'Center ', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'2be9f90a-2ff5-47b5-8e6d-0f58592878c1', N'65', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'281e4bde-e09a-4e6d-98f0-0fff96255459', N'Organization', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'a92d1ab5-bdd7-4300-9621-105e2765e6ca', N'49', 284, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'3d0beb37-67d5-4103-9e9a-111b78762624', N'42', 284, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'a3eb8a29-6007-44c8-a3d6-11f3139574b2', N'60', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'2c8f1df4-f73c-4787-96ac-121841e1613e', N'29', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'02e4a0a9-dae5-47c5-a77a-121f11b05ed3', N'31', 31, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'57c10f1a-72e7-480d-b451-13adfedc08df', N'79', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'fb958a2b-8b54-4d03-aea3-13dfeec6a3ab', N'7', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'caf101d1-374a-48a1-9ffc-141f1fc8e9ae', N'79', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'b0a8336e-b864-454e-b8a0-143cb8343a2e', N'Tickets Info', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'e6d261e4-e4d1-4b69-b5c0-14d7b4b51d64', N'63', 49, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'41f4e1ad-7916-482d-935d-164914f20b6e', N'37', 31, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'39f8d01a-c0ed-41e8-adf1-1744239daa3d', N'78', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'f0f921b3-8594-4ea8-b823-18a7a32ca55d', N'9', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'65dd6176-9126-48cf-b52d-192301a89bed', N'Services', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'0e1d1b9a-ac58-4132-9863-194432b194ef', N'34', 284, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'bfce525b-7a20-4f59-aefb-19b53c5bf972', N'76', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'0aad0670-f912-4076-a6a1-19f5d149796b', N'33', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'126a0e45-9df2-4b9e-9657-1a10e0f1207e', N'Partnership', 284, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'15e04ca9-a178-4077-a30b-1a2cf0eb31a3', N'Connect Details', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'76a1fbb8-856f-4483-997d-1ab6d63a425e', N'Assistance', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'5ea37762-7af7-4606-8323-1ae6357242fb', N'5', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'9082c289-9282-4287-8dfe-1b08dd8846e0', N'Assistance', 31, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'198cb178-ffb7-4534-be14-1b533a8d3dfa', N'History', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'02a45a55-165e-4fe1-8a84-1bb16d280367', N'Company data', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'a60d20d4-d696-49f3-87f4-1c043ee648e8', N'Our Services', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'd91cd3be-f71b-4195-b059-1eb39669e3ed', N'72', 49, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'0e5062df-63f8-4a52-baa2-1ee3260ded22', N'76', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'e5c8a863-7090-4e83-86f0-1f834b5a9a25', N'75', 284, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'fdf27253-4b99-4373-9a89-1fede6bd646d', N'37', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'6568fdf4-32ec-4905-8f1b-213628146027', N'1', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'a38b419a-d89a-4fc9-b264-214afd47607c', N'Tickets Info', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'da6e8708-fe0d-40da-8a1d-2177e145e65d', N'Business Contact', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'ff9fa9db-9e77-4943-988d-22340eb396f0', N'Services', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'd60c3ec5-587d-4b04-90fc-22e94ed264ca', N'Perk', 61, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'eeb9a071-e3c7-4ae5-853c-23f7a5c89c41', N'Offer', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'f36f0300-ff23-44d3-9231-243aa2882bb8', N'43', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'5b7265e8-86d6-4e4c-ae3d-27134e87b4f8', N'Company legal ', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'622def5d-87f0-424e-8ece-2834714b51c2', N'Event', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'979bf405-9369-4733-aba7-28c33b45df6d', N'Perk', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'10e86e43-06c2-4522-857f-2a147718d40d', N'Partnership', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'7c0880b3-5e97-4cef-adc9-2aeb7689d5bf', N'Collaborations', 284, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'1171f923-2dff-4b89-8601-2c0939ed101c', N'Fund', 49, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'1f7ffe6c-fb03-472c-a53f-2cb2c32c28fc', N'Company Details', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'cbd8fa96-fe1d-4918-94d3-2f44d41ec636', N'Franchise', 49, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'c5c333cd-471a-4d5d-beaf-2f4f857b58d1', N'25', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'8c4d8edb-611f-46d0-bd20-2f54ea2465f1', N'46', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'312510c7-220c-4e7d-84f9-30786429b7b7', N'Collaborations', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'e21db40c-ae1d-48bb-b068-30cfa6a986a7', N'Schedule', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'ed92ced0-7555-498d-ac08-314bbeeb3919', N'Company linking', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'8b8888b9-2cbb-484a-adbd-3265a817a6fb', N'77', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'54f961a5-2eb0-4c43-94a7-32c005956b01', N'35', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'9d978564-3b7f-4116-b216-334b33d20644', N'35', 31, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'c9ed2692-f62b-4361-95c7-3539ff4179a7', N'62', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'f0a67504-5c3c-49e5-9ed7-360e7316c3d2', N'Details', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'97557a45-c455-4148-86f1-368e53bb7e6f', N'Center Details', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'ed4e0c22-08c9-43f4-bff2-3696aa286b37', N'Cust Acc', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'd4388f75-9d4d-40f6-bed4-36bc34b4a450', N'Event', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'28a1096b-4c91-4c41-87a7-378e75c7cd75', N'31', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'3a3c486c-1cdf-44ef-8d0e-3884353761f0', N'References', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'fb4feaf6-5a74-408f-9247-38d00646a55c', N'77', 49, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'980ca6bf-d957-429c-ac55-39b5e0d392d9', N'73', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'27215a78-3c31-4f0e-abb5-39e05ee56641', N'Personal Acc', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'c9a68434-6b57-4407-8b13-3ab5b4b1fe68', N'42', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'f13722b5-2b43-42fd-bec0-3b572b933f3f', N'41', 61, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'f07a14e5-eb93-48e7-90c8-3b6a0de8948a', N'Company legal ', 49, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'4e3b70ec-8a30-4f39-b6c7-3c0e79ef698a', N'19', 31, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'58e4fe9a-a552-480d-9de2-3dd882425394', N'Partnership', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'19b0a3d8-6420-49e8-a338-3e626c4dd73c', N'Center Description', 61, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'4c72fc78-9f2a-41a9-af94-3e89648ba892', N'46', 49, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'df177263-d0b4-4bee-9c4e-3ee515168d01', N'80', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'a9716a74-c948-4126-a725-40c6a620fdb3', N'History', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'4805e2a8-1707-4784-9a96-41619352b5af', N'Collaborations', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'230410bc-9a7e-4c2b-8843-41e74ad58a69', N'13', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'ec0f4da1-3a42-4c39-b08a-42a0ee19676e', N'19', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'526cf128-e7af-4b19-bd00-434e77021e6c', N'Portal', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'b1791b43-2925-4a5c-a0b1-43af82d8bcb2', N'16', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'7d2a5aab-30e7-4444-92cf-440621b48352', N'Cust Acc', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'b178863a-8757-49f2-bb05-443539227bda', N'45', 49, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'bec673a4-7213-4c68-8f76-44ab7325537a', N'31', 49, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'0c8fb278-8ff2-4615-b59b-44b6d6e628c8', N'Appointment', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'216c6f09-0860-4b00-a595-44baae2eb0ed', N'Partnership', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'09f558b9-a829-469b-be89-44dd6e770df1', N'Company Information ', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'9b8349cd-3d64-424e-bf93-451c326a404b', N'75', 31, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'f753aa8e-4f5a-48fd-845d-45f170ba4634', N'AD', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'da863115-4b75-404d-a620-462b1c3fa6e8', N'Order Details', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'a39820f1-fcba-4c0a-8af4-47be9fef027b', N'66', 39, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'8a8b55d0-f266-44b5-a3a1-47d7c13cad02', N'Fund', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'c3ff8b4a-1167-485d-8775-48b4c709f80a', N'Company Tools', 39, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'294507ea-1eae-487f-be23-492a0c99f5d3', N'43', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'14a7a197-bba3-42fb-a6d1-499fa20974b5', N'16', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'0e4bb54b-1774-4746-a87a-4a19ca1fecba', N'2', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'c56b9cc2-8376-4a38-9747-4a313d3c9c17', N'26', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'fc62fa67-a151-410e-90e1-4b8131f3c817', N'18', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'e21b0d5b-9fa9-48c2-9b03-4c5429caf283', N'47', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'1f056c85-4e8d-4923-a872-4c925ec4369e', N'7', 284, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'66865046-1ac5-472f-aa07-4c9cc11e15d2', N'57', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'9cbf902c-09ac-42cc-a8c5-4e14f8d0d0a4', N'53', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'd42e11af-8a27-4cd8-9e54-4e180479f242', N'12', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'26669f39-65e8-4a56-b5c9-4eb44a6fb147', N'Franchise', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'a9b92819-69ed-4863-911a-4f120545e2f2', N'74', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'3940fd1a-280f-4273-a7bb-4f9d29849cfb', N'Time Out', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'009b8677-d655-43b3-b5ef-513e8be18948', N'Information', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'e6108f1e-ffe9-4855-9621-51808a78a990', N'Company Detailed Info', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'efeea44c-dce1-4a84-ab4c-539df274ea60', N'Schedule', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'559cdec5-8163-42ff-abf7-53ec14b4c719', N'About Us', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'78134f7f-cd92-40f0-afd7-54180feccee0', N'Order Details', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'8544ea30-6ad5-4818-b348-5431abb526ff', N'Perk', 49, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'f75aeb90-4a31-4a17-abf1-54bc43785289', N'Company data', 284, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'3a65f9c4-043b-4a74-9937-553cac5e101e', N'5', 31, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'c84f82f4-6bda-4b14-958a-57abf28b4546', N'Company Newsletter', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'3500e4ce-f0ee-458d-929c-584ab75f281c', N'Mission', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'bde60581-fa67-4c60-adca-599716b1627c', N'Company data', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'34e671f6-e337-4f57-a007-5a710ed2a821', N'34', 31, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'3ffb0d50-7c45-4776-8240-5b076ce3d8c7', N'49', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'd0b976a5-332a-4ba8-9587-5cc633542074', N'57', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'1e3bacb0-14fe-4b9e-9519-5ce5c235189a', N'42', 49, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'c991ca86-4328-4abf-ae00-5d6ebd9ab18e', N'Profits', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'ca16d117-7402-4d1b-aef9-5d9b01667181', N'Franchise', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'69320dd2-3800-4150-84ea-5dc01ca0e79e', N'46', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'be91e896-6b11-4bf6-80c7-5dc04f3ef311', N'67', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'a4eecb2b-b143-4bce-b913-5e58f3c3ca6c', N'79', 31, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'c0c34a34-3097-4d3a-a0f4-5e5e607182d4', N'6', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'33e318f4-75d7-4630-a630-5e97f55cb0dc', N'Partnership', 49, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'cdbb95ea-45b1-40e5-807c-5f0f233afff8', N'Regulations', 61, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'8e49a58c-6f89-4b78-8835-603007022d4b', N'Company Production', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'ba22742a-3272-4255-a0fc-612f243196e8', N'1', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'74b7c860-382a-495e-bbcc-6160359f38a4', N'Company Regards', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'27cc3256-e62b-4bb9-bb09-6172aef6809c', N'22', 39, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'db19b521-556a-4e3d-8150-631cb7b6b17a', N'Public Relation', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'072725d6-fdf4-4db1-a6e1-63b4c59b9ae6', N'Company linking', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'dd080f69-2133-4832-bba2-65066ba07e01', N'1', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'f3051828-4610-4e1a-9e9b-65dde2a59836', N'67', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'0192b551-8276-43cf-b07b-66668de012ef', N'Center Details', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'2358308c-bfcb-4fb8-b7ba-6668531249fa', N'73', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'6e32b470-a35c-4cb6-b548-67652e6085c4', N'44', 61, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'143e4b5f-33d9-4afc-ac83-67751663bc02', N'Company Production', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'65181f3b-73dd-4f37-b22c-6775ae1fdd95', N'Company Regards', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'85556f88-d8a8-47ce-b7dd-67baa92352a1', N'Appointment', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'a60c4846-0e1b-4c40-884f-67e2416d2f02', N'18', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'4ab83bd4-af1e-4c12-ae2a-68d1093b6c47', N'26', 31, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'095750de-18fd-45c2-8a06-695919cfdb16', N'70', 49, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'2a460a16-cff4-402d-a999-698e88a7b667', N'User Authorization', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'8ecdd664-47f3-447d-bec8-6a262806134f', N'2', 31, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'612a0e4f-b471-4e7d-adb5-6a858020acb8', N'30', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'352eae65-0dad-4c8c-a516-6afa811c6336', N'Converse', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'5d9e4cae-5b17-48f9-9c4a-6b59cdf12d47', N'38', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'14e27cd5-27ab-4f46-9df1-6b5c9d12b054', N'77', 284, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'52327920-74e4-4469-bbcd-6b941f8483ed', N'Company legal ', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'ce45de92-232c-4a00-8b44-6bd4b5e13a0e', N'82', 31, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'387d3096-756f-489a-8b37-6ccaadd6b406', N'2', 284, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'15ecacca-d494-4060-aced-6d1c6564074e', N'Login Acc', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'a5089092-b515-4c96-8e18-6d23bacf7a68', N'59', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'f2066c11-a01b-44fe-adbd-6d59a14da176', N'41', 82, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'8c9a84d5-696f-4c24-bd49-6d6ffde76db4', N'5', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'0337fd11-3aee-43b7-af7b-6e7e82c1a108', N'61', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'f97e2cac-2c43-4a92-9001-6e96720e0b3d', N'Fund', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'8187df33-8a4c-4928-9a59-6ef6782ec9e2', N'83', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'7138b1bb-59da-44ba-923b-6f5eb2e07ebd', N'Assets', 49, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'e1f34362-5862-43ca-a591-6f811024ee43', N'Company Tools', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'd5bd1162-2dbb-4fab-b0f9-701162ba618b', N'16', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'300039f2-19ef-457a-9c39-7066267beb8f', N'69', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'6f63278e-7a4c-4d1f-be49-714e682c0965', N'49', 49, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'2fdd0e29-1c89-47ad-9b1e-72ca082dc3e3', N'Company Tools', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'79ae131b-2869-4f33-b862-73146a8a5112', N'78', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'263c30c4-1bbb-4be4-af47-73d82622402f', N'Information', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'29c249e4-a032-4e1c-8b67-741d4f1a2526', N'Schedule', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'e6d7100c-b355-4934-b13e-746140b27075', N'51', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'5d495e2e-f90f-41e2-9730-74808d4e4425', N'Assets', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'baa2861b-4559-4ee9-8461-75303adffe44', N'44', 49, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'9f4e0c4a-be46-4d94-ac0a-75c8759e9467', N'More Information', 61, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'b6434b68-6293-438d-8162-763e2700dca0', N'63', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'3a8223d2-b76a-433e-8add-7669767c456c', N'Collaborations', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'46ea18bd-ceed-48a1-b49e-776621fc9fd6', N'77', 31, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'64b3f36c-54ee-41aa-8234-778745984c0f', N'7', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'418bd7de-c2c1-4223-b902-77a0977c19c8', N'About Business', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'550b8192-06f2-4642-8bba-78f5d61dfe5c', N'4', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'699b20ed-e36c-4c4d-b45f-793ae8874083', N'48', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'bdbd0505-efbb-4791-b78f-796fafd50429', N'Opportunities', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'9a06282a-ca69-4a93-82fb-7a78240c10f9', N'38', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'7917b8cb-101c-4a8b-b1b5-7bb9ba9e516f', N'Our Work', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'51a820d6-7228-4c28-ae4e-7da9c3f4a2e3', N'Events', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'6a1c4cfc-64ad-418d-b0c8-800969980bb1', N'Company', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'a42a394f-9eab-447b-ac42-80425f3bad96', N'6', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'b9abd36f-3093-40ae-905a-81893c97bdb9', N'74', 49, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'81ac6a1d-f46e-4647-9aeb-81d75d097d3e', N'Our Services', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'f99ebbcd-42f3-4faf-94ee-8228f75ecefb', N'9', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'f5a58ebc-4e80-4cb2-a5a1-82bdfbfbcaf1', N'Opportunities', 61, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'b42d8190-4114-4752-b190-82fb8489fe6b', N'Extra Information', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'0f26832c-5ff7-47e6-8001-830a0fa5436b', N'49', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'7be942b2-b111-4cf5-9db9-838987bd43bf', N'8', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'f6f91574-9c8f-4a19-ad8f-83bb3e01c23d', N'Organization', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'95de64b9-00e6-48fc-82c0-8404025f2179', N'44', 284, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'54ed5e09-b720-4008-851e-842327ee3f38', N'Contact Info', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'7aa4e6ca-bedc-466f-9a60-842c9779148f', N'Connect Details', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'aa771973-f8d3-48b2-be21-843e8b23ef49', N'Confidential', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'ac448304-c544-4c81-b196-84bc11f57fb5', N'Company linking', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'497fb3d7-c006-467a-8be7-85285217edfb', N'54', 284, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'6d53313f-18d0-443c-92c4-854a5038c85e', N'7', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'c463003b-4e76-44b1-9abd-8567eebc30a1', N'83', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'2e52fca2-5b6d-4642-9761-85f638212828', N'15', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'72277218-b773-4985-afdf-860a727831b6', N'Personal Acc', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'd2f88e7d-e160-4c79-ae87-86d30c4401ac', N'52', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'334f5ada-2b26-4df3-81d3-86e8c8a2697f', N'63', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'62d2f945-3727-4b75-899e-8714c130ff01', N'7', 184, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'2dc54ca2-7e78-4914-b81c-87aad5360bd4', N'Located', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'42492f41-8831-4010-9197-87f893d30f22', N'Company Regards', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'4da09337-1520-46ca-90d5-8855514a56b6', N'Center Description', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'cd0cfe30-e0a5-462d-aeb4-886aa12e6817', N'Software', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'70bb4c64-812a-4902-acdf-88f08d8068b4', N'30', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'73317359-dcb9-4b45-ad8f-89ebed4b4659', N'74', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'c7067dfb-ac86-466a-bfb7-8a31c091bebb', N'Public Relation', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'7c2d8a44-0bdc-4a1c-9696-8a7357c703c3', N'9', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'384e5f95-d7cb-436b-9ce2-8a924d3cebde', N'40', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'703ae2a2-6d7d-4ece-810f-8aad79aa9c5e', N'82', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'7d544abe-2843-4ad1-b421-8bb591dd8fad', N'6', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'79ccbcab-273f-4e2f-8262-8be5a9e2919e', N'18', 284, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'2dfa770d-0698-4436-a5de-8e0932588726', N'Media', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'e6263d6d-9946-4566-9afd-8ea6c4ab5322', N'39', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'7900c5df-a62b-416e-a26c-8ec072329497', N'80', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'f49291ac-2d42-47d4-9342-8f11c096aaa5', N'Our Work', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'9a07b798-fb81-494d-b3d0-8fef09f89ea7', N'Opportunities', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'66d39283-4a62-4900-a101-90533eb4524c', N'Conference', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'993b3e74-e0c8-4201-b5d1-9068e161bc98', N'48', 284, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'65301714-9e5c-414c-afce-916079d93391', N'26', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'b2e79b81-cc15-438e-bbb8-9168f4cf311c', N'Mission', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'185cff38-7c27-4bd6-8cfe-92a8d08bde96', N'Account', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'2f84f7cc-9227-47b1-929a-9314f94654d9', N'5', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'ae5c3b43-9579-4bd6-990a-93b806ae136d', N'7', 49, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'ea9eaeb8-d4ea-4b5b-af0c-93bb1881ed6c', N'63', 284, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'3868d4f4-5dda-413a-a778-93fa71accaf9', N'Assistance', 39, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'0150b505-9842-4825-bcde-947e4f5f85f3', N'Collaborations', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'b99823f4-a861-4dc7-a04d-94a32a2b31f1', N'25', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'6e7f7060-465b-47f3-bb26-94ad0ca5f5d8', N'32', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'42f10318-f9d4-4063-8e15-94bc9d3d1b11', N'83', 39, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'acd0c274-b3e2-4d33-a129-94d641cf6045', N'5', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'838a7dd0-3c63-42b4-8e2a-9503f17449ce', N'73', 49, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'2e1cbcf6-20da-4b89-8c7c-9579b08eb9a8', N'Center Details', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'a1d13c39-5c62-4069-81db-95b1d2c75231', N'Assets', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'5264c85d-552c-426b-94c6-967c34cea90d', N'References', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'e58f7a8b-f1ae-4b41-a23c-96bbef23530d', N'10', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'f249e8d2-fbd8-420e-be1b-9703baff75d0', N'72', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'ee5b359f-80ff-454d-8802-97f670b88d83', N'82', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'03db4c9c-2b48-4931-9289-9804a9326e60', N'14', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'9eb8163a-9451-4de4-b6cc-99a5f3853ab8', N'14', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'e451d02c-9f5b-41d4-9c12-99d6b8185d5e', N'16', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'4cfbc089-e2ad-4c11-8610-9afb2e6ed7fd', N'Regulations', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'5de5fa2c-c728-44f0-9393-9b758c34bdc3', N'43', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'709f09f7-f774-4e9a-a03e-9c7db309243e', N'70', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'e9ea4f4e-892a-4732-9799-9cb083d90740', N'Company Information', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'c7a7c503-e9bf-44f4-ae52-9da0d97b07b9', N'18', 31, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'f2469a04-eec6-460a-8fd3-9ec93a22c8de', N'44', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'1466986e-83f9-4fe8-96fa-9f0e9e4b4d29', N'6', 31, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'ef6fbc52-4088-4a83-b6ec-9f8a2e27569e', N'47', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'12ac3a26-6940-4e34-acf3-9fc46a3456c5', N'Media', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'473fd4b8-8e30-4219-a85d-a2750d8f8feb', N'73', 31, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'11768de0-fbd4-43f9-bded-a2c6bbd06d62', N'User Authorization', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'63e0e3e7-07a6-4b15-8244-a2f3f466019c', N'Our Work', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'd911d27a-cc17-44db-89c2-a484d1045b37', N'26', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'47fb3963-4a43-4c01-ad61-a4956f6458ac', N'49', 39, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'77c3e737-66a2-447e-a31a-a57b3e87539a', N'24', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'd6decd88-d0b0-4655-885e-a5f9ec3dda5a', N'About Services', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'33a636cb-2b25-42d7-bcd2-a64214e9f51f', N'36', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'cad5a74b-727f-4a94-a984-a6ab3c6fc0a1', N'50', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'f49acb79-1982-4f4f-9d51-a7d9451e3db4', N'Centers', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'c04830ff-f504-4f1b-945c-a7eee3030004', N'69', 31, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'd2102f1d-32e2-47f4-8398-a88b562be4d4', N'References', 31, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'b5bc6d32-c43d-4277-8729-a8e1325a648f', N'Schedule', 284, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'8421e464-bea7-419e-9c70-a994a4cf07d8', N'75', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'90d24fdc-26d0-4705-8f36-a9d1059dc656', N'49', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'0c6ddf29-aefe-4019-852e-ab735d1bedc5', N'More Information', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'2a0c2560-d6c3-4153-b1ef-abeafe7cfac6', N'32', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'a5a66808-9659-4c81-af07-ac714ce94c56', N'12', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'd8e5ca2b-0703-45dd-9166-ac9f25c4d251', N'76', 39, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'273655d0-6619-44d9-bf5a-ad16a403611d', N'Assistance', 82, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'943045e0-11b6-49a2-bb7d-adbc9cf82750', N'34', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'ef1e08bd-20dc-43d6-a827-ae9f3e51d0d6', N'67', 31, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'522d8fe2-136f-4c03-8b84-aea70322cda6', N'59', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'2f6708f0-b47c-4162-85c7-af1039e60e6e', N'Converse', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'0e367a10-5b35-4160-ac5e-b046e3daa657', N'45', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'b439c2f2-5281-4ae3-bae5-b08c9a92f622', N'13', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'ed3418ed-0cc5-4fa7-bffb-b1d541aaf553', N'Extra Information', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'96205f50-d9cb-471d-aa34-b238c4c1f0c7', N'Business Detail', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'b1414a47-12e0-42e9-a28b-b27f5377f23f', N'62', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'b0e0dd5b-4cee-48fc-9578-b28da70ae922', N'54', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'5ee55d2f-f51d-4eb9-a02a-b2c6bb9a3722', N'38', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'd4813c23-3395-4022-8372-b3007a17329f', N'68', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'91273c98-3a1a-41a4-9144-b374b83bb60c', N'34', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'1ec77ab0-a304-4002-92ac-b3bb5ed06f96', N'Centers', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'2bde7f3c-806b-411f-9dd9-b3cc18dde05f', N'Company Tools', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'c4a448ac-6900-41f7-b364-b4228e6d8c12', N'20', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'c1ec6b06-b0f0-4607-868c-b50279e81038', N'Company Information', 31, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'ad5bc9fa-b08e-4aba-bde3-b69f72e7c29c', N'75', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'fd2068be-af8a-4de7-ab16-b72ce0ca08bb', N'36', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'678e3395-1731-4ec1-8c74-b8323d6cecec', N'7', 31, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'eb24620a-5836-42c7-92e3-b84404b66781', N'55', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'c7677fa5-8886-4515-b381-b871215f19f5', N'28', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'3645c13b-f5db-44c5-935e-b897734b0ae8', N'30', 39, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'ec9be281-96aa-4283-a175-b8b3fd55c8cf', N'Confidential', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'065bcb74-ea61-4b79-953a-b946ad401b69', N'Regulations', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'65b790c0-9795-4c6f-932c-b9852d82aafd', N'Job Opportunity ', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'd31d3e34-0bbe-4f5a-8020-ba2ee7c58e87', N'42', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'6b83f24e-cf41-4822-80ac-bb0cfcbdefd0', N'13', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'958f0379-58ae-4b62-b687-bb80479c3fc6', N'28', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'eed0d7d8-b394-4ba3-88f3-bbbfa22518cd', N'54', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'628831ec-2877-4fb9-9ba7-bbd8f4ec981b', N'15', 31, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'd22fce5b-371e-4ac1-b4d0-bbe08ef44a66', N'Offer', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'b2b17408-7324-484b-94f6-bc29c755b381', N'31', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'8ee1b3e5-6fea-48b1-8e34-bc732b2bec57', N'Portal', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'a1919b48-3990-448b-bb06-bcbe1f4c923a', N'Scenarios', 39, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'929f2de2-2ddb-4425-a477-bd351cc7899e', N'Description', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'96799e95-9cbb-4bb6-bc2c-bd3d898093ce', N'72', 39, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'13fc56b8-db64-47a2-9699-bd91aeb366e4', N'57', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'cf1ad841-e320-4b22-ac78-be155c590599', N'80', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'897e6222-3639-4a42-8887-bec409bb3702', N'Time Out', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'b1a5dd6d-86c0-4adc-ad2d-bf0570496861', N'Ticket Information', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'fe784ebd-9996-4cb2-a296-bf7ece5fb82b', N'Future', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'78749bb6-a6a9-4871-a758-bf94c948b481', N'17', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'71482628-1b0b-4b35-9d6a-c03380a0df46', N'Company Detailed Info', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'0dc94762-bd24-4e3d-bfa7-c080be991f62', N'80', 49, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'd1bea6be-2cd5-4dab-9aa4-c1188e8f1274', N'48', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'4101eef7-d2ff-4739-a04d-c11e8bc7afe1', N'50', 49, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'221a071b-5a2a-4a97-939f-c12587a15571', N'50', 31, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'2b1877c5-85ad-46fd-8c77-c19e04b955e1', N'55', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'2ec59ab0-98b9-442a-b096-c1c293e489a1', N'12', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'042edafe-9d2a-42ee-a597-c1c3631c2b1c', N'Company data', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'ce55dc0f-e7ec-4222-a640-c27ecc4dc9ba', N'Assistance', 61, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'3875e32d-d308-4408-8941-c2a0790ff615', N'15', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'59e141b8-6b04-4c6f-879f-c3746bef95ad', N'83', 49, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'0ab4e00e-9bfc-405e-99ee-c37d413be382', N'Assistance', 49, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'76d2661d-c8a6-4e47-9827-c3d69f535a5e', N'29', 49, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'b6c49abe-f74b-45a8-9eb6-c459b29686a8', N'Schedule', 31, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'e9ac0d5b-ac93-43fb-bba9-c47d3b90d298', N'41', 284, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'd5c6bd9e-5883-4676-af73-c47f2729be9a', N'64', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'fe4e6b16-c4b2-4c3b-8efb-c4ea055804d3', N'3', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'91c4b2b1-f4c1-493a-b4d6-c5076ee5638a', N'Order Details', 49, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'2c773310-53b8-4a6a-8d9a-c53c7bbba5e8', N'Ticket Information', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'12a39848-3d6b-41f5-8d5a-c69a15166c65', N'76', 284, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'bf71fbaa-a04b-423c-8b8e-c6b07b69c932', N'More Info', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'b18af57e-a733-4d83-86b7-c77e44e6d0df', N'7', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'b7c0bb13-6104-4984-9ed4-c7b8bd8e3263', N'Opportunities', 49, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'92d3f13b-28f8-4dfa-8acf-ca0482dd9f3f', N'76', 31, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'9c8bbbfe-bd95-4232-ae35-ca3b1bd8b804', N'20', 31, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'72d4e3ca-d712-4952-aca7-cb2eeb583809', N'Company Achievements', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'f265fd69-a3f7-41d0-9e75-cb569340cbcc', N'Extra Information', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'4397d8b6-16e7-4fa3-ab75-cbe312ba9f49', N'47', 31, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'ee1a4b9e-c5cb-4642-aebf-cd4b89923a4c', N'Our Services', 49, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'1753671c-2d86-49b0-a9f9-cd58c224cb89', N'36', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'4b2ea0ac-46c5-4152-a4cc-cdccb21660c7', N'71', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'61f2fdd1-9ae5-4e96-b909-cddb4f4173e5', N'Company legal ', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'6bf69cdd-3806-4bf7-b780-ce517cfec698', N'68', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'248e5ffc-a538-4632-82c6-cecf266d266e', N'22', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'd0b9d81b-addc-4b0a-a0e5-cf81f4eb3c71', N'Franchise', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'54944c8f-105a-4aa2-bb5b-cf9340582511', N'Assets', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'69581683-1c4a-4f4e-b581-d01711103351', N'43', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'38e56c44-445a-40b3-b35f-d0fd50a7dae6', N'73', 39, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'af00473e-8732-4cd8-b4e3-d11c0bda32c1', N'14', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'2a2c9816-95a5-4ae6-a93c-d2c5eb93d6d5', N'Company Action ', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'b094d41b-6810-4511-bc4b-d2d430ff885d', N'71', 31, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'0f4c8464-7973-4978-9862-d4700507fa8b', N'12', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'e563d7de-42e2-4669-9c6b-d639d422793a', N'Centers', 49, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'2095fb56-2444-4ae5-9990-d6beb8daac07', N'83', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'4ae4cb6b-ed18-4efd-8275-d6d0044dd6af', N'58', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'6ea2e005-c7b9-4fb9-b7ef-d707b53203e5', N'53', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'0dc4f71e-db88-44dd-8d41-d74473c51b20', N'6', 284, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'3b18894b-d162-443e-ab6e-d760cc581e38', N'Mission', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'ec3986a1-d15b-4d02-93f0-d7c92578cdd8', N'75', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'23c57ee0-c9c3-4fda-92ed-d7f38f94206e', N'79', 284, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'14237bf4-abab-43f6-9bc6-d80f253292ea', N'Schedule', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'606b26e2-086b-4b97-9e75-d89a6b2f00bb', N'25', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'1cbbbba4-e2ee-4760-b554-d89ed5ede014', N'17', 31, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'c8c219a1-c03d-41c0-82ab-d8c0bacb63dd', N'55', 31, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'3291396d-32ba-4085-9060-d8e05fa6564a', N'34', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'89d4a455-24f0-4710-810f-d9849b16ebda', N'45', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'151f817b-aea7-49ec-9e93-da588a6d6171', N'Company Information', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'304bd15f-4eac-42c3-b5f4-da872c7752d2', N'14', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'c6caff5d-ce89-4e5f-ab91-da976b91277e', N'Assets', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'20e3c6c2-63e7-4a4a-9aaf-dc057c236ef1', N'33', 49, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'cab02529-c838-4e95-b69d-dc27cd2a6fd5', N'75', 49, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'2232ba4f-2d4e-4282-85c3-dc6ec015800c', N'45', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'a76c7593-9e7c-412e-95c3-dc76c69930bb', N'Conversation', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'd030afc4-7bf3-4193-93cf-dcbd32b92eb7', N'2', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'd4e4b9cc-8c32-4fd3-9f07-dcef414de39d', N'Perk', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'313d7426-7f6c-4821-a00a-de77c94709b2', N'11', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'5c1ba31e-d6f4-4da3-89ce-dfd8f90c6c07', N'77', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'46f3bc4c-ca37-4b73-bdf5-e0e11e4ce29d', N'45', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'e5593359-b283-4b35-8347-e2eec01f173b', N'Company Regards', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'1363d510-8005-4d11-8f88-e32665ffc085', N'66', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'7e514876-6137-42fd-a181-e33b34cfb75c', N'38', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'547186d1-089d-491e-8711-e36c97f0ff39', N'Company Production', 39, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'f271c53a-b6f8-4f64-8802-e37a9ff05a51', N'Description', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'b57c5d98-2e81-4aa6-870b-e3faf56cfe26', N'29', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'c1c0a7ff-c2cb-40be-8ade-e444e752f389', N'63', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'eae25b13-db5c-4604-9ed4-e45836afacc7', N'Public Relation', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'fdfcc4dc-0c10-46a6-8fb8-e47d6a936e6e', N'41', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'0cf6258a-2314-44c4-a9e3-e49bc62346bc', N'78', 39, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'66be0c97-d476-4a9f-ba80-e715859e6bc9', N'User Authorization', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'2c7a0f64-1ca3-4bc0-bfe8-e75f87cf855c', N'User Authorization', 61, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'9fa7bc8e-e22a-41d3-aff0-e76ac2315758', N'52', 49, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'23aee7f6-e8e7-4720-8a72-e8f3d295093a', N'38', 31, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'67cb878c-c37b-416a-b203-e93f6a792de0', N'20', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'c2ed189e-b833-4fee-bad4-ea6d5f838d2c', N'52', 284, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'5d265f50-a9a3-423b-b521-eab19d8f4f44', N'63', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'5a3e2a8c-049b-4360-a6c2-eaffbf9651c0', N'23', 39, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'dde056f1-09f3-4ca5-b454-eb4e175ea4e7', N'25', 31, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'18940a20-b66e-448a-9a09-ed078255394c', N'Company Information ', 31, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'760057e7-daf6-4d58-b513-ee64d7ec5450', N'Account', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'fcedb130-984b-4053-ac53-f0f51a90eaab', N'Collaborations', 31, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'332dae73-b1f8-4083-8363-f127cb134a41', N'69', 39, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'ff6187eb-4cd5-40b5-8714-f27a7823c973', N'Company legal ', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'7b771239-36c8-4d00-9510-f35312fb28da', N'40', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'8f514fa1-cb8b-4e05-a275-f535a2348861', N'69', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'54d15e75-8671-4556-b5da-f55927c0071c', N'21', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'4e241b75-ebb0-414e-9e02-f57414b74bb0', N'Login Acc', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'13e15a9a-42d0-4cd5-8330-f60da60eda8b', N'41', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'4f118569-4fe9-409f-9767-f71d8e4aebc5', N'76', 49, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'712a5125-3c57-4c66-b1b0-f75a56a64617', N'56', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'844cd7f3-38a6-4abb-a94b-f7fd9335ed8c', N'About', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'c08d1594-daa3-493d-9520-f882f35633c5', N'44', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'c78750f1-6d5b-4e00-bfa9-f92ea96a797a', N'81', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'c6726f44-f802-4756-b4db-f9a8f6026385', N'37', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'b058c6dc-64d0-45d4-b729-f9b3db153889', N'Scenarios', 42, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'22a49969-6ef6-4e52-b01d-f9e39dca68fe', N'34', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'04ca56cf-1f3c-4964-a34b-fa7a65fdbcad', N'Conversation', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'619863e5-bdc6-4153-9df7-fb18cb39c1ad', N'Ticket Information', 72, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'd0b5d6d7-a2e6-4e46-9314-fbbb92e79134', N'23', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'bfaeced5-ef01-4a96-88e4-fc471e3a71de', N'Scenarios', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'7649364d-cc9a-4ce9-b289-fc7d688d0220', N'Our Services', 33, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'de8256c6-82eb-4cfd-b3fb-fca1dff943ac', N'More About Us', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'acf20ec3-72b6-4763-b728-fcdcb890f7e3', N'Advantage', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'eca9c97e-c6d5-46c3-af3d-fd6a0104eaa9', N'29', 2, 1)
GO
INSERT [dbo].[WebsiteGroupSchema] ([id], [groupName], [schemaId], [visible]) VALUES (N'c6ccc007-a416-4f35-b223-fdcbb7cc1ca2', N'14', 284, 1)
GO
