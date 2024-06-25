<div style='text-align: center;'>

# Programming Practices Policy
![image](../../ACSL_Logo-Full_Color600x488.jpg)

Version: 1.0

Updated: 30 April 2024

Written by Andrew Karnes
</div>

# Business Level Information

Consider these suggestions for helping to improve your businesses programming practices:

Use a Version Control System (VCS), such as [Git](https://git-scm.com/). This allows you to create easy to return to checkpoints in your code, and makes collaboration easier. 

Make sure that any secrets (API keys, passwords, etc) are not commited. For best results use some kind of secrets manager like [Vault](https://www.vaultproject.io/) or [Bitwarden](https://bitwarden.com/products/secrets-manager/). 

Make use of a code formatter for making sure that all code written is consistent in formatting and spacing across all developers. 

Make sure that any code changes are reviewed by some one other than the dev that wrote them before merging the code base. 

Maintain documentation on how to create a development environment and how to run the program(s). 

Have a process for moving code from development, to test, to production. Use the process often to not forget how to use it. 

Automate the process for deployment to simplify the process, but require manual verification before changing environments. 

# Programming Practices Policy

## Background

Programs developed by or for your business can provide significant advantages in the marketplace and securing it properly can help protect your business. We can create guidelines to ensure that your business's information, resources, and programs are protected from danger, damage, or theft. To do that we need to identify critical assets and make a plan to protect them.

## Objective

The goal of this policy is to clearly define the rules that our company has regarding programming practices.

## Scope

This policy applies to all employees of this company and has guidelines for both the business and individual employees.

## Policy

Have clear commit messages, preferably the message completes the statement, "If applied this commit will [commit message]".

Update documentation on how to create a development environment and how to run the program(s) as changes are made. 

Make sure that committed code follows code formatting guidelines. 

Make sure that code accomplishes the task at hand while also handling common errors gracefully. 

Take care of application security to prevent introducing known OWASP Application Security issues. 