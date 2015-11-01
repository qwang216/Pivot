//
//  Dataset.m
//  Pivot
//
//  Created by Jovanny Espinal on 10/31/15.
//  Copyright © 2015 Jason Wang. All rights reserved.
//

#import "Dataset.h"
#import "User.h"
#import "Event.h"

@implementation Dataset

-(instancetype)initWithUsers
{
    if (self = [super init])
    {
        self.users = [NSMutableArray new];
        
        [self createUsers];
        
        return self;
    }
    return nil;

}

-(void)createUsers
{
    User *jovanny = [User new];
    
    jovanny.name = @"Jovanny";
    jovanny.profession = @"iOS Developer";
    jovanny.events = [NSMutableArray new];
    
    Event *jovannyEvent1 = [Event new];
    jovannyEvent1.year = @"2014";
    jovannyEvent1.headline = @"Took Intro to Programming Course";
    jovannyEvent1.details = @"After being exposed to programming at my investment management internship, I quickly fell in love with it and decided to enroll at my local community college to test out whether programming would be for me or not. I took an intro to programming class focused on Java and passed with an A.";
    jovannyEvent1.pivotPoint = YES;
    
    Event *jovannyEvent2 = [Event new];
    jovannyEvent2.year = @"2015";
    jovannyEvent2.headline = @"Got accpeted into Coalition For Queen's Access Code iOS Fellowship Program";
    jovannyEvent2.details = @"Shortly after being passing my first programming in college, I realized that I wanted programming involved in my career. I began to look at some coding bootcamps related to mobile development and stumbled upon Coalition For Queen's Access Code iOS Fellowship program. After applying and going through their rigorous application process, I was accepted and began my journey of becoming an iOS developer.";
    jovannyEvent2.pivotPoint = NO;
    
    Event *jovannyEvent3 = [Event new];
    jovannyEvent3.year = @"2015";
    jovannyEvent3.headline = @"Made My First Official Mobile Application";
    jovannyEvent3.details = @"By official application, I mean my first application that I feel proud of adding to my portfolio. This means it isn't some basic application that didn't have much thought behind it. Instead, this was actually a group project in which we thought of a concept and turned it into app, which was then presented to the class as our unit final project. That app's name is FoodbLog.";
    jovannyEvent3.pivotPoint = NO;
    
    
    [jovanny.events addObject:jovannyEvent1];
    [jovanny.events addObject:jovannyEvent2];
    [jovanny.events addObject:jovannyEvent3];
    
    Interest *jovannyInterest1 = [Interest new];
    jovannyInterest1.interestName = @"Mobile Development";
    
    jovanny.interests = [NSMutableArray new];
    [jovanny.interests addObject:jovannyInterest1];
    
    Education *jovannyEducation = [Education new];
    jovannyEducation.degreeType = @"Some college";
    jovannyEducation.school = @"Borough of Manhattan Community College";
    jovannyEducation.major = @"Computer Science";
    
    jovanny.education = jovannyEducation;
    
    
    jovanny.picture = [UIImage imageNamed:jovanny.name];
    
    User *lauren = [User new];
    
    lauren.name = @"Lauren";
    lauren.profession = @"Designer + Developer";
    
    Event *laurenEvent1 = [Event new];
    laurenEvent1.year = @"2000";
    laurenEvent1.headline = @"Started learning HTML/CSS";
    laurenEvent1.details = @"My start with HTML/CSS was that I wanted to make webpages for virtual creatures named Neopets.  Eventually, when Myspace blew up, I had loved to make my profile stylistically unique.";
    laurenEvent1.pivotPoint = NO;
    
    Event *laurenEvent2 = [Event new];
    laurenEvent2.year = @"2006";
    laurenEvent2.headline = @"Started Freelance web design";
    laurenEvent2.details = @"Started making websites for clients out of interest";
    laurenEvent2.pivotPoint = NO;
    
    Event *laurenEvent3 = [Event new];
    laurenEvent3.year = @"2010";
    laurenEvent3.headline = @"Took intro to programming course";
    laurenEvent3.details = @"In 2010, I took an introduction to programming course using the language processing.";
    laurenEvent3.pivotPoint = NO;
    
    Event *laurenEvent4 = [Event new];
    laurenEvent4.year = @"2012";
    laurenEvent4.headline = @"Graduated with a Bachelor of Fine Arts";
    laurenEvent4.details = @"In 2012, I graduated with a Bachelor of Fine Arts from Stony Brook University, with a concentration in Painting, Drawing, and Digital Art.";
    laurenEvent4.pivotPoint = NO;
    
    Event *laurenEvent5 = [Event new];
    laurenEvent5.year = @"2015";
    laurenEvent5.headline = @"Made my first app";
    laurenEvent5.details = @"Joined C4Q to learn mobile development and made my first app ever!";
    laurenEvent5.pivotPoint = YES;
    
    
    lauren.events = [NSMutableArray new];
    [lauren.events addObject:laurenEvent1];
    [lauren.events addObject:laurenEvent2];
    [lauren.events addObject:laurenEvent3];
    [lauren.events addObject:laurenEvent4];
    [lauren.events addObject:laurenEvent5];
    
    Interest *laurenInterest1 = [Interest new];
    laurenInterest1.interestName = @"Mobile Development";
    
    lauren.interests = [NSMutableArray new];
    [lauren.interests addObject:laurenInterest1];
    
    
    Education *laurenEducation = [Education new];
    laurenEducation.degreeType = @"Bachelor";
    laurenEducation.school = @"Stony Brook University";
    laurenEducation.major = @"Fine Arts, Digital Arts";
    
    lauren.education = laurenEducation;
    
    
    lauren.picture = [UIImage imageNamed:lauren.name];
    
    User *mesfin = [User new];
    
    mesfin.name = @"Mesfin";
    mesfin.profession = @"iOS Developer";
    mesfin.events = [NSMutableArray new];
    
    Event *mesfinEvent1 = [Event new];
    mesfinEvent1.year = @"2012";
    mesfinEvent1.headline = @"Took Intro to Java Programming Course";
    mesfinEvent1.details = @"After my roommate encouraged me to take a CS course, I finally decided to give it a shot my sophomore year with an Intro to Programming course which was taught using Java. I fell in love with the challenges I faced in the class and the immediate gratification I got from working on projects.";
    mesfinEvent1.pivotPoint = YES;
    
    [mesfin.events addObject:mesfinEvent1];
    
    Event *mesfinEvent2 = [Event new];
    mesfinEvent2.year = @"2013";
    mesfinEvent2.headline = @"Made an android app";
    mesfinEvent2.details = @"I took a first course in mobile development. It was taught using Java. I learned a lot from the experience";
    mesfinEvent2.pivotPoint = NO;
    
    [mesfin.events addObject:mesfinEvent2];
    
    Event *mesfinEvent3 = [Event new];
    mesfinEvent3.year = @"2015";
    mesfinEvent3.headline = @"Accepted into the Access Code iOS Fellowship";
    mesfinEvent3.details = @"Got selected from a pool of 600 applicants to participate in an 9-month intensive mobile application development program focusing on iOS development";
    mesfinEvent3.pivotPoint = NO;
    
    [mesfin.events addObject:mesfinEvent3];
    
    Interest *mesfinInterest1 = [Interest new];
    mesfinInterest1.interestName = @"Mobile Development";
    
    mesfin.interests = [NSMutableArray new];
    [mesfin.interests addObject:mesfinInterest1];
    
    Education *mesfinEducation = [Education new];
    mesfinEducation.degreeType = @"Bachelor of Arts";
    mesfinEducation.school = @"Kalamazoo College";
    mesfinEducation.major = @"Mathematics";
    
    mesfin.education = mesfinEducation;
    
    
    mesfin.picture = [UIImage imageNamed:mesfin.name];
    
    User *jason = [User new];
    jason.events = [NSMutableArray new];
    jason.name = @"Jason";
    jason.profession = @"iOS Developer";
    
    
    Event *jasonEvent1 = [Event new];
    jasonEvent1.year = @"2013";
    jasonEvent1.headline = @"Hated My Job";
    jasonEvent1.details = @"I worked as Pharmacy tech for over 2 years after i graduated college with bio degree. In the beginning, I loved this job because I was a lot of stuff I learn in college are being used during work. I started to hate my job when everything became repetitive, it’s basically same thing different day. I knew that I won’t be happy as a pharmacy tech";
    jasonEvent1.pivotPoint = NO;
    [jason.events addObject: jasonEvent1];
    
    Event *jasonEvent2 = [Event new];
    jasonEvent2.year = @"2014";
    jasonEvent2.headline = @"First Experience with HTML and CSS";
    jasonEvent2.details = @"I started messing around with HTML and CSS because I had an idea for building a website regarding tips and tricks for cellphone service providers";
    jasonEvent2.pivotPoint = NO;
    [jason.events addObject: jasonEvent2];
    
    Event *jasonEvent3 = [Event new];
    jasonEvent3.year = @"2015";
    jasonEvent3.headline = @"Exposed to Python";
    jasonEvent3.details = @"After learning half way through HTML and CSS in codeAcademy I feel like it wasn’t for me because it had a lot to do with designing and picking the right color. I googled what’s the best programming language to learn for a beginner and Python came out first. I googled free Python courses online and came across coursera.org and from that point on I know I want to become a programmer";
    jasonEvent3.pivotPoint = NO;
    [jason.events addObject: jasonEvent3];
    
    Event *jasonEvent4 = [Event new];
    jasonEvent4.year = @"2015";
    jasonEvent4.headline = @"Code BootCamp";
    jasonEvent4.details = @"I knew that I wanted to become a programmer, so I went on google to search any bootcamps for coding. I found a couple but the budge was out of my range. Then my brother-in-law told me about C4Q has a coding program call AccessCode and it’s free. I did a little hw on C4Q and the alumni that came out from the program are doing really well. I applied and I loved it";
    jasonEvent4.pivotPoint = YES;
    [jason.events addObject: jasonEvent4];
    
    
    
    Interest *jasonInterest1 = [Interest new];
    jasonInterest1.interestName = @"Mobile Development";
    Interest *jasonInterest2 = [Interest new];
    jasonInterest2.interestName = @"iOS Development";
    Interest *jasonInterest3 = [Interest new];
    jasonInterest3.interestName = @"Front End Developer";
    
    jason.interests = [NSMutableArray new];
    [jason.interests addObject:jasonInterest1];
    [jason.interests addObject:jasonInterest2];
    [jason.interests addObject:jasonInterest3];
    
    Education *jasonEducation = [Education new];
    jasonEducation.degreeType = @"Bachelor Degree";
    jasonEducation.school = @"Queens College";
    jasonEducation.major = @"Biology";
    
    jason.education = jasonEducation;
    
    
    jason.picture = [UIImage imageNamed:jason.name];
    
    
    
    User *daniel = [User new];
    
    daniel.name = @"Daniel";
    daniel.profession = @"iOS Developer";
    daniel.events = [NSMutableArray new];
    
    Event *danielEvent1 = [Event new];
    danielEvent1.year = @"2015";
    danielEvent1.headline = @"Finishing the HTML/CSS course on Codeacademy and then progressing to Ruby";
    danielEvent1.pivotPoint = YES;
    daniel.picture = [UIImage imageNamed:daniel.name];
    
    
    User *henna = [User new];
    
    henna.name = @"Henna";
    henna.profession = @"iOS Developer";
    henna.events = [NSMutableArray new];
    
    Event *hennaEvent1 = [Event new];
    hennaEvent1.year = @"2014";
    hennaEvent1.headline = @"Taking a web development course with Codeacamdey after college.";
    hennaEvent1.pivotPoint = YES;
    henna.picture = [UIImage imageNamed:henna.name];
    
    
    User *shena = [User new];
    
    shena.name = @"Shena";
    shena.profession = @"iOS Developer";
    shena.events = [NSMutableArray new];
    
    Event *shenaEvent1 = [Event new];
    shenaEvent1.year = @"2015";
    shenaEvent1.headline = @"Getting into the AccessCode Program for iOS!";
    shenaEvent1.pivotPoint = YES;
    shena.picture = [UIImage imageNamed:shena.name];
    
    
    User *varindra = [User new];
    
    varindra.name = @"V";
    varindra.profession = @"iOS Developer";
    varindra.events = [NSMutableArray new];
    
    Event *varindraEvent1 = [Event new];
    varindraEvent1.year = @"2011";
    varindraEvent1.headline = @"Taking a Computer Science course in C++!";
    varindraEvent1.pivotPoint = YES;
    varindra.picture = [UIImage imageNamed:varindra.name];
    
    
    User *justine = [User new];
    
    justine.name = @"Justine";
    justine.profession = @"iOS Developer";
    justine.events = [NSMutableArray new];
    
    Event *justineEvent1 = [Event new];
    justineEvent1.year = @"2015";
    justineEvent1.headline = @"When I decided to enhance my Graphic design background by taking free tutorials on Web design";
    justineEvent1.pivotPoint = YES;
    justine.picture = [UIImage imageNamed:justine.name];
    
    
    User *jamaal = [User new];
    
    jamaal.name = @"Jamaal";
    jamaal.profession = @"iOS Developer";
    jamaal.events = [NSMutableArray new];
    
    Event *jamaalEvent1 = [Event new];
    jamaalEvent1.year = @"2015";
    jamaalEvent1.headline = @"After discussing UI/UX design with a friend, I decided to give programming a shot and started by building wesbites for my friend";
    jamaalEvent1.pivotPoint = YES;
    jamaal.picture = [UIImage imageNamed:jamaal.name];
    
    
    User *mike = [User new];
    
    mike.name = @"Mike";
    mike.profession = @"Lead iOS Developer";
    mike.events = [NSMutableArray new];
    
    Event *mikeEvent1 = [Event new];
    mikeEvent1.year = @"2009";
    mikeEvent1.headline = @"I took a course in college called Digital Media  and Entertainment. I created my first website...the rest is history";
    mikeEvent1.pivotPoint = YES;
    mike.picture = [UIImage imageNamed:mike.name];
    
    
    [self.users addObject:jovanny];
    [self.users addObject:lauren];
    [self.users addObject:mesfin];
    [self.users addObject:jason];
    [self.users addObject:mike];
    [self.users addObject:jamaal];
    [self.users addObject:shena];
    [self.users addObject:henna];
    [self.users addObject:justine];
    [self.users addObject:daniel];
    [self.users addObject:varindra];
    
}



@end
