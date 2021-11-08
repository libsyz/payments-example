
# Very Expensive Teddies - Stripe Payment Demo App

This is a demo app that demonstrates how to implement
simple payments with Stripe and listen to webhooks. It is not
production ready at all, but it showcases the basic workflow for
building a payments integration.

## How to run the app

1. clone the repo

`git clone https://github.com/libsyz/payments-example.git`

2. Set up gems and npm packages

```
bundle install
yarn install
```

3. Spin up your database

```
rails db:create
rails db:migrate
rails db:seed
```


4. Create a Stripe Webhook

For this app to work, you will need a stripe account. Create a webhook
that sends a post request to `https://your_ngrok_url.ngrok.io/stripe-webhooks` whenever
a new checkout session has been completed ( name of the event is
`checkout.session.completed`)

4. Set up the Stripe integration:

create a `.env` file and store over here the following keys:

```
STRIPE_PUBLISHABLE_KEY=pk_************
STRIPE_SECRET_KEY=sk_*************
STRIPE_WEBHOOK_SECRET_KEY=whsec_******************
```

5. Use `ngrok` to create a tunnel to your app

run a development server with `rails s` and use `ngrok http 3000`
to establish a tunnel. The configuration file on `development.rb`
is set up to allow ngrok connections - If you wish to use any other
tunnel provider, you will need to edit the file.

Your ngrok url will change every time you run ngrok, which means you
will need to update your stripe webhook config.
