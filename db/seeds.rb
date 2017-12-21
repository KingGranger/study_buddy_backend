

def subjects
  subs = ['business', 'computer science', 'english', 'life skills', 'foreign language', 'math', 'performing arts', 'physical education', 'science', 'social studies', 'art', 'social science']

  subs.each do |sub|
    Subject.create(subject_name: sub)
  end
end

def templates
  templates = ['really good', 'cool', 'could be better', 'nice', 'sloppy mess', '100-fire-100', 'do not use this one']

  templates.each do |temp|
    Template.create(name: temp)
  end
end

def types
  types = ['bullet', 'definition', 'img', 'text', 'code', 'equation', 'figure']

  types.each do |type|
    Type.create(name: type)
  end
end
