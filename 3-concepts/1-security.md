# Security and ABCpdf

## Intro

ABCpdf is a component presenting an API, much like .NET itself.

Like .NET there are no restrictions on what you can do with the API. If you call File.Delete it will delete a file. That is what the API does.

It is not difficult to make your use of the APIs secure, but you have to actively do it. You need to be making design decisions here.

Each system is different and each system has different needs, however the following are the base principles by which you should operate when securing a system using ABCpdf.

## Env

It is important for security, stability and support that you stay up-to-date. This is true for our software and also for your systems.

We advise that you do not use our software on older platforms which are out of support, on platforms which are not flagged as supported, or that we tell you are unsupported.

We advise that you use modern features of ABCpdf rather than features which are maintained for legacy reasons. This is particularly the case for legacy HTML conversion engines - use the current one not the old ones.

We often provide help and advice with these types of platforms and features because business needs may require compromise. However that does not mean we advise you to use them. You may decide the risks of moving out of a supported environment are acceptable, but those are your risks and that is your decision.

## Basics

You are in control. You call into ABCpdf. You decide what APIs to use. You decide which parts you deploy. You decide the environment in which it operates. You are in control here and the majority of choices are going to be made by you - not by ABCpdf.

Defense in depth is key. One impenetrable barrier is not enough. You want a series of barriers. If one is breached the others will hold. Layers are what keep you safe.

ABCpdf contains architectural structures which provide defense in depth. Most are internal and are not visible from outside. Some - such as our FireShield technology - are visible and documented.

Most of the defensive layers will come from you because there is a limited amount we can restrict without impacting your ability to use the software.

Evaluate security before you start to write code. Then review your evaluation as your code and architecture develops.

## Trust

Attacks can only occur if attackers can provide input to a system. The obvious route in, is via a standard method supplied to your users.

Once this route is compromised an attacker can experiment with various inputs to see how they can manipulate your systems.

Stack overflow exploits, SQL injection and cross site scripting are just some of the many exploits which are based on insufficient input vetting of user input.

You need to be suspicious of the data that is provided to you. Vet it first and make sure it is good before passing it to ABCpdf.

If you store data, consider encrypting it so that a breach will not result in data loss. If encryption is too complex or dangerous, even just a level of obfuscation will add a significant barrier.

ABCpdf will do its own vetting too, but you know much better than it, what it is that you consider to be acceptable.

Vetting Inputs. How should input data be validated or vetted?

Every application is different and every situation needs evaluation but there are some obvious factors which one should bear in mind. At minimum you need to ensure that your inputs and outputs are not excessively large or numerous.

ABCpdf will do its best to accommodate your requests, so if you ask it to do something excessive it will do its best to do so. At that point it becomes a matter related to the OS as to whether it is allowed the resources to do this or not. Better to decide these things yourself rather than leave them up to chance.

For example, if you allow your users to upload TIFF images, consider if it would be reasonable for them to upload a 1TB image. If you allow users to render a PDF, consider if it would be reasonable to allow them to select 72,000 dpi as the target resolution (producing a 500 Gigapixel output). If they are allowed to provide a description for an item in an invoice, should they be allowed to provide the text of Moby Dick?

ABCpdf is designed to run from a reduced permission environment.

Take advantage of this. Ensure that your code runs in a process as a low privilege user with access only to the resources that it needs.

If you are running under IIS something like this will already be in place for you. If you are running in a different environment you may need to make more active decisions.

Where ABCpdf offers further layers of protection, take advantage of them. Use technologies like FireShield to further restrict access and add layers of protection.

ABCpdf is modular so if you do not need a particular module then consider eliminating it. You deploy ABCpdf and you can decide which pieces should be deployed.

Read the documentation for the functions you use and ensure you take note of any security relevant details. If security is mentioned in the documentation it is for good reason.

Many of us have blind spots to our failings and there is no more obvious place for this than when we write code.

Users find bugs that developers had never dreamed of. Developers have a rather myopic view of what might happen and how things will work.

The reality is that the code you write will be flawed and you are not the best person to judge the ways in which it is flawed.

You need to submit your code for review by a third party. A third party can be someone else in your team, or for especially sensitive situations you might consider employing a penetration tester.

You should do team-based threat assessments based on the architecture of your systems. Consider the access points and think about how these might expose attackable surfaces.

Automate as much as possible to reduce the possibility that human error may creep in. A complex manual deployment is bound to go wrong sooner or later. Automate to eliminate.

You need perimeter security on your host machine. Most obviously this comes from a firewall and anti-virus software.

Do also consider if other technologies might be appropriate, perhaps at the network level.

## Simple

Try and keep things simple. It is much easier to secure a system with one access point than it is a system with ten.

The simpler your systems, the simpler it will be to:

## Integrity

As Microsoft Best Practice we sign all our binaries - DLLs and EXEs - using certificates issued by a Trusted Publisher.

While this forms a solid base for security and trust, this approach is insufficient for a mature and complex product like ABCpdf.

For example the ABCGecko engine contains many files including DLLs but also configuration files. Only binaries can be signed: configuration files cannot be signed in this way. A corruption of the configuration files could be just as damaging as one affecting DLLs and EXEs, yet they cannot be verified using the standard Microsoft approach.

Each DLL which is signed requires checks. In cases where .NET needs to go to the internet to validate certificates, this can represent a substantial overhead. In cases where a few base DLLs are being verified this is acceptable. If one has to verify a thousand files, it becomes something approaching a problem.

For these reasons ABCpdf operates a dual security policy. Binaries we produce are digitally signed according to Microsoft Best Practice. Files that we use, but do not produce, are verified at run time by our signed and trusted binaries. This allows fast, low overhead, validation of integrity covering all dependencies rather than just binaries.

## Cautions

HTML conversion is a common task and in most situations it is safe. However be cautious about allowing untrusted input here as HTML can pull in many different technologies and it exposes quite a wide attack surface. While ABCpdf .NET has many layers of defense here it is best to apply your own too. More details may be found in the HTML / CSS Rendering section of the documentation.

Document rendering shows you how a document should appear but it does not say anything about the validity of a document. It is easy to craft a document which has a part which looks like a signature - so it may appear to be signed even though it is not. If you are relying on document signatures you must validate them in your code and report the results back to the user so that they are not mislead.

