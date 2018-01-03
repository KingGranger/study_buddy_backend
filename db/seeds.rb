


def subheadings
subjects={
  "Business": ["Accounting", "Business law", "Business management", "Consumer education", "Entrepreneurial skills", "Introduction to business", "Marketing", "Personal finance"],

  "Computer Science": ["Animation", "App development", "Audio production", "Computer programming", "Computer repair", "Film production", "Graphic design", "Media technology", "Music production", "Typing", "Video game development", "Web design", "Web programming", "Word processing"],

  "Engligh": ["American literature", "British literature", "Contemporary literature", "Creative writing", "Communication skills", "Debate", "English language and composition", "English literature and composition", "Humanities", "Journalism", "Literary analysis", "Modern literature", "Poetry", "Popular literature", "Rhetoric", "Technical writing", "Works of Shakespeare", "World literature", "Written and oral communication"],

  "Consumer Education": ["Chemistry of foods", "CPR training", "Culinary arts", "Early childhood development", "Early childhood education", "Family studies", "Fashion and retail merchandising", "Fashion construction", "Home economics", "Interior design", "Nutrition"],

  "Foreign Language": ["American Sign Language", "Ancient Greek", "Arabic", "Chinese", "French", "German", "Hebrew", "Italian", "Japanese", "Korean", "Latin", "Portuguese", "Russian", "Spanish"],

  "Math": ["Algebra 1", "Algebra 2", "Calculus", "Computer math", "Consumer math", "Fundamentals of math", "Geometry", "Integrated math", "Math applications", "Multivariable calculus", "Practical math", "Pre-algebra", "Pre-calculus", "Probability", "Quantitative literacy", "Statistics", "Trigonometry"],

  "Performing arts": ["Choir", "Concert band", "Dance", "Drama", "Guitar", "Jazz band", "Marching band", "Music theory", "Orchestra", "Percussion", "Piano", "Theater technology", "World music"],

  "Physical Education": ["Aerobics", "Dance", "Gymnastics", "Health", "Lifeguard training", "Pilates", "Racket sports", "Specialized sports", "Swimming", "Weight training", "Yoga"],

  "Science": ["Agriculture", "Astronomy", "Biology", "Botany", "Chemistry", "Earth science", "Electronics", "Environmental science", "Environmental studies", "Forensic science", "Geology", "Marine biology", "Oceanography", "Physical science", "Physics", "Zoology"],

  "Social Studies": ["World politics", "World religions", "Cultural anthropology", "Current events", "European history", "Geography", "Global studies", "Human geography", "International relations", "Law", "Macroeconomics", "Microeconomics", "Modern world studies", "Physical anthropology", "Political studies", "Psychology", "Religious studies", "Sociology", "US government", "US history", "Womens studies"],

  "Vocational": ["Auto body repair", "Auto mechanics", "Building construction", "Computer-aided drafting", "Cosmetology", "Criminal justice", "Driver education", "Electronics", "FFA", "Fire science", "Heating and cooling systems", "Hospitality and tourism", "JROTC", "Metalworking", "Networking", "Plumbing", "Production technology", "Refrigeration fundamentals", "Robotics", "Woodworking"]
}

  subjects.each do |subject, sub|
    Subject.create(subject_name: subject)
      sub.each do |subh|
        SubHeader.create(name: subh, subject_id: Subject.last.id)
      end
    end
end

Note.create(user_id: 1, sub_header_id: 1, name: "bears", subject_id: 1, bullet: "bears", definition: "bear
s", img: "bears", code: "bears", equation: "bears", figure: nil)
Note.create(user_id: 1, sub_header_id: 1, name: "bears", subject_id: 1, bullet: "bears", definition: "bear
s", img: "bears", code: "bears", equation: "bears", figure: nil)
Note.create(user_id: 1, sub_header_id: 1, name: "bears", subject_id: 1, bullet: "bears", definition: "bear
s", img: "bears", code: "bears", equation: "bears", figure: nil)
Note.create(user_id: 1, sub_header_id: 1, name: "bears", subject_id: 1, bullet: "bears", definition: "bear
s", img: "bears", code: "bears", equation: "bears", figure: nil)
Note.create(user_id: 1, sub_header_id: 1, name: "bears", subject_id: 1, bullet: "bears", definition: "bear
s", img: "bears", code: "bears", equation: "bears", figure: nil)
Note.create(user_id: 1, sub_header_id: 1, name: "bears", subject_id: 1, bullet: "bears", definition: "bear
s", img: "bears", code: "bears", equation: "bears", figure: nil)
Note.create(user_id: 1, sub_header_id: 1, name: "bears", subject_id: 1, bullet: "bears", definition: "bear
s", img: "bears", code: "bears", equation: "bears", figure: nil)
Note.create(user_id: 1, sub_header_id: 1, name: "bears", subject_id: 1, bullet: "bears", definition: "bear
s", img: "bears", code: "bears", equation: "bears", figure: nil)
Note.create(user_id: 1, sub_header_id: 1, name: "bears", subject_id: 1, bullet: "bears", definition: "bear
s", img: "bears", code: "bears", equation: "bears", figure: nil)
Note.create(user_id: 1, sub_header_id: 1, name: "bears", subject_id: 1, bullet: "bears", definition: "bear
s", img: "bears", code: "bears", equation: "bears", figure: nil)

subheadings()
