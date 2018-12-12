# 2018.12.12 学んだこと


## Bootstrapの導入
 Gemfileの変更
   ・`gem 'sass-rails', '~>5.0'`   `Bootstrap-sass`を動かすために必要

   ・`gem 'bootstrap-sass', '~>3.3.6'`

   ・`gem jquery-rails`

   ・ gem 'jquery-ui-rails'

   bundle installする


 stylesheets/application.cssをapplication.scssに変更する

 その中に以下を追記

  ・`@import 'bootstrap-sprockets'`

  ・`@import 'bootstrap'`


 javascript/application.jsの中に以下を追記

  ・`//= require jquery`

  ・`//= require bootstrap-sprockets`
