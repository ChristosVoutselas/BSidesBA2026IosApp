import Foundation

// Sample data for previews and testing
let Sessions: [EventSession] = [
    EventSession(
        id: UUID(),
        title: "Registration Opens",
        description: "Registration Opens",
        speaker: "",
        timeStart: "08:30",
        timeEnd: "09:00",
        room: "Main Hall",
        theme: "This is the moment to arrive and check-in to the conference. Get your badge, bag and all the gadgets available and prepare to the busy day ahead"
    ),
    
    EventSession(
        id: UUID(),
        title: "Opening Remarks",
        description: "Opening Remarks",
        speaker: "Christos Voutselas",
        timeStart: "09:00",
        timeEnd: "09:30",
        room: "Main Hall",
        theme: "Here an overview of the conference will be provided, surprises announced and of course the next year plan already. Be prepare to meet new people at this moment"
    ),
    
    EventSession(
        id: UUID(),
        title: "Summary of 200+ pentests: what to watch out for",
        description: "Summary of 200+ pentests: what to watch out for",
        speaker: "Adam Borzymowski",
        timeStart: "09:30",
        timeEnd: "10:00",
        room: "Main Hall",
        theme: "Penetration testing isn’t just about finding vulnerabilities—it’s about understanding your systems, improving resilience, and recognizing patterns in security failures. Drawing from over 200 professional pentests, this session explores key lessons learned, including: Common misconceptions between penetration testing, audits, and red teaming. The top vulnerabilities (e.g., CWE-200, CWE-79) and their real-world implications. Best practices for conducting effective pentests, from planning to reporting. Technical insights: examples of misconfigured headers, cache issues, and SQL injection. This talk combines technical depth and practical advice, ideal for security professionals, developers, and IT managers aiming to strengthen their cybersecurity strategies."
    ),
    
    EventSession(
        id: UUID(),
        title: "When Trust Costs Millions: A Deep Dive into a Devastating BEC Fraud",
        description: "When Trust Costs Millions: A Deep Dive into a Devastating BEC Fraud",
        speaker: "Ján Andraško",
        timeStart: "10:00",
        timeEnd: "10:30",
        room: "Main Hall",
        theme: "Business Email Compromise (BEC) scams have become one of the most financially devastating cyber threats, with attackers perfecting their craft to deceive even the most security-conscious organizations. In this talk, we’ll dissect a staggering case where a fraudulent invoice, worth millions, slipped through the cracks, resulting in a massive payout to cybercriminals."
    ),
    
    EventSession(
        id: UUID(),
        title: "Coffee Break",
        description: "Coffee Break",
        speaker: "",
        timeStart: "10:30",
        timeEnd: "11:00",
        room: "",
        theme: "Coffee break"
    ),
    
    EventSession(
        id: UUID(),
        title: "Taking Over Accounts with a Little Help from Microsoft SSO",
        description: "Taking Over Accounts with a Little Help from Microsoft SSO",
        speaker: "Marek Geleta",
        timeStart: "11:00",
        timeEnd: "11:30",
        room: "Main Hall",
        theme: "Using the “Log in with Microsoft” SSO from either a user or vendor perspective might seem secure, but it’s far from foolproof. While exploring open-source OAuth libraries, I discovered and enhanced methods that enable complete account takeovers by exploiting unverified email claims. Although Microsoft initially addressed some of these issues, they refused to take action when workarounds were found. In this talk, I’ll explain how these exploits work, why the patches were insufficient, what this means for users and vendors relying on MS SSO, and how they can protect themselves."
    ),
    
    EventSession(
        id: UUID(),
        title: "One Tool to Dump Them All: On Blind SQL Injection and Development in Security",
        description: "One Tool to Dump Them All: On Blind SQL Injection and Development in Security",
        speaker: "Jakub Pružinec",
        timeStart: "11:30",
        timeEnd: "12:00",
        room: "Main Hall",
        theme: "Hackers excel at analysis, developers at building tools. The overlap between the two is where impact happens. Hakuin is a next-generation Blind SQL Injection (BSQLI) automation framework. By leveraging language models, statistics, and bunch of other techniques, Hakuin dumps databases 3x, 6x, or even 26x faster than existing BSQLI tools. While the ideas behind Hakuin are exciting, it is the framework’s fully customizable design that allows hackers to effortlessly exploit hard-to-reach BSQLI vulnerabilities. In this talk, we’ll dive into the internals of Hakuin, craft custom exploits for tricky vulnerabilities, and discuss the three thousand refactors that have shaped the framework into its current form. Finally, we’ll explore the enormous, yet often overlooked, potential of security tool development."
    ),
    
    EventSession(
        id: UUID(),
        title: "Lunch Break",
        description: "Lunch Break",
        speaker: "",
        timeStart: "12:00",
        timeEnd: "13:00",
        room: "",
        theme: "Lunch break"
    ),
    
    EventSession(
        id: UUID(),
        title: "Impulse 31337: From Red Teaming to Hacking Quake",
        description: "Impulse 31337: From Red Teaming to Hacking Quake",
        speaker: "Mateusz Kocielski",
        timeStart: "13:00",
        timeEnd: "14:00",
        room: "Main Hall",
        theme: "An exciting adventure of a red-teaming engagement with a tiny attack surface led us to hacking a Quake World server. We dove into old school Quake’s code, uncovered vulnerabilities, and used them to achieve our goals. This fun and beginner-friendly talk is packed with unexpected twists, frags and plenty of laughs, all leading to the ultimate win: gaining a shell!"
    ),
    
    EventSession(
        id: UUID(),
        title: "Tales from the Crypt(ography)",
        description: "Tales from the Crypt(ography)",
        speaker: "David Szili",
        timeStart: "14:00",
        timeEnd: "14:30",
        room: "Main Hall",
        theme: "The terms “rolling your own encryption” or “in-house built cryptography” should give everyone the chills. But what if a developer uses all the right tools and libraries without understanding the building blocks or cryptography in general? Just because you had Argon2, bcrypt, scrypt, AES, RSA, or any other ingredients of the cryptography acronym soup in your code, it does not make your application secure! I, the Crypt Keeper (I promise, I will do my best to stuff as many bad - or shall I say, horrible? XD - Tales from the Crypt puns as possible into the talk), will be your guide in this journey, and I will bring you fresh cryptographic horror stories and examples from 2024 to scare you! :D From an open-source project used by millions through proprietary Java code to a Fortune 500 developer company’s software product, we will look at the mistakes and sins of the programmers to demonstrate the truth in the common (although not very elaborate) saying in the industry; “cryptography is hard!” We will try to understand why these issues were still a thing in 2024 (and most likely, they will still exist in 2025) and what we can do about them. Also, as every coin has two sides, so we need to talk about the fact that defenders can also leverage these mistakes to their advantage. Whether they are fighting ransomware or attempting to decrypt C2 communications, breaking weak cryptography can be the key to success, so practical cryptanalysis is a useful skill to have. I will try to keep the math part at bay, but I make no promises! After all, you came to the Keeper for the fear and trembling, right?"
    ),
    
    EventSession(
        id: UUID(),
        title: "Coffee Break",
        description: "Coffee Break",
        speaker: "",
        timeStart: "14:30",
        timeEnd: "15:00",
        room: "Main Hall",
        theme: "Coffee Break"
    ),
    
    EventSession(
        id: UUID(),
        title: "Artifacts of the Digital Past: A forgotten Intrusion Set",
        description: "Artifacts of the Digital Past: A forgotten Intrusion Set",
        speaker: "Anton Cherepanov",
        timeStart: "15:00",
        timeEnd: "15:30",
        room: "Main Hall",
        theme: "In the ever-evolving landscape of cyber threats, some cases remain shrouded in mystery long after their discovery. This talk revisits an enigmatic cyberespionage platform uncovered decade ago - one that still raises questions about its origins, targets, and intent. This talk will explore the intriguing details of this case, shredding light on its signifiance in the history of advanced persistent threats (APTs)."
    ),
    
    EventSession(
        id: UUID(),
        title: "From cybercriminals and illegal online shops",
        description: "From cybercriminals and illegal online shops",
        speaker: "Tobias Schrödel",
        timeStart: "15:30",
        timeEnd: "16:00",
        room: "Main Hall",
        theme: "In this talk, Tobias will shed some light on the business model of cybercriminals. How do they attack, how are they organized, what do they sell in online-shops and how does the payment and delivery of illegal items work."
    ),
    
    EventSession(
        id: UUID(),
        title: "Closing Remarks + CTF Winner Announcment",
        description: "Closing Remarks + CTF Winner Announcment",
        speaker: "Christos Voutselas",
        timeStart: "16:00",
        timeEnd: "16:30",
        room: "Main Hall",
        theme: "Here some spoilers of BSides Bratislava 2027 will be provided, surprises announced and maybe something more."
    )
]

