 Deltares, WQ PROCESSES Version 5.08.00.64757M, Aug 28 2019, 20:46:04            

 Execution start: 2019/11/11 17:22:11 


 Number of active (transported) constituents       : 21
 Number of inactive (not transported) constituents :  9
 Total number of constituents                      : 30

 Number  (in)active  name
      1  active      OXY                 
      2  active      CBOD5               
      3  active      COD_Cr              
      4  active      NBOD5               
      5  active      IM1                 
      6  active      NH4                 
      7  active      NO3                 
      8  active      PO4                 
      9  active      AAP                 
     10  active      SO4                 
     11  active      SUD                 
     12  active      POC1                
     13  active      PON1                
     14  active      POP1                
     15  active      Diat                
     16  active      Green               
     17  active      FColi               
     18  active      Cd                  
     19  active      Cu                  
     20  active      Zn                  
     21  active      OMP                 
     22  inactive    SOD                 
     23  inactive    IM1S1               
     24  inactive    DetCS1              
     25  inactive    DetNS1              
     26  inactive    DetPS1              
     27  inactive    CdS1                
     28  inactive    CuS1                
     29  inactive    ZnS1                
     30  inactive    OMPS1               



 Info: This processes definition file does not contain standard names and units for NetCDF files.

 
 Using process definition file : c:\Program Files (x86)\Deltares\Delft3D FM Suite 2020.01 HMWQ (1.6.0.46002)\plugins\DeltaShell.Dimr\kernels\x64\dflowfm\scripts\\..\default\proc_def.dat
 Version number                :       5.08
 Serial                        : 2019050601
 
 Using BLOOM definition file   : c:\Program Files (x86)\Deltares\Delft3D FM Suite 2020.01 HMWQ (1.6.0.46002)\plugins\DeltaShell.Dimr\kernels\x64\dflowfm\scripts\\..\default\bloom.spe

# scanning input for old process definitions
 no BLOOM algae were found, switching of eco mode.                              
 found only_active constant                                                     
 only activated processes are switched on                                       
 
