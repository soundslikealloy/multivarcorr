# Multivariate and non-parametric association measure based on paired orthants

 
*Contributors: Eloi Martinez-Rabert*

____________________________

## Before having fun...

### :gear: MATLAB installation

This code is build up in MATLAB. Therefore, MATLAB must be installed in your computer.
<br>You can use the [free 30-day trial](https://www.mathworks.com/campaigns/products/trials.html?ef_id=CjwKCAjwqJSaBhBUEiwAg5W9p96Y1NtC8BCa4Pw_wm3sswXR27ZkvuHZtWMOMUntOrmDSc1Ib3MGCRoCILQQAvD_BwE:G:s&s_kwcid=AL!8664!3!463011314378!p!!g!!matlab%20downlaod&s_eid=ppc_6588247642&q=matlab%20downlaod&gclid=CjwKCAjwqJSaBhBUEiwAg5W9p96Y1NtC8BCa4Pw_wm3sswXR27ZkvuHZtWMOMUntOrmDSc1Ib3MGCRoCILQQAvD_BwE) or "Sign in"/"Create account" if your university already has a MATLAB campus license (see [Campus-Wide License](https://www.mathworks.com/academia/tah-support-program/eligibility.html) search).

Click [here](https://www.mathworks.com/help/install/) for more information about MATLAB Installation and Licensing.

## :clipboard: Instructions to Download and Run
1. Download .zip code. Last version: `v1.0.1`. [Download code](https://github.com/soundslikealloy/multivarcorr/archive/refs/tags/v1.0.1.zip).
2. Extract files to a destination (:bulb: recommendation - Desktop).
3. Open MATLAB.
    - For more information about MATLAB Layout and how to change it, click [here](https://www.mathworks.com/help/matlab/matlab_env/change-the-desktop-layout.html).
4. Go to the **Code folder<sup>2</sup>**...
    &#09;<br><sup><sup>2</sup>Code folder: folder with `run_multivarcorr.m` file. </sup>
    &#09;<br>→ writing `cd newFolder` to *Command Window* (more info about [cd](https://www.mathworks.com/help/matlab/ref/cd.html)).
    &#09;<br>→ or using *Folder Toolbar* - paste the folder name where the code was extracted.
5. Modify the existind Excel in **Data folder** with the data, or create a new one using the provided template (**Data\Template\template.xlsx**). Do not forget to copy the Excel file into **Data folder**.
6. Call to `run_multivarcorr(data_file)` where...
    &#09;<br>>`data_file (string)` is the name of Excel file (w/ extension).

**Once the correlation analysis is done, the results will be displayed in the *Command Window*.**
