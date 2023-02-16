# nOEN. n-Order Ecological Network
 
<br>*Contributors: Eloi Martinez-Rabert*

____________________________

## Before having fun...

**:warning: To open the links in a new tab: right click on the link + "Open link in new tab". :warning:**

### :gear: MATLAB installation

This IbM framework is build up in MATLAB. Therefore, MATLAB must be installed in your computer.
<br>You can use the [free 30-day trial](https://www.mathworks.com/campaigns/products/trials.html?ef_id=CjwKCAjwqJSaBhBUEiwAg5W9p96Y1NtC8BCa4Pw_wm3sswXR27ZkvuHZtWMOMUntOrmDSc1Ib3MGCRoCILQQAvD_BwE:G:s&s_kwcid=AL!8664!3!463011314378!p!!g!!matlab%20downlaod&s_eid=ppc_6588247642&q=matlab%20downlaod&gclid=CjwKCAjwqJSaBhBUEiwAg5W9p96Y1NtC8BCa4Pw_wm3sswXR27ZkvuHZtWMOMUntOrmDSc1Ib3MGCRoCILQQAvD_BwE) or "Sign in"/"Create account" if your university already has a MATLAB campus license (see [Campus-Wide License](https://www.mathworks.com/academia/tah-support-program/eligibility.html) search).

Click [here](https://www.mathworks.com/help/install/) for more information about MATLAB Installation and Licensing.

## :clipboard: Instructions to Download and Run nOEN
1. Download .zip code. Soon... <!-- Last version: `v1.0.0`. [Download code](Lorem ipsum). -->
2. Extract files to a destination (:bulb: recommendation - Desktop).
3. Open MATLAB.
    - For more information about MATLAB Layout and how to change it, click [here](https://www.mathworks.com/help/matlab/matlab_env/change-the-desktop-layout.html).
4. Go to the **Code folder<sup>2</sup>**...
    &#09;<br><sup><sup>2</sup>Code folder: folder with `nOEN.m` file. </sup>
    &#09;<br>→ writing `cd newFolder` to *Command Window* (more info about [cd](https://www.mathworks.com/help/matlab/ref/cd.html)).
    &#09;<br>→ or using *Folder Toolbar* - paste the folder name where the code was extracted.
5. Create the Excel file with all info and data (see [Excel setup](https://github.com/soundslikealloy/nOEN#bar_chart-excel-setup))
6. Execute mutlivarcorr() function:
  1. Call to `nOEN(data_file, infoInocula)` where...
    &#09;<br>>`data_file (string)` is the name of Excel file (w/ extension).
    &#09;<br>Once the correlation analysis has been performed, the results will be displayed in the *Command Window*..