total number of substances with fractions :  0
# Determining which processes can be switched on                                                    
                                                                                                    
 Input for [DynDepth            ] dynamic calculation of the depth                                  
       [Volume              ] volume of computational cell                                          
       Using DELWAQ volume                                                                          
       [Surf                ] horizontal surface area of a DELWAQ segment                           
       Using segment function nr  1                                                                 
   Process is activated                                                                             
                                                                                                    
 Input for [TotDepth            ] depth water column                                                
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [Surf                ] horizontal surface area of a DELWAQ segment                           
       Using segment function nr  1                                                                 
   Process is activated                                                                             
                                                                                                    
 Input for [Salinchlor          ] Conversion of salinity into chloride or vv                        
       [Salinity            ] Salinity                                                              
       Using segment function nr  4                                                                 
       [Cl                  ] Chloride                                                              
       Using output from proces [Salinchlor          ]                                              
       [GtCl                ] Salinity:Chloride ratio in sea water                                  
       can use default value                                                                        
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  15.0000                                                    
       [Sal0                ] salinity at zero chloride concentration                               
       can use default value                                                                        
       [SWSalCl             ] option: 0.0 salinity simulated, 1.0 Cl simultated                     
       can use default value                                                                        
   Process is activated                                                                             
                                                                                                    
 Input for [Veloc               ] Horizontal flow velocity                                          
       [WSNoseg1            ] workspace array no. 1                                                 
       Using output from proces [Veloc               ]                                              
       [WSNoseg2            ] workspace array no. 2                                                 
       Using output from proces [Veloc               ]                                              
       [WSNoseg3            ] workspace array no. 3                                                 
       Using output from proces [Veloc               ]                                              
       [WSNoseg4            ] workspace array no. 4                                                 
       Using output from proces [Veloc               ]                                              
       [MaxVeloc            ] maximum horizontal flow velocity                                      
       can use default value                                                                        
       [Orient_1            ] orientation of main positive flow direction                           
       can use default value                                                                        
       [Orient_2            ] orientation of secondary positive flow direct                         
       can use default value                                                                        
       [SWCalcVelo          ] switch (1=lin avg, 2=Flow avg, 3=Area avg)                            
       can use default value                                                                        
       [SWAvgVelo           ] switch (1=Pythagoras, 2=Min, 3=Max)                                   
       can use default value                                                                        
       [XArea               ] exchange area                                                         
       Using DELWAQ exchange area                                                                   
       [Flow                ] flow rate                                                             
       Using DELWAQ flow                                                                            
   Process is activated                                                                             
                                                                                                    
 Input for [Extinc_VLG          ] Extinction of visible-light (370-680nm) DLWQ-G                    
       [ExtVlIM1            ] VL specific extinction coefficient IM1                                
       can use default value                                                                        
       [ExtVlIM2            ] VL specific extinction coefficient IM2                                
       can use default value                                                                        
       [ExtVlIM3            ] VL specific extinction coefficient IM3                                
       can use default value                                                                        
       [ExtVlPOC1           ] VL specific extinction coefficient POC1                               
       can use default value                                                                        
       [ExtVlBak            ] background extinction visible light                                   
       can use default value                                                                        
       [ExtVlPhyt           ] VL extinction by phytoplankton                                        
       can use default value                                                                        
       [ExtVlMacro          ] VL extinction by macrophytes                                          
       can use default value                                                                        
       [IM1                 ] inorganic matter (IM1)                                                
       Using substance nr   5                                                                       
       [IM2                 ] inorganic matter (IM2)                                                
       can use default value                                                                        
       [IM3                 ] inorganic matter (IM3)                                                
       can use default value                                                                        
       [POC1                ] POC1 (fast decomposing fraction)                                      
       Using substance nr  12                                                                       
       [POC2                ] POC2 (medium decomposing fraction)                                    
       can use default value                                                                        
       [SW_Uitz             ] Extinction by Uitzicht On (1) or Off (0)                              
       can use default value                                                                        
       [DOC                 ] Dissolved Organic Carbon (DOC)                                        
       can use default value                                                                        
       [ExtVlDOC            ] VL specific extinction coefficient DOC                                
       can use default value                                                                        
       [UitZDEPT1           ] Z1 (depth)                                                            
       can use default value                                                                        
       [UitZDEPT2           ] Z2 (depth)                                                            
       can use default value                                                                        
       [UitZCORCH           ] CORa correction factor                                                
       can use default value                                                                        
       [UitZC_DET           ] C3 coeff. absorption ash weight & detritus                            
       can use default value                                                                        
       [UitZC_GL1           ] C1 coeff. absorption ash weight & detritus                            
       can use default value                                                                        
       [UitZC_GL2           ] C2 coeff. absorption ash weight & detritus                            
       can use default value                                                                        
       [UitZHELHM           ] Hel_h constant                                                        
       can use default value                                                                        
       [UitZTAU             ] Tau constant calculation transparency                                 
       can use default value                                                                        
       [UitZangle           ] Angle of incidence solar radiation                                    
       can use default value                                                                        
       [DMCFDetC            ] DM:C ratio DetC                                                       
       can use default value                                                                        
       [ExtVLSal0           ] extra VL extinction at Salinity = 0                                   
       can use default value                                                                        
       [Salinity            ] Salinity                                                              
       Using segment function nr  4                                                                 
       [SalExt0             ] salinity value for extra extinction = 0                               
       can use default value                                                                        
       [ExtVlPOC2           ] VL specific extinction coefficient POC2                               
       can use default value                                                                        
       [ExtVlPOC3           ] VL specific extinction coefficient POC3                               
       can use default value                                                                        
       [ExtVlPOC4           ] VL specific extinction coefficient POC4                               
       can use default value                                                                        
       [POC3                ] POC3 (slow decomposing fraction)                                      
       can use default value                                                                        
       [POC4                ] POC4 (particulate refractory fraction)                                
       can use default value                                                                        
   Process is activated                                                                             
                                                                                                    
 Input for [Extinc_UVG          ] Extinction of ultraviolet-light (350-480nm) DLWQ-G                
       [ExtUvIM1            ] UV specific extinction coefficent IM1                                 
       can use default value                                                                        
       [ExtUvIM2            ] UV specific extinction coefficent IM2                                 
       can use default value                                                                        
       [ExtUvIM3            ] UV specific extinction coefficent IM3                                 
       can use default value                                                                        
       [ExtUVPOC1           ] UV specific extinction coefficient POC1                               
       can use default value                                                                        
       [ExtUvBak            ] background extinction UV light                                        
       can use default value                                                                        
       [ExtUvPhyt           ] UV extinction by phytoplankton                                        
       can use default value                                                                        
       [ExtUvMacro          ] UV extinction by macrophytes                                          
       can use default value                                                                        
       [IM1                 ] inorganic matter (IM1)                                                
       Using substance nr   5                                                                       
       [IM2                 ] inorganic matter (IM2)                                                
       can use default value                                                                        
       [IM3                 ] inorganic matter (IM3)                                                
       can use default value                                                                        
       [POC1                ] POC1 (fast decomposing fraction)                                      
       Using substance nr  12                                                                       
       [POC2                ] POC2 (medium decomposing fraction)                                    
       can use default value                                                                        
       [SW_Uitz             ] Extinction by Uitzicht On (1) or Off (0)                              
       can use default value                                                                        
       [DOC                 ] Dissolved Organic Carbon (DOC)                                        
       can use default value                                                                        
       [ExtUVDOC            ] UV specific extinction coefficient DOC                                
       can use default value                                                                        
       [UitZDEPT1           ] Z1 (depth)                                                            
       can use default value                                                                        
       [UitZDEPT2           ] Z2 (depth)                                                            
       can use default value                                                                        
       [UitZCORCH           ] CORa correction factor                                                
       can use default value                                                                        
       [UitZC_DET           ] C3 coeff. absorption ash weight & detritus                            
       can use default value                                                                        
       [UitZC_GL1           ] C1 coeff. absorption ash weight & detritus                            
       can use default value                                                                        
       [UitZC_GL2           ] C2 coeff. absorption ash weight & detritus                            
       can use default value                                                                        
       [UitZHELHM           ] Hel_h constant                                                        
       can use default value                                                                        
       [UitZTAU             ] Tau constant calculation transparency                                 
       can use default value                                                                        
       [UitZangle           ] Angle of incidence solar radiation                                    
       can use default value                                                                        
       [DMCFDetC            ] DM:C ratio DetC                                                       
       can use default value                                                                        
       [ExtUVSal0           ] extra UV extinction at Salinity = 0                                   
       can use default value                                                                        
       [Salinity            ] Salinity                                                              
       Using segment function nr  4                                                                 
       [SalExt0             ] salinity value for extra extinction = 0                               
       can use default value                                                                        
       [ExtUVPOC2           ] UV specific extinction coefficient POC2                               
       can use default value                                                                        
       [ExtUVPOC3           ] UV specific extinction coefficient POC3                               
       can use default value                                                                        
       [ExtUVPOC4           ] UV specific extinction coefficient POC4                               
       can use default value                                                                        
       [POC3                ] POC3 (slow decomposing fraction)                                      
       can use default value                                                                        
       [POC4                ] POC4 (particulate refractory fraction)                                
       can use default value                                                                        
   Process is activated                                                                             
                                                                                                    
 Input for [CalcRad             ] Radiation at segment upper and lower boundaries                   
       [ExtVl               ] total extinction coefficient visible light                            
       Using output from proces [Extinc_VLG          ]                                              
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [RadSurf             ] irradiation at the water surface                                      
       Using constant nr 53 with value: -999.000                                                    
       [a_enh               ] enhancement factor in radiation calculation                           
       can use default value                                                                        
       [Surf                ] horizontal surface area of a DELWAQ segment                           
       Using segment function nr  1                                                                 
       [SwEmersion          ] switch indicating submersion(0) or emersion(1)                        
       can use default value                                                                        
       [RadBot              ] irradiation at the segment lower-boundary                             
       Using output from proces [CalcRad             ]                                              
       [fRefl               ] fraction of radiation reflected at water surface                      
       can use default value                                                                        
   Process is activated                                                                             
                                                                                                    
 Input for [CalcRadUV           ] UV-Radiation at segment upper and lower boundaries                
       [ExtUv               ] total extinction coefficient UV light                                 
       Using output from proces [Extinc_UVG          ]                                              
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [RadSurf             ] irradiation at the water surface                                      
       Using constant nr 53 with value: -999.000                                                    
       [a_enh               ] enhancement factor in radiation calculation                           
       can use default value                                                                        
       [Surf                ] horizontal surface area of a DELWAQ segment                           
       Using segment function nr  1                                                                 
       [SwEmersion          ] switch indicating submersion(0) or emersion(1)                        
       can use default value                                                                        
       [RadBot_uv           ] UV-irradiation at the segment lower-boundary                          
       Using output from proces [CalcRadUV           ]                                              
       [fRefl               ] fraction of radiation reflected at water surface                      
       can use default value                                                                        
   Process is activated                                                                             
                                                                                                    
 Input for [Daylength           ] Daylength calculation                                             
       [ITIME               ] DELWAQ time                                                           
       Using DELWAQ time                                                                            
       [Latitude            ] latitude of study area                                                
       can use default value                                                                        
       [RefDay              ] daynumber of reference day simulation                                 
       can use default value                                                                        
       [AuxSys              ] ratio between days and system clock                                   
       can use default value                                                                        
   Process is activated                                                                             
                                                                                                    
 Input for [Phy_dyn             ] Computation of phytoplankton - Dynamo                             
       [NAlgDynamo          ] number of algae types in DYNAMO                                       
       can use default value                                                                        
       [Diat                ] Diatoms                                                               
       Using substance nr  15                                                                       
       [Green               ] Algae (non-Diatoms)                                                   
       Using substance nr  16                                                                       
       [NCRatDiat           ] N:C ratio Diatoms                                                     
       can use default value                                                                        
       [NCRatGreen          ] N:C ratio Greens                                                      
       can use default value                                                                        
       [PCRatDiat           ] P:C ratio Diatoms                                                     
       can use default value                                                                        
       [PCRatGreen          ] P:C ratio Greens                                                      
       can use default value                                                                        
       [SCRatDiat           ] Si:C ratio Diatoms                                                    
       can use default value                                                                        
       [SCRatGreen          ] Si:C ratio Greens                                                     
       can use default value                                                                        
       [DMCFDiat            ] DM:C ratio Diatoms                                                    
       can use default value                                                                        
       [DMCFGreen           ] DM:C ratio GreenS                                                     
       can use default value                                                                        
       [Ditochl             ] Chlorophyll-a:C ratio in Diatoms                                      
       can use default value                                                                        
       [Grtochl             ] Chlorophyll-a:C ratio in Greens                                       
       can use default value                                                                        
   Process is activated                                                                             
                                                                                                    
 Input for [S1_Comp             ] Composition sediment layer S1                                     
       [IM1S1               ] IM1 in layer S1                                                       
       Using substance nr  23                                                                       
       [IM2S1               ] IM2 in layer S1                                                       
       can use default value                                                                        
       [IM3S1               ] IM3 in layer S1                                                       
       can use default value                                                                        
       [DetCS1              ] DetC in layer S1                                                      
       Using substance nr  24                                                                       
       [OOCS1               ] OOC in layer S1                                                       
       can use default value                                                                        
       [DiatS1              ] Diatoms in layer S1                                                   
       can use default value                                                                        
       [GreenS1             ] Algae in layer S1                                                     
       can use default value                                                                        
       [AAPS1               ] adsorbed O-PO4 in layer S1                                            
       can use default value                                                                        
       [DMCFIM1             ] DM:C ratio IM1                                                        
       can use default value                                                                        
       [DMCFIM2             ] DM:C ratio IM2                                                        
       can use default value                                                                        
       [DMCFIM3             ] DM:C ratio IM3                                                        
       can use default value                                                                        
       [DMCFDetCS           ] DM:C ratio DetCS1 and DetCS2                                          
       can use default value                                                                        
       [DMCFOOCS            ] DM:C ratio POCS1 and POCS2                                            
       can use default value                                                                        
       [DMCFDiatS           ] DM:C ratio DiatS1 and DiatS2                                          
       can use default value                                                                        
       [DMCFGreenS          ] DM:C ratio GreenS1 and GreenS2                                        
       can use default value                                                                        
       [RHOIM1              ] bulk density IM1                                                      
       can use default value                                                                        
       [RHOIM2              ] bulk density IM2                                                      
       can use default value                                                                        
       [RHOIM3              ] bulk density IM3                                                      
       can use default value                                                                        
       [RHODetC             ] bulk density DetC                                                     
       can use default value                                                                        
       [RHOOOC              ] bulk density OOC                                                      
       can use default value                                                                        
       [RHODiat             ] bulk density Diatoms                                                  
       can use default value                                                                        
       [RHOGreen            ] bulk density Greens                                                   
       can use default value                                                                        
       [PORS1               ] porosity of sediment layer S1                                         
       can use default value                                                                        
       [Surf                ] horizontal surface area of a DELWAQ segment                           
       Using segment function nr  1                                                                 
       [DetNS1              ] DetN in layer S1                                                      
       Using substance nr  25                                                                       
       [DetPS1              ] DetP in layer S1                                                      
       Using substance nr  26                                                                       
       [DetSiS1             ] DetSi in layer S1                                                     
       can use default value                                                                        
       [OONS1               ] OON in layer S1                                                       
       can use default value                                                                        
       [OOPS1               ] OOP in layer S1                                                       
       can use default value                                                                        
       [OOSiS1              ] OOSi in layer S1                                                      
       can use default value                                                                        
       [MPB1peliS1          ] MPB epipelic biomass in layer S1                                      
       can use default value                                                                        
       [MPB2psamS1          ] MPB n-diat biomass in layer S1                                        
       can use default value                                                                        
       [DmCfMPB1            ] DM:C ratio MPB1 algae                                                 
       can use default value                                                                        
       [DmCfMPB2            ] DM:C ratio MPB2 algae                                                 
       can use default value                                                                        
       [RhoOM               ] dry bulk density organic matter                                       
       can use default value                                                                        
       [RhoOM               ] dry bulk density organic matter                                       
       can use default value                                                                        
   Process is activated                                                                             
                                                                                                    
 Input for [Compos              ] Composition                                                       
       [NO3                 ] Nitrate (NO3)                                                         
       Using substance nr   7                                                                       
       [NH4                 ] Ammonium (NH4)                                                        
       Using substance nr   6                                                                       
       [PO4                 ] Ortho-Phosphate (PO4)                                                 
       Using substance nr   8                                                                       
       [Si                  ] dissolved Silica (Si)                                                 
       Using constant nr 27 with value:  0.00000                                                    
       [IM1                 ] inorganic matter (IM1)                                                
       Using substance nr   5                                                                       
       [IM2                 ] inorganic matter (IM2)                                                
       can use default value                                                                        
       [IM3                 ] inorganic matter (IM3)                                                
       can use default value                                                                        
       [Phyt                ] total carbon in phytoplankton                                         
       Using output from proces [Phy_dyn             ]                                              
       [AlgN                ] total nitrogen in algae                                               
       Using output from proces [Phy_dyn             ]                                              
       [AlgP                ] total phosphorus in algae                                             
       Using output from proces [Phy_dyn             ]                                              
       [AlgSi               ] total silica in algae                                                 
       Using output from proces [Phy_dyn             ]                                              
       [AlgDM               ] total DM in algae                                                     
       Using output from proces [Phy_dyn             ]                                              
       [POC1                ] POC1 (fast decomposing fraction)                                      
       Using substance nr  12                                                                       
       [POC2                ] POC2 (medium decomposing fraction)                                    
       can use default value                                                                        
       [POC3                ] POC3 (slow decomposing fraction)                                      
       can use default value                                                                        
       [POC4                ] POC4 (particulate refractory fraction)                                
       can use default value                                                                        
       [PON1                ] PON1 (fast decomposing fraction)                                      
       Using substance nr  13                                                                       
       [DOC                 ] Dissolved Organic Carbon (DOC)                                        
       can use default value                                                                        
       [DON                 ] Dissolved Organic Nitrogen (DON)                                      
       can use default value                                                                        
       [DOP                 ] Dissolved Organic Phosphorus (DOP)                                    
       can use default value                                                                        
       [DOS                 ] Dissolved Organic Sulphur (DOS)                                       
       can use default value                                                                        
       [AAP                 ] adsorbed ortho phosphate                                              
       Using substance nr   9                                                                       
       [VIVP                ] Vivianite-P                                                           
       can use default value                                                                        
       [APATP               ] Apatite-P                                                             
       can use default value                                                                        
       [DMCFIM1             ] DM:C ratio IM1                                                        
       can use default value                                                                        
       [DMCFIM2             ] DM:C ratio IM2                                                        
       can use default value                                                                        
       [DMCFIM3             ] DM:C ratio IM3                                                        
       can use default value                                                                        
       [PON2                ] PON2 (medium decomposing fraction)                                    
       can use default value                                                                        
       [PON3                ] PON3 (slow decomposing fraction)                                      
       can use default value                                                                        
       [PON4                ] PON4 (particulate refractory fraction)                                
       can use default value                                                                        
       [POP1                ] POP1 (fast decomposing fraction)                                      
       Using substance nr  14                                                                       
       [POP2                ] POP2 (medium decomposing fraction)                                    
       can use default value                                                                        
       [POP3                ] POP3 (slow decomposing fraction)                                      
       can use default value                                                                        
       [POP4                ] POP4 (particulate refractory fraction)                                
       can use default value                                                                        
       [POS1                ] POS1 (fast decomposing fraction)                                      
       can use default value                                                                        
       [POS2                ] POS2 (medium decomposing fraction)                                    
       can use default value                                                                        
       [POS3                ] POS3 (slow decomposing  fraction)                                     
       can use default value                                                                        
       [POS4                ] POS4 (particulate refractory fraction)                                
       can use default value                                                                        
       [Opal                ] Opal-Si                                                               
       can use default value                                                                        
       [DmCfPOC1            ] DM:C ratio POC1                                                       
       can use default value                                                                        
       [DmCfPOC2            ] DM:C ratio POC2                                                       
       can use default value                                                                        
       [DmCfPOC3            ] DM:C ratio POC3                                                       
       can use default value                                                                        
       [DmCfPOC4            ] DM:C ratio POC4                                                       
       can use default value                                                                        
   Process is activated                                                                             
                                                                                                    
 Input for [FColiMrt            ] Mortality FColi bacteria                                          
       [FColi               ] Faecal coli bacteria                                                  
       Using substance nr  17                                                                       
       [RcMrtFColi          ] first-order mortality rate FColi                                      
       Using constant nr 45 with value: 0.800000                                                    
       [TcMrtFColi          ] temperature coefficient for mortality FColi                           
       Using constant nr 46 with value:  1.07000                                                    
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  15.0000                                                    
       [CTMrtFColi          ] critical temperature for mortality FColi                              
       can use default value                                                                        
       [Cl                  ] Chloride                                                              
       Using output from proces [Salinchlor          ]                                              
       [Rad_uv              ] UV-irradiation at the segment upper-boundary                          
       Using output from proces [CalcRadUV           ]                                              
       [CFRAD               ] conversion factor RAD to mortality rate                               
       Using constant nr 47 with value: 0.860000E-01                                                
       [DayL                ] daylength <0-1>                                                       
       Using output from proces [Daylength           ]                                              
       [FrUvVL              ] fraction UV light in visible light                                    
       Using constant nr 48 with value: 0.120000                                                    
       [ExtUv               ] total extinction coefficient UV light                                 
       Using output from proces [Extinc_UVG          ]                                              
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [SpMrtFColi          ] chloride enhanced mortality rate FColi                                
       can use default value                                                                        
   Process is activated                                                                             
                                                                                                    
 Input for [AdsPO4AAP           ] Ad(De)Sorption ortho phosphorus to inorg. matter                  
       [SWAdsP              ] switch PO4 adsorption <0=Kd|1=Langmuir|2=pHdep>                       
       Using constant nr 33 with value:  1.00000                                                    
       [PO4                 ] Ortho-Phosphate (PO4)                                                 
       Using substance nr   8                                                                       
       [AAP                 ] adsorbed ortho phosphate                                              
       Using substance nr   9                                                                       
       [IM1                 ] inorganic matter (IM1)                                                
       Using substance nr   5                                                                       
       [IM2                 ] inorganic matter (IM2)                                                
       can use default value                                                                        
       [IM3                 ] inorganic matter (IM3)                                                
       can use default value                                                                        
       [KdPO4AAP            ] distrib. coeff. (-) or ads. eq. const.                                
       Using constant nr 34 with value: 0.100000                                                    
       [MaxPO4AAP           ] adsorption capacity TIM for PO4                                       
       Using constant nr 35 with value: 0.150000                                                    
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [KadsP_20            ] Adsorption equilibrium constant at 20 oC                              
       Using constant nr 36 with value:  3.80000                                                    
       [TCKadsP             ] temperature dependency constant Kads                                  
       can use default value                                                                        
       [RcAdPO4AAP          ] adsorption rate PO4 --> AAP                                           
       Using constant nr 37 with value:  1.00000                                                    
       [a_OH-PO4            ] OH-:PO4 ratio in sorption reaction                                    
       can use default value                                                                        
       [fr_FeIM1            ] fraction Fe in inorg. matter IM1                                      
       can use default value                                                                        
       [fr_FeIM2            ] fraction Fe in inorg. matter IM2                                      
       can use default value                                                                        
       [fr_FeIM3            ] fraction Fe in inorg. matter IM3                                      
       can use default value                                                                        
       [fr_Feox             ] fraction reactive Fe of total Fe                                      
       can use default value                                                                        
       [OXY                 ] Dissolved Oxygen                                                      
       Using substance nr   1                                                                       
       [Cc_oxPsor           ] critical oxygen conc for P sorption                                   
       can use default value                                                                        
       [pH                  ] pH                                                                    
       can use default value                                                                        
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  15.0000                                                    
       [Poros               ] volumetric porosity                                                   
       can use default value                                                                        
       [SWVnAdsP            ] switch to select old(0) or new(1) version                             
       can use default value                                                                        
       [fr_Fe               ] fraction Fe in solid matter                                           
       can use default value                                                                        
       [RCadsPgem           ] pseudo first-order rate PO4 sorption                                  
       can use default value                                                                        
   Process is activated                                                                             
                                                                                                    
 Input for [DenSed_NO3          ] Denitrification in sediment                                       
       [ZDenSed             ] zeroth-order denitrification flux in the sediment                     
       can use default value                                                                        
       [NO3                 ] Nitrate (NO3)                                                         
       Using substance nr   7                                                                       
       [RcDenSed            ] first-order denitrification rate in the sediment                      
       can use default value                                                                        
       [TcDen               ] temperature coefficient for denitrification                           
       can use default value                                                                        
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  15.0000                                                    
       [CTDEN               ] critical temperature for denitrification                              
       can use default value                                                                        
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
   Process is activated                                                                             
                                                                                                    
 Input for [DenWat_NO3          ] Denitrification in water column                                   
       [ZDenWat             ] zero-order denitrification rate in water column                       
       can use default value                                                                        
       [NO3                 ] Nitrate (NO3)                                                         
       Using substance nr   7                                                                       
       [RcDen20             ] MM-denitrification reaction rate at 20 oC                             
       can use default value                                                                        
       [TcDenWat            ] temperature coefficient for denitrification                           
       can use default value                                                                        
       [OXY                 ] Dissolved Oxygen                                                      
       Using substance nr   1                                                                       
       [KsNiDen             ] half saturation constant for nitrate cons.                            
       can use default value                                                                        
       [KsOxDen             ] half saturation constant for oxygen inhib.                            
       can use default value                                                                        
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  15.0000                                                    
       [CTDEN               ] critical temperature for denitrification                              
       can use default value                                                                        
       [Rc0DenOx            ] zero-order denit. rate at low temperature                             
       can use default value                                                                        
       [COXDEN              ] critical oxygen concentration for denitrification                     
       can use default value                                                                        
       [Poros               ] volumetric porosity                                                   
       can use default value                                                                        
       [SWVnDen             ] switch to select old (0) or new (1) version                           
       can use default value                                                                        
       [RcDenWat            ] first-order denitrification rate in water column                      
       can use default value                                                                        
       [OOXDEN              ] optimum oxygen concentration for denitrification                      
       can use default value                                                                        
       [Curvat              ] curvature of DO function for denitrification                          
       can use default value                                                                        
   Process is activated                                                                             
                                                                                                    
 Input for [Nitrif_NH4          ] Nitrification of ammonium                                         
       [ZNit                ] zeroth-order nitrification flux                                       
       can use default value                                                                        
       [NH4                 ] Ammonium (NH4)                                                        
       Using substance nr   6                                                                       
       [RcNit20             ] MM- nitrification rate at 20 oC                                       
       can use default value                                                                        
       [TcNit               ] temperature coefficient for nitrification                             
       can use default value                                                                        
       [OXY                 ] Dissolved Oxygen                                                      
       Using substance nr   1                                                                       
       [KsAmNit             ] half saturation constant for ammonium cons.                           
       can use default value                                                                        
       [KsOxNit             ] half saturation constant for DO cons.                                 
       can use default value                                                                        
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  15.0000                                                    
       [CTNit               ] critical temperature for nitrification                                
       can use default value                                                                        
       [Rc0NitOx            ] zero-order nitrification rate at neg. DO                              
       can use default value                                                                        
       [COXNIT              ] critical oxygen concentration for nitrification                       
       can use default value                                                                        
       [Poros               ] volumetric porosity                                                   
       can use default value                                                                        
       [SWVnNit             ] switch for old (0), new (1), TEWOR (2) version                        
       can use default value                                                                        
       [RcNit               ] first-order nitrification rate                                        
       can use default value                                                                        
       [OOXNIT              ] optimum oxygen concentration for nitrification                        
       can use default value                                                                        
       [CFLNIT              ] oxygen function level for oxygen below COXNIT                         
       can use default value                                                                        
       [CurvNit             ] curvature of DO function for nitrification                            
       can use default value                                                                        
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
   Process is activated                                                                             
                                                                                                    
 Input for [SaturOXY            ] Saturation concentration oxygen                                   
       [Cl                  ] Chloride                                                              
       Using output from proces [Salinchlor          ]                                              
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  15.0000                                                    
       [SWSatOXY            ] switch for oxygen saturation formulation (1, 2)                       
       can use default value                                                                        
       [Salinity            ] Salinity                                                              
       Using segment function nr  4                                                                 
   Process is activated                                                                             
                                                                                                    
 Input for [RearOXY             ] Reaeration of oxygen                                              
       [OXY                 ] Dissolved Oxygen                                                      
       Using substance nr   1                                                                       
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  15.0000                                                    
       [Velocity            ] horizontal flow velocity                                              
       Using segment function nr  3                                                                 
       [VWind               ] wind speed                                                            
       Using constant nr  3 with value:  3.00000                                                    
       [SWRear              ] switch for oxygen reaeration formulation (1-13)                       
       Using constant nr  4 with value:  1.00000                                                    
       [KLRear              ] reaeration transfer coefficient                                       
       can use default value                                                                        
       [TCRear              ] temperature coefficient for rearation                                 
       can use default value                                                                        
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [SaturOXY            ] saturation concentration                                              
       Using output from proces [SaturOXY            ]                                              
       [Salinity            ] Salinity                                                              
       Using segment function nr  4                                                                 
       [TotalDepth          ] total depth water column                                              
       Using output from proces [TotDepth            ]                                              
       [fcover              ] fraction of water surface covered <0-1>                               
       can use default value                                                                        
       [KLRearMax           ] maximum KLREAR oxygen for temp. correction                            
       can use default value                                                                        
       [KLRearMin           ] minimum rearation transfer coefficient oxygen                         
       can use default value                                                                        
       [Rain                ] rainfall rate                                                         
       can use default value                                                                        
       [coefAOxy            ] gas transfer Oxy coefficient transmission                             
       can use default value                                                                        
       [coefB1Oxy           ] gas transfer O2 coefficient wind scale 1                              
       can use default value                                                                        
       [coefB2Oxy           ] gas transfer O2 coefficient wind scale 2                              
       can use default value                                                                        
       [coefC1Oxy           ] gas transfer O2 coefficient rain scale 1                              
       can use default value                                                                        
       [coefC2Oxy           ] gas transfer O2 coefficient rain scale 2                              
       can use default value                                                                        
       [coefD1Oxy           ] fresh water coefficient1 for Schmidt nr Oxy                           
       can use default value                                                                        
       [coefD2Oxy           ] fresh water coefficient2 for Schmidt nr Oxy                           
       can use default value                                                                        
       [coefD3Oxy           ] fresh water coefficient3 for Schmidt nr Oxy                           
       can use default value                                                                        
       [coefD4Oxy           ] fresh water coefficient4 for Schmidt nr Oxy                           
       can use default value                                                                        
   Process is activated                                                                             
                                                                                                    
 Input for [BMS1_DetC           ] Mineralisation detritus carbon in sediment S1                     
       [ZMinDetCS1          ] zeroth-order mineralisation flux DetC in layer S1                     
       can use default value                                                                        
       [DetCS1              ] DetC in layer S1                                                      
       Using substance nr  24                                                                       
       [RcDetCS1            ] first-order mineralisation rate DetC in layer S1                      
       can use default value                                                                        
       [TcBMDetC            ] temperature coeff. mineralisation DetC in sediment                    
       can use default value                                                                        
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  15.0000                                                    
       [CTMin               ] critical temperature for mineralisation                               
       can use default value                                                                        
       [Volume              ] volume of computational cell                                          
       Using DELWAQ volume                                                                          
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [SedZoneSW           ] SWITCH 0=no SWITCH, <0 per segment, >0 per zone                       
       can use default value                                                                        
   Process is activated                                                                             
                                                                                                    
 Input for [BMS1_DetN           ] Mineralisation detritus nitrogen in sediment S1                   
       [ZMinDetNS1          ] zeroth-order mineralisation flux DetN in layer S1                     
       can use default value                                                                        
       [DetNS1              ] DetN in layer S1                                                      
       Using substance nr  25                                                                       
       [RcDetNS1            ] first-order mineralisation rate DetN in layer S1                      
       can use default value                                                                        
       [TcBMDetN            ] temperature coeff. mineralisation DetN in sediment                    
       can use default value                                                                        
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  15.0000                                                    
       [CTMin               ] critical temperature for mineralisation                               
       can use default value                                                                        
       [Volume              ] volume of computational cell                                          
       Using DELWAQ volume                                                                          
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [SedZoneSW           ] SWITCH 0=no SWITCH, <0 per segment, >0 per zone                       
       can use default value                                                                        
   Process is activated                                                                             
                                                                                                    
 Input for [BMS1_DetP           ] Mineralisation detritus phosphorus in sediment S1                 
       [ZMinDetPS1          ] zeroth-order mineralisation flux DetP in layer S1                     
       can use default value                                                                        
       [DetPS1              ] DetP in layer S1                                                      
       Using substance nr  26                                                                       
       [RcDetPS1            ] first-order mineralisation rate DetP in layer S1                      
       can use default value                                                                        
       [TcBMDetP            ] temperature coeff. mineralisation DetP in sediment                    
       can use default value                                                                        
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  15.0000                                                    
       [CTMin               ] critical temperature for mineralisation                               
       can use default value                                                                        
       [Volume              ] volume of computational cell                                          
       Using DELWAQ volume                                                                          
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [SedZoneSW           ] SWITCH 0=no SWITCH, <0 per segment, >0 per zone                       
       can use default value                                                                        
   Process is activated                                                                             
                                                                                                    
 Input for [BODCOD              ] Mineralisation BOD and COD                                        
       [SwOXYDem            ] switch oxygen consumption(0=BOD, 1=COD, 2=both)                       
       Using constant nr  5 with value:  0.00000                                                    
       [CBOD5               ] carbonaceous BOD (first pool) at 5 days                               
       Using substance nr   2                                                                       
       [CBOD5_2             ] carbonaceous BOD (second pool) at 5 days                              
       can use default value                                                                        
       [CBODu               ] carbonaceous BOD (first pool) ultimate                                
       can use default value                                                                        
       [CBODu_2             ] carbonaceous BOD (second pool) ultimate                               
       can use default value                                                                        
       [COD_Cr              ] COD concentration by the Cr-method                                    
       Using substance nr   3                                                                       
       [COD_Mn              ] COD concentration by the Mn-method                                    
       can use default value                                                                        
       [NBOD5               ] nitrogenous BOD at 5 days                                             
       Using substance nr   4                                                                       
       [NBODu               ] nitrogenous BOD ultimate                                              
       can use default value                                                                        
       [RcBOD               ] decay rate BOD (first pool) at 20 oC                                  
       Using constant nr  6 with value: 0.300000                                                    
       [RcBOD_2             ] decay rate BOD (second pool) at 20 oC                                 
       can use default value                                                                        
       [RcCOD               ] decay rate COD at 20 oC                                               
       Using constant nr  7 with value: 0.500000E-01                                                
       [RcBODN              ] first-order mineralisation rate BODN                                  
       Using constant nr  8 with value: 0.300000                                                    
       [TcBOD               ] temperature coefficient decay BOD                                     
       Using constant nr  9 with value:  1.04000                                                    
       [TcCOD               ] temperature coefficient decay COD                                     
       can use default value                                                                        
       [TcBODN              ] temperature coefficient decay BODN                                    
       Using constant nr 10 with value:  1.08000                                                    
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  15.0000                                                    
       [OXY                 ] Dissolved Oxygen                                                      
       Using substance nr   1                                                                       
       [COXBOD              ] critical oxygen concentration for BOD decay                           
       can use default value                                                                        
       [OOXBOD              ] optimum oxygen concentration for BOD decay                            
       can use default value                                                                        
       [CFLBOD              ] oxygen function level for oxygen below COXBOD                         
       can use default value                                                                        
       [CurvBOD             ] curvature of DO function for mineralisation BOD                       
       can use default value                                                                        
       [LAgeFun             ] lower value of age function BOD decay                                 
       can use default value                                                                        
       [UAgeFun             ] upper value of age function BOD decay                                 
       can use default value                                                                        
       [LAgeIndx            ] lower value of age index BOD decay                                    
       can use default value                                                                        
       [UAgeIndx            ] upper value of age index BOD decay                                    
       can use default value                                                                        
       [Phyt                ] total carbon in phytoplankton                                         
       Using output from proces [Phy_dyn             ]                                              
       [BOD5/uPHYT          ] BOD5:BODu ratio in phytoplankton                                      
       can use default value                                                                        
       [AlgFrBOD            ] fraction algae contributing to BOD-inf                                
       can use default value                                                                        
       [OXCCF               ] O2:C ratio in mineralisation                                          
       can use default value                                                                        
       [POCnoa              ] total POC (no algae)                                                  
       Using output from proces [Compos              ]                                              
       [BOD5/infPO          ] BOD5:BODu ratio in POC                                                
       can use default value                                                                        
       [POCFrBOD            ] fraction of POC contributing to BOD-inf                               
       can use default value                                                                        
       [EffCOD_Cr           ] efficiency of Cr method for COD                                       
       can use default value                                                                        
       [EffCOD_Mn           ] efficiency of Mn method for COD                                       
       can use default value                                                                        
       [AMCCF               ] amount oxygen used for nitrogen in miner.                             
       can use default value                                                                        
   Process is activated                                                                             
                                                                                                    
 Input for [DecFast             ] Mineralization fast decomp. detritus POC1                         
       [POC1                ] POC1 (fast decomposing fraction)                                      
       Using substance nr  12                                                                       
       [PON1                ] PON1 (fast decomposing fraction)                                      
       Using substance nr  13                                                                       
       [POP1                ] POP1 (fast decomposing fraction)                                      
       Using substance nr  14                                                                       
       [POS1                ] POS1 (fast decomposing fraction)                                      
       can use default value                                                                        
       [IdDet1              ] identifier for detritus group POC1, POC2, POC3                        
       can use default value                                                                        
       [ku_dFdcC20          ] upper limit mineralization rate fast detr-C                           
       can use default value                                                                        
       [kl_dFdcC20          ] lower limit mineralization rate fast detr-C                           
       can use default value                                                                        
       [ku_dFdcN20          ] upper limit mineralization rate fast detr-N                           
       can use default value                                                                        
       [kl_dFdcN20          ] lower limit mineralization rate fast detr-N                           
       can use default value                                                                        
       [ku_dFdcP20          ] upper limit mineralization rate fast detr-P                           
       can use default value                                                                        
       [kl_dFdcP20          ] lower limit mineralization rate fast detr-P                           
       can use default value                                                                        
       [kT_dec              ] temperature coefficient for decomposition                             
       can use default value                                                                        
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  15.0000                                                    
       [a_dNpr              ] target N:C ratio in refractory detritus                               
       can use default value                                                                        
       [a_dPpr              ] target P:C ratio in refractory detritus                               
       can use default value                                                                        
       [a_dSpr              ] target S:C ratio in refractory detritus                               
       can use default value                                                                        
       [al_dNf              ] lower limit N:C ratio in fast decomp.  detr                           
       can use default value                                                                        
       [al_dPf              ] lower limit P:C ratio in fast decomp.  detr                           
       can use default value                                                                        
       [au_dNf              ] upper limit N:C ratio in fast decomp.  detr                           
       can use default value                                                                        
       [au_dPf              ] upper limit P:C ratio in fast decomp.  detr                           
       can use default value                                                                        
       [OXY                 ] Dissolved Oxygen                                                      
       Using substance nr   1                                                                       
       [NO3                 ] Nitrate (NO3)                                                         
       Using substance nr   7                                                                       
       [b_ni                ] attenuation factor decomp. in denitrifying zone                       
       can use default value                                                                        
       [b_su                ] attenuation factor decomp. in sulphate red.zone                       
       can use default value                                                                        
       [b_poc1poc2          ] fraction POC1 converted to POC2                                       
       can use default value                                                                        
       [b_poc1doc           ] fraction POC1 converted to DOC                                        
       can use default value                                                                        
       [SWOMDec             ] option: 0.0 for stripping, 1.0 for different rates                    
       can use default value                                                                        
   Process is activated                                                                             
                                                                                                    
 Input for [SedOXYDem           ] Sediment oxygen demand                                            
       [fSODaut             ] autonomous SOD (no effect SOD stat.var)                               
       can use default value                                                                        
       [fSOD                ] zeroth-order sediment oxygen demand flux                              
       can use default value                                                                        
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [SOD                 ] Sediment oxygen demand (SOD)                                          
       Using substance nr  22                                                                       
       [RcSOD               ] decay rate SOD at 20 oC                                               
       Using constant nr 11 with value: 0.100000                                                    
       [TcSOD               ] temperature coefficient decay SOD                                     
       Using constant nr 12 with value:  1.04000                                                    
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  15.0000                                                    
       [Volume              ] volume of computational cell                                          
       Using DELWAQ volume                                                                          
       [SwCH4bub            ] switch (1=include CH4 bubbles, 0=not)                                 
       can use default value                                                                        
       [HSED                ] Total sediment thickness                                              
       can use default value                                                                        
       [KAPC                ] constant                                                              
       can use default value                                                                        
       [thetak              ] temperature constant                                                  
       can use default value                                                                        
       [edwcsd              ] diffusion coefficient                                                 
       can use default value                                                                        
       [diamb               ] Diameter of methane bubbles                                           
       can use default value                                                                        
       [OXY                 ] Dissolved Oxygen                                                      
       Using substance nr   1                                                                       
       [kappad              ] transfer coefficient                                                  
       can use default value                                                                        
       [dMinDetCS1          ] mineralisation flux DetCS1                                            
       Using flux from proces [BMS1_DetC           ]                                                
       [dMinDetCS2          ] mineralisation flux DetCS2                                            
       can use default value                                                                        
       [dMinOOCS1           ] mineralisation flux OOCS1                                             
       can use default value                                                                        
       [dMinOOCS2           ] mineralisation flux OOCS2                                             
       can use default value                                                                        
       [TotalDepth          ] total depth water column                                              
       Using output from proces [TotDepth            ]                                              
       [COXSOD              ] critical oxygen concentration for SOD decay                           
       can use default value                                                                        
       [OOXSOD              ] optimum oxygen concentration for SOD decay                            
       can use default value                                                                        
   Process is activated                                                                             
                                                                                                    
 Input for [TF_Green            ] Temperature functions for green algae                             
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  15.0000                                                    
       [TcGroGreen          ] temperature coeff. for growth processes Greens                        
       can use default value                                                                        
       [TcDecGreen          ] temp. coeff. for respiration and mortality Greens                     
       can use default value                                                                        
   Process is activated                                                                             
                                                                                                    
 Input for [TF_Diat             ] Temperature functions for diatoms                                 
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  15.0000                                                    
       [TcGroDiat           ] temperature coeff. for growth processes Diatoms                       
       can use default value                                                                        
       [TcDecDiat           ] temp. coeff. for respiration and mortality Diatoms                    
       can use default value                                                                        
   Process is activated                                                                             
                                                                                                    
 Input for [DL_Green            ] Daylength function for green algae                                
       [DayL                ] daylength <0-1>                                                       
       Using output from proces [Daylength           ]                                              
       [OptDLGreen          ] daylength for growth saturation Greens                                
       can use default value                                                                        
   Process is activated                                                                             
                                                                                                    
 Input for [DL_Diat             ] Daylength function for diatoms                                    
       [DayL                ] daylength <0-1>                                                       
       Using output from proces [Daylength           ]                                              
       [OptDLDiat           ] daylength for growth saturation Diatoms                               
       can use default value                                                                        
   Process is activated                                                                             
                                                                                                    
 Input for [NLGreen             ] Nutrient limiation function for green algae                       
       [PrfNH4gree          ] ammonium preferency over nitrate Greens                               
       can use default value                                                                        
       [KMDINgreen          ] half-saturation value N Greens                                        
       can use default value                                                                        
       [KMPgreen            ] half-saturation value P Greens                                        
       can use default value                                                                        
       [KMSigreen           ] half-saturation value Si Greens                                       
       can use default value                                                                        
       [NH4                 ] Ammonium (NH4)                                                        
       Using substance nr   6                                                                       
       [NO3                 ] Nitrate (NO3)                                                         
       Using substance nr   7                                                                       
       [PO4                 ] Ortho-Phosphate (PO4)                                                 
       Using substance nr   8                                                                       
       [Si                  ] dissolved Silica (Si)                                                 
       Using constant nr 27 with value:  0.00000                                                    
   Process is activated                                                                             
                                                                                                    
 Input for [NLDiat              ] Nutrient limiation function for diatoms                           
       [PrfNH4diat          ] ammonium preferency over nitrate Diatoms                              
       can use default value                                                                        
       [KMDINdiat           ] half-saturation value N Diatoms                                       
       can use default value                                                                        
       [KMPdiat             ] half-saturation value P Diatoms                                       
       can use default value                                                                        
       [KMSidiat            ] half-saturation value Si Diatoms                                      
       can use default value                                                                        
       [NH4                 ] Ammonium (NH4)                                                        
       Using substance nr   6                                                                       
       [NO3                 ] Nitrate (NO3)                                                         
       Using substance nr   7                                                                       
       [PO4                 ] Ortho-Phosphate (PO4)                                                 
       Using substance nr   8                                                                       
       [Si                  ] dissolved Silica (Si)                                                 
       Using constant nr 27 with value:  0.00000                                                    
   Process is activated                                                                             
                                                                                                    
 Input for [Rad_Green           ] Light efficiency function green algae                             
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [Rad                 ] irradiation at the segment upper-boundary                             
       Using output from proces [CalcRad             ]                                              
       [RadSatGree          ] total radiation growth saturation greens                              
       can use default value                                                                        
       [ExtVl               ] total extinction coefficient visible light                            
       Using output from proces [Extinc_VLG          ]                                              
       [TFGroGreen          ] temperature function growth Greens <0-1>                              
       Using output from proces [TF_Green            ]                                              
   Process is activated                                                                             
                                                                                                    
 Input for [Rad_Diat            ] Light efficiency function diatoms                                 
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [Rad                 ] irradiation at the segment upper-boundary                             
       Using output from proces [CalcRad             ]                                              
       [RadSatDiat          ] total radiation growth saturation Diatoms                             
       can use default value                                                                        
       [ExtVl               ] total extinction coefficient visible light                            
       Using output from proces [Extinc_VLG          ]                                              
       [TFGroDiat           ] temperature function growth Diatoms <0-1>                             
       Using output from proces [TF_Diat             ]                                              
   Process is activated                                                                             
                                                                                                    
 Input for [GroMrt_Gre          ] Nett primary production and mortality green algae                 
       [Green               ] Algae (non-Diatoms)                                                   
       Using substance nr  16                                                                       
       [LimDLGreen          ] daylength limitation function for Greens <0-1>                        
       Using output from proces [DL_Green            ]                                              
       [LimNutGree          ] nutrient limitation function Greens <0-1>                             
       Using output from proces [NLGreen             ]                                              
       [LimRadGree          ] radiation limitation function Greens <0-1>                            
       Using output from proces [Rad_Green           ]                                              
       [TFGroGreen          ] temperature function growth Greens <0-1>                              
       Using output from proces [TF_Green            ]                                              
       [TFMrtGreen          ] temperature function mortality Greens <0-1>                           
       Using output from proces [TF_Green            ]                                              
       [PPMaxGreen          ] maximum production rate Greens                                        
       Using constant nr 13 with value:  1.80000                                                    
       [MRespGreen          ] maintenance respiration Greens st.temp                                
       Using constant nr 14 with value: 0.450000E-01                                                
       [GRespGreen          ] growth respiration factor Greens                                      
       Using constant nr 15 with value: 0.150000                                                    
       [Mort0Green          ] mortality rate constant Greens                                        
       Using constant nr 16 with value: 0.350000                                                    
       [MortSGreen          ] mortality rate Greens at high salinity                                
       Using constant nr 17 with value: 0.350000                                                    
       [SalM1Green          ] lower salinity limit for mortality Greens                             
       Using constant nr 18 with value: -999.000                                                    
       [SalM2Green          ] upper salinity limit for mortality Greens                             
       Using constant nr 19 with value: -999.000                                                    
       [Salinity            ] Salinity                                                              
       Using segment function nr  4                                                                 
       [MinGreen            ] Minimum level Greens in mortality                                     
       can use default value                                                                        
   Process is activated                                                                             
                                                                                                    
 Input for [GroMrt_Dia          ] Nett primary production and mortality diatoms                     
       [Diat                ] Diatoms                                                               
       Using substance nr  15                                                                       
       [LimDLdiat           ] daylength limitation function for Diatoms <0-1>                       
       Using output from proces [DL_Diat             ]                                              
       [LimNutDiat          ] nutrient limitation function Diatoms <0-1>                            
       Using output from proces [NLDiat              ]                                              
       [LimRadDiat          ] radiation limitation function Diatoms <0-1>                           
       Using output from proces [Rad_Diat            ]                                              
       [TFGroDiat           ] temperature function growth Diatoms <0-1>                             
       Using output from proces [TF_Diat             ]                                              
       [TFMrtDiat           ] temperature function mortality Diatoms <0-1>                          
       Using output from proces [TF_Diat             ]                                              
       [PPMaxDiat           ] maximum production rate Diatoms                                       
       Using constant nr 20 with value:  2.30000                                                    
       [MRespDiat           ] maintenance respiration Diatoms st.temp                               
       Using constant nr 21 with value: 0.360000E-01                                                
       [GRespDiat           ] growth respiration factor Diatoms                                     
       Using constant nr 22 with value: 0.110000                                                    
       [Mort0Diat           ] mortality rate constant Diatoms                                       
       Using constant nr 23 with value: 0.250000                                                    
       [MortSDiat           ] mortality rate Diatoms at high salinity                               
       Using constant nr 24 with value: 0.250000                                                    
       [SalM1Diat           ] lower salinity limit for mortality Diatoms                            
       Using constant nr 25 with value: -999.000                                                    
       [SalM2Diat           ] upper salinity limit for mortality Diatoms                            
       Using constant nr 26 with value: -999.000                                                    
       [Salinity            ] Salinity                                                              
       Using segment function nr  4                                                                 
       [MinDiat             ] Minimum level Diatoms in mortality                                    
       can use default value                                                                        
   Process is activated                                                                             
                                                                                                    
 Input for [PPrLim              ] Limitation (numerical) on primary production                      
       [fPPGreen            ] net primary production of Greens                                      
       Using output from proces [GroMrt_Gre          ]                                              
       [NCRatGreen          ] N:C ratio Greens                                                      
       can use default value                                                                        
       [PCRatGreen          ] P:C ratio Greens                                                      
       can use default value                                                                        
       [fPPDiat             ] net primary production of Diatoms                                     
       Using output from proces [GroMrt_Dia          ]                                              
       [NCRatDiat           ] N:C ratio Diatoms                                                     
       can use default value                                                                        
       [PCRatDiat           ] P:C ratio Diatoms                                                     
       can use default value                                                                        
       [SCRatDiat           ] Si:C ratio Diatoms                                                    
       can use default value                                                                        
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [NH4                 ] Ammonium (NH4)                                                        
       Using substance nr   6                                                                       
       [NO3                 ] Nitrate (NO3)                                                         
       Using substance nr   7                                                                       
       [PO4                 ] Ortho-Phosphate (PO4)                                                 
       Using substance nr   8                                                                       
       [Si                  ] dissolved Silica (Si)                                                 
       Using constant nr 27 with value:  0.00000                                                    
   Process is activated                                                                             
                                                                                                    
 Input for [NutUpt_Alg          ] Uptake of nutrients by growth of algae                            
       [fcPPGreen           ] numerical maximum flux Greens                                         
       Using output from proces [PPrLim              ]                                              
       [NCRatGreen          ] N:C ratio Greens                                                      
       can use default value                                                                        
       [PCRatGreen          ] P:C ratio Greens                                                      
       can use default value                                                                        
       [fcPPDiat            ] numerical maximum flux Diatoms                                        
       Using output from proces [PPrLim              ]                                              
       [NCRatDiat           ] N:C ratio Diatoms                                                     
       can use default value                                                                        
       [PCRatDiat           ] P:C ratio Diatoms                                                     
       can use default value                                                                        
       [SCRatDiat           ] Si:C ratio Diatoms                                                    
       can use default value                                                                        
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [NH4                 ] Ammonium (NH4)                                                        
       Using substance nr   6                                                                       
       [NO3                 ] Nitrate (NO3)                                                         
       Using substance nr   7                                                                       
       [NH4KRIT             ] critical NH4 concentration                                            
       can use default value                                                                        
   Process is activated                                                                             
                                                                                                    
 Input for [NutRel_Alg          ] Release (nutrients/detritus) by of mortality algae                
       [fMrtGreen           ] mortality flux Greens                                                 
       Using output from proces [GroMrt_Gre          ]                                              
       [NCRatGreen          ] N:C ratio Greens                                                      
       can use default value                                                                        
       [PCRatGreen          ] P:C ratio Greens                                                      
       can use default value                                                                        
       [FrAutGreen          ] fraction autolysis Greens                                             
       can use default value                                                                        
       [FrDetGreen          ] fraction to detritus by mortality Greens                              
       can use default value                                                                        
       [fMrtDiat            ] mortality flux Diatoms                                                
       Using output from proces [GroMrt_Dia          ]                                              
       [NCRatDiat           ] N:C ratio Diatoms                                                     
       can use default value                                                                        
       [PCRatDiat           ] P:C ratio Diatoms                                                     
       can use default value                                                                        
       [SCRatDiat           ] Si:C ratio Diatoms                                                    
       can use default value                                                                        
       [FrAutDiat           ] fraction autolysis Diatoms                                            
       can use default value                                                                        
       [FrDetDiat           ] fraction detritus by mortality Diatoms                                
       can use default value                                                                        
   Process is activated                                                                             
                                                                                                    
 Input for [OXYMin              ] Potential mimimum dissolved oxygen concentration                  
       [OXY                 ] Dissolved Oxygen                                                      
       Using substance nr   1                                                                       
       [Green               ] Algae (non-Diatoms)                                                   
       Using substance nr  16                                                                       
       [RcGroGreen          ] primary production rate (minus respiration) Greens                    
       Using output from proces [GroMrt_Gre          ]                                              
       [RcRespGree          ] respiration rate Greens                                               
       Using output from proces [GroMrt_Gre          ]                                              
       [Diat                ] Diatoms                                                               
       Using substance nr  15                                                                       
       [RcGroDiat           ] primary production rate (minus respiration)Diatoms                    
       Using output from proces [GroMrt_Dia          ]                                              
       [RcRespDiat          ] respiration rate Diatoms                                              
       Using output from proces [GroMrt_Dia          ]                                              
       [DayL                ] daylength <0-1>                                                       
       Using output from proces [Daylength           ]                                              
   Process is activated                                                                             
                                                                                                    
 Input for [CONSELAC            ] Consumption oxygen/other electron acceptors                       
       [OXY                 ] Dissolved Oxygen                                                      
       Using substance nr   1                                                                       
       [NO3                 ] Nitrate (NO3)                                                         
       Using substance nr   7                                                                       
       [FeIIIpa             ] particulate amorphous oxidizing iron                                  
       can use default value                                                                        
       [SO4                 ] sulphate (SO4)                                                        
       Using substance nr  10                                                                       
       [f_minPOC1           ] mineralization flux POC1                                              
       Using output from proces [DecFast             ]                                              
       [f_minPOC2           ] mineralization flux POC2                                              
       can use default value                                                                        
       [f_minPOC3           ] mineralization flux POC3                                              
       can use default value                                                                        
       [f_minPOC4           ] mineralization flux POC4                                              
       can use default value                                                                        
       [f_minPOC5           ] mineralization flux POC5 submerged                                    
       can use default value                                                                        
       [f_minDOC            ] mineralization flux DOC                                               
       can use default value                                                                        
       [KsOxCon             ] half saturation constant for DO limitation                            
       can use default value                                                                        
       [KsNiDen             ] half saturation constant for nitrate cons.                            
       can use default value                                                                        
       [KsFeRed             ] half saturation constant for Fe limitation                            
       can use default value                                                                        
       [KsSuRed             ] half saturation constant for SO4 limitation                           
       can use default value                                                                        
       [KsOxDenInh          ] half saturation constant for oxygen inhib.                            
       can use default value                                                                        
       [KsNiIRdInh          ] half sat. const. NO3 inhib. iron reduction                            
       can use default value                                                                        
       [KsNiSRdInh          ] half sat. const. NO3 inhib. SO4 reduction                             
       can use default value                                                                        
       [KsSuMetInh          ] half saturation constant for SO4 inhibition                           
       can use default value                                                                        
       [TcOxCon             ] temperature coeff. for oxygen consumption                             
       can use default value                                                                        
       [TcDen               ] temperature coefficient for denitrification                           
       can use default value                                                                        
       [TcIRed              ] temperature coeff. for iron reduction                                 
       can use default value                                                                        
       [TcSRed              ] temperature coeff. for sulphate reduction                             
       can use default value                                                                        
       [TcMet               ] temperature coeff. for methanogenesis                                 
       can use default value                                                                        
       [RedFacDen           ] reduction factor for denitrif. at low temp.                           
       can use default value                                                                        
       [RedFacIRed          ] reduction factor for iron red. at low temp.                           
       can use default value                                                                        
       [RedFacSRed          ] reduction factor for sulph. red. at low temp.                         
       can use default value                                                                        
       [RedFacMet           ] reduction factor for methanog. at low temp.                           
       can use default value                                                                        
       [CoxDenInh           ] crit. diss. ox. conc. for inhib. denitrif.                            
       can use default value                                                                        
       [CoxIRedInh          ] crit. diss. ox. conc. for inhib. iron red.                            
       can use default value                                                                        
       [CoxSRedInh          ] crit. diss. ox. conc. for inhib. sulph. red.                          
       can use default value                                                                        
       [CoxMetInh           ] crit. diss. ox. conc. for inhib. methanog.                            
       can use default value                                                                        
       [CniMetInh           ] crit. nitrate conc. for inhib. methanog.                              
       can use default value                                                                        
       [CTBactAc            ] critical temp. for specific bacterial activity                        
       can use default value                                                                        
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  15.0000                                                    
       [Poros               ] volumetric porosity                                                   
       can use default value                                                                        
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [FrMetGeCH4          ] fraction of methanogenesis towards CH4                                
       can use default value                                                                        
       [SWOxCon             ] Switch: only OxCon (1) or not (0)                                     
       can use default value                                                                        
   Process is activated                                                                             
                                                                                                    
 Input for [OXIDSUD             ] Oxidation of dissolved sulphide                                   
       [SUD                 ] total dissolved sulphide (SUD)                                        
       Using substance nr  11                                                                       
       [OXY                 ] Dissolved Oxygen                                                      
       Using substance nr   1                                                                       
       [Rc0Sox              ] zero-order oxidation rate                                             
       can use default value                                                                        
       [RcSox20             ] second order oxidation rate at 20 oC                                  
       can use default value                                                                        
       [TcSox               ] temperature coefficient for oxidation                                 
       can use default value                                                                        
       [CoxSUD              ] critical DO concentration for oxidation                               
       can use default value                                                                        
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  15.0000                                                    
       [Poros               ] volumetric porosity                                                   
       can use default value                                                                        
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
   Process is activated                                                                             
                                                                                                    
 Input for [Sed_IM1             ] Sedimentation IM1                                                 
       [IM1                 ] inorganic matter (IM1)                                                
       Using substance nr   5                                                                       
       [ZSedIM1             ] zeroth-order sedimentation flux IM1                                   
       can use default value                                                                        
       [VSedIM1             ] sedimentation velocity IM1                                            
       Using constant nr 31 with value: 0.100000                                                    
       [Tau                 ] total bottom shear stress                                             
       Using segment function nr  2                                                                 
       [TaucSIM1            ] critical shear stress for sedimentation IM1                           
       Using constant nr 32 with value: 0.100000                                                    
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [MinDepth            ] minimum waterdepth for sedimentation/resuspension                     
       can use default value                                                                        
       [FrIM1SedS2          ] fraction sedimentation IM1 towards S2                                 
       can use default value                                                                        
       [FrTIMS2             ] fraction TIM in layer S2                                              
       can use default value                                                                        
       [FrTIMS2Max          ] maximum fraction TIM in layer S2 pick-up                              
       can use default value                                                                        
       [PsedminIM1          ] minimum sedimentation probability                                     
       can use default value                                                                        
       [VSedIM1             ] sedimentation velocity IM1                                            
       Using constant nr 31 with value: 0.100000                                                    
   Process is activated                                                                             
                                                                                                    
 Input for [SedDiat             ] Sedimentation diatoms                                             
       [Diat                ] Diatoms                                                               
       Using substance nr  15                                                                       
       [ZSedDiat            ] zeroth-order sedimentation flux Diatoms                               
       can use default value                                                                        
       [VSedDiat            ] sedimentation velocity Diatoms                                        
       Using constant nr 41 with value: 0.100000                                                    
       [Tau                 ] total bottom shear stress                                             
       Using segment function nr  2                                                                 
       [TaucSDiat           ] critical shear stress for sedimentation Diatoms                       
       Using constant nr 42 with value: 0.100000                                                    
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [MinDepth            ] minimum waterdepth for sedimentation/resuspension                     
       can use default value                                                                        
       [VSedDiat            ] sedimentation velocity Diatoms                                        
       Using constant nr 41 with value: 0.100000                                                    
   Process is activated                                                                             
                                                                                                    
 Input for [Sed_Gre             ] Sedimentation green algae                                         
       [Green               ] Algae (non-Diatoms)                                                   
       Using substance nr  16                                                                       
       [ZSedGreen           ] zeroth-order sedimentation flux Greens                                
       can use default value                                                                        
       [VSedGreen           ] sedimentation velocity Greens                                         
       Using constant nr 43 with value:  0.00000                                                    
       [Tau                 ] total bottom shear stress                                             
       Using segment function nr  2                                                                 
       [TaucSGreen          ] critical shear stress for sedimentation Greens                        
       Using constant nr 44 with value: 0.100000                                                    
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [MinDepth            ] minimum waterdepth for sedimentation/resuspension                     
       can use default value                                                                        
       [VSedGreen           ] sedimentation velocity Greens                                         
       Using constant nr 43 with value:  0.00000                                                    
   Process is activated                                                                             
                                                                                                    
 Input for [S_CBOD51            ] Sedimentation CBOD5 (first pool)                                  
       [CBOD5               ] carbonaceous BOD (first pool) at 5 days                               
       Using substance nr   2                                                                       
       [ZSedBOD5            ] zeroth-order sedimentation flux CBOD5                                 
       can use default value                                                                        
       [VSedBOD5            ] sedimentation velocity CBOD5                                          
       Using constant nr 28 with value: 0.100000                                                    
       [Tau                 ] total bottom shear stress                                             
       Using segment function nr  2                                                                 
       [TaucSBOD            ] critical shear stress for sedimentation BOD                           
       can use default value                                                                        
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [MinDepth            ] minimum waterdepth for sedimentation/resuspension                     
       can use default value                                                                        
       [VSedBOD5            ] sedimentation velocity CBOD5                                          
       Using constant nr 28 with value: 0.100000                                                    
   Process is activated                                                                             
                                                                                                    
 Input for [S_CODCr             ] Sedimentation COD Cr method                                       
       [COD_Cr              ] COD concentration by the Cr-method                                    
       Using substance nr   3                                                                       
       [ZSedCODCr           ] zeroth-order sedimentation flux COD_Cr                                
       can use default value                                                                        
       [VSedCODCr           ] sedimentation velocity COD_Cr                                         
       Using constant nr 29 with value:  0.00000                                                    
       [Tau                 ] total bottom shear stress                                             
       Using segment function nr  2                                                                 
       [TaucSBOD            ] critical shear stress for sedimentation BOD                           
       can use default value                                                                        
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [MinDepth            ] minimum waterdepth for sedimentation/resuspension                     
       can use default value                                                                        
       [VSedCODCr           ] sedimentation velocity COD_Cr                                         
       Using constant nr 29 with value:  0.00000                                                    
   Process is activated                                                                             
                                                                                                    
 Input for [S_NBOD5             ] Sedimentation of NBOD5                                            
       [NBOD5               ] nitrogenous BOD at 5 days                                             
       Using substance nr   4                                                                       
       [ZSedNBOD5           ] zeroth-order sedimentation flux NBOD5                                 
       can use default value                                                                        
       [VSedNBOD5           ] sedimentation velocity NBOD5                                          
       Using constant nr 30 with value: 0.100000                                                    
       [Tau                 ] total bottom shear stress                                             
       Using segment function nr  2                                                                 
       [TaucSBOD            ] critical shear stress for sedimentation BOD                           
       can use default value                                                                        
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [MinDepth            ] minimum waterdepth for sedimentation/resuspension                     
       can use default value                                                                        
       [VSedNBOD5           ] sedimentation velocity NBOD5                                          
       Using constant nr 30 with value: 0.100000                                                    
   Process is activated                                                                             
                                                                                                    
 Input for [SED_SOD             ] Sedimentation of oxygen demand                                    
       [SwOXYDem            ] switch oxygen consumption(0=BOD, 1=COD, 2=both)                       
       Using constant nr  5 with value:  0.00000                                                    
       [fSedBOD5            ] sedimentation flux CBOD5                                              
       Using output from proces [S_CBOD51            ]                                              
       [fSedBOD5_2          ] sedimentation flux CBOD5_2                                            
       can use default value                                                                        
       [fSedBOD5_3          ] sedimentation flux CBOD5_3                                            
       can use default value                                                                        
       [fSedBODu            ] sedimentation flux CBODu                                              
       can use default value                                                                        
       [fSedBODu_2          ] sedimentation flux CBODu_2                                            
       can use default value                                                                        
       [fSedNBOD5           ] sedimentation flux NBOD5                                              
       Using output from proces [S_NBOD5             ]                                              
       [fSedNBODu           ] sedimentation flux NBODu                                              
       can use default value                                                                        
       [fSedCODCr           ] sedimentation flux COD_Cr                                             
       Using output from proces [S_CODCr             ]                                              
       [fSedCODMn           ] sedimentation flux COD_Mn                                             
       can use default value                                                                        
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
   Process is activated                                                                             
                                                                                                    
 Input for [SedPhDyn            ] Sum sedimentation of algae - Dynamo                               
       [NAlgDynamo          ] number of algae types in DYNAMO                                       
       can use default value                                                                        
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [fSedGreen           ] sedimentation flux Greens                                             
       Using output from proces [Sed_Gre             ]                                              
       [fSedDiat            ] sedimentation flux Diatoms                                            
       Using output from proces [SedDiat             ]                                              
       [DMCFGreen           ] DM:C ratio GreenS                                                     
       can use default value                                                                        
       [DMCFDiat            ] DM:C ratio Diatoms                                                    
       can use default value                                                                        
       [NCRatGreen          ] N:C ratio Greens                                                      
       can use default value                                                                        
       [NCRatDiat           ] N:C ratio Diatoms                                                     
       can use default value                                                                        
       [PCRatGreen          ] P:C ratio Greens                                                      
       can use default value                                                                        
       [PCRatDiat           ] P:C ratio Diatoms                                                     
       can use default value                                                                        
       [SCRatGreen          ] Si:C ratio Greens                                                     
       can use default value                                                                        
       [SCRatDiat           ] Si:C ratio Diatoms                                                    
       can use default value                                                                        
       [Green               ] Algae (non-Diatoms)                                                   
       Using substance nr  16                                                                       
       [Diat                ] Diatoms                                                               
       Using substance nr  15                                                                       
       [VxSedGreen          ] sedimentation velocity Greens                                         
       Using constant nr 39 with value:  0.00000                                                    
       [VxSedDiat           ] sedimentation velocity Diatoms                                        
       Using constant nr 40 with value:  0.00000                                                    
   Process is activated                                                                             
                                                                                                    
 Input for [Sed_POC1            ] Sedimentation POC1 3d                                             
       [POC1                ] POC1 (fast decomposing fraction)                                      
       Using substance nr  12                                                                       
       [ZSedPOC1            ] zeroth-order sedimentation flux POC1                                  
       can use default value                                                                        
       [VSedPOC1            ] sedimentation velocity POC1                                           
       Using constant nr 38 with value: 0.500000                                                    
       [Tau                 ] total bottom shear stress                                             
       Using segment function nr  2                                                                 
       [TaucSPOC1           ] critical shear stress for sedimentation POC1                          
       can use default value                                                                        
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [MinDepth            ] minimum waterdepth for sedimentation/resuspension                     
       can use default value                                                                        
       [VSedPOC1            ] sedimentation velocity POC1                                           
       Using constant nr 38 with value: 0.500000                                                    
   Process is activated                                                                             
                                                                                                    
 Input for [SedNPOC1            ] Sedim. nutrients in POC1                                          
       [fSedPOC1            ] sedimentation flux POC1                                               
       Using output from proces [Sed_POC1            ]                                              
       [C-NPOC1             ] C:N ratio fast decaying detritus                                      
       Using output from proces [Compos              ]                                              
       [C-PPOC1             ] C:P ratio fast decaying detritus                                      
       Using output from proces [Compos              ]                                              
       [C-SPOC1             ] C:S ratio fast decaying detritus                                      
       Using output from proces [Compos              ]                                              
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [VxSedPOC1           ] sedimentation velocity POC1                                           
       Using output from proces [Sed_POC1            ]                                              
   Process is activated                                                                             
                                                                                                    
 Input for [Sum_Sedim           ] Total of all sedimenting substances                               
       [fSedIM1             ] sedimentation flux IM1 towards S1                                     
       Using output from proces [Sed_IM1             ]                                              
       [fSedIM2             ] sedimentation flux IM2 towards S1                                     
       can use default value                                                                        
       [fSedIM3             ] sedimentation flux IM3 towards S1                                     
       can use default value                                                                        
       [fSedIM1S2           ] sedimentation flux IM1 towards S2                                     
       Using output from proces [Sed_IM1             ]                                              
       [fSedIM2S2           ] sedimentation flux IM2 towards S2                                     
       can use default value                                                                        
       [fSedIM3S2           ] sedimentation flux IM3 towards S2                                     
       can use default value                                                                        
       [fSedPOC1            ] sedimentation flux POC1                                               
       Using output from proces [Sed_POC1            ]                                              
       [fSedPOC2            ] sedimentation flux POC2                                               
       can use default value                                                                        
       [fSedPOC3            ] sedimentation flux POC3                                               
       can use default value                                                                        
       [fSedPOC4            ] sedimentation flux POC4                                               
       can use default value                                                                        
       [fSedPHYT            ] total sedimentation flux phytoplankton                                
       Using output from proces [SedPhDyn            ]                                              
       [fSedAlgDM           ] total sedimentation flux phytoplankton as DM                          
       Using output from proces [SedPhDyn            ]                                              
       [DMCFIM1             ] DM:C ratio IM1                                                        
       can use default value                                                                        
       [DMCFIM2             ] DM:C ratio IM2                                                        
       can use default value                                                                        
       [DMCFIM3             ] DM:C ratio IM3                                                        
       can use default value                                                                        
       [DmCfPOC1            ] DM:C ratio POC1                                                       
       can use default value                                                                        
       [DmCfPOC2            ] DM:C ratio POC2                                                       
       can use default value                                                                        
       [DmCfPOC3            ] DM:C ratio POC3                                                       
       can use default value                                                                        
       [DmCfPOC4            ] DM:C ratio POC4                                                       
       can use default value                                                                        
       [IM1                 ] inorganic matter (IM1)                                                
       Using substance nr   5                                                                       
       [IM2                 ] inorganic matter (IM2)                                                
       can use default value                                                                        
       [IM3                 ] inorganic matter (IM3)                                                
       can use default value                                                                        
       [POC1                ] POC1 (fast decomposing fraction)                                      
       Using substance nr  12                                                                       
       [POC2                ] POC2 (medium decomposing fraction)                                    
       can use default value                                                                        
       [POC3                ] POC3 (slow decomposing fraction)                                      
       can use default value                                                                        
       [POC4                ] POC4 (particulate refractory fraction)                                
       can use default value                                                                        
       [VxSedIM1            ] sedimentation velocity IM1                                            
       Using output from proces [Sed_IM1             ]                                              
       [VxSedIM2            ] sedimentation velocity IM2                                            
       can use default value                                                                        
       [VxSedIM3            ] sedimentation velocity IM3                                            
       can use default value                                                                        
       [VxSedPOC1           ] sedimentation velocity POC1                                           
       Using output from proces [Sed_POC1            ]                                              
       [VxSedPOC2           ] sedimentation velocity POC2                                           
       can use default value                                                                        
       [VxSedPOC3           ] sedimentation velocity POC3                                           
       can use default value                                                                        
       [VxSedPOC4           ] sedimentation velocity POC4                                           
       can use default value                                                                        
   Process is activated                                                                             
                                                                                                    
 Input for [Sed_AAP             ] Sedimentation AAP (adsorbed PO4)                                  
       [fSedIM1             ] sedimentation flux IM1 towards S1                                     
       Using output from proces [Sed_IM1             ]                                              
       [fSedIM2             ] sedimentation flux IM2 towards S1                                     
       can use default value                                                                        
       [fSedIM3             ] sedimentation flux IM3 towards S1                                     
       can use default value                                                                        
       [fSedIM1S2           ] sedimentation flux IM1 towards S2                                     
       Using output from proces [Sed_IM1             ]                                              
       [fSedIM2S2           ] sedimentation flux IM2 towards S2                                     
       can use default value                                                                        
       [fSedIM3S2           ] sedimentation flux IM3 towards S2                                     
       can use default value                                                                        
       [QPIM1               ] quality IM1 for P                                                     
       Using output from proces [AdsPO4AAP           ]                                              
       [QPIM2               ] quality IM2 for P                                                     
       Using output from proces [AdsPO4AAP           ]                                              
       [QPIM3               ] quality IM3 for P                                                     
       Using output from proces [AdsPO4AAP           ]                                              
       [FPIM1               ] fraction of P adsorbed on IM1                                         
       Using output from proces [AdsPO4AAP           ]                                              
       [FPIM2               ] fraction of P adsorbed on IM2                                         
       Using output from proces [AdsPO4AAP           ]                                              
       [FPIM3               ] fraction of P adsorbed on IM3                                         
       Using output from proces [AdsPO4AAP           ]                                              
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [SedZoneSW           ] SWITCH 0=no SWITCH, <0 per segment, >0 per zone                       
       can use default value                                                                        
       [VxSedIM1            ] sedimentation velocity IM1                                            
       Using output from proces [Sed_IM1             ]                                              
       [VxSedIM2            ] sedimentation velocity IM2                                            
       can use default value                                                                        
       [VxSedIM3            ] sedimentation velocity IM3                                            
       can use default value                                                                        
   Process is activated                                                                             
                                                                                                    
 Input for [Sed_CAAP            ] Sedimentation adsorbed P as component                             
       [AAP                 ] adsorbed ortho phosphate                                              
       Using substance nr   9                                                                       
       [ZSedAAP             ] zeroth-order sedimentation flux AAP                                   
       can use default value                                                                        
       [VSedAAP             ] sedimentation velocity AAP                                            
       can use default value                                                                        
       [Tau                 ] total bottom shear stress                                             
       Using segment function nr  2                                                                 
       [TaucSAAP            ] critical shear stress for sedimentation AAP                           
       can use default value                                                                        
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [MinDepth            ] minimum waterdepth for sedimentation/resuspension                     
       can use default value                                                                        
       [VSedAAP             ] sedimentation velocity AAP                                            
       can use default value                                                                        
   Process is activated                                                                             
                                                                                                    
 Input for [Res_DM              ] Resuspension total bottom material (dry mass)                     
       [DMS1                ] total amount of dry matter in layer S1                                
       Using output from proces [S1_Comp             ]                                              
       [DMS2                ] total amount of dry matter in layer S2                                
       can use default value                                                                        
       [ZResDM              ] zeroth-order resuspension flux                                        
       can use default value                                                                        
       [VResDM              ] first order resuspension velocity DM                                  
       can use default value                                                                        
       [Tau                 ] total bottom shear stress                                             
       Using segment function nr  2                                                                 
       [TaucRS1DM           ] critical shear stress for resuspension DM layer S1                    
       can use default value                                                                        
       [TaucRS2DM           ] critical shear stress for resuspension DM layer S2                    
       can use default value                                                                        
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [MinDepth            ] minimum waterdepth for sedimentation/resuspension                     
       can use default value                                                                        
       [Surf                ] horizontal surface area of a DELWAQ segment                           
       Using segment function nr  1                                                                 
       [SWResusp            ] switch resuspension (0=z+f, 1=min(z,f))                               
       can use default value                                                                        
   Process is activated                                                                             
                                                                                                    
 Input for [S12TraDetC          ] Resuspension, transport in S1-S2 DetC                             
       [FrDetCS1            ] fraction DetC in layer S1                                             
       Using output from proces [S1_Comp             ]                                              
       [ScalCar             ] scale factor for primary variable                                     
       can use default value                                                                        
       [FrDetCS2            ] fraction DetC in layer S2                                             
       can use default value                                                                        
       [ScalCar             ] scale factor for primary variable                                     
       can use default value                                                                        
       [FrDetCS3            ] fraction DetC in layer S3                                             
       can use default value                                                                        
       [ScalCar             ] scale factor for primary variable                                     
       can use default value                                                                        
       [fResS1DM            ] total resuspension flux DM from layer S1                              
       Using output from proces [Res_DM              ]                                              
       [fResS2DM            ] total resuspension flux DM from layer S2                              
       Using output from proces [Res_DM              ]                                              
       [fBurS1DM            ] total burial flux DM from layer S1                                    
       can use default value                                                                        
       [fBurS2DM            ] total burial flux DM from layer S2                                    
       can use default value                                                                        
       [fDigS1DM            ] total digging flux DM to layer S1                                     
       can use default value                                                                        
       [fDigS2DM            ] total digging flux DM to layer S2                                     
       can use default value                                                                        
       [SWDigS1             ] switch for digging S1 (0=actual, 1=deeper)                            
       can use default value                                                                        
       [SWDigS2             ] switch for digging S2 (0=actual, 1=deeper)                            
       can use default value                                                                        
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [SedZoneSW           ] SWITCH 0=no SWITCH, <0 per segment, >0 per zone                       
       can use default value                                                                        
   Process is activated                                                                             
                                                                                                    
 Input for [S12TraDetN          ] Resuspension, transport in S1-S2 DetN                             
       [FrDetCS1            ] fraction DetC in layer S1                                             
       Using output from proces [S1_Comp             ]                                              
       [N-CDetCS1           ] N:C ratio Detritus S1                                                 
       Using output from proces [S1_Comp             ]                                              
       [FrDetCS2            ] fraction DetC in layer S2                                             
       can use default value                                                                        
       [N-CDetCS2           ] N:C ratio Detritus S2                                                 
       can use default value                                                                        
       [FrDetNS3            ] fraction DetN in layer S3                                             
       can use default value                                                                        
       [ScalCar             ] scale factor for primary variable                                     
       can use default value                                                                        
       [fResS1DM            ] total resuspension flux DM from layer S1                              
       Using output from proces [Res_DM              ]                                              
       [fResS2DM            ] total resuspension flux DM from layer S2                              
       Using output from proces [Res_DM              ]                                              
       [fBurS1DM            ] total burial flux DM from layer S1                                    
       can use default value                                                                        
       [fBurS2DM            ] total burial flux DM from layer S2                                    
       can use default value                                                                        
       [fDigS1DM            ] total digging flux DM to layer S1                                     
       can use default value                                                                        
       [fDigS2DM            ] total digging flux DM to layer S2                                     
       can use default value                                                                        
       [SWDigS1             ] switch for digging S1 (0=actual, 1=deeper)                            
       can use default value                                                                        
       [SWDigS2             ] switch for digging S2 (0=actual, 1=deeper)                            
       can use default value                                                                        
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [SedZoneSW           ] SWITCH 0=no SWITCH, <0 per segment, >0 per zone                       
       can use default value                                                                        
   Process is activated                                                                             
                                                                                                    
 Input for [S12TraDetP          ] Resuspension, transport in S1-S2 DetP                             
       [FrDetCS1            ] fraction DetC in layer S1                                             
       Using output from proces [S1_Comp             ]                                              
       [P-CDetCS1           ] P:C ratio Detritus S1                                                 
       Using output from proces [S1_Comp             ]                                              
       [FrDetCS2            ] fraction DetC in layer S2                                             
       can use default value                                                                        
       [P-CDetCS2           ] P:C ratio Detritus S2                                                 
       can use default value                                                                        
       [FrDetPS3            ] fraction DetP in layer S3                                             
       can use default value                                                                        
       [ScalCar             ] scale factor for primary variable                                     
       can use default value                                                                        
       [fResS1DM            ] total resuspension flux DM from layer S1                              
       Using output from proces [Res_DM              ]                                              
       [fResS2DM            ] total resuspension flux DM from layer S2                              
       Using output from proces [Res_DM              ]                                              
       [fBurS1DM            ] total burial flux DM from layer S1                                    
       can use default value                                                                        
       [fBurS2DM            ] total burial flux DM from layer S2                                    
       can use default value                                                                        
       [fDigS1DM            ] total digging flux DM to layer S1                                     
       can use default value                                                                        
       [fDigS2DM            ] total digging flux DM to layer S2                                     
       can use default value                                                                        
       [SWDigS1             ] switch for digging S1 (0=actual, 1=deeper)                            
       can use default value                                                                        
       [SWDigS2             ] switch for digging S2 (0=actual, 1=deeper)                            
       can use default value                                                                        
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [SedZoneSW           ] SWITCH 0=no SWITCH, <0 per segment, >0 per zone                       
       can use default value                                                                        
   Process is activated                                                                             
                                                                                                    
 Input for [S12TraIM1           ] Resuspension, transport in S1-S2 IM1                              
       [FrIM1S1             ] fraction IM1 in layer S1                                              
       Using output from proces [S1_Comp             ]                                              
       [ScalCar             ] scale factor for primary variable                                     
       can use default value                                                                        
       [FrIM1S2             ] fraction IM1 in layer S2                                              
       can use default value                                                                        
       [ScalCar             ] scale factor for primary variable                                     
       can use default value                                                                        
       [FrIM1S3             ] fraction IM1 in layer S3                                              
       can use default value                                                                        
       [ScalCar             ] scale factor for primary variable                                     
       can use default value                                                                        
       [fResS1DM            ] total resuspension flux DM from layer S1                              
       Using output from proces [Res_DM              ]                                              
       [fResS2DM            ] total resuspension flux DM from layer S2                              
       Using output from proces [Res_DM              ]                                              
       [fBurS1DM            ] total burial flux DM from layer S1                                    
       can use default value                                                                        
       [fBurS2DM            ] total burial flux DM from layer S2                                    
       can use default value                                                                        
       [fDigS1DM            ] total digging flux DM to layer S1                                     
       can use default value                                                                        
       [fDigS2DM            ] total digging flux DM to layer S2                                     
       can use default value                                                                        
       [SWDigS1             ] switch for digging S1 (0=actual, 1=deeper)                            
       can use default value                                                                        
       [SWDigS2             ] switch for digging S2 (0=actual, 1=deeper)                            
       can use default value                                                                        
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [SedZoneSW           ] SWITCH 0=no SWITCH, <0 per segment, >0 per zone                       
       can use default value                                                                        
       [SWResIM1            ] switch resuspension IM1 (0=resdm, 1=resim1)                           
       can use default value                                                                        
       [SWResusp            ] switch resuspension (0=z+f, 1=min(z,f))                               
       can use default value                                                                        
       [IM1S1               ] IM1 in layer S1                                                       
       Using substance nr  23                                                                       
       [IM1S2               ] IM1 in layer S2                                                       
       can use default value                                                                        
       [ZResIM1             ] zeroth-order resuspension flux IM1                                    
       can use default value                                                                        
       [VResIM1             ] first order resuspension velocity IM1                                 
       can use default value                                                                        
       [Tau                 ] total bottom shear stress                                             
       Using segment function nr  2                                                                 
       [TaucRS1IM1          ] critical shear stress for resuspension IM1S1                          
       can use default value                                                                        
       [TaucRS2IM1          ] critical shear stress for resuspension IM1S2                          
       can use default value                                                                        
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [MinDepth            ] minimum waterdepth for sedimentation/resuspension                     
       can use default value                                                                        
   Process is activated                                                                             
                                                                                                    
 Input for [S12TraAAP           ] Resuspension, transport in S1-S2 AAP                              
       [FrAAPS1             ] fraction AAP in layer S1                                              
       Using output from proces [S1_Comp             ]                                              
       [ScalCar             ] scale factor for primary variable                                     
       can use default value                                                                        
       [FrAAPS2             ] fraction AAP in layer S2                                              
       can use default value                                                                        
       [ScalCar             ] scale factor for primary variable                                     
       can use default value                                                                        
       [FrAAPS3             ] fraction AAP in layer S3                                              
       can use default value                                                                        
       [ScalCar             ] scale factor for primary variable                                     
       can use default value                                                                        
       [fResS1DM            ] total resuspension flux DM from layer S1                              
       Using output from proces [Res_DM              ]                                              
       [fResS2DM            ] total resuspension flux DM from layer S2                              
       Using output from proces [Res_DM              ]                                              
       [fBurS1DM            ] total burial flux DM from layer S1                                    
       can use default value                                                                        
       [fBurS2DM            ] total burial flux DM from layer S2                                    
       can use default value                                                                        
       [fDigS1DM            ] total digging flux DM to layer S1                                     
       can use default value                                                                        
       [fDigS2DM            ] total digging flux DM to layer S2                                     
       can use default value                                                                        
       [SWDigS1             ] switch for digging S1 (0=actual, 1=deeper)                            
       can use default value                                                                        
       [SWDigS2             ] switch for digging S2 (0=actual, 1=deeper)                            
       can use default value                                                                        
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [SedZoneSW           ] SWITCH 0=no SWITCH, <0 per segment, >0 per zone                       
       can use default value                                                                        
   Process is activated                                                                             
                                                                                                    
 Input for [PartWK_Cd           ] Partitioning Cd in water column                                   
       [Cd                  ] Cadmium (Cd)                                                          
       Using substance nr  18                                                                       
       [Cd-Dis              ] dissolved concentration Cd                                            
       can use default value                                                                        
       [Cd-Par              ] particulate concentration Cd                                          
       can use default value                                                                        
       [IM1                 ] inorganic matter (IM1)                                                
       Using substance nr   5                                                                       
       [IM2                 ] inorganic matter (IM2)                                                
       can use default value                                                                        
       [IM3                 ] inorganic matter (IM3)                                                
       can use default value                                                                        
       [DOC                 ] Dissolved Organic Carbon (DOC)                                        
       can use default value                                                                        
       [XDOCCd              ] efficiency DOC relative to POC for Cd                                 
       can use default value                                                                        
       [POCnoa              ] total POC (no algae)                                                  
       Using output from proces [Compos              ]                                              
       [Phyt                ] total carbon in phytoplankton                                         
       Using output from proces [Phy_dyn             ]                                              
       [KdCdIM1             ] partition coefficient Cd-IM1                                          
       can use default value                                                                        
       [KdCdIM2             ] partition coefficient Cd-IM2                                          
       can use default value                                                                        
       [KdCdIM3             ] partition coefficient Cd-IM3                                          
       can use default value                                                                        
       [KdCdPOC             ] partition coefficient Cd-POC                                          
       can use default value                                                                        
       [KdCdPHYT            ] partition coefficient Cd-PHYT                                         
       can use default value                                                                        
       [Poros               ] volumetric porosity                                                   
       can use default value                                                                        
       [dummy               ] dummy input item                                                      
       can use default value                                                                        
       [dummy               ] dummy input item                                                      
       can use default value                                                                        
       [SS                  ] suspended solids                                                      
       Using output from proces [Compos              ]                                              
       [HLTAdsCd            ] half-life time non-eq. adsorption Cd                                  
       can use default value                                                                        
       [HLTDesCd            ] half-life time non-eq. desorption Cd                                  
       can use default value                                                                        
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [SWWaterKCh          ] switch for oxic (1) or sufidic (0) water                              
       can use default value                                                                        
       [DisSWK              ] (S--) in water column                                                 
       can use default value                                                                        
       [DisHSWK             ] (HS-) in water column                                                 
       can use default value                                                                        
       [MolWtCd             ] Molweight Cd                                                          
       can use default value                                                                        
       [logKCdSs            ] precipitation constant Cd+S<==>CdSs                                   
       can use default value                                                                        
       [logKCdSaq           ] complexation constant Cd+S<==>CdS0aq                                  
       can use default value                                                                        
       [logKCdHSaq          ] complexation constant Cd+HS<==>CdHS+aq                                
       can use default value                                                                        
       [SwSedNo             ] switch for using module in water column                               
       can use default value                                                                        
       [HMGroup1            ] Heavy metal group 1 (General)                                         
       can use default value                                                                        
       [Volume              ] volume of computational cell                                          
       Using DELWAQ volume                                                                          
   Process is activated                                                                             
                                                                                                    
 Input for [PartWK_Cu           ] Partitioning Cu in water column                                   
       [Cu                  ] Copper (Cu)                                                           
       Using substance nr  19                                                                       
       [Cu-Dis              ] dissolved concentration Cu                                            
       can use default value                                                                        
       [Cu-Par              ] particulate concentration Cu                                          
       can use default value                                                                        
       [IM1                 ] inorganic matter (IM1)                                                
       Using substance nr   5                                                                       
       [IM2                 ] inorganic matter (IM2)                                                
       can use default value                                                                        
       [IM3                 ] inorganic matter (IM3)                                                
       can use default value                                                                        
       [DOC                 ] Dissolved Organic Carbon (DOC)                                        
       can use default value                                                                        
       [XDOCCu              ] efficiency DOC relative to POC for Cu                                 
       can use default value                                                                        
       [POCnoa              ] total POC (no algae)                                                  
       Using output from proces [Compos              ]                                              
       [Phyt                ] total carbon in phytoplankton                                         
       Using output from proces [Phy_dyn             ]                                              
       [KdCuIM1             ] partition coefficient Cu-IM1                                          
       can use default value                                                                        
       [KdCuIM2             ] partition coefficient Cu-IM2                                          
       can use default value                                                                        
       [KdCuIM3             ] partition coefficient Cu-IM3                                          
       can use default value                                                                        
       [KdCuPOC             ] partition coefficient Cu-POC                                          
       can use default value                                                                        
       [KdCuPHYT            ] partition coefficient Cu-PHYT                                         
       can use default value                                                                        
       [Poros               ] volumetric porosity                                                   
       can use default value                                                                        
       [dummy               ] dummy input item                                                      
       can use default value                                                                        
       [dummy               ] dummy input item                                                      
       can use default value                                                                        
       [SS                  ] suspended solids                                                      
       Using output from proces [Compos              ]                                              
       [HLTAdsCu            ] half-life time non-eq. adsorption Cu                                  
       can use default value                                                                        
       [HLTDesCu            ] half-life time non-eq. desorption Cu                                  
       can use default value                                                                        
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [SWWaterKCh          ] switch for oxic (1) or sufidic (0) water                              
       can use default value                                                                        
       [DisSWK              ] (S--) in water column                                                 
       can use default value                                                                        
       [DisHSWK             ] (HS-) in water column                                                 
       can use default value                                                                        
       [MolWtCu             ] Molweight Cu                                                          
       can use default value                                                                        
       [logKCuSs            ] precipitation constant Cu+S<==>CuSs                                   
       can use default value                                                                        
       [logKCuSaq           ] complexation constant Cu+S<==>CuS0aq                                  
       can use default value                                                                        
       [logKCuHSaq          ] complexation constant Cu+HS<==>CuHS+aq                                
       can use default value                                                                        
       [SwSedNo             ] switch for using module in water column                               
       can use default value                                                                        
       [HMGroup1            ] Heavy metal group 1 (General)                                         
       can use default value                                                                        
       [Volume              ] volume of computational cell                                          
       Using DELWAQ volume                                                                          
   Process is activated                                                                             
                                                                                                    
 Input for [PartWK_Zn           ] Partitioning Zn in water column                                   
       [Zn                  ] Zinc (Zn)                                                             
       Using substance nr  20                                                                       
       [Zn-Dis              ] dissolved concentration Zn                                            
       can use default value                                                                        
       [Zn-Par              ] particulate concentration Zn                                          
       can use default value                                                                        
       [IM1                 ] inorganic matter (IM1)                                                
       Using substance nr   5                                                                       
       [IM2                 ] inorganic matter (IM2)                                                
       can use default value                                                                        
       [IM3                 ] inorganic matter (IM3)                                                
       can use default value                                                                        
       [DOC                 ] Dissolved Organic Carbon (DOC)                                        
       can use default value                                                                        
       [XDOCZn              ] efficiency DOC relative to POC for Zn                                 
       can use default value                                                                        
       [POCnoa              ] total POC (no algae)                                                  
       Using output from proces [Compos              ]                                              
       [Phyt                ] total carbon in phytoplankton                                         
       Using output from proces [Phy_dyn             ]                                              
       [KdZnIM1             ] partition coefficient Zn-IM1                                          
       can use default value                                                                        
       [KdZnIM2             ] partition coefficient Zn-IM2                                          
       can use default value                                                                        
       [KdZnIM3             ] partition coefficient Zn-IM3                                          
       can use default value                                                                        
       [KdZnPOC             ] partition coefficient Zn-POC                                          
       can use default value                                                                        
       [KdZnPHYT            ] partition coefficient Zn-PHYT                                         
       can use default value                                                                        
       [Poros               ] volumetric porosity                                                   
       can use default value                                                                        
       [dummy               ] dummy input item                                                      
       can use default value                                                                        
       [dummy               ] dummy input item                                                      
       can use default value                                                                        
       [SS                  ] suspended solids                                                      
       Using output from proces [Compos              ]                                              
       [HLTAdsZn            ] half-life time non-eq. adsorption Zn                                  
       can use default value                                                                        
       [HLTDesZn            ] half-life time non-eq. desorption Zn                                  
       can use default value                                                                        
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [SWWaterKCh          ] switch for oxic (1) or sufidic (0) water                              
       can use default value                                                                        
       [DisSWK              ] (S--) in water column                                                 
       can use default value                                                                        
       [DisHSWK             ] (HS-) in water column                                                 
       can use default value                                                                        
       [MolWtZn             ] Molweight Zn                                                          
       can use default value                                                                        
       [logKZnSs            ] precipitation constant Zn+S<==>ZnSs                                   
       can use default value                                                                        
       [logKZnSaq           ] complexation constant Zn+S<==>ZnS0aq                                  
       can use default value                                                                        
       [logKZnHSaq          ] complexation constant Zn+HS<==>ZnHS+aq                                
       can use default value                                                                        
       [SwSedNo             ] switch for using module in water column                               
       can use default value                                                                        
       [HMGroup1            ] Heavy metal group 1 (General)                                         
       can use default value                                                                        
       [Volume              ] volume of computational cell                                          
       Using DELWAQ volume                                                                          
   Process is activated                                                                             
                                                                                                    
 Input for [PartS1_Cd           ] Partitioning Cd in S1                                             
       [CdS1                ] Cd in layer S1                                                        
       Using substance nr  27                                                                       
       [CdS1-Dis            ] dissolved mass Cd in layer S1                                         
       can use default value                                                                        
       [CdS1-Par            ] particulate mass Cd in layer S1                                       
       can use default value                                                                        
       [IM1S1               ] IM1 in layer S1                                                       
       Using substance nr  23                                                                       
       [IM2S1               ] IM2 in layer S1                                                       
       can use default value                                                                        
       [IM3S1               ] IM3 in layer S1                                                       
       can use default value                                                                        
       [DOCS1               ] DOC in pore water layer S1                                            
       can use default value                                                                        
       [XDOCCd              ] efficiency DOC relative to POC for Cd                                 
       can use default value                                                                        
       [POCS1               ] total POC in layer S1                                                 
       Using output from proces [S1_Comp             ]                                              
       [PHYTS1              ] total carbon in phytoplankton in layer S1                             
       Using output from proces [S1_Comp             ]                                              
       [KdCdIM1S1           ] partition coefficient Cd-IM1 in layer S1                              
       can use default value                                                                        
       [KdCdIM2S1           ] partition coefficient Cd-IM2 in layer S1                              
       can use default value                                                                        
       [KdCdIM3S1           ] partition coefficient Cd-IM3 in layer S1                              
       can use default value                                                                        
       [KdCdPOCS1           ] partition coefficient Cd-POC in layer S1                              
       can use default value                                                                        
       [KdCdPHYTS1          ] partition coefficient Cd-PHYT in layer S1                             
       can use default value                                                                        
       [PORS1               ] porosity of sediment layer S1                                         
       can use default value                                                                        
       [ActThS1             ] actual thickness layer S1                                             
       Using output from proces [S1_Comp             ]                                              
       [Surf                ] horizontal surface area of a DELWAQ segment                           
       Using segment function nr  1                                                                 
       [DMS1                ] total amount of dry matter in layer S1                                
       Using output from proces [S1_Comp             ]                                              
       [HLTAdsCdS1          ] half-life time non-eq. adsorption Cd in layer S1                      
       can use default value                                                                        
       [HLTDesCdS1          ] half-life time non-eq. desorption Cd in layer S1                      
       can use default value                                                                        
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [SWPoreChS1          ] switch for oxic (1) or sufidic (0) pore water                         
       can use default value                                                                        
       [DisSS1              ] (S--) in layer S1                                                     
       can use default value                                                                        
       [DisHSS1             ] (HS-) in layer S1                                                     
       can use default value                                                                        
       [MolWtCd             ] Molweight Cd                                                          
       can use default value                                                                        
       [logKCdSs            ] precipitation constant Cd+S<==>CdSs                                   
       can use default value                                                                        
       [logKCdSaq           ] complexation constant Cd+S<==>CdS0aq                                  
       can use default value                                                                        
       [logKCdHSaq          ] complexation constant Cd+HS<==>CdHS+aq                                
       can use default value                                                                        
       [SwSedYes            ] switch for using module in sediment                                   
       can use default value                                                                        
       [HMGroup1            ] Heavy metal group 1 (General)                                         
       can use default value                                                                        
       [Volume              ] volume of computational cell                                          
       Using DELWAQ volume                                                                          
   Process is activated                                                                             
                                                                                                    
 Input for [PartS1_Cu           ] Partitioning Cu in S1                                             
       [CuS1                ] Cu in layer S1                                                        
       Using substance nr  28                                                                       
       [CuS1-Dis            ] dissolved mass Cu in layer S1                                         
       can use default value                                                                        
       [CuS1-Par            ] particulate mass Cu in layer S1                                       
       can use default value                                                                        
       [IM1S1               ] IM1 in layer S1                                                       
       Using substance nr  23                                                                       
       [IM2S1               ] IM2 in layer S1                                                       
       can use default value                                                                        
       [IM3S1               ] IM3 in layer S1                                                       
       can use default value                                                                        
       [DOCS1               ] DOC in pore water layer S1                                            
       can use default value                                                                        
       [XDOCCu              ] efficiency DOC relative to POC for Cu                                 
       can use default value                                                                        
       [POCS1               ] total POC in layer S1                                                 
       Using output from proces [S1_Comp             ]                                              
       [PHYTS1              ] total carbon in phytoplankton in layer S1                             
       Using output from proces [S1_Comp             ]                                              
       [KdCuIM1S1           ] partition coefficient Cu-IM1 in layer S1                              
       can use default value                                                                        
       [KdCuIM2S1           ] partition coefficient Cu-IM2 in layer S1                              
       can use default value                                                                        
       [KdCuIM3S1           ] partition coefficient Cu-IM3 in layer S1                              
       can use default value                                                                        
       [KdCuPOCS1           ] partition coefficient Cu-POC in layer S1                              
       can use default value                                                                        
       [KdCuPHYTS1          ] partition coefficient Cu-PHYT in layer S1                             
       can use default value                                                                        
       [PORS1               ] porosity of sediment layer S1                                         
       can use default value                                                                        
       [ActThS1             ] actual thickness layer S1                                             
       Using output from proces [S1_Comp             ]                                              
       [Surf                ] horizontal surface area of a DELWAQ segment                           
       Using segment function nr  1                                                                 
       [DMS1                ] total amount of dry matter in layer S1                                
       Using output from proces [S1_Comp             ]                                              
       [HLTAdsCuS1          ] half-life time non-eq. adsorption Cu in layer S1                      
       can use default value                                                                        
       [HLTDesCuS1          ] half-life time non-eq. desorption Cu in layer S1                      
       can use default value                                                                        
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [SWPoreChS1          ] switch for oxic (1) or sufidic (0) pore water                         
       can use default value                                                                        
       [DisSS1              ] (S--) in layer S1                                                     
       can use default value                                                                        
       [DisHSS1             ] (HS-) in layer S1                                                     
       can use default value                                                                        
       [MolWtCu             ] Molweight Cu                                                          
       can use default value                                                                        
       [logKCuSs            ] precipitation constant Cu+S<==>CuSs                                   
       can use default value                                                                        
       [logKCuSaq           ] complexation constant Cu+S<==>CuS0aq                                  
       can use default value                                                                        
       [logKCuHSaq          ] complexation constant Cu+HS<==>CuHS+aq                                
       can use default value                                                                        
       [SwSedYes            ] switch for using module in sediment                                   
       can use default value                                                                        
       [HMGroup1            ] Heavy metal group 1 (General)                                         
       can use default value                                                                        
       [Volume              ] volume of computational cell                                          
       Using DELWAQ volume                                                                          
   Process is activated                                                                             
                                                                                                    
 Input for [PartS1_Zn           ] Partitioning Zn in S1                                             
       [ZnS1                ] Zn in layer S1                                                        
       Using substance nr  29                                                                       
       [ZnS1-Dis            ] dissolved mass Zn in layer S1                                         
       can use default value                                                                        
       [ZnS1-Par            ] particulate mass Zn in layer S1                                       
       can use default value                                                                        
       [IM1S1               ] IM1 in layer S1                                                       
       Using substance nr  23                                                                       
       [IM2S1               ] IM2 in layer S1                                                       
       can use default value                                                                        
       [IM3S1               ] IM3 in layer S1                                                       
       can use default value                                                                        
       [DOCS1               ] DOC in pore water layer S1                                            
       can use default value                                                                        
       [XDOCZn              ] efficiency DOC relative to POC for Zn                                 
       can use default value                                                                        
       [POCS1               ] total POC in layer S1                                                 
       Using output from proces [S1_Comp             ]                                              
       [PHYTS1              ] total carbon in phytoplankton in layer S1                             
       Using output from proces [S1_Comp             ]                                              
       [KdZnIM1S1           ] partition coefficient Zn-IM1 in layer S1                              
       can use default value                                                                        
       [KdZnIM2S1           ] partition coefficient Zn-IM2 in layer S1                              
       can use default value                                                                        
       [KdZnIM3S1           ] partition coefficient Zn-IM3 in layer S1                              
       can use default value                                                                        
       [KdZnPOCS1           ] partition coefficient Zn-POC in layer S1                              
       can use default value                                                                        
       [KdZnPHYTS1          ] partition coefficient Zn-PHYT in layer S1                             
       can use default value                                                                        
       [PORS1               ] porosity of sediment layer S1                                         
       can use default value                                                                        
       [ActThS1             ] actual thickness layer S1                                             
       Using output from proces [S1_Comp             ]                                              
       [Surf                ] horizontal surface area of a DELWAQ segment                           
       Using segment function nr  1                                                                 
       [DMS1                ] total amount of dry matter in layer S1                                
       Using output from proces [S1_Comp             ]                                              
       [HLTAdsZnS1          ] half-life time non-eq. adsorption Zn in layer S1                      
       can use default value                                                                        
       [HLTDesZnS1          ] half-life time non-eq. desorption Zn in layer S1                      
       can use default value                                                                        
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [SWPoreChS1          ] switch for oxic (1) or sufidic (0) pore water                         
       can use default value                                                                        
       [DisSS1              ] (S--) in layer S1                                                     
       can use default value                                                                        
       [DisHSS1             ] (HS-) in layer S1                                                     
       can use default value                                                                        
       [MolWtZn             ] Molweight Zn                                                          
       can use default value                                                                        
       [logKZnSs            ] precipitation constant Zn+S<==>ZnSs                                   
       can use default value                                                                        
       [logKZnSaq           ] complexation constant Zn+S<==>ZnS0aq                                  
       can use default value                                                                        
       [logKZnHSaq          ] complexation constant Zn+HS<==>ZnHS+aq                                
       can use default value                                                                        
       [SwSedYes            ] switch for using module in sediment                                   
       can use default value                                                                        
       [HMGroup1            ] Heavy metal group 1 (General)                                         
       can use default value                                                                        
       [Volume              ] volume of computational cell                                          
       Using DELWAQ volume                                                                          
   Process is activated                                                                             
                                                                                                    
 Input for [Sed_Cd              ] Sedimentation adsorbed Cd                                         
       [fSedIM1             ] sedimentation flux IM1 towards S1                                     
       Using output from proces [Sed_IM1             ]                                              
       [fSedIM2             ] sedimentation flux IM2 towards S1                                     
       can use default value                                                                        
       [fSedIM3             ] sedimentation flux IM3 towards S1                                     
       can use default value                                                                        
       [fSedIM1S2           ] sedimentation flux IM1 towards S2                                     
       Using output from proces [Sed_IM1             ]                                              
       [fSedIM2S2           ] sedimentation flux IM2 towards S2                                     
       can use default value                                                                        
       [fSedIM3S2           ] sedimentation flux IM3 towards S2                                     
       can use default value                                                                        
       [fSedPOCnoa          ] total sedimentation flux POC (no algae)                               
       Using output from proces [Sum_Sedim           ]                                              
       [fSedPHYT            ] total sedimentation flux phytoplankton                                
       Using output from proces [SedPhDyn            ]                                              
       [QCdIM1              ] quality IM1 for Cd                                                    
       Using output from proces [PartWK_Cd           ]                                              
       [QCdIM2              ] quality IM2 for Cd                                                    
       Using output from proces [PartWK_Cd           ]                                              
       [QCdIM3              ] quality IM3 for Cd                                                    
       Using output from proces [PartWK_Cd           ]                                              
       [QCdPOC              ] quality POC for Cd                                                    
       Using output from proces [PartWK_Cd           ]                                              
       [QCdPHYT             ] quality phytoplankton for Cd                                          
       Using output from proces [PartWK_Cd           ]                                              
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [FrCdIM1             ] fraction Cd adsorbed to IM1                                           
       Using output from proces [PartWK_Cd           ]                                              
       [FrCdIM2             ] fraction Cd adsorbed to IM2                                           
       Using output from proces [PartWK_Cd           ]                                              
       [FrCdIM3             ] fraction Cd adsorbed to IM3                                           
       Using output from proces [PartWK_Cd           ]                                              
       [FrCdPOC             ] fraction Cd adsorbed to POC                                           
       Using output from proces [PartWK_Cd           ]                                              
       [FrCdPHYT            ] fraction Cd adsorbed to phytoplankton                                 
       Using output from proces [PartWK_Cd           ]                                              
       [VxSedIM1            ] sedimentation velocity IM1                                            
       Using output from proces [Sed_IM1             ]                                              
       [VxSedIM2            ] sedimentation velocity IM2                                            
       can use default value                                                                        
       [VxSedIM3            ] sedimentation velocity IM3                                            
       can use default value                                                                        
       [VxSedPOCna          ] sedimentation velocity POC (no algae)                                 
       Using output from proces [Sum_Sedim           ]                                              
       [VxSedPhyt           ] sedimentation velocity phytoplankton                                  
       Using output from proces [SedPhDyn            ]                                              
   Process is activated                                                                             
                                                                                                    
 Input for [Sed_Cu              ] Sedimentation adsorbed Cu                                         
       [fSedIM1             ] sedimentation flux IM1 towards S1                                     
       Using output from proces [Sed_IM1             ]                                              
       [fSedIM2             ] sedimentation flux IM2 towards S1                                     
       can use default value                                                                        
       [fSedIM3             ] sedimentation flux IM3 towards S1                                     
       can use default value                                                                        
       [fSedIM1S2           ] sedimentation flux IM1 towards S2                                     
       Using output from proces [Sed_IM1             ]                                              
       [fSedIM2S2           ] sedimentation flux IM2 towards S2                                     
       can use default value                                                                        
       [fSedIM3S2           ] sedimentation flux IM3 towards S2                                     
       can use default value                                                                        
       [fSedPOCnoa          ] total sedimentation flux POC (no algae)                               
       Using output from proces [Sum_Sedim           ]                                              
       [fSedPHYT            ] total sedimentation flux phytoplankton                                
       Using output from proces [SedPhDyn            ]                                              
       [QCuIM1              ] quality IM1 for Cu                                                    
       Using output from proces [PartWK_Cu           ]                                              
       [QCuIM2              ] quality IM2 for Cu                                                    
       Using output from proces [PartWK_Cu           ]                                              
       [QCuIM3              ] quality IM3 for Cu                                                    
       Using output from proces [PartWK_Cu           ]                                              
       [QCuPOC              ] quality POC for Cu                                                    
       Using output from proces [PartWK_Cu           ]                                              
       [QCuPHYT             ] quality phytoplankton for Cu                                          
       Using output from proces [PartWK_Cu           ]                                              
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [FrCuIM1             ] fraction Cu adsorbed to IM1                                           
       Using output from proces [PartWK_Cu           ]                                              
       [FrCuIM2             ] fraction Cu adsorbed to IM2                                           
       Using output from proces [PartWK_Cu           ]                                              
       [FrCuIM3             ] fraction Cu adsorbed to IM3                                           
       Using output from proces [PartWK_Cu           ]                                              
       [FrCuPOC             ] fraction Cu adsorbed to POC                                           
       Using output from proces [PartWK_Cu           ]                                              
       [FrCuPHYT            ] fraction Cu adsorbed to phytoplankton                                 
       Using output from proces [PartWK_Cu           ]                                              
       [VxSedIM1            ] sedimentation velocity IM1                                            
       Using output from proces [Sed_IM1             ]                                              
       [VxSedIM2            ] sedimentation velocity IM2                                            
       can use default value                                                                        
       [VxSedIM3            ] sedimentation velocity IM3                                            
       can use default value                                                                        
       [VxSedPOCna          ] sedimentation velocity POC (no algae)                                 
       Using output from proces [Sum_Sedim           ]                                              
       [VxSedPhyt           ] sedimentation velocity phytoplankton                                  
       Using output from proces [SedPhDyn            ]                                              
   Process is activated                                                                             
                                                                                                    
 Input for [Sed_Zn              ] Sedimentation adsorbed Zn                                         
       [fSedIM1             ] sedimentation flux IM1 towards S1                                     
       Using output from proces [Sed_IM1             ]                                              
       [fSedIM2             ] sedimentation flux IM2 towards S1                                     
       can use default value                                                                        
       [fSedIM3             ] sedimentation flux IM3 towards S1                                     
       can use default value                                                                        
       [fSedIM1S2           ] sedimentation flux IM1 towards S2                                     
       Using output from proces [Sed_IM1             ]                                              
       [fSedIM2S2           ] sedimentation flux IM2 towards S2                                     
       can use default value                                                                        
       [fSedIM3S2           ] sedimentation flux IM3 towards S2                                     
       can use default value                                                                        
       [fSedPOCnoa          ] total sedimentation flux POC (no algae)                               
       Using output from proces [Sum_Sedim           ]                                              
       [fSedPHYT            ] total sedimentation flux phytoplankton                                
       Using output from proces [SedPhDyn            ]                                              
       [QZnIM1              ] quality IM1 for Zn                                                    
       Using output from proces [PartWK_Zn           ]                                              
       [QZnIM2              ] quality IM2 for Zn                                                    
       Using output from proces [PartWK_Zn           ]                                              
       [QZnIM3              ] quality IM3 for Zn                                                    
       Using output from proces [PartWK_Zn           ]                                              
       [QZnPOC              ] quality POC for Zn                                                    
       Using output from proces [PartWK_Zn           ]                                              
       [QZnPHYT             ] quality phytoplankton for Zn                                          
       Using output from proces [PartWK_Zn           ]                                              
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [FrZnIM1             ] fraction Zn adsorbed to IM1                                           
       Using output from proces [PartWK_Zn           ]                                              
       [FrZnIM2             ] fraction Zn adsorbed to IM2                                           
       Using output from proces [PartWK_Zn           ]                                              
       [FrZnIM3             ] fraction Zn adsorbed to IM3                                           
       Using output from proces [PartWK_Zn           ]                                              
       [FrZnPOC             ] fraction Zn adsorbed to POC                                           
       Using output from proces [PartWK_Zn           ]                                              
       [FrZnPHYT            ] fraction Zn adsorbed to phytoplankton                                 
       Using output from proces [PartWK_Zn           ]                                              
       [VxSedIM1            ] sedimentation velocity IM1                                            
       Using output from proces [Sed_IM1             ]                                              
       [VxSedIM2            ] sedimentation velocity IM2                                            
       can use default value                                                                        
       [VxSedIM3            ] sedimentation velocity IM3                                            
       can use default value                                                                        
       [VxSedPOCna          ] sedimentation velocity POC (no algae)                                 
       Using output from proces [Sum_Sedim           ]                                              
       [VxSedPhyt           ] sedimentation velocity phytoplankton                                  
       Using output from proces [SedPhDyn            ]                                              
   Process is activated                                                                             
                                                                                                    
 Input for [S12TraCd            ] Resuspension, transport in S1-S2 Cd                               
       [QCdDMS1             ] overall sediment quality for Cd in S1                                 
       Using output from proces [PartS1_Cd           ]                                              
       [ScalPol             ] Scale factor from mg/kg to g/g                                        
       can use default value                                                                        
       [QCdDMS2             ] overall sediment quality for Cd in S2                                 
       can use default value                                                                        
       [ScalPol             ] Scale factor from mg/kg to g/g                                        
       can use default value                                                                        
       [QCdDMS3             ] overall sediment quality for Cd in S3                                 
       can use default value                                                                        
       [ScalPol             ] Scale factor from mg/kg to g/g                                        
       can use default value                                                                        
       [fResS1DM            ] total resuspension flux DM from layer S1                              
       Using output from proces [Res_DM              ]                                              
       [fResS2DM            ] total resuspension flux DM from layer S2                              
       Using output from proces [Res_DM              ]                                              
       [fBurS1DM            ] total burial flux DM from layer S1                                    
       can use default value                                                                        
       [fBurS2DM            ] total burial flux DM from layer S2                                    
       can use default value                                                                        
       [fDigS1DM            ] total digging flux DM to layer S1                                     
       can use default value                                                                        
       [fDigS2DM            ] total digging flux DM to layer S2                                     
       can use default value                                                                        
       [SWDigS1             ] switch for digging S1 (0=actual, 1=deeper)                            
       can use default value                                                                        
       [SWDigS2             ] switch for digging S2 (0=actual, 1=deeper)                            
       can use default value                                                                        
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [SedZoneSW           ] SWITCH 0=no SWITCH, <0 per segment, >0 per zone                       
       can use default value                                                                        
   Process is activated                                                                             
                                                                                                    
 Input for [S12TraCu            ] Resuspension, transport in S1-S2 Cu                               
       [QCuDMS1             ] overall sediment quality for Cu in S1                                 
       Using output from proces [PartS1_Cu           ]                                              
       [ScalPol             ] Scale factor from mg/kg to g/g                                        
       can use default value                                                                        
       [QCuDMS2             ] overall sediment quality for Cu in S2                                 
       can use default value                                                                        
       [ScalPol             ] Scale factor from mg/kg to g/g                                        
       can use default value                                                                        
       [QCuDMS3             ] overall sediment quality for Cu in S3                                 
       can use default value                                                                        
       [ScalPol             ] Scale factor from mg/kg to g/g                                        
       can use default value                                                                        
       [fResS1DM            ] total resuspension flux DM from layer S1                              
       Using output from proces [Res_DM              ]                                              
       [fResS2DM            ] total resuspension flux DM from layer S2                              
       Using output from proces [Res_DM              ]                                              
       [fBurS1DM            ] total burial flux DM from layer S1                                    
       can use default value                                                                        
       [fBurS2DM            ] total burial flux DM from layer S2                                    
       can use default value                                                                        
       [fDigS1DM            ] total digging flux DM to layer S1                                     
       can use default value                                                                        
       [fDigS2DM            ] total digging flux DM to layer S2                                     
       can use default value                                                                        
       [SWDigS1             ] switch for digging S1 (0=actual, 1=deeper)                            
       can use default value                                                                        
       [SWDigS2             ] switch for digging S2 (0=actual, 1=deeper)                            
       can use default value                                                                        
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [SedZoneSW           ] SWITCH 0=no SWITCH, <0 per segment, >0 per zone                       
       can use default value                                                                        
   Process is activated                                                                             
                                                                                                    
 Input for [S12TraZn            ] Resuspension, transport in S1-S2 Zn                               
       [QZnDMS1             ] overall sediment quality for Zn in S1                                 
       Using output from proces [PartS1_Zn           ]                                              
       [ScalPol             ] Scale factor from mg/kg to g/g                                        
       can use default value                                                                        
       [QZnDMS2             ] overall sediment quality for Zn in S2                                 
       can use default value                                                                        
       [ScalPol             ] Scale factor from mg/kg to g/g                                        
       can use default value                                                                        
       [QZnDMS3             ] overall sediment quality for Zn in S3                                 
       can use default value                                                                        
       [ScalPol             ] Scale factor from mg/kg to g/g                                        
       can use default value                                                                        
       [fResS1DM            ] total resuspension flux DM from layer S1                              
       Using output from proces [Res_DM              ]                                              
       [fResS2DM            ] total resuspension flux DM from layer S2                              
       Using output from proces [Res_DM              ]                                              
       [fBurS1DM            ] total burial flux DM from layer S1                                    
       can use default value                                                                        
       [fBurS2DM            ] total burial flux DM from layer S2                                    
       can use default value                                                                        
       [fDigS1DM            ] total digging flux DM to layer S1                                     
       can use default value                                                                        
       [fDigS2DM            ] total digging flux DM to layer S2                                     
       can use default value                                                                        
       [SWDigS1             ] switch for digging S1 (0=actual, 1=deeper)                            
       can use default value                                                                        
       [SWDigS2             ] switch for digging S2 (0=actual, 1=deeper)                            
       can use default value                                                                        
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [SedZoneSW           ] SWITCH 0=no SWITCH, <0 per segment, >0 per zone                       
       can use default value                                                                        
   Process is activated                                                                             
                                                                                                    
 Input for [PartS1_OMP          ] Partitioning OMP in S1                                            
       [OMPS1               ] OMP in sediment 1                                                     
       Using substance nr  30                                                                       
       [OMPS1-Dis           ] dissolved mass OMP in S1                                              
       can use default value                                                                        
       [OMPS1-Par           ] particulate mass OMP in S1                                            
       can use default value                                                                        
       [IM1S1               ] IM1 in layer S1                                                       
       Using substance nr  23                                                                       
       [IM2S1               ] IM2 in layer S1                                                       
       can use default value                                                                        
       [IM3S1               ] IM3 in layer S1                                                       
       can use default value                                                                        
       [DOCS1               ] DOC in pore water layer S1                                            
       can use default value                                                                        
       [XDOCOMP             ] efficiency DOC relative to POC for OMP                                
       can use default value                                                                        
       [POCS1               ] total POC in layer S1                                                 
       Using output from proces [S1_Comp             ]                                              
       [PHYTS1              ] total carbon in phytoplankton in layer S1                             
       Using output from proces [S1_Comp             ]                                              
       [KdDumIM1            ] partition coefficient dumIM1                                          
       can use default value                                                                        
       [KdDumIM2            ] partition coefficient dumIM2                                          
       can use default value                                                                        
       [KdDumIM3            ] partition coefficient dumIM3                                          
       can use default value                                                                        
       [lKpocOMPS1          ] log partition coefficient OMP-POC in S1                               
       can use default value                                                                        
       [lKphyOMPS1          ] log partition coefficient OMP-PHYT in S1                              
       can use default value                                                                        
       [PORS1               ] porosity of sediment layer S1                                         
       can use default value                                                                        
       [ActThS1             ] actual thickness layer S1                                             
       Using output from proces [S1_Comp             ]                                              
       [Surf                ] horizontal surface area of a DELWAQ segment                           
       Using segment function nr  1                                                                 
       [DMS1                ] total amount of dry matter in layer S1                                
       Using output from proces [S1_Comp             ]                                              
       [HLTAdsOMPS          ] half-life time non-eq. adsorption OMP in Sedim                        
       can use default value                                                                        
       [HLTDesOMPS          ] half-life time non-eq. desorption OMP in Sedim                        
       can use default value                                                                        
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [SWPoreChS1          ] switch for oxic (1) or sufidic (0) pore water                         
       can use default value                                                                        
       [dummy               ] dummy input item                                                      
       can use default value                                                                        
       [dummy               ] dummy input item                                                      
       can use default value                                                                        
       [dummy               ] dummy input item                                                      
       can use default value                                                                        
       [dummy               ] dummy input item                                                      
       can use default value                                                                        
       [dummy               ] dummy input item                                                      
       can use default value                                                                        
       [dummy               ] dummy input item                                                      
       can use default value                                                                        
       [SwSedYes            ] switch for using module in sediment                                   
       can use default value                                                                        
       [OMPGroup            ] Organic micro pollutants group 4                                      
       can use default value                                                                        
       [Volume              ] volume of computational cell                                          
       Using DELWAQ volume                                                                          
   Process is activated                                                                             
                                                                                                    
 Input for [S12TraOMP           ] Resuspension, transport in S1-S2 OMP                              
       [QOMPDMS1            ] overall sediment quality for OMP in S1                                
       Using output from proces [PartS1_OMP          ]                                              
       [ScalPol             ] Scale factor from mg/kg to g/g                                        
       can use default value                                                                        
       [QOMPDMS2            ] overall sediment quality for OMP in S2                                
       Using constant nr 49 with value: -999.000                                                    
       [ScalPol             ] Scale factor from mg/kg to g/g                                        
       can use default value                                                                        
       [QOMPDMS3            ] overall sediment quality for OMP in S3                                
       can use default value                                                                        
       [ScalPol             ] Scale factor from mg/kg to g/g                                        
       can use default value                                                                        
       [fResS1DM            ] total resuspension flux DM from layer S1                              
       Using output from proces [Res_DM              ]                                              
       [fResS2DM            ] total resuspension flux DM from layer S2                              
       Using output from proces [Res_DM              ]                                              
       [fBurS1DM            ] total burial flux DM from layer S1                                    
       can use default value                                                                        
       [fBurS2DM            ] total burial flux DM from layer S2                                    
       can use default value                                                                        
       [fDigS1DM            ] total digging flux DM to layer S1                                     
       can use default value                                                                        
       [fDigS2DM            ] total digging flux DM to layer S2                                     
       can use default value                                                                        
       [SWDigS1             ] switch for digging S1 (0=actual, 1=deeper)                            
       can use default value                                                                        
       [SWDigS2             ] switch for digging S2 (0=actual, 1=deeper)                            
       can use default value                                                                        
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [SedZoneSW           ] SWITCH 0=no SWITCH, <0 per segment, >0 per zone                       
       can use default value                                                                        
   Process is activated                                                                             
                                                                                                    
 Input for [PosOXY              ] Positive oxygen concentration                                     
       [OXY                 ] Dissolved Oxygen                                                      
       Using substance nr   1                                                                       
   Process is activated                                                                             
                                                                                                    
 Input for [Secchi              ] Secchi depth for visible-light (370-680nm)                        
       [ExtVl               ] total extinction coefficient visible light                            
       Using output from proces [Extinc_VLG          ]                                              
       [IM1                 ] inorganic matter (IM1)                                                
       Using substance nr   5                                                                       
       [IM2                 ] inorganic matter (IM2)                                                
       can use default value                                                                        
       [IM3                 ] inorganic matter (IM3)                                                
       can use default value                                                                        
       [POC1                ] POC1 (fast decomposing fraction)                                      
       Using substance nr  12                                                                       
       [POC2                ] POC2 (medium decomposing fraction)                                    
       can use default value                                                                        
       [POC3                ] POC3 (slow decomposing fraction)                                      
       can use default value                                                                        
       [POC4                ] POC4 (particulate refractory fraction)                                
       can use default value                                                                        
       [ExtVlODS            ] VL extinction by DOC                                                  
       Using output from proces [Extinc_VLG          ]                                              
       [Chlfa               ] Chlorophyll-a concentration                                           
       Using output from proces [Phy_dyn             ]                                              
       [SW_Uitz             ] Extinction by Uitzicht On (1) or Off (0)                              
       can use default value                                                                        
       [UitZDEPT1           ] Z1 (depth)                                                            
       can use default value                                                                        
       [UitZDEPT2           ] Z2 (depth)                                                            
       can use default value                                                                        
       [UitZCORCH           ] CORa correction factor                                                
       can use default value                                                                        
       [UitZC_DET           ] C3 coeff. absorption ash weight & detritus                            
       can use default value                                                                        
       [UitZC_GL1           ] C1 coeff. absorption ash weight & detritus                            
       can use default value                                                                        
       [UitZC_GL2           ] C2 coeff. absorption ash weight & detritus                            
       can use default value                                                                        
       [UitZHELHM           ] Hel_h constant                                                        
       can use default value                                                                        
       [UitZTAU             ] Tau constant calculation transparency                                 
       can use default value                                                                        
       [UitZangle           ] Angle of incidence solar radiation                                    
       can use default value                                                                        
       [DMCFDetC            ] DM:C ratio DetC                                                       
       can use default value                                                                        
       [PAConstant          ] Poole-Atkins constant                                                 
       can use default value                                                                        
   Process is activated                                                                             
                                                                                                    
 Input for [PartWK_OMP          ] Partitioning OMP in water column                                  
       [OMP                 ] Organic Micro Pollutant (OMP)                                         
       Using substance nr  21                                                                       
       [OMP-dis             ] dissolved concentration OMP                                           
       can use default value                                                                        
       [OMP-par             ] particulate concentration OMP                                         
       can use default value                                                                        
       [IM1                 ] inorganic matter (IM1)                                                
       Using substance nr   5                                                                       
       [IM2                 ] inorganic matter (IM2)                                                
       can use default value                                                                        
       [IM3                 ] inorganic matter (IM3)                                                
       can use default value                                                                        
       [DOC                 ] Dissolved Organic Carbon (DOC)                                        
       can use default value                                                                        
       [XDOCOMP             ] efficiency DOC relative to POC for OMP                                
       can use default value                                                                        
       [POCnoa              ] total POC (no algae)                                                  
       Using output from proces [Compos              ]                                              
       [Phyt                ] total carbon in phytoplankton                                         
       Using output from proces [Phy_dyn             ]                                              
       [KdDumIM1            ] partition coefficient dumIM1                                          
       can use default value                                                                        
       [KdDumIM2            ] partition coefficient dumIM2                                          
       can use default value                                                                        
       [KdDumIM3            ] partition coefficient dumIM3                                          
       can use default value                                                                        
       [lKpocOMP            ] log partition coefficient OMP-POC                                     
       can use default value                                                                        
       [lKphyOMP            ] log partition coefficient OMP-PHYT                                    
       can use default value                                                                        
       [Poros               ] volumetric porosity                                                   
       can use default value                                                                        
       [dummy               ] dummy input item                                                      
       can use default value                                                                        
       [dummy               ] dummy input item                                                      
       can use default value                                                                        
       [SS                  ] suspended solids                                                      
       Using output from proces [Compos              ]                                              
       [HLTAdsOMP           ] half-life time non-eq. adsorption OMP                                 
       can use default value                                                                        
       [HLTDesOMP           ] half-life time non-eq. desorption OMP                                 
       can use default value                                                                        
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [SWWaterKCh          ] switch for oxic (1) or sufidic (0) water                              
       can use default value                                                                        
       [dummy               ] dummy input item                                                      
       can use default value                                                                        
       [dummy               ] dummy input item                                                      
       can use default value                                                                        
       [dummy               ] dummy input item                                                      
       can use default value                                                                        
       [dummy               ] dummy input item                                                      
       can use default value                                                                        
       [dummy               ] dummy input item                                                      
       can use default value                                                                        
       [dummy               ] dummy input item                                                      
       can use default value                                                                        
       [SwSedNo             ] switch for using module in water column                               
       can use default value                                                                        
       [OMPGroup            ] Organic micro pollutants group 4                                      
       can use default value                                                                        
       [Volume              ] volume of computational cell                                          
       Using DELWAQ volume                                                                          
   Process is activated                                                                             
                                                                                                    
 Input for [Los_WK_OMP          ] Overall loss of OMP from water column                             
       [ZLossOMP            ] zeroth-order decay flux OMP                                           
       Using constant nr 50 with value:  0.00000                                                    
       [OMP                 ] Organic Micro Pollutant (OMP)                                         
       Using substance nr  21                                                                       
       [FrOMPDis            ] fraction free dissolved OMP in water column                           
       Using output from proces [PartWK_OMP          ]                                              
       [RcOMP               ] first-order rate const. loss OMP                                      
       Using constant nr 51 with value:  0.00000                                                    
       [TcOMP               ] temperature coefficient loss OMP in water                             
       Using constant nr 52 with value:  1.07000                                                    
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  15.0000                                                    
       [CTLoss              ] critical temperature for loss processes                               
       can use default value                                                                        
       [Volume              ] volume of computational cell                                          
       Using DELWAQ volume                                                                          
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [SWVnDegMP           ] option for selection old(0) or new(1) version                         
       can use default value                                                                        
       [SWWaterKCh          ] switch for oxic (1) or sufidic (0) water                              
       can use default value                                                                        
       [SWDegOMP            ] deg.frac.OMP: 0=tot|1=dis|2=dis+DOC                                   
       can use default value                                                                        
       [FrOMPDOC            ] fraction OMP adsorbed to DOC                                          
       Using output from proces [PartWK_OMP          ]                                              
       [RcDegOOMP           ] first-order rate const. degr. OMP oxid. cond.                         
       can use default value                                                                        
       [RcDegROMP           ] first-order rate const. degr. OMP red. cond.                          
       can use default value                                                                        
       [SwSedNo             ] switch for using module in water column                               
       can use default value                                                                        
   Process is activated                                                                             
                                                                                                    
 Input for [Los_S1_OMP          ] Overall loss of OMP from S1                                       
       [ZLossOMPS1          ] zeroth-order decay flux OMP in S1                                     
       can use default value                                                                        
       [OMPS1               ] OMP in sediment 1                                                     
       Using substance nr  30                                                                       
       [FrOMPDisS1          ] fraction free dissolved OMP in S1                                     
       Using output from proces [PartS1_OMP          ]                                              
       [RcOMPS1             ] first-order rate const. loss OMP in S1                                
       can use default value                                                                        
       [TcOMPSed            ] temp. coefficient loss OMP in sediment                                
       can use default value                                                                        
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  15.0000                                                    
       [CTLoss              ] critical temperature for loss processes                               
       can use default value                                                                        
       [Volume              ] volume of computational cell                                          
       Using DELWAQ volume                                                                          
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [SWVnDegMP           ] option for selection old(0) or new(1) version                         
       can use default value                                                                        
       [SWPoreChS1          ] switch for oxic (1) or sufidic (0) pore water                         
       can use default value                                                                        
       [SWDegOMP            ] deg.frac.OMP: 0=tot|1=dis|2=dis+DOC                                   
       can use default value                                                                        
       [FrOMPDOCS1          ] fraction OMP in S1 adsorbed to DOC                                    
       Using output from proces [PartS1_OMP          ]                                              
       [RcDegOOMP           ] first-order rate const. degr. OMP oxid. cond.                         
       can use default value                                                                        
       [RcDegROMP           ] first-order rate const. degr. OMP red. cond.                          
       can use default value                                                                        
       [SwSedYes            ] switch for using module in sediment                                   
       can use default value                                                                        
   Process is activated                                                                             
                                                                                                    
 Input for [Sed_OMP             ] Sedimentation adsorbed OMP                                        
       [fSedPOCnoa          ] total sedimentation flux POC (no algae)                               
       Using output from proces [Sum_Sedim           ]                                              
       [fSedPHYT            ] total sedimentation flux phytoplankton                                
       Using output from proces [SedPhDyn            ]                                              
       [QOMPPOC             ] quality POC for OMP in water column                                   
       Using output from proces [PartWK_OMP          ]                                              
       [QOMPPHYT            ] quality PHYT for OMP in water column                                  
       Using output from proces [PartWK_OMP          ]                                              
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [FrOMPPOC            ] fraction OMP adsorbed to POC                                          
       Using output from proces [PartWK_OMP          ]                                              
       [FrOMPPHYT           ] fraction OMP adsorbed to PHYT                                         
       Using output from proces [PartWK_OMP          ]                                              
       [VxSedPOCna          ] sedimentation velocity POC (no algae)                                 
       Using output from proces [Sum_Sedim           ]                                              
       [VxSedPhyt           ] sedimentation velocity phytoplankton                                  
       Using output from proces [SedPhDyn            ]                                              
   Process is activated                                                                             
                                                                                                    
                                                                                                    
