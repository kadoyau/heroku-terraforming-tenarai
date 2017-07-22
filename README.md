# heroku-terraforming-tenarai
terraformを使って[herokuのチュートリアル](https://devcenter.heroku.com/articles/getting-started-with-go#introduction)をやる。

## 実行
```zsh
git clone git@github.com:kadoyau/heroku-terraforming-tenarai.git
cd heroku-terraforming-tenarai
terraform apply
terraform show
# git_url = https://git.heroku.com/heroku-terraforming-tenarai.git
cd go-getting-started
git remote add heroku https://git.heroku.com/heroku-terraforming-tenarai.git
git push heroku master
heroku open db
```
