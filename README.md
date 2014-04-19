## Contact Form

A quick and dirty tool for cheaply hosting contact forms

**What is it?**

Contact Form is a tool that is designed to be hosted on a cheap
hosting service such as heroku for collecting contact form information
from prospective clients or users. It simply allows you to have a contact
form embedded into your application that submits to your Heroku based
app.

With a small amount of configuration you can have an application that will
collect the details your users submit and redirect them to a success or
failure page depending on whether they included the necessary fields.

On failure, the fields that were invalid (empty fields) are included in the
redirect so you can update your form appropriately using Javascript.

**Setup and Configuration**

Create an application on Heroku:

`heroku create`

Configure your heroku environment variables:

```
heroku config:set HOST=yoursitehost.com
heroku config:set SUCCESS_PAGE=your-success-page.html
heroku config:set FAILURE_PAGE=your-failure-page.html
```

Deploy the Application:

`git push heroku master`

Run Database Migrations:

`heroku run rake db:migrate`

**Notes**

Keep in mind heroku likes to spin down dynos, you'll need something to keep it running otherwise your
users may sometimes experience timeouts or long requests. If you have a server running somewhere you
may want to have a script that pings the server every couple of minutes.

**License**

Public domain because this can be reimplemented in like 20 minutes