# determinig the processes to model the substances.                                                 
                                                                                                    
-fluxes for [OXY                 ]                                                                  
 found flux  [dDenitWat           ] denitrification flux in the water column                        
   from proces [DenWat_NO3          ] Denitrification in water column                               
   process is switched on.                                                                          
 found flux  [dNITRIF             ] nitrification flux                                              
   from proces [Nitrif_NH4          ] Nitrification of ammonium                                     
   process is switched on.                                                                          
 found flux  [dREAROXY            ] reaeration flux of dissolved oxygen                             
   from proces [RearOXY             ] Reaeration of oxygen                                          
   process is switched on.                                                                          
 found flux  [dMinDetCS1          ] mineralisation flux DetCS1                                      
   from proces [BMS1_DetC           ] Mineralisation detritus carbon in sediment S1                 
   process is switched on.                                                                          
 found flux  [dOxyBODCOD          ] oxygen consumption from decay BOD and COD                       
   from proces [BODCOD              ] Mineralisation BOD and COD                                    
   process is switched on.                                                                          
 found flux  [dOxSOD              ] oxygen consumption from SOD                                     
   from proces [SedOXYDem           ] Sediment oxygen demand                                        
   process is switched on.                                                                          
 found flux  [dPPGreen            ] net primary production of Greens                                
   from proces [GroMrt_Gre          ] Nett primary production and mortality green algae             
   process is switched on.                                                                          
 found flux  [dPPDiat             ] net primary production of Diatoms                               
   from proces [GroMrt_Dia          ] Nett primary production and mortality diatoms                 
   process is switched on.                                                                          
 found flux  [dcPPGreen           ] correction flux Greens growth                                   
   from proces [PPrLim              ] Limitation (numerical) on primary production                  
   process is switched on.                                                                          
 found flux  [dcPPDiat            ] correction flux Diatoms growth                                  
   from proces [PPrLim              ] Limitation (numerical) on primary production                  
   process is switched on.                                                                          
 found flux  [dNO3Upt             ] uptake of NO3 by algae growth                                   
   from proces [NutUpt_Alg          ] Uptake of nutrients by growth of algae                        
   process is switched on.                                                                          
 found flux  [dOxCon              ] mineralisation flux oxidised with DO                            
   from proces [CONSELAC            ] Consumption oxygen/other electron acceptors                   
   process is switched on.                                                                          
 found flux  [dSUDox              ] sulphide oxidation flux                                         
   from proces [OXIDSUD             ] Oxidation of dissolved sulphide                               
   process is switched on.                                                                          
