create = {
    custom_route_tables = true
}

route_tables_conf = {
    route_tables = [
        {
            # Route table tags
            tags = {
                Name = "route_table_1"
            }

            # VPC tags in which route table is being created.
            vpc_tags = {
                Name = "Default"
            }
        
            #Subnet Association using tags
            subnet_association_tags = {
                Name = "Default"
            }

            # Map of Route for the Route Table
            routes = {
                # # ------------>> Internet Gateway Route <<------------------
                # internet_gateway_route = {
                #     destination_cidr_block = "0.0.0.0/0"  #-->> DESTINATION
                
                #     # Data Source internet gateway using tags  #-->> TARGET
                #     internet_gateway_tags = {
                #         Name = "Default",
                #     }
                # }
                # ______________ END Internet Gateway Route ________________


                # # ------------>> Virtaul Private Gateway Route <<------------------
                # virtual_private_gateway_route = {
                #     destination_cidr_block = "0.0.0.0/0"  #-->> DESTINATION
                
                #     # Data Source internet gateway using tags  #-->> TARGET
                #     virtual_private_gateway_tags = {
                #       Name = "Default",
                #    }
                # }
                # ______________ END Internet Gateway Route ________________


                # # ------------->> Nat Gateway Route <<----------------------
                # nat_gateway_routes = [
                #     # Nat Gateways should be multiple
                #     # # ---> NG-one <---
                #     {
                #         destination_cidr_block = "0.0.0.0/16" #-->> DESTINATION

                #         #  Data Source Nat gateway using tags  #-->> TARGET
                #         nat_gateway_tags = {
                #             Name = "Default",
                #         }
                #     },
                #     ## ---> NG-two <---
                #     {
                #         destination_cidr_block = "10.0.0.0/16" #-->> DESTINATION

                #         #  Data Source Nat gateway using tags  #-->> TARGET
                #         nat_gateway_tags = {
                #             Name = "temporary",
                #         } 
                #     },
                    
                    
                # ]
                # # _________________ END Nat Gateway Route ____________________


                # # -------------> VPC Peering Connection Route <---------------
                # peering_connection_routes = [
                #     # Peering Connections should be multiple
                #     # # ---> peering connection-one <---
                #     {
                #         destination_cidr_block = "192.168.0.0/16"  #-->> DESTINATION
            
                #         # Date Source VPC Peering Connection using tags  #-->> TARGET
                #         peering_connection_tags = {
                #             Name = "Default",
                #         }
                #     },
                #     # # ---> peering connection-two <---
                #     {
                #         destination_cidr_block = "192.168.1.0/24"  #-->> DESTINATION
            
                #         # Date Source VPC Peering Connection using tags  #-->> TARGET
                #         peering_connection_tags = {
                #             Name = "temporary",
                #         }
                #     },
                # ]   
                # # _____________ END VPC Peering Connection Route ______________


                # #--------------------> Instance Routes <------------------------
                # instance_routes = [
                #     # Instances routes should be multiple
                #     # # ---> instance-route-one <---
                #     {
                #         destination_cidr_block = "0.0.0.0/0" #-->> DESTINATION 

                #         # Date Source AWS Instance ID using tags  #-->> TARGET
                #         instance_tags = {
                #             Name = "Default",
                #         }
                #     },
                #     # # ---> instance-route-twi <---
                #     #{}
                # ]
                # #___________________ END Instance Routes _____________________
    
    
                # #-----------------> Network Interface Route <------------------
                # network_interface_routes = [
                #     # Network Interface routes should be multiple
                #     # # ---> NI-route-one <---
                #     {
                #         destination_cidr_block = "0.0.0.0/0" #-->> DESTINATION 

                #         # Date Source Elastic Network Interface using tags  #-->> TARGET
                #         network_interface_tags = {
                #             Name = "Default",
                #         }
                #     },
                #     # # ---> NI-route-two <---
                #     #{}
                # ]
                # #__________________ END Network Interface Route ______________________
                    
                
                # #---------------------> Vpc Endpoint Route <---------------------------
                # vpc_endpoint_routes = [
                #     #  Vpc Endpoint routes should be multiple
                #     # # ---> Vpc-Endpoint-route-one <---
                #     {
                #         destination_prefix_list_id = "pl-1213545" #-->> DESTINATION 

                #         # Date Source VPC Endpoint using tags  #-->> TARGET
                #         vpc_endpoint_tags = {
                #             Name = "Default",
                #         }
                #     },
                #     # # ---> Vpc-Endpoint-route-two <---
                #     #{}
                # ]
                # #____________________________END Vpc Endpoint Route _________________________


                # #---------------------------> Transit Gateway Route <------------------------
                # transit_gateway_routes = [
                #     # Transit Gateway routes should be multiple
                #     # # ---> Transit-Gateway-route-one <---
                #     {
                #         destination_cidr_block = "10.2.0.0/16" #-->> DESTINATION 

                #         # Date Source Transit Gateway using tags  #-->> TARGET
                #         transit_gateway_tags = {
                #             Name = "Default",
                #         }
                #     },
                #     # # ---> Transit-Gateway-route-two <---
                #     #{}
                # ]
                # #__________________________ END Transit Gateway Route ____________________________

                # #-------> Carrier Gateway Route <--------
                # carrier_gateway_routes = [ 
                #     # Carrier Gateway routes should be multiple
                #     # # ---> Carrier-Gateway-route-one <---
                #     {
                #         destination_cidr_block = "10.3.0.0/16" #-->> DESTINATION 

                #         # Carrier Gateway ID need hardcoded value  #-->> TARGET
                #         carrier_gateway_id = "cgw-12345" 
                #     },
                #     # # ---> Carrier-Gateway-route-two <---
                #     #{}
                # ]
                #  #__________________________ END Carrier Gateway Route ____________________________

                
                # #-------------------------> Outpost Local Gateway Route <---------------------------------
                # outpost_local_gateway_routes = [
                #     {
                #         destination_cidr_block = "10.3.0.0/16" #-->> DESTINATION 

                #         # Date Source Local Gateway ID using tags  #-->> TARGET
                #         local_gateway_tags = {
                #         Name = "default",
                #         }
                #     },
                #     # # ---> Outpost-Local-Gateway-route-two <---
                #     #{}

                # ]
                #_________________END Outpost Local Gateway Route __________________________________________

            }#____END Routes_____
            
        },
        # #----------------->> ROUTE TABLE 2 <<-----------------------------
        #  {
        #     # Route table tags
        #     tags = {
        #         Name = "route_table_2"
        #     }

        #     # VPC tags in which route table is being created.
        #     vpc_tags = {
        #         Name = "temporary"
        #     }
        
        #     #Subnet Association using tags
        #     subnet_association_tags = {
        #         Name = "temporary"
        #     }

        #     # Map of Route for the Route Table
        #     routes = {}
        #  },
         
        
    ]#_____END Route Tables____
}
    



  


  





