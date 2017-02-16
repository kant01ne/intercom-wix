[![CircleCI](https://circleci.com/gh/Skaelv/intercom-wix/tree/master.svg?style=svg)](https://circleci.com/gh/Skaelv/intercom-wix/tree/master)

Intercom-Wix
===========

**This is not an official integration between Wix and Intercom.
This is an example application developed during a hackaton and is not available in production for customers to use.
I leave it here to provide examples code of how to build integrations with intercom**

[Visit intercom-wix page](https://skaelv.github.io/intercom-wix)

[Install Intercom Widget on Wix](https://youtu.be/odPQMn3GJuc)

This application allows any Wix users to easily add the Intercom Business Messenger to their websites.
![Intercom Business Messenger](https://github.com/Skaelv/intercom-wix/raw/master/images/intercom-business-messenger.png?raw=true)

Description
-----------
This application has been generated using [intercom-ruby-app](http://github.com/intercom/intercom-ruby-app).

It generates a boilerplate application with an `App` ActiveRessource model that allows to automatically store the following attributes :
 - `intercom_app_id`: used to load the widget
 - `intercom_token`: used for API calls (See [Intercom API Refs](https://developers.intercom.io/reference))
 - `name`: Name of the admin who authenticated
 - `email`: Email of the admin who authenticated

To associate a Wix website to an Intercom `app_id`, a new unique identifier for Wix (`compId`) has been added to `App` model by running a rake migration.
The `store_in_session_before_login` and `callback_hash` [IntercomApp initializer Proc](https://github.com/Skaelv/intercom-wix/blob/master/config/initializers/intercom_app.rb#L6-L15) helped to associate this `compId` to an app on OAuth Callback.


Roadmap
--------------------------------
 - Insert Intercom Messenger when user are logged in
 - Import Wix Users ?
 - Trigger Intercom events on lead/user call to actions ?


Development
--------------------------------

You will need Intercom/Wix credentials to start contributing to this project:

### Wix
 - Create a [Wix app](http://dev.wix.com/app/create-app) for development purpose
 - Create a `Fixed Position Component` with following settings:
  - position: `Bottom Right`
  - width: `450px`
  - height: `800px`
  - Widget Url: `https://localhost:3000/widget`
  - Settings Url: `https://localhost:3000/settings`

![Wix widget settings](https://github.com/Skaelv/intercom-wix/raw/master/images/wix-widget-settings.png?raw=true)

### Intercom

To create an Intercom application and get your client_id and client_secret you will first need to [create an Intercom account](https://app.intercom.io/a/start) if you don't have one already. Once your application is created you can apply for an OAuth application in the `App Settings >> OAuth` section. Make sure you request `read admin` permission for use with omniauth-intercom.

![Intercom App settings](https://github.com/Skaelv/intercom-wix/raw/master/images/intercom-oauth-app.png?raw=true)


Export your credentials in your `~/.profile` or `~/.bashrc` file:

```shell
export INTERCOM_WIX_CLIENT_ID=<INTERCOM_WIX_CLIENT_ID>
export INTERCOM_WIX_CLIENT_SECRET=<INTERCOM_WIX_CLIENT_SECRET>
export INTERCOM_WIX_HUB_SECRET=<INTERCOM_WIX_HUB_SECRET>
export WIX_CLIENT_ID=<WIX_CLIENT_ID>
export WIX_CLIENT_SECRET=<WIX_CLIENT_SECRET>
```

Don't forget to run `source ~/.profile`

Then you simply need to run the following commands:

```shell
git clone https://github.com/Skaelv/intercom-wix.git
cd intercom-wix
bundle install
bundle exec rspec
```

And start coding :)

Pull Requests
--------------------------------

- **Add tests!** Your patch won't be accepted if it doesn't have tests.

- **Document any change in behaviour**. Make sure the README and any other
  relevant documentation are kept up-to-date.

- **Create topic branches**. Don't ask us to pull from your master branch.

- **One pull request per feature**. If you want to do more than one thing, send
  multiple pull requests.

- **Send coherent history**. Make sure each individual commit in your pull
  request is meaningful. If you had to make multiple intermediate commits while
  developing, please squash them before sending them to us.