-dispersion for [OXY                 ]                                                              
 no dispersions found                                                                               
-velocity for [OXY                 ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [CBOD5               ]                                                                  
 found flux  [dCBOD5              ] decay flux of CBOD5                                             
   from proces [BODCOD              ] Mineralisation BOD and COD                                    
   process is switched on.                                                                          
 found flux  [dSedBOD5            ] sedimentation flux CBOD5                                        
   from proces [S_CBOD51            ] Sedimentation CBOD5 (first pool)                              
   process is switched on.                                                                          
-dispersion for [CBOD5               ]                                                              
 no dispersions found                                                                               
-velocity for [CBOD5               ]                                                                
 found velocity [VxSedBOD5           ] sedimentation velocity CBOD5                                 
   from proces [S_CBOD51            ] Sedimentation CBOD5 (first pool)                              
   process is switched on.                                                                          
                                                                                                    
-fluxes for [COD_Cr              ]                                                                  
 found flux  [dCOD_Cr             ] decay flux of COD_Cr                                            
   from proces [BODCOD              ] Mineralisation BOD and COD                                    
   process is switched on.                                                                          
 found flux  [dSedCODCr           ] sedimentation flux COD_Cr                                       
   from proces [S_CODCr             ] Sedimentation COD Cr method                                   
   process is switched on.                                                                          
-dispersion for [COD_Cr              ]                                                              
 no dispersions found                                                                               
-velocity for [COD_Cr              ]                                                                
 found velocity [VxSedCODCr          ] sedimentation velocity COD_Cr                                
   from proces [S_CODCr             ] Sedimentation COD Cr method                                   
   process is switched on.                                                                          
                                                                                                    
-fluxes for [NBOD5               ]                                                                  
 found flux  [dNBOD5              ] decay flux of NBOD5                                             
   from proces [BODCOD              ] Mineralisation BOD and COD                                    
   process is switched on.                                                                          
 found flux  [dSedNBOD5           ] sedimentation flux NBOD5                                        
   from proces [S_NBOD5             ] Sedimentation of NBOD5                                        
   process is switched on.                                                                          
-dispersion for [NBOD5               ]                                                              
 no dispersions found                                                                               
-velocity for [NBOD5               ]                                                                
 found velocity [VxSedNBOD5          ] sedimentation velocity NBOD5                                 
   from proces [S_NBOD5             ] Sedimentation of NBOD5                                        
   process is switched on.                                                                          
                                                                                                    
-fluxes for [IM1                 ]                                                                  
 found flux  [dSedIM1             ] sedimentation flux of IM1 towards S1                            
   from proces [Sed_IM1             ] Sedimentation IM1                                             
   process is switched on.                                                                          
 found flux  [dSedIM1S2           ] sedimentation flux of IM1 towards S2                            
   from proces [Sed_IM1             ] Sedimentation IM1                                             
   process is switched on.                                                                          
 found flux  [dResS1IM1           ] resuspension flux IM1 from layer S1                             
   from proces [S12TraIM1           ] Resuspension, transport in S1-S2 IM1                          
   process is switched on.                                                                          
 found flux  [dResS2IM1           ] resuspension flux IM1 from layer S2                             
   from proces [S12TraIM1           ] Resuspension, transport in S1-S2 IM1                          
   process is switched on.                                                                          
-dispersion for [IM1                 ]                                                              
 no dispersions found                                                                               
-velocity for [IM1                 ]                                                                
 found velocity [VxSedIm1            ] sedimentation velocity IM1                                   
   from proces [Sed_IM1             ] Sedimentation IM1                                             
   process is switched on.                                                                          
                                                                                                    
-fluxes for [NH4                 ]                                                                  
 found flux  [dNITRIF             ] nitrification flux                                              
   from proces [Nitrif_NH4          ] Nitrification of ammonium                                     
   process is switched on.                                                                          
 found flux  [dMinDetNS1          ] mineralisation flux DetNS1                                      
   from proces [BMS1_DetN           ] Mineralisation detritus nitrogen in sediment S1               
   process is switched on.                                                                          
 found flux  [dMinPON1            ] mineralization flux PON1 to NH4                                 
   from proces [DecFast             ] Mineralization fast decomp. detritus POC1                     
   process is switched on.                                                                          
 found flux  [dNH4Upt             ] NH4 uptake by algae growth                                      
   from proces [NutUpt_Alg          ] Uptake of nutrients by growth of algae                        
   process is switched on.                                                                          
 found flux  [dNH4Aut             ] autolysis flux of NH4                                           
   from proces [NutRel_Alg          ] Release (nutrients/detritus) by of mortality algae            
   process is switched on.                                                                          
-dispersion for [NH4                 ]                                                              
 no dispersions found                                                                               
-velocity for [NH4                 ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [NO3                 ]                                                                  
 found flux  [dDenitSed           ] denitrification flux from the sediment                          
   from proces [DenSed_NO3          ] Denitrification in sediment                                   
   process is switched on.                                                                          
 found flux  [dDenitWat           ] denitrification flux in the water column                        
   from proces [DenWat_NO3          ] Denitrification in water column                               
   process is switched on.                                                                          
 found flux  [dNITRIF             ] nitrification flux                                              
   from proces [Nitrif_NH4          ] Nitrification of ammonium                                     
   process is switched on.                                                                          
 found flux  [dNO3Upt             ] uptake of NO3 by algae growth                                   
   from proces [NutUpt_Alg          ] Uptake of nutrients by growth of algae                        
   process is switched on.                                                                          
 found flux  [dNiDen              ] mineralisation flux oxidised with nitrate                       
   from proces [CONSELAC            ] Consumption oxygen/other electron acceptors                   
   process is switched on.                                                                          
-dispersion for [NO3                 ]                                                              
 no dispersions found                                                                               
-velocity for [NO3                 ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [PO4                 ]                                                                  
 found flux  [dAdsPO4AAP          ] adsorption flux PO4 to AAP                                      
   from proces [AdsPO4AAP           ] Ad(De)Sorption ortho phosphorus to inorg. matter              
   process is switched on.                                                                          
 found flux  [dMinDetPS1          ] mineralisation flux DetPS1                                      
   from proces [BMS1_DetP           ] Mineralisation detritus phosphorus in sediment S1             
   process is switched on.                                                                          
 found flux  [dMinPOP1            ] mineralization flux POP1 to PO4                                 
   from proces [DecFast             ] Mineralization fast decomp. detritus POC1                     
   process is switched on.                                                                          
 found flux  [dPO4Upt             ] PO4 uptake by algae growth                                      
   from proces [NutUpt_Alg          ] Uptake of nutrients by growth of algae                        
   process is switched on.                                                                          
 found flux  [dPO4Aut             ] autolysis of PO4                                                
   from proces [NutRel_Alg          ] Release (nutrients/detritus) by of mortality algae            
   process is switched on.                                                                          
-dispersion for [PO4                 ]                                                              
 no dispersions found                                                                               
-velocity for [PO4                 ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [AAP                 ]                                                                  
 found flux  [dAdsPO4AAP          ] adsorption flux PO4 to AAP                                      
   from proces [AdsPO4AAP           ] Ad(De)Sorption ortho phosphorus to inorg. matter              
   process is switched on.                                                                          
 found flux  [dSedAAP             ] sedimentation flux AAP towards S1                               
   from proces [Sed_AAP             ] Sedimentation AAP (adsorbed PO4)                              
   process is switched on.                                                                          
 found flux  [dSedAAPS2           ] sedimentation flux AAP towards S2                               
   from proces [Sed_AAP             ] Sedimentation AAP (adsorbed PO4)                              
   process is switched on.                                                                          
 found flux  [dSedCAAP            ] sedimentation flux AAP towards S1                               
   from proces [Sed_CAAP            ] Sedimentation adsorbed P as component                         
   process is switched on.                                                                          
 found flux  [dResS1AAP           ] resuspension flux AAP from layer S1                             
   from proces [S12TraAAP           ] Resuspension, transport in S1-S2 AAP                          
   process is switched on.                                                                          
 found flux  [dResS2AAP           ] resuspension flux AAP from layer S1                             
   from proces [S12TraAAP           ] Resuspension, transport in S1-S2 AAP                          
   process is switched on.                                                                          
-dispersion for [AAP                 ]                                                              
 no dispersions found                                                                               
-velocity for [AAP                 ]                                                                
 found velocity [VxSedAAP            ] sedimentation velocity AAP                                   
   from proces [Sed_AAP             ] Sedimentation AAP (adsorbed PO4)                              
   process is switched on.                                                                          
 found velocity [VxSedCAAP           ] sedimentation velocity AAP                                   
   from proces [Sed_CAAP            ] Sedimentation adsorbed P as component                         
   process is switched on.                                                                          
                                                                                                    
-fluxes for [SO4                 ]                                                                  
 found flux  [dSuRed              ] mineralisation flux oxid. with sulphate                         
   from proces [CONSELAC            ] Consumption oxygen/other electron acceptors                   
   process is switched on.                                                                          
 found flux  [dSUDox              ] sulphide oxidation flux                                         
   from proces [OXIDSUD             ] Oxidation of dissolved sulphide                               
   process is switched on.                                                                          
-dispersion for [SO4                 ]                                                              
 no dispersions found                                                                               
-velocity for [SO4                 ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [SUD                 ]                                                                  
 found flux  [dMinPOS1            ] mineralization flux POS1 to SUD                                 
   from proces [DecFast             ] Mineralization fast decomp. detritus POC1                     
   process is switched on.                                                                          
 found flux  [dSuRed              ] mineralisation flux oxid. with sulphate                         
   from proces [CONSELAC            ] Consumption oxygen/other electron acceptors                   
   process is switched on.                                                                          
 found flux  [dSUDox              ] sulphide oxidation flux                                         
   from proces [OXIDSUD             ] Oxidation of dissolved sulphide                               
   process is switched on.                                                                          
-dispersion for [SUD                 ]                                                              
 no dispersions found                                                                               
-velocity for [SUD                 ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [POC1                ]                                                                  
 found flux  [dCnvPPOC1           ] conversion flux POC1 to POC2                                    
   from proces [DecFast             ] Mineralization fast decomp. detritus POC1                     
   process is switched on.                                                                          
 found flux  [dCnvDPOC1           ] conversion flux POC1 to DOC                                     
   from proces [DecFast             ] Mineralization fast decomp. detritus POC1                     
   process is switched on.                                                                          
 found flux  [dMinPOC1G           ] mineralization flux POC1 to CO2                                 
   from proces [DecFast             ] Mineralization fast decomp. detritus POC1                     
   process is switched on.                                                                          
 found flux  [dMortDetC           ] production of DetC by mortality phytoplankton                   
   from proces [NutRel_Alg          ] Release (nutrients/detritus) by of mortality algae            
   process is switched on.                                                                          
 found flux  [dSedPOC1            ] sedimentation flux POC1                                         
   from proces [Sed_POC1            ] Sedimentation POC1 3d                                         
   process is switched on.                                                                          
 found flux  [dResS1DetC          ] resuspension flux DetC from layer S1                            
   from proces [S12TraDetC          ] Resuspension, transport in S1-S2 DetC                         
   process is switched on.                                                                          
 found flux  [dResS2DetC          ] resuspension flux DetC from layer S2                            
   from proces [S12TraDetC          ] Resuspension, transport in S1-S2 DetC                         
   process is switched on.                                                                          
-dispersion for [POC1                ]                                                              
 no dispersions found                                                                               
-velocity for [POC1                ]                                                                
 found velocity [VxSedPOC1           ] sedimentation velocity POC1                                  
   from proces [Sed_POC1            ] Sedimentation POC1 3d                                         
   process is switched on.                                                                          
                                                                                                    
-fluxes for [PON1                ]                                                                  
 found flux  [dCnvPPON1           ] conversion flux PON1 to PON2                                    
   from proces [DecFast             ] Mineralization fast decomp. detritus POC1                     
   process is switched on.                                                                          
 found flux  [dCnvDPON1           ] conversion flux PON1 to DON                                     
   from proces [DecFast             ] Mineralization fast decomp. detritus POC1                     
   process is switched on.                                                                          
 found flux  [dMinPON1            ] mineralization flux PON1 to NH4                                 
   from proces [DecFast             ] Mineralization fast decomp. detritus POC1                     
   process is switched on.                                                                          
 found flux  [dMortDetN           ] production of DetN by mortality phytoplankton                   
   from proces [NutRel_Alg          ] Release (nutrients/detritus) by of mortality algae            
   process is switched on.                                                                          
 found flux  [dSedPON1            ] sedimentation flux PON1                                         
   from proces [SedNPOC1            ] Sedim. nutrients in POC1                                      
   process is switched on.                                                                          
 found flux  [dResS1DetN          ] resuspension flux DetN from layer S1                            
   from proces [S12TraDetN          ] Resuspension, transport in S1-S2 DetN                         
   process is switched on.                                                                          
 found flux  [dResS2DetN          ] resuspension flux DetN from layer S2                            
   from proces [S12TraDetN          ] Resuspension, transport in S1-S2 DetN                         
   process is switched on.                                                                          
-dispersion for [PON1                ]                                                              
 no dispersions found                                                                               
-velocity for [PON1                ]                                                                
 found velocity [VxSedPOC1           ] sedimentation velocity POC1                                  
   from proces [Sed_POC1            ] Sedimentation POC1 3d                                         
   process is switched on.                                                                          
                                                                                                    
-fluxes for [POP1                ]                                                                  
 found flux  [dCnvPPOP1           ] conversion flux POP1 to POP2                                    
   from proces [DecFast             ] Mineralization fast decomp. detritus POC1                     
   process is switched on.                                                                          
 found flux  [dCnvDPOP1           ] conversion flux POP1 to DOP                                     
   from proces [DecFast             ] Mineralization fast decomp. detritus POC1                     
   process is switched on.                                                                          
 found flux  [dMinPOP1            ] mineralization flux POP1 to PO4                                 
   from proces [DecFast             ] Mineralization fast decomp. detritus POC1                     
   process is switched on.                                                                          
 found flux  [dMortDetP           ] production of DetP by mortality phytoplankton                   
   from proces [NutRel_Alg          ] Release (nutrients/detritus) by of mortality algae            
   process is switched on.                                                                          
 found flux  [dSedPOP1            ] sedimentation flux POP1                                         
   from proces [SedNPOC1            ] Sedim. nutrients in POC1                                      
   process is switched on.                                                                          
 found flux  [dResS1DetP          ] resuspension flux DetP from layer S1                            
   from proces [S12TraDetP          ] Resuspension, transport in S1-S2 DetP                         
   process is switched on.                                                                          
 found flux  [dResS2DetP          ] resuspension flux DetP from layer S2                            
   from proces [S12TraDetP          ] Resuspension, transport in S1-S2 DetP                         
   process is switched on.                                                                          
-dispersion for [POP1                ]                                                              
 no dispersions found                                                                               
-velocity for [POP1                ]                                                                
 found velocity [VxSedPOC1           ] sedimentation velocity POC1                                  
   from proces [Sed_POC1            ] Sedimentation POC1 3d                                         
   process is switched on.                                                                          
                                                                                                    
-fluxes for [Diat                ]                                                                  
 found flux  [dPPDiat             ] net primary production of Diatoms                               
   from proces [GroMrt_Dia          ] Nett primary production and mortality diatoms                 
   process is switched on.                                                                          
 found flux  [dMrtDiat            ] mortality of Diatoms                                            
   from proces [GroMrt_Dia          ] Nett primary production and mortality diatoms                 
   process is switched on.                                                                          
 found flux  [dcPPDiat            ] correction flux Diatoms growth                                  
   from proces [PPrLim              ] Limitation (numerical) on primary production                  
   process is switched on.                                                                          
 found flux  [dSedDiat            ] sedimentation flux Diatoms                                      
   from proces [SedDiat             ] Sedimentation diatoms                                         
   process is switched on.                                                                          
-dispersion for [Diat                ]                                                              
 no dispersions found                                                                               
-velocity for [Diat                ]                                                                
 found velocity [VxSedDiat           ] sedimentation velocity Diatoms                               
   from proces [SedDiat             ] Sedimentation diatoms                                         
   process is switched on.                                                                          
                                                                                                    
-fluxes for [Green               ]                                                                  
 found flux  [dPPGreen            ] net primary production of Greens                                
   from proces [GroMrt_Gre          ] Nett primary production and mortality green algae             
   process is switched on.                                                                          
 found flux  [dMrtGreen           ] mortality of Greens                                             
   from proces [GroMrt_Gre          ] Nett primary production and mortality green algae             
   process is switched on.                                                                          
 found flux  [dcPPGreen           ] correction flux Greens growth                                   
   from proces [PPrLim              ] Limitation (numerical) on primary production                  
   process is switched on.                                                                          
 found flux  [dSedGreen           ] sedimentation flux Greens                                       
   from proces [Sed_Gre             ] Sedimentation green algae                                     
   process is switched on.                                                                          
-dispersion for [Green               ]                                                              
 no dispersions found                                                                               
-velocity for [Green               ]                                                                
 found velocity [VxSedGreen          ] sedimentation velocity Greens                                
   from proces [Sed_Gre             ] Sedimentation green algae                                     
   process is switched on.                                                                          
                                                                                                    
-fluxes for [FColi               ]                                                                  
 found flux  [dMrtFColi           ] mortality flux FColi                                            
   from proces [FColiMrt            ] Mortality FColi bacteria                                      
   process is switched on.                                                                          
-dispersion for [FColi               ]                                                              
 no dispersions found                                                                               
-velocity for [FColi               ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [Cd                  ]                                                                  
 found flux  [dSedCd              ] sedimentation flux Cd towards S1                                
   from proces [Sed_Cd              ] Sedimentation adsorbed Cd                                     
   process is switched on.                                                                          
 found flux  [dSedCdS2            ] sedimentation flux Cd towards S2                                
   from proces [Sed_Cd              ] Sedimentation adsorbed Cd                                     
   process is switched on.                                                                          
 found flux  [dResS1Cd            ] resuspension flux Cd from layer S1                              
   from proces [S12TraCd            ] Resuspension, transport in S1-S2 Cd                           
   process is switched on.                                                                          
 found flux  [dResS2Cd            ] resuspension flux Cd from layer S2                              
   from proces [S12TraCd            ] Resuspension, transport in S1-S2 Cd                           
   process is switched on.                                                                          
-dispersion for [Cd                  ]                                                              
 no dispersions found                                                                               
-velocity for [Cd                  ]                                                                
 found velocity [VxSedCd             ] sedimentation velocity Cd                                    
   from proces [Sed_Cd              ] Sedimentation adsorbed Cd                                     
   process is switched on.                                                                          
                                                                                                    
-fluxes for [Cu                  ]                                                                  
 found flux  [dSedCu              ] sedimentation flux Cu towards S1                                
   from proces [Sed_Cu              ] Sedimentation adsorbed Cu                                     
   process is switched on.                                                                          
 found flux  [dSedCuS2            ] sedimentation flux Cu towards S2                                
   from proces [Sed_Cu              ] Sedimentation adsorbed Cu                                     
   process is switched on.                                                                          
 found flux  [dResS1Cu            ] resuspension flux Cu from layer S1                              
   from proces [S12TraCu            ] Resuspension, transport in S1-S2 Cu                           
   process is switched on.                                                                          
 found flux  [dResS2Cu            ] resuspension flux Cu from layer S2                              
   from proces [S12TraCu            ] Resuspension, transport in S1-S2 Cu                           
   process is switched on.                                                                          
-dispersion for [Cu                  ]                                                              
 no dispersions found                                                                               
-velocity for [Cu                  ]                                                                
 found velocity [VxSedCu             ] sedimentation velocity Cu                                    
   from proces [Sed_Cu              ] Sedimentation adsorbed Cu                                     
   process is switched on.                                                                          
                                                                                                    
-fluxes for [Zn                  ]                                                                  
 found flux  [dSedZn              ] sedimentation flux Zn towards S1                                
   from proces [Sed_Zn              ] Sedimentation adsorbed Zn                                     
   process is switched on.                                                                          
 found flux  [dSedZnS2            ] sedimentation flux Zn towards S2                                
   from proces [Sed_Zn              ] Sedimentation adsorbed Zn                                     
   process is switched on.                                                                          
 found flux  [dResS1Zn            ] resuspension flux Zn from layer S1                              
   from proces [S12TraZn            ] Resuspension, transport in S1-S2 Zn                           
   process is switched on.                                                                          
 found flux  [dResS2Zn            ] resuspension flux Zn from layer S2                              
   from proces [S12TraZn            ] Resuspension, transport in S1-S2 Zn                           
   process is switched on.                                                                          
-dispersion for [Zn                  ]                                                              
 no dispersions found                                                                               
-velocity for [Zn                  ]                                                                
 found velocity [VxSedZn             ] sedimentation velocity Zn                                    
   from proces [Sed_Zn              ] Sedimentation adsorbed Zn                                     
   process is switched on.                                                                          
                                                                                                    
-fluxes for [OMP                 ]                                                                  
 found flux  [dResS1OMP           ] resuspension flux OMP from layer S1                             
   from proces [S12TraOMP           ] Resuspension, transport in S1-S2 OMP                          
   process is switched on.                                                                          
 found flux  [dResS2OMP           ] resuspension flux OMP from layer S2                             
   from proces [S12TraOMP           ] Resuspension, transport in S1-S2 OMP                          
   process is switched on.                                                                          
 found flux  [dLossOMP            ] overall loss flux OMP in water                                  
   from proces [Los_WK_OMP          ] Overall loss of OMP from water column                         
   process is switched on.                                                                          
 found flux  [dSedOMP             ] sedimentation flux OMP                                          
   from proces [Sed_OMP             ] Sedimentation adsorbed OMP                                    
   process is switched on.                                                                          
-dispersion for [OMP                 ]                                                              
 no dispersions found                                                                               
-velocity for [OMP                 ]                                                                
 found velocity [VxSedOMP            ] sedimentation velocity OMP                                   
   from proces [Sed_OMP             ] Sedimentation adsorbed OMP                                    
   process is switched on.                                                                          
                                                                                                    
-fluxes for [SOD                 ]                                                                  
 found flux  [dSOD                ] decay flux of SOD                                               
   from proces [SedOXYDem           ] Sediment oxygen demand                                        
   process is switched on.                                                                          
 found flux  [dSedSOD             ] sedimentation flux SOD                                          
   from proces [SED_SOD             ] Sedimentation of oxygen demand                                
   process is switched on.                                                                          
-dispersion for [SOD                 ]                                                              
 no dispersions found                                                                               
-velocity for [SOD                 ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [IM1S1               ]                                                                  
 found flux  [dSedIM1             ] sedimentation flux of IM1 towards S1                            
   from proces [Sed_IM1             ] Sedimentation IM1                                             
   process is switched on.                                                                          
 found flux  [dResS1IM1           ] resuspension flux IM1 from layer S1                             
   from proces [S12TraIM1           ] Resuspension, transport in S1-S2 IM1                          
   process is switched on.                                                                          
 found flux  [dBurS1IM1           ] burial flux IM1 from layer S1                                   
   from proces [S12TraIM1           ] Resuspension, transport in S1-S2 IM1                          
   process is switched on.                                                                          
 found flux  [dDigS1IM1           ] digging flux IM1 to layer S1                                    
   from proces [S12TraIM1           ] Resuspension, transport in S1-S2 IM1                          
   process is switched on.                                                                          
-dispersion for [IM1S1               ]                                                              
 no dispersions found                                                                               
-velocity for [IM1S1               ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [DetCS1              ]                                                                  
 found flux  [dMinDetCS1          ] mineralisation flux DetCS1                                      
   from proces [BMS1_DetC           ] Mineralisation detritus carbon in sediment S1                 
   process is switched on.                                                                          
 found flux  [dSWMinDCS1          ] SWITCH mineralisation flux DetC in layer S1                     
   from proces [BMS1_DetC           ] Mineralisation detritus carbon in sediment S1                 
   process is switched on.                                                                          
 found flux  [dSedPHYT            ] total sedimentation flux algae                                  
   from proces [SedPhDyn            ] Sum sedimentation of algae - Dynamo                           
   process is switched on.                                                                          
 found flux  [dSedPOC1            ] sedimentation flux POC1                                         
   from proces [Sed_POC1            ] Sedimentation POC1 3d                                         
   process is switched on.                                                                          
 found flux  [dResS1DetC          ] resuspension flux DetC from layer S1                            
   from proces [S12TraDetC          ] Resuspension, transport in S1-S2 DetC                         
   process is switched on.                                                                          
 found flux  [dBurS1DetC          ] burial flux DetC from layer S1                                  
   from proces [S12TraDetC          ] Resuspension, transport in S1-S2 DetC                         
   process is switched on.                                                                          
 found flux  [dSWBuS1DtC          ] burial flux DetC from layer S1                                  
   from proces [S12TraDetC          ] Resuspension, transport in S1-S2 DetC                         
   process is switched on.                                                                          
 found flux  [dDigS1DetC          ] digging flux DetC to layer S1                                   
   from proces [S12TraDetC          ] Resuspension, transport in S1-S2 DetC                         
   process is switched on.                                                                          
-dispersion for [DetCS1              ]                                                              
 no dispersions found                                                                               
-velocity for [DetCS1              ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [DetNS1              ]                                                                  
 found flux  [dMinDetNS1          ] mineralisation flux DetNS1                                      
   from proces [BMS1_DetN           ] Mineralisation detritus nitrogen in sediment S1               
   process is switched on.                                                                          
 found flux  [dSWMinDNS1          ] SWITCH mineralisation flux DetN in layer S1                     
   from proces [BMS1_DetN           ] Mineralisation detritus nitrogen in sediment S1               
   process is switched on.                                                                          
 found flux  [dSedAlgN            ] total sedimentation flux AlgN                                   
   from proces [SedPhDyn            ] Sum sedimentation of algae - Dynamo                           
   process is switched on.                                                                          
 found flux  [dSedPON1            ] sedimentation flux PON1                                         
   from proces [SedNPOC1            ] Sedim. nutrients in POC1                                      
   process is switched on.                                                                          
 found flux  [dResS1DetN          ] resuspension flux DetN from layer S1                            
   from proces [S12TraDetN          ] Resuspension, transport in S1-S2 DetN                         
   process is switched on.                                                                          
 found flux  [dBurS1DetN          ] burial flux DetN from layer S1                                  
   from proces [S12TraDetN          ] Resuspension, transport in S1-S2 DetN                         
   process is switched on.                                                                          
 found flux  [dSWBuS1DtN          ] burial flux DetN from layer S1                                  
   from proces [S12TraDetN          ] Resuspension, transport in S1-S2 DetN                         
   process is switched on.                                                                          
 found flux  [dDigS1DetN          ] digging flux DetN to layer S1                                   
   from proces [S12TraDetN          ] Resuspension, transport in S1-S2 DetN                         
   process is switched on.                                                                          
-dispersion for [DetNS1              ]                                                              
 no dispersions found                                                                               
-velocity for [DetNS1              ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [DetPS1              ]                                                                  
 found flux  [dMinDetPS1          ] mineralisation flux DetPS1                                      
   from proces [BMS1_DetP           ] Mineralisation detritus phosphorus in sediment S1             
   process is switched on.                                                                          
 found flux  [dSWMinDPS1          ] SWITCH mineralisation flux DetP in layer S1                     
   from proces [BMS1_DetP           ] Mineralisation detritus phosphorus in sediment S1             
   process is switched on.                                                                          
 found flux  [dSedAlgP            ] total sedimentation flux AlgP                                   
   from proces [SedPhDyn            ] Sum sedimentation of algae - Dynamo                           
   process is switched on.                                                                          
 found flux  [dSedPOP1            ] sedimentation flux POP1                                         
   from proces [SedNPOC1            ] Sedim. nutrients in POC1                                      
   process is switched on.                                                                          
 found flux  [dResS1DetP          ] resuspension flux DetP from layer S1                            
   from proces [S12TraDetP          ] Resuspension, transport in S1-S2 DetP                         
   process is switched on.                                                                          
 found flux  [dBurS1DetP          ] burial flux DetP from layer S1                                  
   from proces [S12TraDetP          ] Resuspension, transport in S1-S2 DetP                         
   process is switched on.                                                                          
 found flux  [dSWBuS1DtP          ] burial flux DetP from layer S1                                  
   from proces [S12TraDetP          ] Resuspension, transport in S1-S2 DetP                         
   process is switched on.                                                                          
 found flux  [dDigS1DetP          ] digging flux DetP to layer S1                                   
   from proces [S12TraDetP          ] Resuspension, transport in S1-S2 DetP                         
   process is switched on.                                                                          
-dispersion for [DetPS1              ]                                                              
 no dispersions found                                                                               
-velocity for [DetPS1              ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [CdS1                ]                                                                  
 found flux  [dSedCd              ] sedimentation flux Cd towards S1                                
   from proces [Sed_Cd              ] Sedimentation adsorbed Cd                                     
   process is switched on.                                                                          
 found flux  [dResS1Cd            ] resuspension flux Cd from layer S1                              
   from proces [S12TraCd            ] Resuspension, transport in S1-S2 Cd                           
   process is switched on.                                                                          
 found flux  [dBurS1Cd            ] burial flux Cd from layer S1                                    
   from proces [S12TraCd            ] Resuspension, transport in S1-S2 Cd                           
   process is switched on.                                                                          
 found flux  [dDigS1Cd            ] digging flux Cd to layer S1                                     
   from proces [S12TraCd            ] Resuspension, transport in S1-S2 Cd                           
   process is switched on.                                                                          
-dispersion for [CdS1                ]                                                              
 no dispersions found                                                                               
-velocity for [CdS1                ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [CuS1                ]                                                                  
 found flux  [dSedCu              ] sedimentation flux Cu towards S1                                
   from proces [Sed_Cu              ] Sedimentation adsorbed Cu                                     
   process is switched on.                                                                          
 found flux  [dResS1Cu            ] resuspension flux Cu from layer S1                              
   from proces [S12TraCu            ] Resuspension, transport in S1-S2 Cu                           
   process is switched on.                                                                          
 found flux  [dBurS1Cu            ] burial flux Cu from layer S1                                    
   from proces [S12TraCu            ] Resuspension, transport in S1-S2 Cu                           
   process is switched on.                                                                          
 found flux  [dDigS1Cu            ] digging flux Cu to layer S1                                     
   from proces [S12TraCu            ] Resuspension, transport in S1-S2 Cu                           
   process is switched on.                                                                          
-dispersion for [CuS1                ]                                                              
 no dispersions found                                                                               
-velocity for [CuS1                ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [ZnS1                ]                                                                  
 found flux  [dSedZn              ] sedimentation flux Zn towards S1                                
   from proces [Sed_Zn              ] Sedimentation adsorbed Zn                                     
   process is switched on.                                                                          
 found flux  [dResS1Zn            ] resuspension flux Zn from layer S1                              
   from proces [S12TraZn            ] Resuspension, transport in S1-S2 Zn                           
   process is switched on.                                                                          
 found flux  [dBurS1Zn            ] burial flux Zn from layer S1                                    
   from proces [S12TraZn            ] Resuspension, transport in S1-S2 Zn                           
   process is switched on.                                                                          
 found flux  [dDigS1Zn            ] digging flux Zn to layer S1                                     
   from proces [S12TraZn            ] Resuspension, transport in S1-S2 Zn                           
   process is switched on.                                                                          
-dispersion for [ZnS1                ]                                                              
 no dispersions found                                                                               
-velocity for [ZnS1                ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [OMPS1               ]                                                                  
 found flux  [dResS1OMP           ] resuspension flux OMP from layer S1                             
   from proces [S12TraOMP           ] Resuspension, transport in S1-S2 OMP                          
   process is switched on.                                                                          
 found flux  [dBurS1OMP           ] burial flux OMP from layer S1                                   
   from proces [S12TraOMP           ] Resuspension, transport in S1-S2 OMP                          
   process is switched on.                                                                          
 found flux  [dDigS1OMP           ] digging flux OMP to layer S1                                    
   from proces [S12TraOMP           ] Resuspension, transport in S1-S2 OMP                          
   process is switched on.                                                                          
 found flux  [dLossOMPS1          ] overall loss flux OMP in S1                                     
   from proces [Los_S1_OMP          ] Overall loss of OMP from S1                                   
   process is switched on.                                                                          
 found flux  [dSedOMP             ] sedimentation flux OMP                                          
   from proces [Sed_OMP             ] Sedimentation adsorbed OMP                                    
   process is switched on.                                                                          
-dispersion for [OMPS1               ]                                                              
 no dispersions found                                                                               
-velocity for [OMPS1               ]                                                                
 no velocity found                                                                                  
                                                                                                    
# locating processes for requested output                                                           
                                                                                                    
# determining the input for the processes (in reversed order)                                       
                                                                                                    
 Input for [Sed_OMP             ] Sedimentation adsorbed OMP                                        
       [fSedPOCnoa          ] total sedimentation flux POC (no algae)                               
       Using output from proces [Sum_Sedim           ]                                              
       [fSedPHYT            ] total sedimentation flux phytoplankton                                
       Using output from proces [SedPhDyn            ]                                              
       [QOMPPOC             ] quality POC for OMP in water column                                   
       Using output from proces [PartWK_OMP          ]                                              
       [QOMPPHYT            ] quality PHYT for OMP in water column                                  
       Using output from proces [PartWK_OMP          ]                                              
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [FrOMPPOC            ] fraction OMP adsorbed to POC                                          
       Using output from proces [PartWK_OMP          ]                                              
       [FrOMPPHYT           ] fraction OMP adsorbed to PHYT                                         
       Using output from proces [PartWK_OMP          ]                                              
       [VxSedPOCna          ] sedimentation velocity POC (no algae)                                 
       Using output from proces [Sum_Sedim           ]                                              
       [VxSedPhyt           ] sedimentation velocity phytoplankton                                  
       Using output from proces [SedPhDyn            ]                                              
                                                                                                    
 Input for [Los_S1_OMP          ] Overall loss of OMP from S1                                       
       [ZLossOMPS1          ] zeroth-order decay flux OMP in S1                                     
       using default value:  0.00000                                                                
       [OMPS1               ] OMP in sediment 1                                                     
       Using substance nr  30                                                                       
       [FrOMPDisS1          ] fraction free dissolved OMP in S1                                     
       Using output from proces [PartS1_OMP          ]                                              
       [RcOMPS1             ] first-order rate const. loss OMP in S1                                
       using default value:  0.00000                                                                
       [TcOMPSed            ] temp. coefficient loss OMP in sediment                                
       using default value:  1.00000                                                                
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  15.0000                                                    
       [CTLoss              ] critical temperature for loss processes                               
       using default value:  2.00000                                                                
       [Volume              ] volume of computational cell                                          
       Using DELWAQ volume                                                                          
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [SWVnDegMP           ] option for selection old(0) or new(1) version                         
       using default value:  0.00000                                                                
       [SWPoreChS1          ] switch for oxic (1) or sufidic (0) pore water                         
       using default value:  1.00000                                                                
       [SWDegOMP            ] deg.frac.OMP: 0=tot|1=dis|2=dis+DOC                                   
       using default value:  0.00000                                                                
       [FrOMPDOCS1          ] fraction OMP in S1 adsorbed to DOC                                    
       Using output from proces [PartS1_OMP          ]                                              
       [RcDegOOMP           ] first-order rate const. degr. OMP oxid. cond.                         
       using default value:  0.00000                                                                
       [RcDegROMP           ] first-order rate const. degr. OMP red. cond.                          
       using default value:  0.00000                                                                
       [SwSedYes            ] switch for using module in sediment                                   
       using default value:  1.00000                                                                
                                                                                                    
 Input for [Los_WK_OMP          ] Overall loss of OMP from water column                             
       [ZLossOMP            ] zeroth-order decay flux OMP                                           
       Using constant nr 50 with value:  0.00000                                                    
       [OMP                 ] Organic Micro Pollutant (OMP)                                         
       Using substance nr  21                                                                       
       [FrOMPDis            ] fraction free dissolved OMP in water column                           
       Using output from proces [PartWK_OMP          ]                                              
       [RcOMP               ] first-order rate const. loss OMP                                      
       Using constant nr 51 with value:  0.00000                                                    
       [TcOMP               ] temperature coefficient loss OMP in water                             
       Using constant nr 52 with value:  1.07000                                                    
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  15.0000                                                    
       [CTLoss              ] critical temperature for loss processes                               
       using default value:  2.00000                                                                
       [Volume              ] volume of computational cell                                          
       Using DELWAQ volume                                                                          
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [SWVnDegMP           ] option for selection old(0) or new(1) version                         
       using default value:  0.00000                                                                
       [SWWaterKCh          ] switch for oxic (1) or sufidic (0) water                              
       using default value:  1.00000                                                                
       [SWDegOMP            ] deg.frac.OMP: 0=tot|1=dis|2=dis+DOC                                   
       using default value:  0.00000                                                                
       [FrOMPDOC            ] fraction OMP adsorbed to DOC                                          
       Using output from proces [PartWK_OMP          ]                                              
       [RcDegOOMP           ] first-order rate const. degr. OMP oxid. cond.                         
       using default value:  0.00000                                                                
       [RcDegROMP           ] first-order rate const. degr. OMP red. cond.                          
       using default value:  0.00000                                                                
       [SwSedNo             ] switch for using module in water column                               
       using default value:  0.00000                                                                
                                                                                                    
 Input for [PartWK_OMP          ] Partitioning OMP in water column                                  
       [OMP                 ] Organic Micro Pollutant (OMP)                                         
       Using substance nr  21                                                                       
       [OMP-dis             ] dissolved concentration OMP                                           
       using default value: -11.0000                                                                
       [OMP-par             ] particulate concentration OMP                                         
       using default value: -11.0000                                                                
       [IM1                 ] inorganic matter (IM1)                                                
       Using substance nr   5                                                                       
       [IM2                 ] inorganic matter (IM2)                                                
       using default value:  0.00000                                                                
       [IM3                 ] inorganic matter (IM3)                                                
       using default value:  0.00000                                                                
       [DOC                 ] Dissolved Organic Carbon (DOC)                                        
       using default value:  0.00000                                                                
       [XDOCOMP             ] efficiency DOC relative to POC for OMP                                
       using default value: 0.180000                                                                
       [POCnoa              ] total POC (no algae)                                                  
       Using output from proces [Compos              ]                                              
       [Phyt                ] total carbon in phytoplankton                                         
       Using output from proces [Phy_dyn             ]                                              
       [KdDumIM1            ] partition coefficient dumIM1                                          
       using default value:  0.00000                                                                
       [KdDumIM2            ] partition coefficient dumIM2                                          
       using default value:  0.00000                                                                
       [KdDumIM3            ] partition coefficient dumIM3                                          
       using default value:  0.00000                                                                
       [lKpocOMP            ] log partition coefficient OMP-POC                                     
       using default value:  7.30000                                                                
       [lKphyOMP            ] log partition coefficient OMP-PHYT                                    
       using default value:  7.30000                                                                
       [Poros               ] volumetric porosity                                                   
       using default value:  1.00000                                                                
       [dummy               ] dummy input item                                                      
       using default value:  0.00000                                                                
       [dummy               ] dummy input item                                                      
       using default value:  0.00000                                                                
       [SS                  ] suspended solids                                                      
       Using output from proces [Compos              ]                                              
       [HLTAdsOMP           ] half-life time non-eq. adsorption OMP                                 
       using default value:  0.00000                                                                
       [HLTDesOMP           ] half-life time non-eq. desorption OMP                                 
       using default value:  0.00000                                                                
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [SWWaterKCh          ] switch for oxic (1) or sufidic (0) water                              
       using default value:  1.00000                                                                
       [dummy               ] dummy input item                                                      
       using default value:  0.00000                                                                
       [dummy               ] dummy input item                                                      
       using default value:  0.00000                                                                
       [dummy               ] dummy input item                                                      
       using default value:  0.00000                                                                
       [dummy               ] dummy input item                                                      
       using default value:  0.00000                                                                
       [dummy               ] dummy input item                                                      
       using default value:  0.00000                                                                
       [dummy               ] dummy input item                                                      
       using default value:  0.00000                                                                
       [SwSedNo             ] switch for using module in water column                               
       using default value:  0.00000                                                                
       [OMPGroup            ] Organic micro pollutants group 4                                      
       using default value:  4.00000                                                                
       [Volume              ] volume of computational cell                                          
       Using DELWAQ volume                                                                          
                                                                                                    
 Input for [Secchi              ] Secchi depth for visible-light (370-680nm)                        
       [ExtVl               ] total extinction coefficient visible light                            
       Using output from proces [Extinc_VLG          ]                                              
       [IM1                 ] inorganic matter (IM1)                                                
       Using substance nr   5                                                                       
       [IM2                 ] inorganic matter (IM2)                                                
       using default value:  0.00000                                                                
       [IM3                 ] inorganic matter (IM3)                                                
       using default value:  0.00000                                                                
       [POC1                ] POC1 (fast decomposing fraction)                                      
       Using substance nr  12                                                                       
       [POC2                ] POC2 (medium decomposing fraction)                                    
       using default value:  0.00000                                                                
       [POC3                ] POC3 (slow decomposing fraction)                                      
       using default value:  0.00000                                                                
       [POC4                ] POC4 (particulate refractory fraction)                                
       using default value:  0.00000                                                                
       [ExtVlODS            ] VL extinction by DOC                                                  
       Using output from proces [Extinc_VLG          ]                                              
       [Chlfa               ] Chlorophyll-a concentration                                           
       Using output from proces [Phy_dyn             ]                                              
       [SW_Uitz             ] Extinction by Uitzicht On (1) or Off (0)                              
       using default value:  0.00000                                                                
       [UitZDEPT1           ] Z1 (depth)                                                            
       using default value:  1.20000                                                                
       [UitZDEPT2           ] Z2 (depth)                                                            
       using default value:  1.00000                                                                
       [UitZCORCH           ] CORa correction factor                                                
       using default value:  2.50000                                                                
       [UitZC_DET           ] C3 coeff. absorption ash weight & detritus                            
       using default value: 0.260000E-01                                                            
       [UitZC_GL1           ] C1 coeff. absorption ash weight & detritus                            
       using default value: 0.730000                                                                
       [UitZC_GL2           ] C2 coeff. absorption ash weight & detritus                            
       using default value:  1.00000                                                                
       [UitZHELHM           ] Hel_h constant                                                        
       using default value: 0.140000E-01                                                            
       [UitZTAU             ] Tau constant calculation transparency                                 
       using default value:  7.80000                                                                
       [UitZangle           ] Angle of incidence solar radiation                                    
       using default value:  30.0000                                                                
       [DMCFDetC            ] DM:C ratio DetC                                                       
       using default value:  2.50000                                                                
       [PAConstant          ] Poole-Atkins constant                                                 
       using default value:  1.70000                                                                
                                                                                                    
 Input for [PosOXY              ] Positive oxygen concentration                                     
       [OXY                 ] Dissolved Oxygen                                                      
       Using substance nr   1                                                                       
                                                                                                    
 Input for [S12TraOMP           ] Resuspension, transport in S1-S2 OMP                              
       [QOMPDMS1            ] overall sediment quality for OMP in S1                                
       Using output from proces [PartS1_OMP          ]                                              
       [ScalPol             ] Scale factor from mg/kg to g/g                                        
       using default value: 0.100000E-05                                                            
       [QOMPDMS2            ] overall sediment quality for OMP in S2                                
       Using constant nr 49 with value: -999.000                                                    
       [ScalPol             ] Scale factor from mg/kg to g/g                                        
       using default value: 0.100000E-05                                                            
       [QOMPDMS3            ] overall sediment quality for OMP in S3                                
       using default value:  0.00000                                                                
       [ScalPol             ] Scale factor from mg/kg to g/g                                        
       using default value: 0.100000E-05                                                            
       [fResS1DM            ] total resuspension flux DM from layer S1                              
       Using output from proces [Res_DM              ]                                              
       [fResS2DM            ] total resuspension flux DM from layer S2                              
       Using output from proces [Res_DM              ]                                              
       [fBurS1DM            ] total burial flux DM from layer S1                                    
       using default value:  0.00000                                                                
       [fBurS2DM            ] total burial flux DM from layer S2                                    
       using default value:  0.00000                                                                
       [fDigS1DM            ] total digging flux DM to layer S1                                     
       using default value:  0.00000                                                                
       [fDigS2DM            ] total digging flux DM to layer S2                                     
       using default value:  0.00000                                                                
       [SWDigS1             ] switch for digging S1 (0=actual, 1=deeper)                            
       using default value:  0.00000                                                                
       [SWDigS2             ] switch for digging S2 (0=actual, 1=deeper)                            
       using default value:  0.00000                                                                
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [SedZoneSW           ] SWITCH 0=no SWITCH, <0 per segment, >0 per zone                       
       using default value:  0.00000                                                                
                                                                                                    
 Input for [PartS1_OMP          ] Partitioning OMP in S1                                            
       [OMPS1               ] OMP in sediment 1                                                     
       Using substance nr  30                                                                       
       [OMPS1-Dis           ] dissolved mass OMP in S1                                              
       using default value: -11.0000                                                                
       [OMPS1-Par           ] particulate mass OMP in S1                                            
       using default value: -11.0000                                                                
       [IM1S1               ] IM1 in layer S1                                                       
       Using substance nr  23                                                                       
       [IM2S1               ] IM2 in layer S1                                                       
       using default value:  0.00000                                                                
       [IM3S1               ] IM3 in layer S1                                                       
       using default value:  0.00000                                                                
       [DOCS1               ] DOC in pore water layer S1                                            
       using default value:  0.00000                                                                
       [XDOCOMP             ] efficiency DOC relative to POC for OMP                                
       using default value: 0.180000                                                                
       [POCS1               ] total POC in layer S1                                                 
       Using output from proces [S1_Comp             ]                                              
       [PHYTS1              ] total carbon in phytoplankton in layer S1                             
       Using output from proces [S1_Comp             ]                                              
       [KdDumIM1            ] partition coefficient dumIM1                                          
       using default value:  0.00000                                                                
       [KdDumIM2            ] partition coefficient dumIM2                                          
       using default value:  0.00000                                                                
       [KdDumIM3            ] partition coefficient dumIM3                                          
       using default value:  0.00000                                                                
       [lKpocOMPS1          ] log partition coefficient OMP-POC in S1                               
       using default value:  7.30000                                                                
       [lKphyOMPS1          ] log partition coefficient OMP-PHYT in S1                              
       using default value:  7.30000                                                                
       [PORS1               ] porosity of sediment layer S1                                         
       using default value:  0.00000                                                                
       [ActThS1             ] actual thickness layer S1                                             
       Using output from proces [S1_Comp             ]                                              
       [Surf                ] horizontal surface area of a DELWAQ segment                           
       Using segment function nr  1                                                                 
       [DMS1                ] total amount of dry matter in layer S1                                
       Using output from proces [S1_Comp             ]                                              
       [HLTAdsOMPS          ] half-life time non-eq. adsorption OMP in Sedim                        
       using default value:  0.00000                                                                
       [HLTDesOMPS          ] half-life time non-eq. desorption OMP in Sedim                        
       using default value:  0.00000                                                                
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [SWPoreChS1          ] switch for oxic (1) or sufidic (0) pore water                         
       using default value:  1.00000                                                                
       [dummy               ] dummy input item                                                      
       using default value:  0.00000                                                                
       [dummy               ] dummy input item                                                      
       using default value:  0.00000                                                                
       [dummy               ] dummy input item                                                      
       using default value:  0.00000                                                                
       [dummy               ] dummy input item                                                      
       using default value:  0.00000                                                                
       [dummy               ] dummy input item                                                      
       using default value:  0.00000                                                                
       [dummy               ] dummy input item                                                      
       using default value:  0.00000                                                                
       [SwSedYes            ] switch for using module in sediment                                   
       using default value:  1.00000                                                                
       [OMPGroup            ] Organic micro pollutants group 4                                      
       using default value:  4.00000                                                                
       [Volume              ] volume of computational cell                                          
       Using DELWAQ volume                                                                          
                                                                                                    
 Input for [S12TraZn            ] Resuspension, transport in S1-S2 Zn                               
       [QZnDMS1             ] overall sediment quality for Zn in S1                                 
       Using output from proces [PartS1_Zn           ]                                              
       [ScalPol             ] Scale factor from mg/kg to g/g                                        
       using default value: 0.100000E-05                                                            
       [QZnDMS2             ] overall sediment quality for Zn in S2                                 
       using default value:  0.00000                                                                
       [ScalPol             ] Scale factor from mg/kg to g/g                                        
       using default value: 0.100000E-05                                                            
       [QZnDMS3             ] overall sediment quality for Zn in S3                                 
       using default value:  0.00000                                                                
       [ScalPol             ] Scale factor from mg/kg to g/g                                        
       using default value: 0.100000E-05                                                            
       [fResS1DM            ] total resuspension flux DM from layer S1                              
       Using output from proces [Res_DM              ]                                              
       [fResS2DM            ] total resuspension flux DM from layer S2                              
       Using output from proces [Res_DM              ]                                              
       [fBurS1DM            ] total burial flux DM from layer S1                                    
       using default value:  0.00000                                                                
       [fBurS2DM            ] total burial flux DM from layer S2                                    
       using default value:  0.00000                                                                
       [fDigS1DM            ] total digging flux DM to layer S1                                     
       using default value:  0.00000                                                                
       [fDigS2DM            ] total digging flux DM to layer S2                                     
       using default value:  0.00000                                                                
       [SWDigS1             ] switch for digging S1 (0=actual, 1=deeper)                            
       using default value:  0.00000                                                                
       [SWDigS2             ] switch for digging S2 (0=actual, 1=deeper)                            
       using default value:  0.00000                                                                
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [SedZoneSW           ] SWITCH 0=no SWITCH, <0 per segment, >0 per zone                       
       using default value:  0.00000                                                                
                                                                                                    
 Input for [S12TraCu            ] Resuspension, transport in S1-S2 Cu                               
       [QCuDMS1             ] overall sediment quality for Cu in S1                                 
       Using output from proces [PartS1_Cu           ]                                              
       [ScalPol             ] Scale factor from mg/kg to g/g                                        
       using default value: 0.100000E-05                                                            
       [QCuDMS2             ] overall sediment quality for Cu in S2                                 
       using default value:  0.00000                                                                
       [ScalPol             ] Scale factor from mg/kg to g/g                                        
       using default value: 0.100000E-05                                                            
       [QCuDMS3             ] overall sediment quality for Cu in S3                                 
       using default value:  0.00000                                                                
       [ScalPol             ] Scale factor from mg/kg to g/g                                        
       using default value: 0.100000E-05                                                            
       [fResS1DM            ] total resuspension flux DM from layer S1                              
       Using output from proces [Res_DM              ]                                              
       [fResS2DM            ] total resuspension flux DM from layer S2                              
       Using output from proces [Res_DM              ]                                              
       [fBurS1DM            ] total burial flux DM from layer S1                                    
       using default value:  0.00000                                                                
       [fBurS2DM            ] total burial flux DM from layer S2                                    
       using default value:  0.00000                                                                
       [fDigS1DM            ] total digging flux DM to layer S1                                     
       using default value:  0.00000                                                                
       [fDigS2DM            ] total digging flux DM to layer S2                                     
       using default value:  0.00000                                                                
       [SWDigS1             ] switch for digging S1 (0=actual, 1=deeper)                            
       using default value:  0.00000                                                                
       [SWDigS2             ] switch for digging S2 (0=actual, 1=deeper)                            
       using default value:  0.00000                                                                
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [SedZoneSW           ] SWITCH 0=no SWITCH, <0 per segment, >0 per zone                       
       using default value:  0.00000                                                                
                                                                                                    
 Input for [S12TraCd            ] Resuspension, transport in S1-S2 Cd                               
       [QCdDMS1             ] overall sediment quality for Cd in S1                                 
       Using output from proces [PartS1_Cd           ]                                              
       [ScalPol             ] Scale factor from mg/kg to g/g                                        
       using default value: 0.100000E-05                                                            
       [QCdDMS2             ] overall sediment quality for Cd in S2                                 
       using default value:  0.00000                                                                
       [ScalPol             ] Scale factor from mg/kg to g/g                                        
       using default value: 0.100000E-05                                                            
       [QCdDMS3             ] overall sediment quality for Cd in S3                                 
       using default value:  0.00000                                                                
       [ScalPol             ] Scale factor from mg/kg to g/g                                        
       using default value: 0.100000E-05                                                            
       [fResS1DM            ] total resuspension flux DM from layer S1                              
       Using output from proces [Res_DM              ]                                              
       [fResS2DM            ] total resuspension flux DM from layer S2                              
       Using output from proces [Res_DM              ]                                              
       [fBurS1DM            ] total burial flux DM from layer S1                                    
       using default value:  0.00000                                                                
       [fBurS2DM            ] total burial flux DM from layer S2                                    
       using default value:  0.00000                                                                
       [fDigS1DM            ] total digging flux DM to layer S1                                     
       using default value:  0.00000                                                                
       [fDigS2DM            ] total digging flux DM to layer S2                                     
       using default value:  0.00000                                                                
       [SWDigS1             ] switch for digging S1 (0=actual, 1=deeper)                            
       using default value:  0.00000                                                                
       [SWDigS2             ] switch for digging S2 (0=actual, 1=deeper)                            
       using default value:  0.00000                                                                
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [SedZoneSW           ] SWITCH 0=no SWITCH, <0 per segment, >0 per zone                       
       using default value:  0.00000                                                                
                                                                                                    
 Input for [Sed_Zn              ] Sedimentation adsorbed Zn                                         
       [fSedIM1             ] sedimentation flux IM1 towards S1                                     
       Using output from proces [Sed_IM1             ]                                              
       [fSedIM2             ] sedimentation flux IM2 towards S1                                     
       using default value:  0.00000                                                                
       [fSedIM3             ] sedimentation flux IM3 towards S1                                     
       using default value:  0.00000                                                                
       [fSedIM1S2           ] sedimentation flux IM1 towards S2                                     
       Using output from proces [Sed_IM1             ]                                              
       [fSedIM2S2           ] sedimentation flux IM2 towards S2                                     
       using default value:  0.00000                                                                
       [fSedIM3S2           ] sedimentation flux IM3 towards S2                                     
       using default value:  0.00000                                                                
       [fSedPOCnoa          ] total sedimentation flux POC (no algae)                               
       Using output from proces [Sum_Sedim           ]                                              
       [fSedPHYT            ] total sedimentation flux phytoplankton                                
       Using output from proces [SedPhDyn            ]                                              
       [QZnIM1              ] quality IM1 for Zn                                                    
       Using output from proces [PartWK_Zn           ]                                              
       [QZnIM2              ] quality IM2 for Zn                                                    
       Using output from proces [PartWK_Zn           ]                                              
       [QZnIM3              ] quality IM3 for Zn                                                    
       Using output from proces [PartWK_Zn           ]                                              
       [QZnPOC              ] quality POC for Zn                                                    
       Using output from proces [PartWK_Zn           ]                                              
       [QZnPHYT             ] quality phytoplankton for Zn                                          
       Using output from proces [PartWK_Zn           ]                                              
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [FrZnIM1             ] fraction Zn adsorbed to IM1                                           
       Using output from proces [PartWK_Zn           ]                                              
       [FrZnIM2             ] fraction Zn adsorbed to IM2                                           
       Using output from proces [PartWK_Zn           ]                                              
       [FrZnIM3             ] fraction Zn adsorbed to IM3                                           
       Using output from proces [PartWK_Zn           ]                                              
       [FrZnPOC             ] fraction Zn adsorbed to POC                                           
       Using output from proces [PartWK_Zn           ]                                              
       [FrZnPHYT            ] fraction Zn adsorbed to phytoplankton                                 
       Using output from proces [PartWK_Zn           ]                                              
       [VxSedIM1            ] sedimentation velocity IM1                                            
       Using output from proces [Sed_IM1             ]                                              
       [VxSedIM2            ] sedimentation velocity IM2                                            
       using default value:  0.00000                                                                
       [VxSedIM3            ] sedimentation velocity IM3                                            
       using default value:  0.00000                                                                
       [VxSedPOCna          ] sedimentation velocity POC (no algae)                                 
       Using output from proces [Sum_Sedim           ]                                              
       [VxSedPhyt           ] sedimentation velocity phytoplankton                                  
       Using output from proces [SedPhDyn            ]                                              
                                                                                                    
 Input for [Sed_Cu              ] Sedimentation adsorbed Cu                                         
       [fSedIM1             ] sedimentation flux IM1 towards S1                                     
       Using output from proces [Sed_IM1             ]                                              
       [fSedIM2             ] sedimentation flux IM2 towards S1                                     
       using default value:  0.00000                                                                
       [fSedIM3             ] sedimentation flux IM3 towards S1                                     
       using default value:  0.00000                                                                
       [fSedIM1S2           ] sedimentation flux IM1 towards S2                                     
       Using output from proces [Sed_IM1             ]                                              
       [fSedIM2S2           ] sedimentation flux IM2 towards S2                                     
       using default value:  0.00000                                                                
       [fSedIM3S2           ] sedimentation flux IM3 towards S2                                     
       using default value:  0.00000                                                                
       [fSedPOCnoa          ] total sedimentation flux POC (no algae)                               
       Using output from proces [Sum_Sedim           ]                                              
       [fSedPHYT            ] total sedimentation flux phytoplankton                                
       Using output from proces [SedPhDyn            ]                                              
       [QCuIM1              ] quality IM1 for Cu                                                    
       Using output from proces [PartWK_Cu           ]                                              
       [QCuIM2              ] quality IM2 for Cu                                                    
       Using output from proces [PartWK_Cu           ]                                              
       [QCuIM3              ] quality IM3 for Cu                                                    
       Using output from proces [PartWK_Cu           ]                                              
       [QCuPOC              ] quality POC for Cu                                                    
       Using output from proces [PartWK_Cu           ]                                              
       [QCuPHYT             ] quality phytoplankton for Cu                                          
       Using output from proces [PartWK_Cu           ]                                              
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [FrCuIM1             ] fraction Cu adsorbed to IM1                                           
       Using output from proces [PartWK_Cu           ]                                              
       [FrCuIM2             ] fraction Cu adsorbed to IM2                                           
       Using output from proces [PartWK_Cu           ]                                              
       [FrCuIM3             ] fraction Cu adsorbed to IM3                                           
       Using output from proces [PartWK_Cu           ]                                              
       [FrCuPOC             ] fraction Cu adsorbed to POC                                           
       Using output from proces [PartWK_Cu           ]                                              
       [FrCuPHYT            ] fraction Cu adsorbed to phytoplankton                                 
       Using output from proces [PartWK_Cu           ]                                              
       [VxSedIM1            ] sedimentation velocity IM1                                            
       Using output from proces [Sed_IM1             ]                                              
       [VxSedIM2            ] sedimentation velocity IM2                                            
       using default value:  0.00000                                                                
       [VxSedIM3            ] sedimentation velocity IM3                                            
       using default value:  0.00000                                                                
       [VxSedPOCna          ] sedimentation velocity POC (no algae)                                 
       Using output from proces [Sum_Sedim           ]                                              
       [VxSedPhyt           ] sedimentation velocity phytoplankton                                  
       Using output from proces [SedPhDyn            ]                                              
                                                                                                    
 Input for [Sed_Cd              ] Sedimentation adsorbed Cd                                         
       [fSedIM1             ] sedimentation flux IM1 towards S1                                     
       Using output from proces [Sed_IM1             ]                                              
       [fSedIM2             ] sedimentation flux IM2 towards S1                                     
       using default value:  0.00000                                                                
       [fSedIM3             ] sedimentation flux IM3 towards S1                                     
       using default value:  0.00000                                                                
       [fSedIM1S2           ] sedimentation flux IM1 towards S2                                     
       Using output from proces [Sed_IM1             ]                                              
       [fSedIM2S2           ] sedimentation flux IM2 towards S2                                     
       using default value:  0.00000                                                                
       [fSedIM3S2           ] sedimentation flux IM3 towards S2                                     
       using default value:  0.00000                                                                
       [fSedPOCnoa          ] total sedimentation flux POC (no algae)                               
       Using output from proces [Sum_Sedim           ]                                              
       [fSedPHYT            ] total sedimentation flux phytoplankton                                
       Using output from proces [SedPhDyn            ]                                              
       [QCdIM1              ] quality IM1 for Cd                                                    
       Using output from proces [PartWK_Cd           ]                                              
       [QCdIM2              ] quality IM2 for Cd                                                    
       Using output from proces [PartWK_Cd           ]                                              
       [QCdIM3              ] quality IM3 for Cd                                                    
       Using output from proces [PartWK_Cd           ]                                              
       [QCdPOC              ] quality POC for Cd                                                    
       Using output from proces [PartWK_Cd           ]                                              
       [QCdPHYT             ] quality phytoplankton for Cd                                          
       Using output from proces [PartWK_Cd           ]                                              
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [FrCdIM1             ] fraction Cd adsorbed to IM1                                           
       Using output from proces [PartWK_Cd           ]                                              
       [FrCdIM2             ] fraction Cd adsorbed to IM2                                           
       Using output from proces [PartWK_Cd           ]                                              
       [FrCdIM3             ] fraction Cd adsorbed to IM3                                           
       Using output from proces [PartWK_Cd           ]                                              
       [FrCdPOC             ] fraction Cd adsorbed to POC                                           
       Using output from proces [PartWK_Cd           ]                                              
       [FrCdPHYT            ] fraction Cd adsorbed to phytoplankton                                 
       Using output from proces [PartWK_Cd           ]                                              
       [VxSedIM1            ] sedimentation velocity IM1                                            
       Using output from proces [Sed_IM1             ]                                              
       [VxSedIM2            ] sedimentation velocity IM2                                            
       using default value:  0.00000                                                                
       [VxSedIM3            ] sedimentation velocity IM3                                            
       using default value:  0.00000                                                                
       [VxSedPOCna          ] sedimentation velocity POC (no algae)                                 
       Using output from proces [Sum_Sedim           ]                                              
       [VxSedPhyt           ] sedimentation velocity phytoplankton                                  
       Using output from proces [SedPhDyn            ]                                              
                                                                                                    
 Input for [PartS1_Zn           ] Partitioning Zn in S1                                             
       [ZnS1                ] Zn in layer S1                                                        
       Using substance nr  29                                                                       
       [ZnS1-Dis            ] dissolved mass Zn in layer S1                                         
       using default value: -11.0000                                                                
       [ZnS1-Par            ] particulate mass Zn in layer S1                                       
       using default value: -11.0000                                                                
       [IM1S1               ] IM1 in layer S1                                                       
       Using substance nr  23                                                                       
       [IM2S1               ] IM2 in layer S1                                                       
       using default value:  0.00000                                                                
       [IM3S1               ] IM3 in layer S1                                                       
       using default value:  0.00000                                                                
       [DOCS1               ] DOC in pore water layer S1                                            
       using default value:  0.00000                                                                
       [XDOCZn              ] efficiency DOC relative to POC for Zn                                 
       using default value: 0.180000                                                                
       [POCS1               ] total POC in layer S1                                                 
       Using output from proces [S1_Comp             ]                                              
       [PHYTS1              ] total carbon in phytoplankton in layer S1                             
       Using output from proces [S1_Comp             ]                                              
       [KdZnIM1S1           ] partition coefficient Zn-IM1 in layer S1                              
       using default value:  111.000                                                                
       [KdZnIM2S1           ] partition coefficient Zn-IM2 in layer S1                              
       using default value:  111.000                                                                
       [KdZnIM3S1           ] partition coefficient Zn-IM3 in layer S1                              
       using default value:  111.000                                                                
       [KdZnPOCS1           ] partition coefficient Zn-POC in layer S1                              
       using default value:  0.00000                                                                
       [KdZnPHYTS1          ] partition coefficient Zn-PHYT in layer S1                             
       using default value:  0.00000                                                                
       [PORS1               ] porosity of sediment layer S1                                         
       using default value:  0.00000                                                                
       [ActThS1             ] actual thickness layer S1                                             
       Using output from proces [S1_Comp             ]                                              
       [Surf                ] horizontal surface area of a DELWAQ segment                           
       Using segment function nr  1                                                                 
       [DMS1                ] total amount of dry matter in layer S1                                
       Using output from proces [S1_Comp             ]                                              
       [HLTAdsZnS1          ] half-life time non-eq. adsorption Zn in layer S1                      
       using default value:  0.00000                                                                
       [HLTDesZnS1          ] half-life time non-eq. desorption Zn in layer S1                      
       using default value:  0.00000                                                                
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [SWPoreChS1          ] switch for oxic (1) or sufidic (0) pore water                         
       using default value:  1.00000                                                                
       [DisSS1              ] (S--) in layer S1                                                     
       using default value:  0.00000                                                                
       [DisHSS1             ] (HS-) in layer S1                                                     
       using default value:  0.00000                                                                
       [MolWtZn             ] Molweight Zn                                                          
       using default value:  65.3800                                                                
       [logKZnSs            ] precipitation constant Zn+S<==>ZnSs                                   
       using default value:  27.9000                                                                
       [logKZnSaq           ] complexation constant Zn+S<==>ZnS0aq                                  
       using default value:  18.0000                                                                
       [logKZnHSaq          ] complexation constant Zn+HS<==>ZnHS+aq                                
       using default value:  9.20000                                                                
       [SwSedYes            ] switch for using module in sediment                                   
       using default value:  1.00000                                                                
       [HMGroup1            ] Heavy metal group 1 (General)                                         
       using default value:  1.00000                                                                
       [Volume              ] volume of computational cell                                          
       Using DELWAQ volume                                                                          
                                                                                                    
 Input for [PartS1_Cu           ] Partitioning Cu in S1                                             
       [CuS1                ] Cu in layer S1                                                        
       Using substance nr  28                                                                       
       [CuS1-Dis            ] dissolved mass Cu in layer S1                                         
       using default value: -11.0000                                                                
       [CuS1-Par            ] particulate mass Cu in layer S1                                       
       using default value: -11.0000                                                                
       [IM1S1               ] IM1 in layer S1                                                       
       Using substance nr  23                                                                       
       [IM2S1               ] IM2 in layer S1                                                       
       using default value:  0.00000                                                                
       [IM3S1               ] IM3 in layer S1                                                       
       using default value:  0.00000                                                                
       [DOCS1               ] DOC in pore water layer S1                                            
       using default value:  0.00000                                                                
       [XDOCCu              ] efficiency DOC relative to POC for Cu                                 
       using default value: 0.180000                                                                
       [POCS1               ] total POC in layer S1                                                 
       Using output from proces [S1_Comp             ]                                              
       [PHYTS1              ] total carbon in phytoplankton in layer S1                             
       Using output from proces [S1_Comp             ]                                              
       [KdCuIM1S1           ] partition coefficient Cu-IM1 in layer S1                              
       using default value:  50.0000                                                                
       [KdCuIM2S1           ] partition coefficient Cu-IM2 in layer S1                              
       using default value:  50.0000                                                                
       [KdCuIM3S1           ] partition coefficient Cu-IM3 in layer S1                              
       using default value:  50.0000                                                                
       [KdCuPOCS1           ] partition coefficient Cu-POC in layer S1                              
       using default value:  0.00000                                                                
       [KdCuPHYTS1          ] partition coefficient Cu-PHYT in layer S1                             
       using default value:  0.00000                                                                
       [PORS1               ] porosity of sediment layer S1                                         
       using default value:  0.00000                                                                
       [ActThS1             ] actual thickness layer S1                                             
       Using output from proces [S1_Comp             ]                                              
       [Surf                ] horizontal surface area of a DELWAQ segment                           
       Using segment function nr  1                                                                 
       [DMS1                ] total amount of dry matter in layer S1                                
       Using output from proces [S1_Comp             ]                                              
       [HLTAdsCuS1          ] half-life time non-eq. adsorption Cu in layer S1                      
       using default value:  0.00000                                                                
       [HLTDesCuS1          ] half-life time non-eq. desorption Cu in layer S1                      
       using default value:  0.00000                                                                
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [SWPoreChS1          ] switch for oxic (1) or sufidic (0) pore water                         
       using default value:  1.00000                                                                
       [DisSS1              ] (S--) in layer S1                                                     
       using default value:  0.00000                                                                
       [DisHSS1             ] (HS-) in layer S1                                                     
       using default value:  0.00000                                                                
       [MolWtCu             ] Molweight Cu                                                          
       using default value:  63.5500                                                                
       [logKCuSs            ] precipitation constant Cu+S<==>CuSs                                   
       using default value:  27.9000                                                                
       [logKCuSaq           ] complexation constant Cu+S<==>CuS0aq                                  
       using default value:  18.0000                                                                
       [logKCuHSaq          ] complexation constant Cu+HS<==>CuHS+aq                                
       using default value:  9.20000                                                                
       [SwSedYes            ] switch for using module in sediment                                   
       using default value:  1.00000                                                                
       [HMGroup1            ] Heavy metal group 1 (General)                                         
       using default value:  1.00000                                                                
       [Volume              ] volume of computational cell                                          
       Using DELWAQ volume                                                                          
                                                                                                    
 Input for [PartS1_Cd           ] Partitioning Cd in S1                                             
       [CdS1                ] Cd in layer S1                                                        
       Using substance nr  27                                                                       
       [CdS1-Dis            ] dissolved mass Cd in layer S1                                         
       using default value: -11.0000                                                                
       [CdS1-Par            ] particulate mass Cd in layer S1                                       
       using default value: -11.0000                                                                
       [IM1S1               ] IM1 in layer S1                                                       
       Using substance nr  23                                                                       
       [IM2S1               ] IM2 in layer S1                                                       
       using default value:  0.00000                                                                
       [IM3S1               ] IM3 in layer S1                                                       
       using default value:  0.00000                                                                
       [DOCS1               ] DOC in pore water layer S1                                            
       using default value:  0.00000                                                                
       [XDOCCd              ] efficiency DOC relative to POC for Cd                                 
       using default value: 0.180000                                                                
       [POCS1               ] total POC in layer S1                                                 
       Using output from proces [S1_Comp             ]                                              
       [PHYTS1              ] total carbon in phytoplankton in layer S1                             
       Using output from proces [S1_Comp             ]                                              
       [KdCdIM1S1           ] partition coefficient Cd-IM1 in layer S1                              
       using default value:  130.000                                                                
       [KdCdIM2S1           ] partition coefficient Cd-IM2 in layer S1                              
       using default value:  130.000                                                                
       [KdCdIM3S1           ] partition coefficient Cd-IM3 in layer S1                              
       using default value:  130.000                                                                
       [KdCdPOCS1           ] partition coefficient Cd-POC in layer S1                              
       using default value:  0.00000                                                                
       [KdCdPHYTS1          ] partition coefficient Cd-PHYT in layer S1                             
       using default value:  0.00000                                                                
       [PORS1               ] porosity of sediment layer S1                                         
       using default value:  0.00000                                                                
       [ActThS1             ] actual thickness layer S1                                             
       Using output from proces [S1_Comp             ]                                              
       [Surf                ] horizontal surface area of a DELWAQ segment                           
       Using segment function nr  1                                                                 
       [DMS1                ] total amount of dry matter in layer S1                                
       Using output from proces [S1_Comp             ]                                              
       [HLTAdsCdS1          ] half-life time non-eq. adsorption Cd in layer S1                      
       using default value:  0.00000                                                                
       [HLTDesCdS1          ] half-life time non-eq. desorption Cd in layer S1                      
       using default value:  0.00000                                                                
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [SWPoreChS1          ] switch for oxic (1) or sufidic (0) pore water                         
       using default value:  1.00000                                                                
       [DisSS1              ] (S--) in layer S1                                                     
       using default value:  0.00000                                                                
       [DisHSS1             ] (HS-) in layer S1                                                     
       using default value:  0.00000                                                                
       [MolWtCd             ] Molweight Cd                                                          
       using default value:  112.400                                                                
       [logKCdSs            ] precipitation constant Cd+S<==>CdSs                                   
       using default value:  27.9000                                                                
       [logKCdSaq           ] complexation constant Cd+S<==>CdS0aq                                  
       using default value:  18.0000                                                                
       [logKCdHSaq          ] complexation constant Cd+HS<==>CdHS+aq                                
       using default value:  9.20000                                                                
       [SwSedYes            ] switch for using module in sediment                                   
       using default value:  1.00000                                                                
       [HMGroup1            ] Heavy metal group 1 (General)                                         
       using default value:  1.00000                                                                
       [Volume              ] volume of computational cell                                          
       Using DELWAQ volume                                                                          
                                                                                                    
 Input for [PartWK_Zn           ] Partitioning Zn in water column                                   
       [Zn                  ] Zinc (Zn)                                                             
       Using substance nr  20                                                                       
       [Zn-Dis              ] dissolved concentration Zn                                            
       using default value: -11.0000                                                                
       [Zn-Par              ] particulate concentration Zn                                          
       using default value: -11.0000                                                                
       [IM1                 ] inorganic matter (IM1)                                                
       Using substance nr   5                                                                       
       [IM2                 ] inorganic matter (IM2)                                                
       using default value:  0.00000                                                                
       [IM3                 ] inorganic matter (IM3)                                                
       using default value:  0.00000                                                                
       [DOC                 ] Dissolved Organic Carbon (DOC)                                        
       using default value:  0.00000                                                                
       [XDOCZn              ] efficiency DOC relative to POC for Zn                                 
       using default value: 0.180000                                                                
       [POCnoa              ] total POC (no algae)                                                  
       Using output from proces [Compos              ]                                              
       [Phyt                ] total carbon in phytoplankton                                         
       Using output from proces [Phy_dyn             ]                                              
       [KdZnIM1             ] partition coefficient Zn-IM1                                          
       using default value:  110.000                                                                
       [KdZnIM2             ] partition coefficient Zn-IM2                                          
       using default value:  110.000                                                                
       [KdZnIM3             ] partition coefficient Zn-IM3                                          
       using default value:  110.000                                                                
       [KdZnPOC             ] partition coefficient Zn-POC                                          
       using default value:  0.00000                                                                
       [KdZnPHYT            ] partition coefficient Zn-PHYT                                         
       using default value:  0.00000                                                                
       [Poros               ] volumetric porosity                                                   
       using default value:  1.00000                                                                
       [dummy               ] dummy input item                                                      
       using default value:  0.00000                                                                
       [dummy               ] dummy input item                                                      
       using default value:  0.00000                                                                
       [SS                  ] suspended solids                                                      
       Using output from proces [Compos              ]                                              
       [HLTAdsZn            ] half-life time non-eq. adsorption Zn                                  
       using default value:  0.00000                                                                
       [HLTDesZn            ] half-life time non-eq. desorption Zn                                  
       using default value:  0.00000                                                                
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [SWWaterKCh          ] switch for oxic (1) or sufidic (0) water                              
       using default value:  1.00000                                                                
       [DisSWK              ] (S--) in water column                                                 
       using default value:  0.00000                                                                
       [DisHSWK             ] (HS-) in water column                                                 
       using default value:  0.00000                                                                
       [MolWtZn             ] Molweight Zn                                                          
       using default value:  65.3800                                                                
       [logKZnSs            ] precipitation constant Zn+S<==>ZnSs                                   
       using default value:  27.9000                                                                
       [logKZnSaq           ] complexation constant Zn+S<==>ZnS0aq                                  
       using default value:  18.0000                                                                
       [logKZnHSaq          ] complexation constant Zn+HS<==>ZnHS+aq                                
       using default value:  9.20000                                                                
       [SwSedNo             ] switch for using module in water column                               
       using default value:  0.00000                                                                
       [HMGroup1            ] Heavy metal group 1 (General)                                         
       using default value:  1.00000                                                                
       [Volume              ] volume of computational cell                                          
       Using DELWAQ volume                                                                          
                                                                                                    
 Input for [PartWK_Cu           ] Partitioning Cu in water column                                   
       [Cu                  ] Copper (Cu)                                                           
       Using substance nr  19                                                                       
       [Cu-Dis              ] dissolved concentration Cu                                            
       using default value: -11.0000                                                                
       [Cu-Par              ] particulate concentration Cu                                          
       using default value: -11.0000                                                                
       [IM1                 ] inorganic matter (IM1)                                                
       Using substance nr   5                                                                       
       [IM2                 ] inorganic matter (IM2)                                                
       using default value:  0.00000                                                                
       [IM3                 ] inorganic matter (IM3)                                                
       using default value:  0.00000                                                                
       [DOC                 ] Dissolved Organic Carbon (DOC)                                        
       using default value:  0.00000                                                                
       [XDOCCu              ] efficiency DOC relative to POC for Cu                                 
       using default value: 0.180000                                                                
       [POCnoa              ] total POC (no algae)                                                  
       Using output from proces [Compos              ]                                              
       [Phyt                ] total carbon in phytoplankton                                         
       Using output from proces [Phy_dyn             ]                                              
       [KdCuIM1             ] partition coefficient Cu-IM1                                          
       using default value:  50.0000                                                                
       [KdCuIM2             ] partition coefficient Cu-IM2                                          
       using default value:  50.0000                                                                
       [KdCuIM3             ] partition coefficient Cu-IM3                                          
       using default value:  50.0000                                                                
       [KdCuPOC             ] partition coefficient Cu-POC                                          
       using default value:  0.00000                                                                
       [KdCuPHYT            ] partition coefficient Cu-PHYT                                         
       using default value:  0.00000                                                                
       [Poros               ] volumetric porosity                                                   
       using default value:  1.00000                                                                
       [dummy               ] dummy input item                                                      
       using default value:  0.00000                                                                
       [dummy               ] dummy input item                                                      
       using default value:  0.00000                                                                
       [SS                  ] suspended solids                                                      
       Using output from proces [Compos              ]                                              
       [HLTAdsCu            ] half-life time non-eq. adsorption Cu                                  
       using default value:  0.00000                                                                
       [HLTDesCu            ] half-life time non-eq. desorption Cu                                  
       using default value:  0.00000                                                                
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [SWWaterKCh          ] switch for oxic (1) or sufidic (0) water                              
       using default value:  1.00000                                                                
       [DisSWK              ] (S--) in water column                                                 
       using default value:  0.00000                                                                
       [DisHSWK             ] (HS-) in water column                                                 
       using default value:  0.00000                                                                
       [MolWtCu             ] Molweight Cu                                                          
       using default value:  63.5500                                                                
       [logKCuSs            ] precipitation constant Cu+S<==>CuSs                                   
       using default value:  27.9000                                                                
       [logKCuSaq           ] complexation constant Cu+S<==>CuS0aq                                  
       using default value:  18.0000                                                                
       [logKCuHSaq          ] complexation constant Cu+HS<==>CuHS+aq                                
       using default value:  9.20000                                                                
       [SwSedNo             ] switch for using module in water column                               
       using default value:  0.00000                                                                
       [HMGroup1            ] Heavy metal group 1 (General)                                         
       using default value:  1.00000                                                                
       [Volume              ] volume of computational cell                                          
       Using DELWAQ volume                                                                          
                                                                                                    
 Input for [PartWK_Cd           ] Partitioning Cd in water column                                   
       [Cd                  ] Cadmium (Cd)                                                          
       Using substance nr  18                                                                       
       [Cd-Dis              ] dissolved concentration Cd                                            
       using default value: -11.0000                                                                
       [Cd-Par              ] particulate concentration Cd                                          
       using default value: -11.0000                                                                
       [IM1                 ] inorganic matter (IM1)                                                
       Using substance nr   5                                                                       
       [IM2                 ] inorganic matter (IM2)                                                
       using default value:  0.00000                                                                
       [IM3                 ] inorganic matter (IM3)                                                
       using default value:  0.00000                                                                
       [DOC                 ] Dissolved Organic Carbon (DOC)                                        
       using default value:  0.00000                                                                
       [XDOCCd              ] efficiency DOC relative to POC for Cd                                 
       using default value: 0.180000                                                                
       [POCnoa              ] total POC (no algae)                                                  
       Using output from proces [Compos              ]                                              
       [Phyt                ] total carbon in phytoplankton                                         
       Using output from proces [Phy_dyn             ]                                              
       [KdCdIM1             ] partition coefficient Cd-IM1                                          
       using default value:  130.000                                                                
       [KdCdIM2             ] partition coefficient Cd-IM2                                          
       using default value:  130.000                                                                
       [KdCdIM3             ] partition coefficient Cd-IM3                                          
       using default value:  130.000                                                                
       [KdCdPOC             ] partition coefficient Cd-POC                                          
       using default value:  0.00000                                                                
       [KdCdPHYT            ] partition coefficient Cd-PHYT                                         
       using default value:  0.00000                                                                
       [Poros               ] volumetric porosity                                                   
       using default value:  1.00000                                                                
       [dummy               ] dummy input item                                                      
       using default value:  0.00000                                                                
       [dummy               ] dummy input item                                                      
       using default value:  0.00000                                                                
       [SS                  ] suspended solids                                                      
       Using output from proces [Compos              ]                                              
       [HLTAdsCd            ] half-life time non-eq. adsorption Cd                                  
       using default value:  0.00000                                                                
       [HLTDesCd            ] half-life time non-eq. desorption Cd                                  
       using default value:  0.00000                                                                
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [SWWaterKCh          ] switch for oxic (1) or sufidic (0) water                              
       using default value:  1.00000                                                                
       [DisSWK              ] (S--) in water column                                                 
       using default value:  0.00000                                                                
       [DisHSWK             ] (HS-) in water column                                                 
       using default value:  0.00000                                                                
       [MolWtCd             ] Molweight Cd                                                          
       using default value:  112.400                                                                
       [logKCdSs            ] precipitation constant Cd+S<==>CdSs                                   
       using default value:  27.9000                                                                
       [logKCdSaq           ] complexation constant Cd+S<==>CdS0aq                                  
       using default value:  18.0000                                                                
       [logKCdHSaq          ] complexation constant Cd+HS<==>CdHS+aq                                
       using default value:  9.20000                                                                
       [SwSedNo             ] switch for using module in water column                               
       using default value:  0.00000                                                                
       [HMGroup1            ] Heavy metal group 1 (General)                                         
       using default value:  1.00000                                                                
       [Volume              ] volume of computational cell                                          
       Using DELWAQ volume                                                                          
                                                                                                    
 Input for [S12TraAAP           ] Resuspension, transport in S1-S2 AAP                              
       [FrAAPS1             ] fraction AAP in layer S1                                              
       Using output from proces [S1_Comp             ]                                              
       [ScalCar             ] scale factor for primary variable                                     
       using default value:  1.00000                                                                
       [FrAAPS2             ] fraction AAP in layer S2                                              
       using default value:  0.00000                                                                
       [ScalCar             ] scale factor for primary variable                                     
       using default value:  1.00000                                                                
       [FrAAPS3             ] fraction AAP in layer S3                                              
       using default value:  0.00000                                                                
       [ScalCar             ] scale factor for primary variable                                     
       using default value:  1.00000                                                                
       [fResS1DM            ] total resuspension flux DM from layer S1                              
       Using output from proces [Res_DM              ]                                              
       [fResS2DM            ] total resuspension flux DM from layer S2                              
       Using output from proces [Res_DM              ]                                              
       [fBurS1DM            ] total burial flux DM from layer S1                                    
       using default value:  0.00000                                                                
       [fBurS2DM            ] total burial flux DM from layer S2                                    
       using default value:  0.00000                                                                
       [fDigS1DM            ] total digging flux DM to layer S1                                     
       using default value:  0.00000                                                                
       [fDigS2DM            ] total digging flux DM to layer S2                                     
       using default value:  0.00000                                                                
       [SWDigS1             ] switch for digging S1 (0=actual, 1=deeper)                            
       using default value:  0.00000                                                                
       [SWDigS2             ] switch for digging S2 (0=actual, 1=deeper)                            
       using default value:  0.00000                                                                
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [SedZoneSW           ] SWITCH 0=no SWITCH, <0 per segment, >0 per zone                       
       using default value:  0.00000                                                                
                                                                                                    
 Input for [S12TraIM1           ] Resuspension, transport in S1-S2 IM1                              
       [FrIM1S1             ] fraction IM1 in layer S1                                              
       Using output from proces [S1_Comp             ]                                              
       [ScalCar             ] scale factor for primary variable                                     
       using default value:  1.00000                                                                
       [FrIM1S2             ] fraction IM1 in layer S2                                              
       using default value:  0.00000                                                                
       [ScalCar             ] scale factor for primary variable                                     
       using default value:  1.00000                                                                
       [FrIM1S3             ] fraction IM1 in layer S3                                              
       using default value:  0.00000                                                                
       [ScalCar             ] scale factor for primary variable                                     
       using default value:  1.00000                                                                
       [fResS1DM            ] total resuspension flux DM from layer S1                              
       Using output from proces [Res_DM              ]                                              
       [fResS2DM            ] total resuspension flux DM from layer S2                              
       Using output from proces [Res_DM              ]                                              
       [fBurS1DM            ] total burial flux DM from layer S1                                    
       using default value:  0.00000                                                                
       [fBurS2DM            ] total burial flux DM from layer S2                                    
       using default value:  0.00000                                                                
       [fDigS1DM            ] total digging flux DM to layer S1                                     
       using default value:  0.00000                                                                
       [fDigS2DM            ] total digging flux DM to layer S2                                     
       using default value:  0.00000                                                                
       [SWDigS1             ] switch for digging S1 (0=actual, 1=deeper)                            
       using default value:  0.00000                                                                
       [SWDigS2             ] switch for digging S2 (0=actual, 1=deeper)                            
       using default value:  0.00000                                                                
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [SedZoneSW           ] SWITCH 0=no SWITCH, <0 per segment, >0 per zone                       
       using default value:  0.00000                                                                
       [SWResIM1            ] switch resuspension IM1 (0=resdm, 1=resim1)                           
       using default value:  0.00000                                                                
       [SWResusp            ] switch resuspension (0=z+f, 1=min(z,f))                               
       using default value:  0.00000                                                                
       [IM1S1               ] IM1 in layer S1                                                       
       Using substance nr  23                                                                       
       [IM1S2               ] IM1 in layer S2                                                       
       using default value:  0.00000                                                                
       [ZResIM1             ] zeroth-order resuspension flux IM1                                    
       using default value:  0.00000                                                                
       [VResIM1             ] first order resuspension velocity IM1                                 
       using default value:  0.00000                                                                
       [Tau                 ] total bottom shear stress                                             
       Using segment function nr  2                                                                 
       [TaucRS1IM1          ] critical shear stress for resuspension IM1S1                          
       using default value: 0.200000                                                                
       [TaucRS2IM1          ] critical shear stress for resuspension IM1S2                          
       using default value: 0.500000                                                                
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [MinDepth            ] minimum waterdepth for sedimentation/resuspension                     
       using default value: 0.100000                                                                
                                                                                                    
 Input for [S12TraDetP          ] Resuspension, transport in S1-S2 DetP                             
       [FrDetCS1            ] fraction DetC in layer S1                                             
       Using output from proces [S1_Comp             ]                                              
       [P-CDetCS1           ] P:C ratio Detritus S1                                                 
       Using output from proces [S1_Comp             ]                                              
       [FrDetCS2            ] fraction DetC in layer S2                                             
       using default value:  0.00000                                                                
       [P-CDetCS2           ] P:C ratio Detritus S2                                                 
       using default value:  0.00000                                                                
       [FrDetPS3            ] fraction DetP in layer S3                                             
       using default value:  0.00000                                                                
       [ScalCar             ] scale factor for primary variable                                     
       using default value:  1.00000                                                                
       [fResS1DM            ] total resuspension flux DM from layer S1                              
       Using output from proces [Res_DM              ]                                              
       [fResS2DM            ] total resuspension flux DM from layer S2                              
       Using output from proces [Res_DM              ]                                              
       [fBurS1DM            ] total burial flux DM from layer S1                                    
       using default value:  0.00000                                                                
       [fBurS2DM            ] total burial flux DM from layer S2                                    
       using default value:  0.00000                                                                
       [fDigS1DM            ] total digging flux DM to layer S1                                     
       using default value:  0.00000                                                                
       [fDigS2DM            ] total digging flux DM to layer S2                                     
       using default value:  0.00000                                                                
       [SWDigS1             ] switch for digging S1 (0=actual, 1=deeper)                            
       using default value:  0.00000                                                                
       [SWDigS2             ] switch for digging S2 (0=actual, 1=deeper)                            
       using default value:  0.00000                                                                
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [SedZoneSW           ] SWITCH 0=no SWITCH, <0 per segment, >0 per zone                       
       using default value:  0.00000                                                                
                                                                                                    
 Input for [S12TraDetN          ] Resuspension, transport in S1-S2 DetN                             
       [FrDetCS1            ] fraction DetC in layer S1                                             
       Using output from proces [S1_Comp             ]                                              
       [N-CDetCS1           ] N:C ratio Detritus S1                                                 
       Using output from proces [S1_Comp             ]                                              
       [FrDetCS2            ] fraction DetC in layer S2                                             
       using default value:  0.00000                                                                
       [N-CDetCS2           ] N:C ratio Detritus S2                                                 
       using default value:  0.00000                                                                
       [FrDetNS3            ] fraction DetN in layer S3                                             
       using default value:  0.00000                                                                
       [ScalCar             ] scale factor for primary variable                                     
       using default value:  1.00000                                                                
       [fResS1DM            ] total resuspension flux DM from layer S1                              
       Using output from proces [Res_DM              ]                                              
       [fResS2DM            ] total resuspension flux DM from layer S2                              
       Using output from proces [Res_DM              ]                                              
       [fBurS1DM            ] total burial flux DM from layer S1                                    
       using default value:  0.00000                                                                
       [fBurS2DM            ] total burial flux DM from layer S2                                    
       using default value:  0.00000                                                                
       [fDigS1DM            ] total digging flux DM to layer S1                                     
       using default value:  0.00000                                                                
       [fDigS2DM            ] total digging flux DM to layer S2                                     
       using default value:  0.00000                                                                
       [SWDigS1             ] switch for digging S1 (0=actual, 1=deeper)                            
       using default value:  0.00000                                                                
       [SWDigS2             ] switch for digging S2 (0=actual, 1=deeper)                            
       using default value:  0.00000                                                                
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [SedZoneSW           ] SWITCH 0=no SWITCH, <0 per segment, >0 per zone                       
       using default value:  0.00000                                                                
                                                                                                    
 Input for [S12TraDetC          ] Resuspension, transport in S1-S2 DetC                             
       [FrDetCS1            ] fraction DetC in layer S1                                             
       Using output from proces [S1_Comp             ]                                              
       [ScalCar             ] scale factor for primary variable                                     
       using default value:  1.00000                                                                
       [FrDetCS2            ] fraction DetC in layer S2                                             
       using default value:  0.00000                                                                
       [ScalCar             ] scale factor for primary variable                                     
       using default value:  1.00000                                                                
       [FrDetCS3            ] fraction DetC in layer S3                                             
       using default value:  0.00000                                                                
       [ScalCar             ] scale factor for primary variable                                     
       using default value:  1.00000                                                                
       [fResS1DM            ] total resuspension flux DM from layer S1                              
       Using output from proces [Res_DM              ]                                              
       [fResS2DM            ] total resuspension flux DM from layer S2                              
       Using output from proces [Res_DM              ]                                              
       [fBurS1DM            ] total burial flux DM from layer S1                                    
       using default value:  0.00000                                                                
       [fBurS2DM            ] total burial flux DM from layer S2                                    
       using default value:  0.00000                                                                
       [fDigS1DM            ] total digging flux DM to layer S1                                     
       using default value:  0.00000                                                                
       [fDigS2DM            ] total digging flux DM to layer S2                                     
       using default value:  0.00000                                                                
       [SWDigS1             ] switch for digging S1 (0=actual, 1=deeper)                            
       using default value:  0.00000                                                                
       [SWDigS2             ] switch for digging S2 (0=actual, 1=deeper)                            
       using default value:  0.00000                                                                
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [SedZoneSW           ] SWITCH 0=no SWITCH, <0 per segment, >0 per zone                       
       using default value:  0.00000                                                                
                                                                                                    
 Input for [Res_DM              ] Resuspension total bottom material (dry mass)                     
       [DMS1                ] total amount of dry matter in layer S1                                
       Using output from proces [S1_Comp             ]                                              
       [DMS2                ] total amount of dry matter in layer S2                                
       using default value: 0.100000E-05                                                            
       [ZResDM              ] zeroth-order resuspension flux                                        
       using default value:  0.00000                                                                
       [VResDM              ] first order resuspension velocity DM                                  
       using default value:  0.00000                                                                
       [Tau                 ] total bottom shear stress                                             
       Using segment function nr  2                                                                 
       [TaucRS1DM           ] critical shear stress for resuspension DM layer S1                    
       using default value: 0.200000                                                                
       [TaucRS2DM           ] critical shear stress for resuspension DM layer S2                    
       using default value: 0.500000                                                                
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [MinDepth            ] minimum waterdepth for sedimentation/resuspension                     
       using default value: 0.100000                                                                
       [Surf                ] horizontal surface area of a DELWAQ segment                           
       Using segment function nr  1                                                                 
       [SWResusp            ] switch resuspension (0=z+f, 1=min(z,f))                               
       using default value:  0.00000                                                                
                                                                                                    
 Input for [Sed_CAAP            ] Sedimentation adsorbed P as component                             
       [AAP                 ] adsorbed ortho phosphate                                              
       Using substance nr   9                                                                       
       [ZSedAAP             ] zeroth-order sedimentation flux AAP                                   
       using default value:  0.00000                                                                
       [VSedAAP             ] sedimentation velocity AAP                                            
       using default value: 0.500000                                                                
       [Tau                 ] total bottom shear stress                                             
       Using segment function nr  2                                                                 
       [TaucSAAP            ] critical shear stress for sedimentation AAP                           
       using default value: 0.100000                                                                
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [MinDepth            ] minimum waterdepth for sedimentation/resuspension                     
       using default value: 0.100000                                                                
       [VSedAAP             ] sedimentation velocity AAP                                            
       using default value: 0.500000                                                                
                                                                                                    
 Input for [Sed_AAP             ] Sedimentation AAP (adsorbed PO4)                                  
       [fSedIM1             ] sedimentation flux IM1 towards S1                                     
       Using output from proces [Sed_IM1             ]                                              
       [fSedIM2             ] sedimentation flux IM2 towards S1                                     
       using default value:  0.00000                                                                
       [fSedIM3             ] sedimentation flux IM3 towards S1                                     
       using default value:  0.00000                                                                
       [fSedIM1S2           ] sedimentation flux IM1 towards S2                                     
       Using output from proces [Sed_IM1             ]                                              
       [fSedIM2S2           ] sedimentation flux IM2 towards S2                                     
       using default value:  0.00000                                                                
       [fSedIM3S2           ] sedimentation flux IM3 towards S2                                     
       using default value:  0.00000                                                                
       [QPIM1               ] quality IM1 for P                                                     
       Using output from proces [AdsPO4AAP           ]                                              
       [QPIM2               ] quality IM2 for P                                                     
       Using output from proces [AdsPO4AAP           ]                                              
       [QPIM3               ] quality IM3 for P                                                     
       Using output from proces [AdsPO4AAP           ]                                              
       [FPIM1               ] fraction of P adsorbed on IM1                                         
       Using output from proces [AdsPO4AAP           ]                                              
       [FPIM2               ] fraction of P adsorbed on IM2                                         
       Using output from proces [AdsPO4AAP           ]                                              
       [FPIM3               ] fraction of P adsorbed on IM3                                         
       Using output from proces [AdsPO4AAP           ]                                              
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [SedZoneSW           ] SWITCH 0=no SWITCH, <0 per segment, >0 per zone                       
       using default value:  0.00000                                                                
       [VxSedIM1            ] sedimentation velocity IM1                                            
       Using output from proces [Sed_IM1             ]                                              
       [VxSedIM2            ] sedimentation velocity IM2                                            
       using default value:  0.00000                                                                
       [VxSedIM3            ] sedimentation velocity IM3                                            
       using default value:  0.00000                                                                
                                                                                                    
 Input for [Sum_Sedim           ] Total of all sedimenting substances                               
       [fSedIM1             ] sedimentation flux IM1 towards S1                                     
       Using output from proces [Sed_IM1             ]                                              
       [fSedIM2             ] sedimentation flux IM2 towards S1                                     
       using default value:  0.00000                                                                
       [fSedIM3             ] sedimentation flux IM3 towards S1                                     
       using default value:  0.00000                                                                
       [fSedIM1S2           ] sedimentation flux IM1 towards S2                                     
       Using output from proces [Sed_IM1             ]                                              
       [fSedIM2S2           ] sedimentation flux IM2 towards S2                                     
       using default value:  0.00000                                                                
       [fSedIM3S2           ] sedimentation flux IM3 towards S2                                     
       using default value:  0.00000                                                                
       [fSedPOC1            ] sedimentation flux POC1                                               
       Using output from proces [Sed_POC1            ]                                              
       [fSedPOC2            ] sedimentation flux POC2                                               
       using default value:  0.00000                                                                
       [fSedPOC3            ] sedimentation flux POC3                                               
       using default value:  0.00000                                                                
       [fSedPOC4            ] sedimentation flux POC4                                               
       using default value:  0.00000                                                                
       [fSedPHYT            ] total sedimentation flux phytoplankton                                
       Using output from proces [SedPhDyn            ]                                              
       [fSedAlgDM           ] total sedimentation flux phytoplankton as DM                          
       Using output from proces [SedPhDyn            ]                                              
       [DMCFIM1             ] DM:C ratio IM1                                                        
       using default value:  1.00000                                                                
       [DMCFIM2             ] DM:C ratio IM2                                                        
       using default value:  1.00000                                                                
       [DMCFIM3             ] DM:C ratio IM3                                                        
       using default value:  1.00000                                                                
       [DmCfPOC1            ] DM:C ratio POC1                                                       
       using default value:  2.50000                                                                
       [DmCfPOC2            ] DM:C ratio POC2                                                       
       using default value:  2.50000                                                                
       [DmCfPOC3            ] DM:C ratio POC3                                                       
       using default value:  2.50000                                                                
       [DmCfPOC4            ] DM:C ratio POC4                                                       
       using default value:  2.50000                                                                
       [IM1                 ] inorganic matter (IM1)                                                
       Using substance nr   5                                                                       
       [IM2                 ] inorganic matter (IM2)                                                
       using default value:  0.00000                                                                
       [IM3                 ] inorganic matter (IM3)                                                
       using default value:  0.00000                                                                
       [POC1                ] POC1 (fast decomposing fraction)                                      
       Using substance nr  12                                                                       
       [POC2                ] POC2 (medium decomposing fraction)                                    
       using default value:  0.00000                                                                
       [POC3                ] POC3 (slow decomposing fraction)                                      
       using default value:  0.00000                                                                
       [POC4                ] POC4 (particulate refractory fraction)                                
       using default value:  0.00000                                                                
       [VxSedIM1            ] sedimentation velocity IM1                                            
       Using output from proces [Sed_IM1             ]                                              
       [VxSedIM2            ] sedimentation velocity IM2                                            
       using default value:  0.00000                                                                
       [VxSedIM3            ] sedimentation velocity IM3                                            
       using default value:  0.00000                                                                
       [VxSedPOC1           ] sedimentation velocity POC1                                           
       Using output from proces [Sed_POC1            ]                                              
       [VxSedPOC2           ] sedimentation velocity POC2                                           
       using default value:  0.00000                                                                
       [VxSedPOC3           ] sedimentation velocity POC3                                           
       using default value:  0.00000                                                                
       [VxSedPOC4           ] sedimentation velocity POC4                                           
       using default value:  0.00000                                                                
                                                                                                    
 Input for [SedNPOC1            ] Sedim. nutrients in POC1                                          
       [fSedPOC1            ] sedimentation flux POC1                                               
       Using output from proces [Sed_POC1            ]                                              
       [C-NPOC1             ] C:N ratio fast decaying detritus                                      
       Using output from proces [Compos              ]                                              
       [C-PPOC1             ] C:P ratio fast decaying detritus                                      
       Using output from proces [Compos              ]                                              
       [C-SPOC1             ] C:S ratio fast decaying detritus                                      
       Using output from proces [Compos              ]                                              
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [VxSedPOC1           ] sedimentation velocity POC1                                           
       Using output from proces [Sed_POC1            ]                                              
                                                                                                    
 Input for [Sed_POC1            ] Sedimentation POC1 3d                                             
       [POC1                ] POC1 (fast decomposing fraction)                                      
       Using substance nr  12                                                                       
       [ZSedPOC1            ] zeroth-order sedimentation flux POC1                                  
       using default value:  0.00000                                                                
       [VSedPOC1            ] sedimentation velocity POC1                                           
       Using constant nr 38 with value: 0.500000                                                    
       [Tau                 ] total bottom shear stress                                             
       Using segment function nr  2                                                                 
       [TaucSPOC1           ] critical shear stress for sedimentation POC1                          
       using default value: 0.100000                                                                
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [MinDepth            ] minimum waterdepth for sedimentation/resuspension                     
       using default value: 0.100000                                                                
       [VSedPOC1            ] sedimentation velocity POC1                                           
       Using constant nr 38 with value: 0.500000                                                    
                                                                                                    
 Input for [SedPhDyn            ] Sum sedimentation of algae - Dynamo                               
       [NAlgDynamo          ] number of algae types in DYNAMO                                       
       using default value:  2.00000                                                                
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [fSedGreen           ] sedimentation flux Greens                                             
       Using output from proces [Sed_Gre             ]                                              
       [fSedDiat            ] sedimentation flux Diatoms                                            
       Using output from proces [SedDiat             ]                                              
       [DMCFGreen           ] DM:C ratio GreenS                                                     
       using default value:  2.50000                                                                
       [DMCFDiat            ] DM:C ratio Diatoms                                                    
       using default value:  2.50000                                                                
       [NCRatGreen          ] N:C ratio Greens                                                      
       using default value: 0.160000                                                                
       [NCRatDiat           ] N:C ratio Diatoms                                                     
       using default value: 0.160000                                                                
       [PCRatGreen          ] P:C ratio Greens                                                      
       using default value: 0.200000E-01                                                            
       [PCRatDiat           ] P:C ratio Diatoms                                                     
       using default value: 0.200000E-01                                                            
       [SCRatGreen          ] Si:C ratio Greens                                                     
       using default value:  0.00000                                                                
       [SCRatDiat           ] Si:C ratio Diatoms                                                    
       using default value: 0.490000                                                                
       [Green               ] Algae (non-Diatoms)                                                   
       Using substance nr  16                                                                       
       [Diat                ] Diatoms                                                               
       Using substance nr  15                                                                       
       [VxSedGreen          ] sedimentation velocity Greens                                         
       Using constant nr 39 with value:  0.00000                                                    
       [VxSedDiat           ] sedimentation velocity Diatoms                                        
       Using constant nr 40 with value:  0.00000                                                    
                                                                                                    
 Input for [SED_SOD             ] Sedimentation of oxygen demand                                    
       [SwOXYDem            ] switch oxygen consumption(0=BOD, 1=COD, 2=both)                       
       Using constant nr  5 with value:  0.00000                                                    
       [fSedBOD5            ] sedimentation flux CBOD5                                              
       Using output from proces [S_CBOD51            ]                                              
       [fSedBOD5_2          ] sedimentation flux CBOD5_2                                            
       using default value:  0.00000                                                                
       [fSedBOD5_3          ] sedimentation flux CBOD5_3                                            
       using default value:  0.00000                                                                
       [fSedBODu            ] sedimentation flux CBODu                                              
       using default value:  0.00000                                                                
       [fSedBODu_2          ] sedimentation flux CBODu_2                                            
       using default value:  0.00000                                                                
       [fSedNBOD5           ] sedimentation flux NBOD5                                              
       Using output from proces [S_NBOD5             ]                                              
       [fSedNBODu           ] sedimentation flux NBODu                                              
       using default value:  0.00000                                                                
       [fSedCODCr           ] sedimentation flux COD_Cr                                             
       Using output from proces [S_CODCr             ]                                              
       [fSedCODMn           ] sedimentation flux COD_Mn                                             
       using default value:  0.00000                                                                
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
                                                                                                    
 Input for [S_NBOD5             ] Sedimentation of NBOD5                                            
       [NBOD5               ] nitrogenous BOD at 5 days                                             
       Using substance nr   4                                                                       
       [ZSedNBOD5           ] zeroth-order sedimentation flux NBOD5                                 
       using default value:  0.00000                                                                
       [VSedNBOD5           ] sedimentation velocity NBOD5                                          
       Using constant nr 30 with value: 0.100000                                                    
       [Tau                 ] total bottom shear stress                                             
       Using segment function nr  2                                                                 
       [TaucSBOD            ] critical shear stress for sedimentation BOD                           
       using default value: 0.100000E+13                                                            
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [MinDepth            ] minimum waterdepth for sedimentation/resuspension                     
       using default value: 0.100000                                                                
       [VSedNBOD5           ] sedimentation velocity NBOD5                                          
       Using constant nr 30 with value: 0.100000                                                    
                                                                                                    
 Input for [S_CODCr             ] Sedimentation COD Cr method                                       
       [COD_Cr              ] COD concentration by the Cr-method                                    
       Using substance nr   3                                                                       
       [ZSedCODCr           ] zeroth-order sedimentation flux COD_Cr                                
       using default value:  0.00000                                                                
       [VSedCODCr           ] sedimentation velocity COD_Cr                                         
       Using constant nr 29 with value:  0.00000                                                    
       [Tau                 ] total bottom shear stress                                             
       Using segment function nr  2                                                                 
       [TaucSBOD            ] critical shear stress for sedimentation BOD                           
       using default value: 0.100000E+13                                                            
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [MinDepth            ] minimum waterdepth for sedimentation/resuspension                     
       using default value: 0.100000                                                                
       [VSedCODCr           ] sedimentation velocity COD_Cr                                         
       Using constant nr 29 with value:  0.00000                                                    
                                                                                                    
 Input for [S_CBOD51            ] Sedimentation CBOD5 (first pool)                                  
       [CBOD5               ] carbonaceous BOD (first pool) at 5 days                               
       Using substance nr   2                                                                       
       [ZSedBOD5            ] zeroth-order sedimentation flux CBOD5                                 
       using default value:  0.00000                                                                
       [VSedBOD5            ] sedimentation velocity CBOD5                                          
       Using constant nr 28 with value: 0.100000                                                    
       [Tau                 ] total bottom shear stress                                             
       Using segment function nr  2                                                                 
       [TaucSBOD            ] critical shear stress for sedimentation BOD                           
       using default value: 0.100000E+13                                                            
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [MinDepth            ] minimum waterdepth for sedimentation/resuspension                     
       using default value: 0.100000                                                                
       [VSedBOD5            ] sedimentation velocity CBOD5                                          
       Using constant nr 28 with value: 0.100000                                                    
                                                                                                    
 Input for [Sed_Gre             ] Sedimentation green algae                                         
       [Green               ] Algae (non-Diatoms)                                                   
       Using substance nr  16                                                                       
       [ZSedGreen           ] zeroth-order sedimentation flux Greens                                
       using default value:  0.00000                                                                
       [VSedGreen           ] sedimentation velocity Greens                                         
       Using constant nr 43 with value:  0.00000                                                    
       [Tau                 ] total bottom shear stress                                             
       Using segment function nr  2                                                                 
       [TaucSGreen          ] critical shear stress for sedimentation Greens                        
       Using constant nr 44 with value: 0.100000                                                    
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [MinDepth            ] minimum waterdepth for sedimentation/resuspension                     
       using default value: 0.100000                                                                
       [VSedGreen           ] sedimentation velocity Greens                                         
       Using constant nr 43 with value:  0.00000                                                    
                                                                                                    
 Input for [SedDiat             ] Sedimentation diatoms                                             
       [Diat                ] Diatoms                                                               
       Using substance nr  15                                                                       
       [ZSedDiat            ] zeroth-order sedimentation flux Diatoms                               
       using default value:  0.00000                                                                
       [VSedDiat            ] sedimentation velocity Diatoms                                        
       Using constant nr 41 with value: 0.100000                                                    
       [Tau                 ] total bottom shear stress                                             
       Using segment function nr  2                                                                 
       [TaucSDiat           ] critical shear stress for sedimentation Diatoms                       
       Using constant nr 42 with value: 0.100000                                                    
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [MinDepth            ] minimum waterdepth for sedimentation/resuspension                     
       using default value: 0.100000                                                                
       [VSedDiat            ] sedimentation velocity Diatoms                                        
       Using constant nr 41 with value: 0.100000                                                    
                                                                                                    
 Input for [Sed_IM1             ] Sedimentation IM1                                                 
       [IM1                 ] inorganic matter (IM1)                                                
       Using substance nr   5                                                                       
       [ZSedIM1             ] zeroth-order sedimentation flux IM1                                   
       using default value:  0.00000                                                                
       [VSedIM1             ] sedimentation velocity IM1                                            
       Using constant nr 31 with value: 0.100000                                                    
       [Tau                 ] total bottom shear stress                                             
       Using segment function nr  2                                                                 
       [TaucSIM1            ] critical shear stress for sedimentation IM1                           
       Using constant nr 32 with value: 0.100000                                                    
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [MinDepth            ] minimum waterdepth for sedimentation/resuspension                     
       using default value: 0.100000                                                                
       [FrIM1SedS2          ] fraction sedimentation IM1 towards S2                                 
       using default value:  0.00000                                                                
       [FrTIMS2             ] fraction TIM in layer S2                                              
       using default value:  0.00000                                                                
       [FrTIMS2Max          ] maximum fraction TIM in layer S2 pick-up                              
       using default value:  1.00000                                                                
       [PsedminIM1          ] minimum sedimentation probability                                     
       using default value:  0.00000                                                                
       [VSedIM1             ] sedimentation velocity IM1                                            
       Using constant nr 31 with value: 0.100000                                                    
                                                                                                    
 Input for [OXIDSUD             ] Oxidation of dissolved sulphide                                   
       [SUD                 ] total dissolved sulphide (SUD)                                        
       Using substance nr  11                                                                       
       [OXY                 ] Dissolved Oxygen                                                      
       Using substance nr   1                                                                       
       [Rc0Sox              ] zero-order oxidation rate                                             
       using default value:  0.00000                                                                
       [RcSox20             ] second order oxidation rate at 20 oC                                  
       using default value: 0.100000                                                                
       [TcSox               ] temperature coefficient for oxidation                                 
       using default value:  1.07000                                                                
       [CoxSUD              ] critical DO concentration for oxidation                               
       using default value:  0.00000                                                                
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  15.0000                                                    
       [Poros               ] volumetric porosity                                                   
       using default value:  1.00000                                                                
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
                                                                                                    
 Input for [CONSELAC            ] Consumption oxygen/other electron acceptors                       
       [OXY                 ] Dissolved Oxygen                                                      
       Using substance nr   1                                                                       
       [NO3                 ] Nitrate (NO3)                                                         
       Using substance nr   7                                                                       
       [FeIIIpa             ] particulate amorphous oxidizing iron                                  
       using default value:  0.00000                                                                
       [SO4                 ] sulphate (SO4)                                                        
       Using substance nr  10                                                                       
       [f_minPOC1           ] mineralization flux POC1                                              
       Using output from proces [DecFast             ]                                              
       [f_minPOC2           ] mineralization flux POC2                                              
       using default value:  0.00000                                                                
       [f_minPOC3           ] mineralization flux POC3                                              
       using default value:  0.00000                                                                
       [f_minPOC4           ] mineralization flux POC4                                              
       using default value:  0.00000                                                                
       [f_minPOC5           ] mineralization flux POC5 submerged                                    
       using default value:  0.00000                                                                
       [f_minDOC            ] mineralization flux DOC                                               
       using default value:  0.00000                                                                
       [KsOxCon             ] half saturation constant for DO limitation                            
       using default value:  2.00000                                                                
       [KsNiDen             ] half saturation constant for nitrate cons.                            
       using default value: 0.500000                                                                
       [KsFeRed             ] half saturation constant for Fe limitation                            
       using default value:  2.00000                                                                
       [KsSuRed             ] half saturation constant for SO4 limitation                           
       using default value:  2.00000                                                                
       [KsOxDenInh          ] half saturation constant for oxygen inhib.                            
       using default value: 0.200000                                                                
       [KsNiIRdInh          ] half sat. const. NO3 inhib. iron reduction                            
       using default value: 0.200000                                                                
       [KsNiSRdInh          ] half sat. const. NO3 inhib. SO4 reduction                             
       using default value: 0.200000                                                                
       [KsSuMetInh          ] half saturation constant for SO4 inhibition                           
       using default value:  1.00000                                                                
       [TcOxCon             ] temperature coeff. for oxygen consumption                             
       using default value:  1.07000                                                                
       [TcDen               ] temperature coefficient for denitrification                           
       using default value:  1.12000                                                                
       [TcIRed              ] temperature coeff. for iron reduction                                 
       using default value:  1.12000                                                                
       [TcSRed              ] temperature coeff. for sulphate reduction                             
       using default value:  1.12000                                                                
       [TcMet               ] temperature coeff. for methanogenesis                                 
       using default value:  1.12000                                                                
       [RedFacDen           ] reduction factor for denitrif. at low temp.                           
       using default value:  1.00000                                                                
       [RedFacIRed          ] reduction factor for iron red. at low temp.                           
       using default value:  1.00000                                                                
       [RedFacSRed          ] reduction factor for sulph. red. at low temp.                         
       using default value:  1.00000                                                                
       [RedFacMet           ] reduction factor for methanog. at low temp.                           
       using default value:  1.00000                                                                
       [CoxDenInh           ] crit. diss. ox. conc. for inhib. denitrif.                            
       using default value:  1.00000                                                                
       [CoxIRedInh          ] crit. diss. ox. conc. for inhib. iron red.                            
       using default value: 0.200000                                                                
       [CoxSRedInh          ] crit. diss. ox. conc. for inhib. sulph. red.                          
       using default value: 0.200000                                                                
       [CoxMetInh           ] crit. diss. ox. conc. for inhib. methanog.                            
       using default value: 0.200000E-01                                                            
       [CniMetInh           ] crit. nitrate conc. for inhib. methanog.                              
       using default value: 0.100000                                                                
       [CTBactAc            ] critical temp. for specific bacterial activity                        
       using default value:  3.00000                                                                
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  15.0000                                                    
       [Poros               ] volumetric porosity                                                   
       using default value:  1.00000                                                                
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [FrMetGeCH4          ] fraction of methanogenesis towards CH4                                
       using default value: 0.500000                                                                
       [SWOxCon             ] Switch: only OxCon (1) or not (0)                                     
       using default value:  0.00000                                                                
                                                                                                    
 Input for [OXYMin              ] Potential mimimum dissolved oxygen concentration                  
       [OXY                 ] Dissolved Oxygen                                                      
       Using substance nr   1                                                                       
       [Green               ] Algae (non-Diatoms)                                                   
       Using substance nr  16                                                                       
       [RcGroGreen          ] primary production rate (minus respiration) Greens                    
       Using output from proces [GroMrt_Gre          ]                                              
       [RcRespGree          ] respiration rate Greens                                               
       Using output from proces [GroMrt_Gre          ]                                              
       [Diat                ] Diatoms                                                               
       Using substance nr  15                                                                       
       [RcGroDiat           ] primary production rate (minus respiration)Diatoms                    
       Using output from proces [GroMrt_Dia          ]                                              
       [RcRespDiat          ] respiration rate Diatoms                                              
       Using output from proces [GroMrt_Dia          ]                                              
       [DayL                ] daylength <0-1>                                                       
       Using output from proces [Daylength           ]                                              
                                                                                                    
 Input for [NutRel_Alg          ] Release (nutrients/detritus) by of mortality algae                
       [fMrtGreen           ] mortality flux Greens                                                 
       Using output from proces [GroMrt_Gre          ]                                              
       [NCRatGreen          ] N:C ratio Greens                                                      
       using default value: 0.160000                                                                
       [PCRatGreen          ] P:C ratio Greens                                                      
       using default value: 0.200000E-01                                                            
       [FrAutGreen          ] fraction autolysis Greens                                             
       using default value: 0.300000                                                                
       [FrDetGreen          ] fraction to detritus by mortality Greens                              
       using default value: 0.700000                                                                
       [fMrtDiat            ] mortality flux Diatoms                                                
       Using output from proces [GroMrt_Dia          ]                                              
       [NCRatDiat           ] N:C ratio Diatoms                                                     
       using default value: 0.160000                                                                
       [PCRatDiat           ] P:C ratio Diatoms                                                     
       using default value: 0.200000E-01                                                            
       [SCRatDiat           ] Si:C ratio Diatoms                                                    
       using default value: 0.490000                                                                
       [FrAutDiat           ] fraction autolysis Diatoms                                            
       using default value: 0.300000                                                                
       [FrDetDiat           ] fraction detritus by mortality Diatoms                                
       using default value: 0.700000                                                                
                                                                                                    
 Input for [NutUpt_Alg          ] Uptake of nutrients by growth of algae                            
       [fcPPGreen           ] numerical maximum flux Greens                                         
       Using output from proces [PPrLim              ]                                              
       [NCRatGreen          ] N:C ratio Greens                                                      
       using default value: 0.160000                                                                
       [PCRatGreen          ] P:C ratio Greens                                                      
       using default value: 0.200000E-01                                                            
       [fcPPDiat            ] numerical maximum flux Diatoms                                        
       Using output from proces [PPrLim              ]                                              
       [NCRatDiat           ] N:C ratio Diatoms                                                     
       using default value: 0.160000                                                                
       [PCRatDiat           ] P:C ratio Diatoms                                                     
       using default value: 0.200000E-01                                                            
       [SCRatDiat           ] Si:C ratio Diatoms                                                    
       using default value: 0.490000                                                                
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [NH4                 ] Ammonium (NH4)                                                        
       Using substance nr   6                                                                       
       [NO3                 ] Nitrate (NO3)                                                         
       Using substance nr   7                                                                       
       [NH4KRIT             ] critical NH4 concentration                                            
       using default value: 0.100000E-01                                                            
                                                                                                    
 Input for [PPrLim              ] Limitation (numerical) on primary production                      
       [fPPGreen            ] net primary production of Greens                                      
       Using output from proces [GroMrt_Gre          ]                                              
       [NCRatGreen          ] N:C ratio Greens                                                      
       using default value: 0.160000                                                                
       [PCRatGreen          ] P:C ratio Greens                                                      
       using default value: 0.200000E-01                                                            
       [fPPDiat             ] net primary production of Diatoms                                     
       Using output from proces [GroMrt_Dia          ]                                              
       [NCRatDiat           ] N:C ratio Diatoms                                                     
       using default value: 0.160000                                                                
       [PCRatDiat           ] P:C ratio Diatoms                                                     
       using default value: 0.200000E-01                                                            
       [SCRatDiat           ] Si:C ratio Diatoms                                                    
       using default value: 0.490000                                                                
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [NH4                 ] Ammonium (NH4)                                                        
       Using substance nr   6                                                                       
       [NO3                 ] Nitrate (NO3)                                                         
       Using substance nr   7                                                                       
       [PO4                 ] Ortho-Phosphate (PO4)                                                 
       Using substance nr   8                                                                       
       [Si                  ] dissolved Silica (Si)                                                 
       Using constant nr 27 with value:  0.00000                                                    
                                                                                                    
 Input for [GroMrt_Dia          ] Nett primary production and mortality diatoms                     
       [Diat                ] Diatoms                                                               
       Using substance nr  15                                                                       
       [LimDLdiat           ] daylength limitation function for Diatoms <0-1>                       
       Using output from proces [DL_Diat             ]                                              
       [LimNutDiat          ] nutrient limitation function Diatoms <0-1>                            
       Using output from proces [NLDiat              ]                                              
       [LimRadDiat          ] radiation limitation function Diatoms <0-1>                           
       Using output from proces [Rad_Diat            ]                                              
       [TFGroDiat           ] temperature function growth Diatoms <0-1>                             
       Using output from proces [TF_Diat             ]                                              
       [TFMrtDiat           ] temperature function mortality Diatoms <0-1>                          
       Using output from proces [TF_Diat             ]                                              
       [PPMaxDiat           ] maximum production rate Diatoms                                       
       Using constant nr 20 with value:  2.30000                                                    
       [MRespDiat           ] maintenance respiration Diatoms st.temp                               
       Using constant nr 21 with value: 0.360000E-01                                                
       [GRespDiat           ] growth respiration factor Diatoms                                     
       Using constant nr 22 with value: 0.110000                                                    
       [Mort0Diat           ] mortality rate constant Diatoms                                       
       Using constant nr 23 with value: 0.250000                                                    
       [MortSDiat           ] mortality rate Diatoms at high salinity                               
       Using constant nr 24 with value: 0.250000                                                    
       [SalM1Diat           ] lower salinity limit for mortality Diatoms                            
       Using constant nr 25 with value: -999.000                                                    
       [SalM2Diat           ] upper salinity limit for mortality Diatoms                            
       Using constant nr 26 with value: -999.000                                                    
       [Salinity            ] Salinity                                                              
       Using segment function nr  4                                                                 
       [MinDiat             ] Minimum level Diatoms in mortality                                    
       using default value:  0.00000                                                                
                                                                                                    
 Input for [GroMrt_Gre          ] Nett primary production and mortality green algae                 
       [Green               ] Algae (non-Diatoms)                                                   
       Using substance nr  16                                                                       
       [LimDLGreen          ] daylength limitation function for Greens <0-1>                        
       Using output from proces [DL_Green            ]                                              
       [LimNutGree          ] nutrient limitation function Greens <0-1>                             
       Using output from proces [NLGreen             ]                                              
       [LimRadGree          ] radiation limitation function Greens <0-1>                            
       Using output from proces [Rad_Green           ]                                              
       [TFGroGreen          ] temperature function growth Greens <0-1>                              
       Using output from proces [TF_Green            ]                                              
       [TFMrtGreen          ] temperature function mortality Greens <0-1>                           
       Using output from proces [TF_Green            ]                                              
       [PPMaxGreen          ] maximum production rate Greens                                        
       Using constant nr 13 with value:  1.80000                                                    
       [MRespGreen          ] maintenance respiration Greens st.temp                                
       Using constant nr 14 with value: 0.450000E-01                                                
       [GRespGreen          ] growth respiration factor Greens                                      
       Using constant nr 15 with value: 0.150000                                                    
       [Mort0Green          ] mortality rate constant Greens                                        
       Using constant nr 16 with value: 0.350000                                                    
       [MortSGreen          ] mortality rate Greens at high salinity                                
       Using constant nr 17 with value: 0.350000                                                    
       [SalM1Green          ] lower salinity limit for mortality Greens                             
       Using constant nr 18 with value: -999.000                                                    
       [SalM2Green          ] upper salinity limit for mortality Greens                             
       Using constant nr 19 with value: -999.000                                                    
       [Salinity            ] Salinity                                                              
       Using segment function nr  4                                                                 
       [MinGreen            ] Minimum level Greens in mortality                                     
       using default value:  0.00000                                                                
                                                                                                    
 Input for [Rad_Diat            ] Light efficiency function diatoms                                 
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [Rad                 ] irradiation at the segment upper-boundary                             
       Using output from proces [CalcRad             ]                                              
       [RadSatDiat          ] total radiation growth saturation Diatoms                             
       using default value:  25.0000                                                                
       [ExtVl               ] total extinction coefficient visible light                            
       Using output from proces [Extinc_VLG          ]                                              
       [TFGroDiat           ] temperature function growth Diatoms <0-1>                             
       Using output from proces [TF_Diat             ]                                              
                                                                                                    
 Input for [Rad_Green           ] Light efficiency function green algae                             
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [Rad                 ] irradiation at the segment upper-boundary                             
       Using output from proces [CalcRad             ]                                              
       [RadSatGree          ] total radiation growth saturation greens                              
       using default value:  30.0000                                                                
       [ExtVl               ] total extinction coefficient visible light                            
       Using output from proces [Extinc_VLG          ]                                              
       [TFGroGreen          ] temperature function growth Greens <0-1>                              
       Using output from proces [TF_Green            ]                                              
                                                                                                    
 Input for [NLDiat              ] Nutrient limiation function for diatoms                           
       [PrfNH4diat          ] ammonium preferency over nitrate Diatoms                              
       using default value:  1.00000                                                                
       [KMDINdiat           ] half-saturation value N Diatoms                                       
       using default value: 0.500000E-02                                                            
       [KMPdiat             ] half-saturation value P Diatoms                                       
       using default value: 0.100000E-02                                                            
       [KMSidiat            ] half-saturation value Si Diatoms                                      
       using default value: 0.270000E-01                                                            
       [NH4                 ] Ammonium (NH4)                                                        
       Using substance nr   6                                                                       
       [NO3                 ] Nitrate (NO3)                                                         
       Using substance nr   7                                                                       
       [PO4                 ] Ortho-Phosphate (PO4)                                                 
       Using substance nr   8                                                                       
       [Si                  ] dissolved Silica (Si)                                                 
       Using constant nr 27 with value:  0.00000                                                    
                                                                                                    
 Input for [NLGreen             ] Nutrient limiation function for green algae                       
       [PrfNH4gree          ] ammonium preferency over nitrate Greens                               
       using default value:  1.00000                                                                
       [KMDINgreen          ] half-saturation value N Greens                                        
       using default value: 0.500000E-02                                                            
       [KMPgreen            ] half-saturation value P Greens                                        
       using default value: 0.100000E-02                                                            
       [KMSigreen           ] half-saturation value Si Greens                                       
       using default value: -1.00000                                                                
       [NH4                 ] Ammonium (NH4)                                                        
       Using substance nr   6                                                                       
       [NO3                 ] Nitrate (NO3)                                                         
       Using substance nr   7                                                                       
       [PO4                 ] Ortho-Phosphate (PO4)                                                 
       Using substance nr   8                                                                       
       [Si                  ] dissolved Silica (Si)                                                 
       Using constant nr 27 with value:  0.00000                                                    
                                                                                                    
 Input for [DL_Diat             ] Daylength function for diatoms                                    
       [DayL                ] daylength <0-1>                                                       
       Using output from proces [Daylength           ]                                              
       [OptDLDiat           ] daylength for growth saturation Diatoms                               
       using default value: 0.500000                                                                
                                                                                                    
 Input for [DL_Green            ] Daylength function for green algae                                
       [DayL                ] daylength <0-1>                                                       
       Using output from proces [Daylength           ]                                              
       [OptDLGreen          ] daylength for growth saturation Greens                                
       using default value: 0.580000                                                                
                                                                                                    
 Input for [TF_Diat             ] Temperature functions for diatoms                                 
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  15.0000                                                    
       [TcGroDiat           ] temperature coeff. for growth processes Diatoms                       
       using default value:  1.04000                                                                
       [TcDecDiat           ] temp. coeff. for respiration and mortality Diatoms                    
       using default value:  1.07000                                                                
                                                                                                    
 Input for [TF_Green            ] Temperature functions for green algae                             
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  15.0000                                                    
       [TcGroGreen          ] temperature coeff. for growth processes Greens                        
       using default value:  1.04000                                                                
       [TcDecGreen          ] temp. coeff. for respiration and mortality Greens                     
       using default value:  1.07000                                                                
                                                                                                    
 Input for [SedOXYDem           ] Sediment oxygen demand                                            
       [fSODaut             ] autonomous SOD (no effect SOD stat.var)                               
       using default value:  0.00000                                                                
       [fSOD                ] zeroth-order sediment oxygen demand flux                              
       using default value:  0.00000                                                                
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [SOD                 ] Sediment oxygen demand (SOD)                                          
       Using substance nr  22                                                                       
       [RcSOD               ] decay rate SOD at 20 oC                                               
       Using constant nr 11 with value: 0.100000                                                    
       [TcSOD               ] temperature coefficient decay SOD                                     
       Using constant nr 12 with value:  1.04000                                                    
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  15.0000                                                    
       [Volume              ] volume of computational cell                                          
       Using DELWAQ volume                                                                          
       [SwCH4bub            ] switch (1=include CH4 bubbles, 0=not)                                 
       using default value:  0.00000                                                                
       [HSED                ] Total sediment thickness                                              
       using default value: 0.100000                                                                
       [KAPC                ] constant                                                              
       using default value:  1.60000                                                                
       [thetak              ] temperature constant                                                  
       using default value:  1.07900                                                                
       [edwcsd              ] diffusion coefficient                                                 
       using default value: 0.250000E-03                                                            
       [diamb               ] Diameter of methane bubbles                                           
       using default value:  1.00000                                                                
       [OXY                 ] Dissolved Oxygen                                                      
       Using substance nr   1                                                                       
       [kappad              ] transfer coefficient                                                  
       using default value: 0.300000E-02                                                            
       [dMinDetCS1          ] mineralisation flux DetCS1                                            
       Using flux from proces [BMS1_DetC           ]                                                
       [dMinDetCS2          ] mineralisation flux DetCS2                                            
       using default value:  0.00000                                                                
       [dMinOOCS1           ] mineralisation flux OOCS1                                             
       using default value:  0.00000                                                                
       [dMinOOCS2           ] mineralisation flux OOCS2                                             
       using default value:  0.00000                                                                
       [TotalDepth          ] total depth water column                                              
       Using output from proces [TotDepth            ]                                              
       [COXSOD              ] critical oxygen concentration for SOD decay                           
       using default value:  0.00000                                                                
       [OOXSOD              ] optimum oxygen concentration for SOD decay                            
       using default value:  2.00000                                                                
                                                                                                    
 Input for [DecFast             ] Mineralization fast decomp. detritus POC1                         
       [POC1                ] POC1 (fast decomposing fraction)                                      
       Using substance nr  12                                                                       
       [PON1                ] PON1 (fast decomposing fraction)                                      
       Using substance nr  13                                                                       
       [POP1                ] POP1 (fast decomposing fraction)                                      
       Using substance nr  14                                                                       
       [POS1                ] POS1 (fast decomposing fraction)                                      
       using default value:  0.00000                                                                
       [IdDet1              ] identifier for detritus group POC1, POC2, POC3                        
       using default value:  1.00000                                                                
       [ku_dFdcC20          ] upper limit mineralization rate fast detr-C                           
       using default value: 0.180000                                                                
       [kl_dFdcC20          ] lower limit mineralization rate fast detr-C                           
       using default value: 0.120000                                                                
       [ku_dFdcN20          ] upper limit mineralization rate fast detr-N                           
       using default value: 0.180000                                                                
       [kl_dFdcN20          ] lower limit mineralization rate fast detr-N                           
       using default value: 0.120000                                                                
       [ku_dFdcP20          ] upper limit mineralization rate fast detr-P                           
       using default value: 0.180000                                                                
       [kl_dFdcP20          ] lower limit mineralization rate fast detr-P                           
       using default value: 0.120000                                                                
       [kT_dec              ] temperature coefficient for decomposition                             
       using default value:  1.04700                                                                
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  15.0000                                                    
       [a_dNpr              ] target N:C ratio in refractory detritus                               
       using default value: 0.500000E-01                                                            
       [a_dPpr              ] target P:C ratio in refractory detritus                               
       using default value: 0.500000E-02                                                            
       [a_dSpr              ] target S:C ratio in refractory detritus                               
       using default value: 0.500000E-02                                                            
       [al_dNf              ] lower limit N:C ratio in fast decomp.  detr                           
       using default value: 0.100000                                                                
       [al_dPf              ] lower limit P:C ratio in fast decomp.  detr                           
       using default value: 0.100000E-01                                                            
       [au_dNf              ] upper limit N:C ratio in fast decomp.  detr                           
       using default value: 0.150000                                                                
       [au_dPf              ] upper limit P:C ratio in fast decomp.  detr                           
       using default value: 0.150000E-01                                                            
       [OXY                 ] Dissolved Oxygen                                                      
       Using substance nr   1                                                                       
       [NO3                 ] Nitrate (NO3)                                                         
       Using substance nr   7                                                                       
       [b_ni                ] attenuation factor decomp. in denitrifying zone                       
       using default value:  1.00000                                                                
       [b_su                ] attenuation factor decomp. in sulphate red.zone                       
       using default value:  1.00000                                                                
       [b_poc1poc2          ] fraction POC1 converted to POC2                                       
       using default value:  0.00000                                                                
       [b_poc1doc           ] fraction POC1 converted to DOC                                        
       using default value:  0.00000                                                                
       [SWOMDec             ] option: 0.0 for stripping, 1.0 for different rates                    
       using default value:  0.00000                                                                
                                                                                                    
 Input for [BODCOD              ] Mineralisation BOD and COD                                        
       [SwOXYDem            ] switch oxygen consumption(0=BOD, 1=COD, 2=both)                       
       Using constant nr  5 with value:  0.00000                                                    
       [CBOD5               ] carbonaceous BOD (first pool) at 5 days                               
       Using substance nr   2                                                                       
       [CBOD5_2             ] carbonaceous BOD (second pool) at 5 days                              
       using default value:  0.00000                                                                
       [CBODu               ] carbonaceous BOD (first pool) ultimate                                
       using default value:  0.00000                                                                
       [CBODu_2             ] carbonaceous BOD (second pool) ultimate                               
       using default value:  0.00000                                                                
       [COD_Cr              ] COD concentration by the Cr-method                                    
       Using substance nr   3                                                                       
       [COD_Mn              ] COD concentration by the Mn-method                                    
       using default value:  0.00000                                                                
       [NBOD5               ] nitrogenous BOD at 5 days                                             
       Using substance nr   4                                                                       
       [NBODu               ] nitrogenous BOD ultimate                                              
       using default value:  0.00000                                                                
       [RcBOD               ] decay rate BOD (first pool) at 20 oC                                  
       Using constant nr  6 with value: 0.300000                                                    
       [RcBOD_2             ] decay rate BOD (second pool) at 20 oC                                 
       using default value: 0.150000                                                                
       [RcCOD               ] decay rate COD at 20 oC                                               
       Using constant nr  7 with value: 0.500000E-01                                                
       [RcBODN              ] first-order mineralisation rate BODN                                  
       Using constant nr  8 with value: 0.300000                                                    
       [TcBOD               ] temperature coefficient decay BOD                                     
       Using constant nr  9 with value:  1.04000                                                    
       [TcCOD               ] temperature coefficient decay COD                                     
       using default value:  1.02000                                                                
       [TcBODN              ] temperature coefficient decay BODN                                    
       Using constant nr 10 with value:  1.08000                                                    
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  15.0000                                                    
       [OXY                 ] Dissolved Oxygen                                                      
       Using substance nr   1                                                                       
       [COXBOD              ] critical oxygen concentration for BOD decay                           
       using default value:  1.00000                                                                
       [OOXBOD              ] optimum oxygen concentration for BOD decay                            
       using default value:  5.00000                                                                
       [CFLBOD              ] oxygen function level for oxygen below COXBOD                         
       using default value: 0.300000                                                                
       [CurvBOD             ] curvature of DO function for mineralisation BOD                       
       using default value:  0.00000                                                                
       [LAgeFun             ] lower value of age function BOD decay                                 
       using default value:  1.00000                                                                
       [UAgeFun             ] upper value of age function BOD decay                                 
       using default value:  1.00000                                                                
       [LAgeIndx            ] lower value of age index BOD decay                                    
       using default value:  2.00000                                                                
       [UAgeIndx            ] upper value of age index BOD decay                                    
       using default value:  3.00000                                                                
       [Phyt                ] total carbon in phytoplankton                                         
       Using output from proces [Phy_dyn             ]                                              
       [BOD5/uPHYT          ] BOD5:BODu ratio in phytoplankton                                      
       using default value: 0.600000                                                                
       [AlgFrBOD            ] fraction algae contributing to BOD-inf                                
       using default value: 0.500000                                                                
       [OXCCF               ] O2:C ratio in mineralisation                                          
       using default value:  2.67000                                                                
       [POCnoa              ] total POC (no algae)                                                  
       Using output from proces [Compos              ]                                              
       [BOD5/infPO          ] BOD5:BODu ratio in POC                                                
       using default value: 0.600000                                                                
       [POCFrBOD            ] fraction of POC contributing to BOD-inf                               
       using default value:  1.00000                                                                
       [EffCOD_Cr           ] efficiency of Cr method for COD                                       
       using default value: 0.900000                                                                
       [EffCOD_Mn           ] efficiency of Mn method for COD                                       
       using default value: 0.500000                                                                
       [AMCCF               ] amount oxygen used for nitrogen in miner.                             
       using default value: 0.550000                                                                
                                                                                                    
 Input for [BMS1_DetP           ] Mineralisation detritus phosphorus in sediment S1                 
       [ZMinDetPS1          ] zeroth-order mineralisation flux DetP in layer S1                     
       using default value:  0.00000                                                                
       [DetPS1              ] DetP in layer S1                                                      
       Using substance nr  26                                                                       
       [RcDetPS1            ] first-order mineralisation rate DetP in layer S1                      
       using default value: 0.300000E-01                                                            
       [TcBMDetP            ] temperature coeff. mineralisation DetP in sediment                    
       using default value:  1.09000                                                                
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  15.0000                                                    
       [CTMin               ] critical temperature for mineralisation                               
       using default value:  3.00000                                                                
       [Volume              ] volume of computational cell                                          
       Using DELWAQ volume                                                                          
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [SedZoneSW           ] SWITCH 0=no SWITCH, <0 per segment, >0 per zone                       
       using default value:  0.00000                                                                
                                                                                                    
 Input for [BMS1_DetN           ] Mineralisation detritus nitrogen in sediment S1                   
       [ZMinDetNS1          ] zeroth-order mineralisation flux DetN in layer S1                     
       using default value:  0.00000                                                                
       [DetNS1              ] DetN in layer S1                                                      
       Using substance nr  25                                                                       
       [RcDetNS1            ] first-order mineralisation rate DetN in layer S1                      
       using default value: 0.300000E-01                                                            
       [TcBMDetN            ] temperature coeff. mineralisation DetN in sediment                    
       using default value:  1.09000                                                                
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  15.0000                                                    
       [CTMin               ] critical temperature for mineralisation                               
       using default value:  3.00000                                                                
       [Volume              ] volume of computational cell                                          
       Using DELWAQ volume                                                                          
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [SedZoneSW           ] SWITCH 0=no SWITCH, <0 per segment, >0 per zone                       
       using default value:  0.00000                                                                
                                                                                                    
 Input for [BMS1_DetC           ] Mineralisation detritus carbon in sediment S1                     
       [ZMinDetCS1          ] zeroth-order mineralisation flux DetC in layer S1                     
       using default value:  0.00000                                                                
       [DetCS1              ] DetC in layer S1                                                      
       Using substance nr  24                                                                       
       [RcDetCS1            ] first-order mineralisation rate DetC in layer S1                      
       using default value: 0.300000E-01                                                            
       [TcBMDetC            ] temperature coeff. mineralisation DetC in sediment                    
       using default value:  1.09000                                                                
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  15.0000                                                    
       [CTMin               ] critical temperature for mineralisation                               
       using default value:  3.00000                                                                
       [Volume              ] volume of computational cell                                          
       Using DELWAQ volume                                                                          
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [SedZoneSW           ] SWITCH 0=no SWITCH, <0 per segment, >0 per zone                       
       using default value:  0.00000                                                                
                                                                                                    
 Input for [RearOXY             ] Reaeration of oxygen                                              
       [OXY                 ] Dissolved Oxygen                                                      
       Using substance nr   1                                                                       
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  15.0000                                                    
       [Velocity            ] horizontal flow velocity                                              
       Using segment function nr  3                                                                 
       [VWind               ] wind speed                                                            
       Using constant nr  3 with value:  3.00000                                                    
       [SWRear              ] switch for oxygen reaeration formulation (1-13)                       
       Using constant nr  4 with value:  1.00000                                                    
       [KLRear              ] reaeration transfer coefficient                                       
       using default value:  1.00000                                                                
       [TCRear              ] temperature coefficient for rearation                                 
       using default value:  1.01600                                                                
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [SaturOXY            ] saturation concentration                                              
       Using output from proces [SaturOXY            ]                                              
       [Salinity            ] Salinity                                                              
       Using segment function nr  4                                                                 
       [TotalDepth          ] total depth water column                                              
       Using output from proces [TotDepth            ]                                              
       [fcover              ] fraction of water surface covered <0-1>                               
       using default value:  0.00000                                                                
       [KLRearMax           ] maximum KLREAR oxygen for temp. correction                            
       using default value:  1000.00                                                                
       [KLRearMin           ] minimum rearation transfer coefficient oxygen                         
       using default value: 0.200000                                                                
       [Rain                ] rainfall rate                                                         
       using default value:  0.00000                                                                
       [coefAOxy            ] gas transfer Oxy coefficient transmission                             
       using default value:  1.66000                                                                
       [coefB1Oxy           ] gas transfer O2 coefficient wind scale 1                              
       using default value: 0.260000                                                                
       [coefB2Oxy           ] gas transfer O2 coefficient wind scale 2                              
       using default value:  1.00000                                                                
       [coefC1Oxy           ] gas transfer O2 coefficient rain scale 1                              
       using default value: 0.660000                                                                
       [coefC2Oxy           ] gas transfer O2 coefficient rain scale 2                              
       using default value:  1.00000                                                                
       [coefD1Oxy           ] fresh water coefficient1 for Schmidt nr Oxy                           
       using default value:  1800.06                                                                
       [coefD2Oxy           ] fresh water coefficient2 for Schmidt nr Oxy                           
       using default value:  120.100                                                                
       [coefD3Oxy           ] fresh water coefficient3 for Schmidt nr Oxy                           
       using default value:  3.78180                                                                
       [coefD4Oxy           ] fresh water coefficient4 for Schmidt nr Oxy                           
       using default value: 0.476080E-01                                                            
                                                                                                    
 Input for [SaturOXY            ] Saturation concentration oxygen                                   
       [Cl                  ] Chloride                                                              
       Using output from proces [Salinchlor          ]                                              
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  15.0000                                                    
       [SWSatOXY            ] switch for oxygen saturation formulation (1, 2)                       
       using default value:  1.00000                                                                
       [Salinity            ] Salinity                                                              
       Using segment function nr  4                                                                 
                                                                                                    
 Input for [Nitrif_NH4          ] Nitrification of ammonium                                         
       [ZNit                ] zeroth-order nitrification flux                                       
       using default value:  0.00000                                                                
       [NH4                 ] Ammonium (NH4)                                                        
       Using substance nr   6                                                                       
       [RcNit20             ] MM- nitrification rate at 20 oC                                       
       using default value: 0.100000                                                                
       [TcNit               ] temperature coefficient for nitrification                             
       using default value:  1.07000                                                                
       [OXY                 ] Dissolved Oxygen                                                      
       Using substance nr   1                                                                       
       [KsAmNit             ] half saturation constant for ammonium cons.                           
       using default value: 0.500000                                                                
       [KsOxNit             ] half saturation constant for DO cons.                                 
       using default value:  1.00000                                                                
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  15.0000                                                    
       [CTNit               ] critical temperature for nitrification                                
       using default value:  3.00000                                                                
       [Rc0NitOx            ] zero-order nitrification rate at neg. DO                              
       using default value:  0.00000                                                                
       [COXNIT              ] critical oxygen concentration for nitrification                       
       using default value:  1.00000                                                                
       [Poros               ] volumetric porosity                                                   
       using default value:  1.00000                                                                
       [SWVnNit             ] switch for old (0), new (1), TEWOR (2) version                        
       using default value:  0.00000                                                                
       [RcNit               ] first-order nitrification rate                                        
       using default value: 0.100000                                                                
       [OOXNIT              ] optimum oxygen concentration for nitrification                        
       using default value:  5.00000                                                                
       [CFLNIT              ] oxygen function level for oxygen below COXNIT                         
       using default value:  0.00000                                                                
       [CurvNit             ] curvature of DO function for nitrification                            
       using default value:  0.00000                                                                
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
                                                                                                    
 Input for [DenWat_NO3          ] Denitrification in water column                                   
       [ZDenWat             ] zero-order denitrification rate in water column                       
       using default value:  0.00000                                                                
       [NO3                 ] Nitrate (NO3)                                                         
       Using substance nr   7                                                                       
       [RcDen20             ] MM-denitrification reaction rate at 20 oC                             
       using default value: 0.100000                                                                
       [TcDenWat            ] temperature coefficient for denitrification                           
       using default value:  1.07000                                                                
       [OXY                 ] Dissolved Oxygen                                                      
       Using substance nr   1                                                                       
       [KsNiDen             ] half saturation constant for nitrate cons.                            
       using default value: 0.500000                                                                
       [KsOxDen             ] half saturation constant for oxygen inhib.                            
       using default value:  1.00000                                                                
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  15.0000                                                    
       [CTDEN               ] critical temperature for denitrification                              
       using default value:  2.00000                                                                
       [Rc0DenOx            ] zero-order denit. rate at low temperature                             
       using default value:  0.00000                                                                
       [COXDEN              ] critical oxygen concentration for denitrification                     
       using default value:  3.00000                                                                
       [Poros               ] volumetric porosity                                                   
       using default value:  1.00000                                                                
       [SWVnDen             ] switch to select old (0) or new (1) version                           
       using default value:  0.00000                                                                
       [RcDenWat            ] first-order denitrification rate in water column                      
       using default value: 0.100000                                                                
       [OOXDEN              ] optimum oxygen concentration for denitrification                      
       using default value:  1.00000                                                                
       [Curvat              ] curvature of DO function for denitrification                          
       using default value:  1.00000                                                                
                                                                                                    
 Input for [DenSed_NO3          ] Denitrification in sediment                                       
       [ZDenSed             ] zeroth-order denitrification flux in the sediment                     
       using default value:  0.00000                                                                
       [NO3                 ] Nitrate (NO3)                                                         
       Using substance nr   7                                                                       
       [RcDenSed            ] first-order denitrification rate in the sediment                      
       using default value: 0.100000                                                                
       [TcDen               ] temperature coefficient for denitrification                           
       using default value:  1.12000                                                                
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  15.0000                                                    
       [CTDEN               ] critical temperature for denitrification                              
       using default value:  2.00000                                                                
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
                                                                                                    
 Input for [AdsPO4AAP           ] Ad(De)Sorption ortho phosphorus to inorg. matter                  
       [SWAdsP              ] switch PO4 adsorption <0=Kd|1=Langmuir|2=pHdep>                       
       Using constant nr 33 with value:  1.00000                                                    
       [PO4                 ] Ortho-Phosphate (PO4)                                                 
       Using substance nr   8                                                                       
       [AAP                 ] adsorbed ortho phosphate                                              
       Using substance nr   9                                                                       
       [IM1                 ] inorganic matter (IM1)                                                
       Using substance nr   5                                                                       
       [IM2                 ] inorganic matter (IM2)                                                
       using default value:  0.00000                                                                
       [IM3                 ] inorganic matter (IM3)                                                
       using default value:  0.00000                                                                
       [KdPO4AAP            ] distrib. coeff. (-) or ads. eq. const.                                
       Using constant nr 34 with value: 0.100000                                                    
       [MaxPO4AAP           ] adsorption capacity TIM for PO4                                       
       Using constant nr 35 with value: 0.150000                                                    
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [KadsP_20            ] Adsorption equilibrium constant at 20 oC                              
       Using constant nr 36 with value:  3.80000                                                    
       [TCKadsP             ] temperature dependency constant Kads                                  
       using default value:  1.00000                                                                
       [RcAdPO4AAP          ] adsorption rate PO4 --> AAP                                           
       Using constant nr 37 with value:  1.00000                                                    
       [a_OH-PO4            ] OH-:PO4 ratio in sorption reaction                                    
       using default value: 0.200000                                                                
       [fr_FeIM1            ] fraction Fe in inorg. matter IM1                                      
       using default value: 0.300000E-01                                                            
       [fr_FeIM2            ] fraction Fe in inorg. matter IM2                                      
       using default value: 0.500000E-02                                                            
       [fr_FeIM3            ] fraction Fe in inorg. matter IM3                                      
       using default value: 0.100000E-02                                                            
       [fr_Feox             ] fraction reactive Fe of total Fe                                      
       using default value:  1.00000                                                                
       [OXY                 ] Dissolved Oxygen                                                      
       Using substance nr   1                                                                       
       [Cc_oxPsor           ] critical oxygen conc for P sorption                                   
       using default value:  0.00000                                                                
       [pH                  ] pH                                                                    
       using default value:  7.00000                                                                
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  15.0000                                                    
       [Poros               ] volumetric porosity                                                   
       using default value:  1.00000                                                                
       [SWVnAdsP            ] switch to select old(0) or new(1) version                             
       using default value:  0.00000                                                                
       [fr_Fe               ] fraction Fe in solid matter                                           
       using default value: 0.200000E-01                                                            
       [RCadsPgem           ] pseudo first-order rate PO4 sorption                                  
       using default value:  1.00000                                                                
                                                                                                    
 Input for [FColiMrt            ] Mortality FColi bacteria                                          
       [FColi               ] Faecal coli bacteria                                                  
       Using substance nr  17                                                                       
       [RcMrtFColi          ] first-order mortality rate FColi                                      
       Using constant nr 45 with value: 0.800000                                                    
       [TcMrtFColi          ] temperature coefficient for mortality FColi                           
       Using constant nr 46 with value:  1.07000                                                    
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  15.0000                                                    
       [CTMrtFColi          ] critical temperature for mortality FColi                              
       using default value:  2.00000                                                                
       [Cl                  ] Chloride                                                              
       Using output from proces [Salinchlor          ]                                              
       [Rad_uv              ] UV-irradiation at the segment upper-boundary                          
       Using output from proces [CalcRadUV           ]                                              
       [CFRAD               ] conversion factor RAD to mortality rate                               
       Using constant nr 47 with value: 0.860000E-01                                                
       [DayL                ] daylength <0-1>                                                       
       Using output from proces [Daylength           ]                                              
       [FrUvVL              ] fraction UV light in visible light                                    
       Using constant nr 48 with value: 0.120000                                                    
       [ExtUv               ] total extinction coefficient UV light                                 
       Using output from proces [Extinc_UVG          ]                                              
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [SpMrtFColi          ] chloride enhanced mortality rate FColi                                
       using default value: 0.110000E-04                                                            
                                                                                                    
 Input for [Compos              ] Composition                                                       
       [NO3                 ] Nitrate (NO3)                                                         
       Using substance nr   7                                                                       
       [NH4                 ] Ammonium (NH4)                                                        
       Using substance nr   6                                                                       
       [PO4                 ] Ortho-Phosphate (PO4)                                                 
       Using substance nr   8                                                                       
       [Si                  ] dissolved Silica (Si)                                                 
       Using constant nr 27 with value:  0.00000                                                    
       [IM1                 ] inorganic matter (IM1)                                                
       Using substance nr   5                                                                       
       [IM2                 ] inorganic matter (IM2)                                                
       using default value:  0.00000                                                                
       [IM3                 ] inorganic matter (IM3)                                                
       using default value:  0.00000                                                                
       [Phyt                ] total carbon in phytoplankton                                         
       Using output from proces [Phy_dyn             ]                                              
       [AlgN                ] total nitrogen in algae                                               
       Using output from proces [Phy_dyn             ]                                              
       [AlgP                ] total phosphorus in algae                                             
       Using output from proces [Phy_dyn             ]                                              
       [AlgSi               ] total silica in algae                                                 
       Using output from proces [Phy_dyn             ]                                              
       [AlgDM               ] total DM in algae                                                     
       Using output from proces [Phy_dyn             ]                                              
       [POC1                ] POC1 (fast decomposing fraction)                                      
       Using substance nr  12                                                                       
       [POC2                ] POC2 (medium decomposing fraction)                                    
       using default value:  0.00000                                                                
       [POC3                ] POC3 (slow decomposing fraction)                                      
       using default value:  0.00000                                                                
       [POC4                ] POC4 (particulate refractory fraction)                                
       using default value:  0.00000                                                                
       [PON1                ] PON1 (fast decomposing fraction)                                      
       Using substance nr  13                                                                       
       [DOC                 ] Dissolved Organic Carbon (DOC)                                        
       using default value:  0.00000                                                                
       [DON                 ] Dissolved Organic Nitrogen (DON)                                      
       using default value:  0.00000                                                                
       [DOP                 ] Dissolved Organic Phosphorus (DOP)                                    
       using default value:  0.00000                                                                
       [DOS                 ] Dissolved Organic Sulphur (DOS)                                       
       using default value:  0.00000                                                                
       [AAP                 ] adsorbed ortho phosphate                                              
       Using substance nr   9                                                                       
       [VIVP                ] Vivianite-P                                                           
       using default value:  0.00000                                                                
       [APATP               ] Apatite-P                                                             
       using default value:  0.00000                                                                
       [DMCFIM1             ] DM:C ratio IM1                                                        
       using default value:  1.00000                                                                
       [DMCFIM2             ] DM:C ratio IM2                                                        
       using default value:  1.00000                                                                
       [DMCFIM3             ] DM:C ratio IM3                                                        
       using default value:  1.00000                                                                
       [PON2                ] PON2 (medium decomposing fraction)                                    
       using default value:  0.00000                                                                
       [PON3                ] PON3 (slow decomposing fraction)                                      
       using default value:  0.00000                                                                
       [PON4                ] PON4 (particulate refractory fraction)                                
       using default value:  0.00000                                                                
       [POP1                ] POP1 (fast decomposing fraction)                                      
       Using substance nr  14                                                                       
       [POP2                ] POP2 (medium decomposing fraction)                                    
       using default value:  0.00000                                                                
       [POP3                ] POP3 (slow decomposing fraction)                                      
       using default value:  0.00000                                                                
       [POP4                ] POP4 (particulate refractory fraction)                                
       using default value:  0.00000                                                                
       [POS1                ] POS1 (fast decomposing fraction)                                      
       using default value:  0.00000                                                                
       [POS2                ] POS2 (medium decomposing fraction)                                    
       using default value:  0.00000                                                                
       [POS3                ] POS3 (slow decomposing  fraction)                                     
       using default value:  0.00000                                                                
       [POS4                ] POS4 (particulate refractory fraction)                                
       using default value:  0.00000                                                                
       [Opal                ] Opal-Si                                                               
       using default value:  0.00000                                                                
       [DmCfPOC1            ] DM:C ratio POC1                                                       
       using default value:  2.50000                                                                
       [DmCfPOC2            ] DM:C ratio POC2                                                       
       using default value:  2.50000                                                                
       [DmCfPOC3            ] DM:C ratio POC3                                                       
       using default value:  2.50000                                                                
       [DmCfPOC4            ] DM:C ratio POC4                                                       
       using default value:  2.50000                                                                
                                                                                                    
 Input for [S1_Comp             ] Composition sediment layer S1                                     
       [IM1S1               ] IM1 in layer S1                                                       
       Using substance nr  23                                                                       
       [IM2S1               ] IM2 in layer S1                                                       
       using default value:  0.00000                                                                
       [IM3S1               ] IM3 in layer S1                                                       
       using default value:  0.00000                                                                
       [DetCS1              ] DetC in layer S1                                                      
       Using substance nr  24                                                                       
       [OOCS1               ] OOC in layer S1                                                       
       using default value:  0.00000                                                                
       [DiatS1              ] Diatoms in layer S1                                                   
       using default value:  0.00000                                                                
       [GreenS1             ] Algae in layer S1                                                     
       using default value:  0.00000                                                                
       [AAPS1               ] adsorbed O-PO4 in layer S1                                            
       using default value:  0.00000                                                                
       [DMCFIM1             ] DM:C ratio IM1                                                        
       using default value:  1.00000                                                                
       [DMCFIM2             ] DM:C ratio IM2                                                        
       using default value:  1.00000                                                                
       [DMCFIM3             ] DM:C ratio IM3                                                        
       using default value:  1.00000                                                                
       [DMCFDetCS           ] DM:C ratio DetCS1 and DetCS2                                          
       using default value:  1.70000                                                                
       [DMCFOOCS            ] DM:C ratio POCS1 and POCS2                                            
       using default value:  1.70000                                                                
       [DMCFDiatS           ] DM:C ratio DiatS1 and DiatS2                                          
       using default value:  1.70000                                                                
       [DMCFGreenS          ] DM:C ratio GreenS1 and GreenS2                                        
       using default value:  1.70000                                                                
       [RHOIM1              ] bulk density IM1                                                      
       using default value: 0.260000E+07                                                            
       [RHOIM2              ] bulk density IM2                                                      
       using default value: 0.260000E+07                                                            
       [RHOIM3              ] bulk density IM3                                                      
       using default value: 0.260000E+07                                                            
       [RHODetC             ] bulk density DetC                                                     
       using default value: 0.130000E+07                                                            
       [RHOOOC              ] bulk density OOC                                                      
       using default value: 0.130000E+07                                                            
       [RHODiat             ] bulk density Diatoms                                                  
       using default value: 0.130000E+07                                                            
       [RHOGreen            ] bulk density Greens                                                   
       using default value: 0.130000E+07                                                            
       [PORS1               ] porosity of sediment layer S1                                         
       using default value:  0.00000                                                                
       [Surf                ] horizontal surface area of a DELWAQ segment                           
       Using segment function nr  1                                                                 
       [DetNS1              ] DetN in layer S1                                                      
       Using substance nr  25                                                                       
       [DetPS1              ] DetP in layer S1                                                      
       Using substance nr  26                                                                       
       [DetSiS1             ] DetSi in layer S1                                                     
       using default value:  0.00000                                                                
       [OONS1               ] OON in layer S1                                                       
       using default value:  0.00000                                                                
       [OOPS1               ] OOP in layer S1                                                       
       using default value:  0.00000                                                                
       [OOSiS1              ] OOSi in layer S1                                                      
       using default value:  0.00000                                                                
       [MPB1peliS1          ] MPB epipelic biomass in layer S1                                      
       using default value:  0.00000                                                                
       [MPB2psamS1          ] MPB n-diat biomass in layer S1                                        
       using default value:  0.00000                                                                
       [DmCfMPB1            ] DM:C ratio MPB1 algae                                                 
       using default value:  2.50000                                                                
       [DmCfMPB2            ] DM:C ratio MPB2 algae                                                 
       using default value:  2.50000                                                                
       [RhoOM               ] dry bulk density organic matter                                       
       using default value: 0.130000E+07                                                            
       [RhoOM               ] dry bulk density organic matter                                       
       using default value: 0.130000E+07                                                            
                                                                                                    
 Input for [Phy_dyn             ] Computation of phytoplankton - Dynamo                             
       [NAlgDynamo          ] number of algae types in DYNAMO                                       
       using default value:  2.00000                                                                
       [Diat                ] Diatoms                                                               
       Using substance nr  15                                                                       
       [Green               ] Algae (non-Diatoms)                                                   
       Using substance nr  16                                                                       
       [NCRatDiat           ] N:C ratio Diatoms                                                     
       using default value: 0.160000                                                                
       [NCRatGreen          ] N:C ratio Greens                                                      
       using default value: 0.160000                                                                
       [PCRatDiat           ] P:C ratio Diatoms                                                     
       using default value: 0.200000E-01                                                            
       [PCRatGreen          ] P:C ratio Greens                                                      
       using default value: 0.200000E-01                                                            
       [SCRatDiat           ] Si:C ratio Diatoms                                                    
       using default value: 0.490000                                                                
       [SCRatGreen          ] Si:C ratio Greens                                                     
       using default value:  0.00000                                                                
       [DMCFDiat            ] DM:C ratio Diatoms                                                    
       using default value:  2.50000                                                                
       [DMCFGreen           ] DM:C ratio GreenS                                                     
       using default value:  2.50000                                                                
       [Ditochl             ] Chlorophyll-a:C ratio in Diatoms                                      
       using default value:  50.0000                                                                
       [Grtochl             ] Chlorophyll-a:C ratio in Greens                                       
       using default value:  50.0000                                                                
                                                                                                    
 Input for [Daylength           ] Daylength calculation                                             
       [ITIME               ] DELWAQ time                                                           
       Using DELWAQ time                                                                            
       [Latitude            ] latitude of study area                                                
       using default value:  52.1000                                                                
       [RefDay              ] daynumber of reference day simulation                                 
       using default value:  0.00000                                                                
       [AuxSys              ] ratio between days and system clock                                   
       using default value:  86400.0                                                                
                                                                                                    
 Input for [CalcRadUV           ] UV-Radiation at segment upper and lower boundaries                
       [ExtUv               ] total extinction coefficient UV light                                 
       Using output from proces [Extinc_UVG          ]                                              
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [RadSurf             ] irradiation at the water surface                                      
       Using constant nr 53 with value: -999.000                                                    
       [a_enh               ] enhancement factor in radiation calculation                           
       using default value:  1.50000                                                                
       [Surf                ] horizontal surface area of a DELWAQ segment                           
       Using segment function nr  1                                                                 
       [SwEmersion          ] switch indicating submersion(0) or emersion(1)                        
       using default value:  0.00000                                                                
       [RadBot_uv           ] UV-irradiation at the segment lower-boundary                          
       Using output from proces [CalcRadUV           ]                                              
       [fRefl               ] fraction of radiation reflected at water surface                      
       using default value:  0.00000                                                                
                                                                                                    
 Input for [CalcRad             ] Radiation at segment upper and lower boundaries                   
       [ExtVl               ] total extinction coefficient visible light                            
       Using output from proces [Extinc_VLG          ]                                              
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [RadSurf             ] irradiation at the water surface                                      
       Using constant nr 53 with value: -999.000                                                    
       [a_enh               ] enhancement factor in radiation calculation                           
       using default value:  1.50000                                                                
       [Surf                ] horizontal surface area of a DELWAQ segment                           
       Using segment function nr  1                                                                 
       [SwEmersion          ] switch indicating submersion(0) or emersion(1)                        
       using default value:  0.00000                                                                
       [RadBot              ] irradiation at the segment lower-boundary                             
       Using output from proces [CalcRad             ]                                              
       [fRefl               ] fraction of radiation reflected at water surface                      
       using default value:  0.00000                                                                
                                                                                                    
 Input for [Extinc_UVG          ] Extinction of ultraviolet-light (350-480nm) DLWQ-G                
       [ExtUvIM1            ] UV specific extinction coefficent IM1                                 
       using default value: 0.100000E-01                                                            
       [ExtUvIM2            ] UV specific extinction coefficent IM2                                 
       using default value: 0.100000E-01                                                            
       [ExtUvIM3            ] UV specific extinction coefficent IM3                                 
       using default value: 0.100000E-01                                                            
       [ExtUVPOC1           ] UV specific extinction coefficient POC1                               
       using default value: 0.100000                                                                
       [ExtUvBak            ] background extinction UV light                                        
       using default value: 0.800000E-01                                                            
       [ExtUvPhyt           ] UV extinction by phytoplankton                                        
       using default value:  0.00000                                                                
       [ExtUvMacro          ] UV extinction by macrophytes                                          
       using default value:  0.00000                                                                
       [IM1                 ] inorganic matter (IM1)                                                
       Using substance nr   5                                                                       
       [IM2                 ] inorganic matter (IM2)                                                
       using default value:  0.00000                                                                
       [IM3                 ] inorganic matter (IM3)                                                
       using default value:  0.00000                                                                
       [POC1                ] POC1 (fast decomposing fraction)                                      
       Using substance nr  12                                                                       
       [POC2                ] POC2 (medium decomposing fraction)                                    
       using default value:  0.00000                                                                
       [SW_Uitz             ] Extinction by Uitzicht On (1) or Off (0)                              
       using default value:  0.00000                                                                
       [DOC                 ] Dissolved Organic Carbon (DOC)                                        
       using default value:  0.00000                                                                
       [ExtUVDOC            ] UV specific extinction coefficient DOC                                
       using default value:  0.00000                                                                
       [UitZDEPT1           ] Z1 (depth)                                                            
       using default value:  1.20000                                                                
       [UitZDEPT2           ] Z2 (depth)                                                            
       using default value:  1.00000                                                                
       [UitZCORCH           ] CORa correction factor                                                
       using default value:  2.50000                                                                
       [UitZC_DET           ] C3 coeff. absorption ash weight & detritus                            
       using default value: 0.260000E-01                                                            
       [UitZC_GL1           ] C1 coeff. absorption ash weight & detritus                            
       using default value: 0.730000                                                                
       [UitZC_GL2           ] C2 coeff. absorption ash weight & detritus                            
       using default value:  1.00000                                                                
       [UitZHELHM           ] Hel_h constant                                                        
       using default value: 0.140000E-01                                                            
       [UitZTAU             ] Tau constant calculation transparency                                 
       using default value:  7.80000                                                                
       [UitZangle           ] Angle of incidence solar radiation                                    
       using default value:  30.0000                                                                
       [DMCFDetC            ] DM:C ratio DetC                                                       
       using default value:  2.50000                                                                
       [ExtUVSal0           ] extra UV extinction at Salinity = 0                                   
       using default value:  0.00000                                                                
       [Salinity            ] Salinity                                                              
       Using segment function nr  4                                                                 
       [SalExt0             ] salinity value for extra extinction = 0                               
       using default value:  34.9200                                                                
       [ExtUVPOC2           ] UV specific extinction coefficient POC2                               
       using default value: 0.100000                                                                
       [ExtUVPOC3           ] UV specific extinction coefficient POC3                               
       using default value: 0.100000                                                                
       [ExtUVPOC4           ] UV specific extinction coefficient POC4                               
       using default value: 0.100000                                                                
       [POC3                ] POC3 (slow decomposing fraction)                                      
       using default value:  0.00000                                                                
       [POC4                ] POC4 (particulate refractory fraction)                                
       using default value:  0.00000                                                                
                                                                                                    
 Input for [Extinc_VLG          ] Extinction of visible-light (370-680nm) DLWQ-G                    
       [ExtVlIM1            ] VL specific extinction coefficient IM1                                
       using default value: 0.100000E-01                                                            
       [ExtVlIM2            ] VL specific extinction coefficient IM2                                
       using default value: 0.100000E-01                                                            
       [ExtVlIM3            ] VL specific extinction coefficient IM3                                
       using default value: 0.100000E-01                                                            
       [ExtVlPOC1           ] VL specific extinction coefficient POC1                               
       using default value: 0.100000                                                                
       [ExtVlBak            ] background extinction visible light                                   
       using default value: 0.800000E-01                                                            
       [ExtVlPhyt           ] VL extinction by phytoplankton                                        
       using default value:  0.00000                                                                
       [ExtVlMacro          ] VL extinction by macrophytes                                          
       using default value:  0.00000                                                                
       [IM1                 ] inorganic matter (IM1)                                                
       Using substance nr   5                                                                       
       [IM2                 ] inorganic matter (IM2)                                                
       using default value:  0.00000                                                                
       [IM3                 ] inorganic matter (IM3)                                                
       using default value:  0.00000                                                                
       [POC1                ] POC1 (fast decomposing fraction)                                      
       Using substance nr  12                                                                       
       [POC2                ] POC2 (medium decomposing fraction)                                    
       using default value:  0.00000                                                                
       [SW_Uitz             ] Extinction by Uitzicht On (1) or Off (0)                              
       using default value:  0.00000                                                                
       [DOC                 ] Dissolved Organic Carbon (DOC)                                        
       using default value:  0.00000                                                                
       [ExtVlDOC            ] VL specific extinction coefficient DOC                                
       using default value:  0.00000                                                                
       [UitZDEPT1           ] Z1 (depth)                                                            
       using default value:  1.20000                                                                
       [UitZDEPT2           ] Z2 (depth)                                                            
       using default value:  1.00000                                                                
       [UitZCORCH           ] CORa correction factor                                                
       using default value:  2.50000                                                                
       [UitZC_DET           ] C3 coeff. absorption ash weight & detritus                            
       using default value: 0.260000E-01                                                            
       [UitZC_GL1           ] C1 coeff. absorption ash weight & detritus                            
       using default value: 0.730000                                                                
       [UitZC_GL2           ] C2 coeff. absorption ash weight & detritus                            
       using default value:  1.00000                                                                
       [UitZHELHM           ] Hel_h constant                                                        
       using default value: 0.140000E-01                                                            
       [UitZTAU             ] Tau constant calculation transparency                                 
       using default value:  7.80000                                                                
       [UitZangle           ] Angle of incidence solar radiation                                    
       using default value:  30.0000                                                                
       [DMCFDetC            ] DM:C ratio DetC                                                       
       using default value:  2.50000                                                                
       [ExtVLSal0           ] extra VL extinction at Salinity = 0                                   
       using default value:  0.00000                                                                
       [Salinity            ] Salinity                                                              
       Using segment function nr  4                                                                 
       [SalExt0             ] salinity value for extra extinction = 0                               
       using default value:  34.9200                                                                
       [ExtVlPOC2           ] VL specific extinction coefficient POC2                               
       using default value: 0.100000                                                                
       [ExtVlPOC3           ] VL specific extinction coefficient POC3                               
       using default value: 0.100000                                                                
       [ExtVlPOC4           ] VL specific extinction coefficient POC4                               
       using default value: 0.100000                                                                
       [POC3                ] POC3 (slow decomposing fraction)                                      
       using default value:  0.00000                                                                
       [POC4                ] POC4 (particulate refractory fraction)                                
       using default value:  0.00000                                                                
                                                                                                    
 Input for [Veloc               ] Horizontal flow velocity                                          
       [WSNoseg1            ] workspace array no. 1                                                 
       Using output from proces [Veloc               ]                                              
       [WSNoseg2            ] workspace array no. 2                                                 
       Using output from proces [Veloc               ]                                              
       [WSNoseg3            ] workspace array no. 3                                                 
       Using output from proces [Veloc               ]                                              
       [WSNoseg4            ] workspace array no. 4                                                 
       Using output from proces [Veloc               ]                                              
       [MaxVeloc            ] maximum horizontal flow velocity                                      
       using default value:  0.00000                                                                
       [Orient_1            ] orientation of main positive flow direction                           
       using default value: -1.00000                                                                
       [Orient_2            ] orientation of secondary positive flow direct                         
       using default value: -1.00000                                                                
       [SWCalcVelo          ] switch (1=lin avg, 2=Flow avg, 3=Area avg)                            
       using default value:  1.00000                                                                
       [SWAvgVelo           ] switch (1=Pythagoras, 2=Min, 3=Max)                                   
       using default value:  1.00000                                                                
       [XArea               ] exchange area                                                         
       Using DELWAQ exchange area                                                                   
       [Flow                ] flow rate                                                             
       Using DELWAQ flow                                                                            
                                                                                                    
 Input for [Salinchlor          ] Conversion of salinity into chloride or vv                        
       [Salinity            ] Salinity                                                              
       Using segment function nr  4                                                                 
       [Cl                  ] Chloride                                                              
       Using output from proces [Salinchlor          ]                                              
       [GtCl                ] Salinity:Chloride ratio in sea water                                  
       using default value:  1.80500                                                                
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  15.0000                                                    
       [Sal0                ] salinity at zero chloride concentration                               
       using default value: 0.300000E-01                                                            
       [SWSalCl             ] option: 0.0 salinity simulated, 1.0 Cl simultated                     
       using default value:  0.00000                                                                
                                                                                                    
 Input for [TotDepth            ] depth water column                                                
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [Surf                ] horizontal surface area of a DELWAQ segment                           
       Using segment function nr  1                                                                 
                                                                                                    
 Input for [DynDepth            ] dynamic calculation of the depth                                  
       [Volume              ] volume of computational cell                                          
       Using DELWAQ volume                                                                          
       [Surf                ] horizontal surface area of a DELWAQ segment                           
       Using segment function nr  1                                                                 
                                                                                                    
# determining the use of the delwaq input                                       
                                                                                
 info: constant [itime     ] is not used by the proces system                   
 info: constant [VxSedGreen] is not used by the proces system                   
 info: constant [VxSedDiat ] is not used by the proces system                   
                                                                                
# locating requested output from active processes                                                   
                                                                                                    
 warning: output [Temp                ] not located                                                 
 output [Salinity            ] from proces [Salinchlor]                                             
 output [Velocity            ] from proces [Veloc     ]                                             
 warning: output [VWind               ] not located                                                 
 output [RCREAR              ] from proces [RearOXY   ]                                             
 output [SatPercOXY          ] from proces [RearOXY   ]                                             
 output [Phyt                ] from proces [Phy_dyn   ]                                             
 output [BOD5                ] from proces [BODCOD    ]                                             
 output [COD                 ] from proces [BODCOD    ]                                             
 output [BOD5-POC            ] from proces [BODCOD    ]                                             
 output [BODu-POC            ] from proces [BODCOD    ]                                             
 output [BOD5-Phyt           ] from proces [BODCOD    ]                                             
 output [BODu-Phyt           ] from proces [BODCOD    ]                                             
 output [LimDLGreen          ] from proces [DL_Green  ]                                             
 output [LimNutGree          ] from proces [NLGreen   ]                                             
 output [LimRadGree          ] from proces [Rad_Green ]                                             
 output [TFGroGreen          ] from proces [TF_Green  ]                                             
 output [TFMrtGreen          ] from proces [TF_Green  ]                                             
 output [LimDLdiat           ] from proces [DL_Diat   ]                                             
 output [LimNutDiat          ] from proces [NLDiat    ]                                             
 output [LimRadDiat          ] from proces [Rad_Diat  ]                                             
 output [TFGroDiat           ] from proces [TF_Diat   ]                                             
 output [TFMrtDiat           ] from proces [TF_Diat   ]                                             
 output [RcGroDiat           ] from proces [GroMrt_Dia]                                             
 output [RcMrtDiat           ] from proces [GroMrt_Dia]                                             
 output [RcRespDiat          ] from proces [GroMrt_Dia]                                             
 output [fPPDiat             ] from proces [GroMrt_Dia]                                             
 output [fMrtDiat            ] from proces [GroMrt_Dia]                                             
 output [DayL                ] from proces [Daylength ]                                             
 warning: output [Tau                 ] not located                                                 
 output [fSedBOD5            ] from proces [S_CBOD51  ]                                             
 output [fSedCODCr           ] from proces [S_CODCr   ]                                             
 output [SS                  ] from proces [Compos    ]                                             
 output [TIM                 ] from proces [Compos    ]                                             
 output [TotN                ] from proces [Compos    ]                                             
 output [KjelN               ] from proces [Compos    ]                                             
 output [DIN                 ] from proces [Compos    ]                                             
 output [TON                 ] from proces [Compos    ]                                             
 output [PON                 ] from proces [Compos    ]                                             
 output [TotP                ] from proces [Compos    ]                                             
 output [TOP                 ] from proces [Compos    ]                                             
 output [POP                 ] from proces [Compos    ]                                             
 output [fSedIM1             ] from proces [Sed_IM1   ]                                             
 output [fResS1IM1           ] from proces [S12TraIM1 ]                                             
 output [ExtVl               ] from proces [Extinc_VLG]                                             
 output [SecchiDept          ] from proces [Secchi    ]                                             
 output [FPIM1               ] from proces [AdsPO4AAP ]                                             
 output [fSedGreen           ] from proces [Sed_Gre   ]                                             
 output [fSedDiat            ] from proces [SedDiat   ]                                             
 output [Cl                  ] from proces [Salinchlor]                                             
 output [Rad_uv              ] from proces [CalcRadUV ]                                             
 output [ExtUv               ] from proces [Extinc_UVG]                                             
 output [QCdIM1              ] from proces [PartWK_Cd ]                                             
 output [QCdDMS1             ] from proces [PartS1_Cd ]                                             
 output [QCuDMS1             ] from proces [PartS1_Cu ]                                             
 output [QZnIM1              ] from proces [PartWK_Zn ]                                             
 output [QZnDMS1             ] from proces [PartS1_Zn ]                                             
 output [QOMPDMS1            ] from proces [PartS1_OMP]                                             
 output [QOMPPOC             ] from proces [PartWK_OMP]                                             
 output [RadBot_uv           ] from proces [CalcRadUV ]                                             
                                                                                                    
  using default dll : d3dwaq_openpb.dll
 WARNING :negative algae correction segment=        1714  conc= -1.1890376E-38
 WARNING :negative algae correction segment=        1724  conc= -1.8177469E-38
 WARNING :negative algae correction segment=        1733  conc= -1.8102512E-38
 WARNING :negative algae correction segment=        1734  conc= -2.6474334E-38
 WARNING :negative algae correction segment=        1741  conc= -1.1959159E-38
 WARNING :negative algae correction segment=        1742  conc= -1.7289946E-38
 WARNING :negative algae correction segment=        1743  conc= -2.6728790E-38
 WARNING :negative algae correction segment=        1744  conc= -3.9533940E-38
 WARNING :negative algae correction segment=        1750  conc= -1.6312955E-38
 WARNING :negative algae correction segment=        1751  conc= -1.8607811E-38
 WARNING :negative algae correction segment=        1752  conc= -2.6276594E-38
 WARNING :negative algae correction segment=        1753  conc= -4.0548177E-38
 WARNING :negative algae correction segment=        1754  conc= -1.6994225E-20
 WARNING :negative algae correction segment=        1759  conc= -1.9462249E-38
 WARNING :negative algae correction segment=        1760  conc= -2.5347460E-38
 WARNING :negative algae correction segment=        1761  conc= -2.7990001E-38
 WARNING :negative algae correction segment=        1762  conc= -4.0995087E-38
 WARNING :negative algae correction segment=        1763  conc= -6.5329448E-38
 WARNING :negative algae correction segment=        1764  conc= -1.0637183E-37
 WARNING :negative algae correction segment=        1769  conc= -3.2778369E-38
 WARNING :negative algae correction segment=        1770  conc= -3.7469911E-38
 WARNING :negative algae correction segment=        1771  conc= -4.3471782E-38
 WARNING :negative algae correction segment=        1772  conc= -6.7748067E-38
 WARNING :negative algae correction segment=        1773  conc= -1.1014538E-37
 WARNING :negative algae correction segment=        1774  conc= -4.8387060E-37
  25 WARNINGS on negative algae
  Further messages on algae surpressed
