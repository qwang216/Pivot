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
    
    jovanny.education.degreeType = @"Some college";
    jovanny.education.school = @"Borough of Manhattan Community College";
    jovanny.education.major = @"Computer Science";
    
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
    
    lauren.education.degreeType = @"Bachelor";
    lauren.education.school = @"Stony Brook University";
    lauren.education.major = @"Fine Arts, Digital Arts";
    
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
    
    mesfin.education.degreeType = @"Bachelor of Arts";
    mesfin.education.school = @"Kalamazoo College";
    mesfin.education.major = @"Mathematics";
    
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
    
    jason.education.degreeType = @"Bachelor Degree";
    jason.education.school = @"Queens College";
    jason.education.major = @"Biology";
    
    jason.picture = [UIImage imageNamed:jason.name];
    
    
    [self.users addObject:jovanny];
    [self.users addObject:lauren];
    [self.users addObject:mesfin];
    [self.users addObject:jason];
    
}



@end