let Speakers: [Speaker] = [
    Speaker(
        id: UUID(),
        name: "Anton Cherepanov",
        bio: "Anton Cherepanov is a Senior Malware Researcher at ESET, where he specializes in hunting APTs and other intriguing malware threats.",
        talkIDs: [],
        twitter: nil,
        linkedin: nil,
        github: nil    ),
    
    Speaker(
        id: UUID(),
        name: "Mateusz Kocielski",
        bio: "For years Mateusz has been professionally involved in IT security. He is a member of the LogicalTrust.net team, where he conducts penetration tests and security research. He has participated in security analyses of several hundred mobile and web applications. He has presented at many events. He has found bugs in software such as Quake, PHP, Apache, Microsoft, OpenSSH, FreeBSD, NetBSD, and others. He has contributed bits to Open Source projects, including PHP and NetBSD.",
        talkIDs: [],
        twitter: nil,
        linkedin: nil,
        github: nil    ),
    
    Speaker(
        id: UUID(),
        name: "Jakub Pružinec",
        bio: "Jakub Pružinec is a cybersecurity researcher at Nanyang Technological University, Singapore. He focuses on OS security, reverse engineering, malware analysis, and recently web application security. Aside from research, his interests include painting and Muay Thai, effectively covering traditional arts, martial arts, and the state of the art.",
        talkIDs: [],
        twitter: nil,
        linkedin: nil,
        github: nil    ),
    
    Speaker(
        id: UUID(),
        name: "Tobias Schrödel",
        bio: "Tobias Schroedel is “Germany’s first IT comedian” - as the German CHIP magazine once wrote. And indeed, he explains technical system gaps and interrelationships in a way that everyone can understand, while not missing out on the fun. His Wikipedia entry with further information can be found here.",
        talkIDs: [],
        twitter: nil,
        linkedin: nil,
        github: nil    ),
    
    Speaker(
        id: UUID(),
        name: "Adam Borzymowski",
        bio: "Hi, I’m Adam, and I play CTFs because it’s fun! I founded the 17 53c Association (and Foundation!) because I could! I work at LogicalTrust because I want to—and I love talking about cybersecurity. In my free time, I try to break some apps—just for fun! For years, I’ve been fascinated by the evolution of cybersecurity. What started as a keen interest in IT security has developed into a dedicated pursuit of knowledge and skill refinement in this field. Capture The Flag (CTF) competitions offer me the chance to apply my expertise in practical scenarios, improve my skills, and exchange ideas with fellow professionals.",
        talkIDs: [],
        twitter: nil,
        linkedin: nil,
        github: nil    ),
    
    Speaker(
        id: UUID(),
        name: "Marek Geleta",
        bio: "Marek Geleta is a cybersecurity enthusiast with a passion for web security and CTF competitions. He is the captain of the Slovak Cyber Team, actively leading the country’s top CTF talent in international competitions. Since 2017, he has discovered critical vulnerabilities for companies like Microsoft, Atlassian, and Xiaomi. In 2024, he won the student category of Slovakia’s CyberGame. Currently pursuing a Bachelor’s in Cybersecurity at MUNI, Marek is dedicated to uncovering vulnerabilities and advancing the field of web security.",
        talkIDs: [],
        twitter: nil,
        linkedin: nil,
        github: nil    ),
    
    Speaker(
        id: UUID(),
        name: "David Szili",
        bio: "David Szili is a managing partner at Alzette Information Security, a consulting company based in Luxembourg. He is also an instructor at SANS Institute, teaching FOR572: Advanced Network Forensics. David has more than eight years of professional experience in penetration testing, red teaming, vulnerability assessment, vulnerability management, security monitoring, security architecture design, incident response, digital forensics, and software development. David has two master’s degrees, one in computer engineering and one in networks and telecommunication, and he has a bachelor’s degree in electrical engineering. He holds several IT security certifications such as GSEC, GCFE, GCED, GCIA, GCIH, GMON, GCDA, GNFA, GPYC, GMOB, CCSK, OSCP, OSWP, and CEH. David regularly speaks at international conferences like BruCON, Hack.lu, Hacktivity, x33fcon, Nuit du Hack, BSides London, BSides Munich, BSides Stuttgart, BSidesLjubljana, BSidesBUD, Pass the SALT, Security Session, SANS @Night Talks and he is a member of the organizer team of the Security BSides Luxembourg conference. He occasionally blogs about information security at jumpespjump.blogspot.com.",
        talkIDs: [],
        twitter: nil,
        linkedin: nil,
        github: nil    ),
    
    Speaker(
        id: UUID(),
        name: "Ján Andraško",
        bio: "Ján Andraško is the co-founder and SOC manager at Binary Confidence, a cybersecurity firm he helped establish in 2014. With over 15 years of hands-on experience in incident detection and response, he specializes in protecting organizations from evolving cyber threats. Leading a team of SOC analysts, Ján focuses on proactive monitoring, threat mitigation, and incident resolution. His career spans multiple roles within Security Operations Centers, including security administrator, change manager, and SOC leader, giving him a well-rounded perspective on cyber defense.",
        talkIDs: [],
        twitter: nil,
        linkedin: nil,
        github: nil    )
]


