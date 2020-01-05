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
     <b>[isRectBox]:</b> when it is true then it will show Rectancle shape else(false) show circle shape by defult its value false
     <b>[isDarkMode]:</b> when it is true then it will use black bg color otherwise it use transparent color by defult its value false
     <b>[isPurplishMode]:</b> when it is true then it will use little bit purplish bg color otherwise it use transparent color by defult its value false
     
     <b>[beginAlign]:</b> it will set the begin value for gradientColor by defult its value Alignment.topLeft
     <b>[endAlign]:</b> it will set the end value for gradientColor by defult its value Alignment.bottomRight
     <b>[hasBottomBox]:</b> when it is true then it will show bottom Rect style Boxes otherwise its hide the Boxes by defult its value false
     <b>[padding]:</b> it wiil set the padding of parent container by default its value 16.0 from all side(left,right,top,bottom)
     <b>[margin]:</b> it wiil set the margin of parent container by default its value 16.0 from all side(left,right,top,bottom)
     
 ```
