class Character < ActiveRecord::Base
  has_many :skills
  has_many :merits
  has_many :conditions
  
  def get_skills
    skills = Skill.where(character_id: self.id)
    if skills.size <= 0
      return populate_skills;
    end    
    return skills;
  end
  
  def populate_skills
    skills = Array.new(24);
    skills[0] = Skill.new(:name => "Academics", :value => 0, :character_id => self)
    skills[1] = Skill.new(:name => "Computer", :value => 0, :character_id => self)
    skills[2] = Skill.new(:name => "Crafts", :value => 0, :character_id => self)
    skills[3] = Skill.new(:name => "Investigation", :value => 0, :character_id => self)
    skills[4] = Skill.new(:name => "Medicine", :value => 0, :character_id => self)
    skills[5] = Skill.new(:name => "Occult", :value => 0, :character_id => self)
    skills[6] = Skill.new(:name => "Politics", :value => 0, :character_id => self)
    skills[7] = Skill.new(:name => "Science", :value => 0, :character_id => self)
    
    skills[8] = Skill.new(:name => "Athletics", :value => 0, :character_id => self)
    skills[9] = Skill.new(:name => "Brawl", :value => 0, :character_id => self)
    skills[10] = Skill.new(:name => "Drive", :value => 0, :character_id => self)
    skills[11] = Skill.new(:name => "Firearms", :value => 0, :character_id => self)
    skills[12] = Skill.new(:name => "Larceny", :value => 0, :character_id => self)
    skills[13] = Skill.new(:name => "Stealth", :value => 0, :character_id => self)
    skills[14] = Skill.new(:name => "Survival", :value => 0, :character_id => self)
    skills[15] = Skill.new(:name => "Weaponry", :value => 0, :character_id => self)
    
    skills[16] = Skill.new(:name => "Animal Ken", :value => 0, :character_id => self)
    skills[17] = Skill.new(:name => "Empathy", :value => 0, :character_id => self)
    skills[18] = Skill.new(:name => "Expression", :value => 0, :character_id => self)
    skills[19] = Skill.new(:name => "Intimidation", :value => 0, :character_id => self)
    skills[20] = Skill.new(:name => "Persuasion", :value => 0, :character_id => self)
    skills[21] = Skill.new(:name => "Socialize", :value => 0, :character_id => self)
    skills[22] = Skill.new(:name => "Streetwise", :value => 0, :character_id => self)
    skills[23] = Skill.new(:name => "Subterfuge", :value => 0, :character_id => self)
    
    skillsList = "";
    skills.each do |s|
      if(s != nil)
        skillsList += ", #{s.name}"
      end
    end
    puts skillsList;
    
    return skills;
  end
  
  def skills_defined_in_character(character)
    if self.user_items.pending.select {|s| s.user == user}.count > 0 
      return true
    else
      return false
    end
  end
end
