#### Description

A concise description of what the problem is (include also screenshots and console errors).

- Include relevant links from Intercom's admin pages, not the customer's app. 
- Please don't screenshot any logs, paste them directly.
- Include relevant timestamps for updates, changes, deliveries as necessary.

* * *

#### Evidence

Screenshots, logs, Sentry errors, console errors, message headers etc.

* * *

#### Details

**App ID**: 
**Admin ID (who reported issue)**: 
**Can Impersonate?**: Yes / No
**Reason if no**: Access Not Requested / Admin Disallowed
**Conversation with Customer**: 
**Affected customer's conversation/page**: 

#### Messaging

**Campaign ID**:
**Message ID**:
**Message Version received**:
**Recipient's email address/Intercom user_id**:
**Relevant Timestamps**:

* * *

#### Steps to reproduce

1. One
2. Two
3. Three

* * *

#### Actual Behavior

Describe the manifestation of the bug

#### Expected Behavior

Type what you or the customer expected to happen.

### Exploitable vulnerability checklist

If this issue is related to an exploitable vulnerability then we should not stop working to resolve this issue until we are safe. (i.e. this checklist is complete)

If you need to stop working explicitly hand responsibility over to someone else.

Before fixing:
- [ ] Reproduce the exploit
- [ ] Notify all relevant engineers, feel free to interrupt anyone.
- [ ] Should some/all of the app be disabled?

After Fixing:
- [ ] Are regression tests in place?
- [ ] For shared code: have all downstream consumers been updated?
- [ ] Are there any similar vulnerabilities in the vulnerable system?
- [ ] Has the vulnerability been confirmed as fixed in production?

Follow up:
- [ ] Check if the exploit was ever used maliciously
- [ ] Assign an AAR write-up to the most appropriate engineer
- [ ] Move the BugCrowd issue to resolved state and inform the researcher
- [ ] Assign eventual payout in Friday meeting
