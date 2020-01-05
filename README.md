# flutter_shimmer

flutter_shimmer package for creating Shimmer effect that indicate a loading status, so instead of using ProgressBar or usual loader use Shimmer for a better design and user interface. 

### Show some :heart: and star the repo to support the project

| # Shimmer Mode                 | # Screenshot                                              |  # Code Example                                     |
| ----------------------------  | -------------------------------------------------------- | ------------------------------------------ |
| # Light Mode Shimmer           | ![](./screenshots/1.gif)                                 | ListTileShimmer()                          |
| # Dark Mode Shimmer            | ![](./screenshots/2.gif)                                 | ListTileShimmer(isDarkMode: true)          |
| # Purplish Mode Shimmer        | ![](./screenshots/3.gif)                                 | ListTileShimmer(isPurplishMode: true)      |
| # Purplish(Dark) Mode Shimmer  | ![](./screenshots/3.gif)                                 |   istTileShimmer(isPurplishMode: true,isDarkMode: true)                                         |



# Get Started
  ``` 
   #Color Mode
       There are three color mode in the flutter_shimmer package
        1. Light Mode
        2. Dark Mode
        3. Purplish Mode
 ```       
 ```      
 # Optional Options:
     [isRectBox]: when it is true then it will show Rectancle shape else(false) show circle shape by defult its value false
     [isDarkMode]: when it is true then it will use black bg color otherwise it use transparent color by defult its value false
     [isPurplishMode]: when it is true then it will use little bit purplish bg color otherwise it use transparent color by defult its value false
     
     [beginAlign]: it will set the begin value for gradientColor by defult its value Alignment.topLeft
     [endAlign]: it will set the end value for gradientColor by defult its value Alignment.bottomRight
     [hasBottomBox]:</b> when it is true then it will show bottom Rect style Boxes otherwise its hide the Boxes by defult its value false
     [padding]: it wiil set the padding of parent container by default its value 16.0 from all side(left,right,top,bottom)
     [margin]: it wiil set the margin of parent container by default its value 16.0 from all side(left,right,top,bottom)
     
 ```
 
 
 # ProfileShimmer
 ```
   1. Light Mode
     ProfileShimmer(),
   
   2. Dark Mode
     ProfileShimmer( isDarkMode: true,),
    
   3. PurplishMode with light Background
   
      ProfileShimmer(
       isPurplishMode: true,      
    ),
    
   5. PurplishMode with dark Background
   
      ProfileShimmer(
       isPurplishMode: true,
       isDarkMode:true
    ),
  
  6. With Bottom Lines: 
  
     ProfileShimmer(      
       hasBottomLines: true,      
    ),
    
  7. Combination of all options
  
     ProfileShimmer(
       isPurplishMode: true,
       hasBottomLines: true,
       isDarkMode: true,
    ),
 ```
