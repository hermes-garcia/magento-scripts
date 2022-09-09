# Magento Scripts

Shell scripts for Magento local development improvement.

## ⚙️ Installation
1. Clone the project.
```
git clone {{url}}
```

2. Add `alias` to terminal profile (`~/.bash_profile` or `~/.zshrc`)

<em>Example:</em>
```
alias magefull="sh /path/to/magento-scripts/fulldevdeploy.sh"
alias magelight="sh /path/to/magento-scripts/lightdevdeploy.sh"
alias magestatic="sh /path/to/magento-scripts/deploystatic.sh"
alias magegenerate="sh /path/to/magento-scripts/generatestatics.sh"
```

## 🌟 Usage
### SH scripts
1. Run `alias` from Magento/Adobe Commerce root folder

<em>Example:</em>
```
$ magegenerate 
```


### PHP Script
1. Copy & paste `test_m2.php` file to Magento/Adobe Commerce root folder

```
$ cp /path/to/magento-scripts/test_m2.php /path/to/magento
```

2. Modify `test_m2.php` file to load your custom models and run methods 


3. Run `test_m2.php` file in CLI

```
$ php test_m2.php
```