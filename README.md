# Jekyll Email Obfuscate
Obfuscate emails in Jekyll for use as text and for use in a href paramater of a link.

## Installation
Download the .rb file and put it in the plugins directory of your Jekyll site.

## Usage
In your markup you can use either the `encode_email` or `encode_email_href` liquid filter like so:
```
{{ 'example@example.com' | encode_email }}
```
This will obfuscate the email for use as text on a page. 

```
{{ 'example@example.com' | encode_email_href }}
```
This will obfuscate the email for use in a hyperlink on a page.

### Example
A clickable email link can be created like so:
```
<a href="mailto:{{ 'example@example.com' | encode_email_href }}">{{ 'example@example.com' | encode_email }}</a>
```
