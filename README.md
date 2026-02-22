# secure-s3-kms-pipeline

Secure S3 Data Pipeline with IAM, KMS & Logging

Objective

Explain what you built.

Example:

This project demonstrates secure design and hardening of an S3-based data pipeline using IAM least privilege, KMS encryption, and CloudTrail logging. It includes break/fix scenarios showing how misconfigurations lead to AccessDenied or privilege escalation.

That sounds like a junior cloud security engineer. Not a student.


Architecture

Add a diagram.


You can create your own using:

draw.io

Lucidchart

Excalidraw

PowerPoint exported as PNG

Keep it simple:
User → IAM Policy → S3 → KMS → CloudTrail


Vulnerability Scenario

Example:

The IAM user BadActorUser was granted s3:GetObject but not kms:Decrypt.
Result: AccessDenied on encrypted objects.

Explain:

Why it failed

How AWS evaluates it

Which policy denied it

Employers LOVE this.


Fix & Hardening

Explain what you changed:

Added kms:Decrypt to IAM policy

Restricted KMS key policy to specific principal

Added explicit deny for wildcard access

Enabled CloudTrail logging

Explain WHY.

Not just what.



essons Learned

This is huge.

Example:

IAM and KMS policies are evaluated independently

KMS permissions are required even if S3 allows access

Explicit deny overrides allow

Key policy must allow principal OR IAM won’t matter

That shows real understanding.
