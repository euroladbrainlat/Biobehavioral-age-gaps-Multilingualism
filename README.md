![](images/header.png)  

# <p align="center">Biobehavioral age gaps</p>

# Table of Contents
- [Summary](#Summary)
- [Databases](#Databases)
- [Scripts descriptions](#Scriptsdescription)
- [References](#Referencesection)

  

## Summary
<a name="Summary"></a>
This repository contains the codes necessary for the results of the study: "Biobehavioral age gaps, global disparities, and exposomes in accelerated aging: a cross-sectional and longitudinal analysis across 40 countries". Our research bridges critical gaps by analyzing a cohort of 161,981 participants from Latin America, Europe, Asia, and Africa. Using a novel computational approach to aging clocks, we developed a scalable and cost-efficient tool to estimate BAGs. This tool integrates protective factors (e.g., cognitive health, physical activity, education) with risk factors (e.g., cardiometabolic issues, sensory impairments, female sex). We explored BAGs in cross-sectional and longitudinal contexts, evaluating their variations by region, income level, and exposomes, including physical (e.g., air quality), social (e.g., inequality), and sociopolitical factors (e.g., democracy, political representation). Validation included epidemiological metrics such as odds ratios, relative risk, and meta-analyses.


## Databases
<a name="Databases"></a>



The dataset includes 161,981 participants (45.09% females, mean age=67.06, SD=9.85, age range=51–90) from population-representative aging surveys across Latin America, Europe, Asia, and Africa . 

Additionally, a longitudinal subsample with two waves is included:  
- Wave 1: n=21,631 (42.31% females, mean age=67.18, SD=11.47, range=41–114)  
- Wave 2: n=21,631 (42.31% females, mean age=71.64, SD=10.47, range=41–117)  
This subsample includes participants from Latin America (Mexico, Costa Rica), Europe (Austria, Belgium, Czech Republic, Denmark, France, Germany, Greece, Italy, Poland, Spain, Sweden, Switzerland), and Asia (China, South Korea).  

In addition, there is a separate dataset from South Africa with two waves:  
- Wave 1: n=5,431 (42.07% females, mean age=45.69, SD=14.15, range=25–90)  
- Wave 2: n=5,431 (42.07% females, mean age=46.69, SD=14.10, range=26–91)  

The following table provides contact information and download links for all databases used in this study.



| Dataset | Countries | Contact/source |
|---------|-----------|----------------|
| National surveys on health, well-being and aging (SABE surveys) | Chile <br>Uruguay <br>Colombia <br>Ecuador  | [PubMed](https://pubmed.ncbi.nlm.nih.gov/16053641/)<br>[PubMed](https://pubmed.ncbi.nlm.nih.gov/16053641/)<br>[NCBI](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6774577)<br>[INEC Ecuador](https://www.ecuadorencifras.gob.ec/encuesta-de-salud-bienestar-del-adulto-mayor/) |
| The Brazilian Longitudinal Study of Ageing (ELSI-Brazil) (2016) | Brazil  | [ELSI-Brazil](https://elsi.cpqrr.fiocruz.br/) |
| Costa Rican Study on Longevity and Healthy Aging (CRELES) | Costa Rica  | [CRELES](http://www.creles.berkeley.edu/index.html) |
| Encuesta Nacional sobre Salud y Envejecimiento en México (ENASEM) | Mexico | [ENASEM](https://enasem.org/Home/index_esp.aspx) |
| Chinese Longitudinal Healthy Longevity Survey Series | China  | [CHARLS](https://charls.pku.edu.cn/en/) |
| Korean Longitudinal Study of Aging (KLoSA) | South Korea  | [KLoSA](https://survey.keis.or.kr/eng/klosa/klosa01.jsp) |
| Survey of Health, Ageing and Retirement in Europe (SHARE) | Austria, Belgium, Bulgaria, Croatia, Cyprus, Czechia, Denmark, Estonia, Finland, France, Germany, Greece, Hungary, Italy, Latvia, Lithuania, Luxembourg, Malta, Netherlands, Poland, Portugal, Romania, Slovak Republic, Slovenia, Spain, Sweden, Switzerland  | [SHARE](https://www.share-eric.eu/) |
| Egipt Dataset | Egipt | mohamed-salama@aucegypt.edu |
| India Dataset | India | swati.bajpai@gbhi.org |
| South Africa Dataset | South Africa | cyprian.mostert@aku.edu |


### Scripts description:
<a name="Scriptsdescription"></a>
The `script` folder contains the necessary code to obtain the results of this work. It is divided into two main directories: `main` and `supp`. Each directory includes the scripts and the data folder needed to reproduce the results. The `main_BAGs_computation.ipny` and `supp_BAGs_computation.ipny` scripts are used to obtain the processed data used for the results, but we have provided all this processed data on the platform.



### References
<a name="Referencesection"></a>
1. Livingston G, Huntley J, Liu KY, et al. Dementia prevention, intervention, and care: 2024 report of the Lancet standing Commission. *Lancet* 2024; 404(10452): 572-628.  
2. Tian YE, Cropley V, Maier AB, Lautenschlager NT, Breakspear M, Zalesky A. Heterogeneous aging across multiple organ systems and prediction of chronic disease and mortality. *Nature Medicine* 2023; 29(5): 1221-31.  
3. Moguilner S, Baez S, Hernandez H, et al. Brain clocks capture diversity and disparities in aging and dementia across geographically diverse populations. *Nature Medicine* 2024.  
4. Nowogrodzki J. What accelerates brain ageing? This AI 'brain clock' points to answers. *Nature* 2024; 633(8028): 20.  
5. Computational brain models map diversity embedded in aging and dementia. *Nature Medicine* 2024.  
6. Allada R, Bass J. Circadian mechanisms in medicine. *New England Journal of Medicine* 2021; 384(6): 550-61.  
7. Van Bavel JJ, Gadarian SK, Knowles E, Ruggeri K. Political polarization and health. *Nature Medicine* 2024; 30(11): 3085-93.
