# heroku-terraforming-tenarai
terraformを使って[herokuのチュートリアル](https://devcenter.heroku.com/articles/getting-started-with-go#introduction)をやる。

## 実行
```zsh
cd $GOPATH/src/github.com/YOUR_NAME
git clone git@github.com:kadoyau/heroku-terraforming-tenarai.git
git submodule update --init
cd heroku-terraforming-tenarai
heroku auth:token
# check your token
terraform apply
terraform show
# git_url = https://git.heroku.com/heroku-terraforming-tenarai.git
cd go-getting-started
git remote add heroku https://git.heroku.com/heroku-terraforming-tenarai.git
git push heroku master
heroku open db
# reload!
cd ..
terraform destroy
```
