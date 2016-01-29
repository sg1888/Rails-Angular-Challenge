## Here are some notes about my implementations:

1. "All users must have a valid email address"
=> Because I used devise module `validatable` for model `Customer`, this module will be validate email format and presence so I don't add validation for attribute `email`.

2. "Do not use default Rails routes or controllers."
=> We cannot completely avoid using `Rails routes or controllers`. We need them to process JSON request and incase user refreshes the page which had been handled by Angular.

3. "Verify that in the Successful charges list there are 10 line items. Verify that in the failed charges list there are 5 failed charges. Verify that in the disputed charges list there are failed charges."
=> The 2 first sentences are clear for me but the last one isn't: a disputed charge can be a failed charge? Therefore, I don't write a test expectation for testing the last sentence.