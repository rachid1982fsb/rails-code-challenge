class Article < ApplicationRecord
    belongs_to :user


    def self.first_three_articles
        categorys=[]
        Article.all.each do |a|
                categorys.push(a.category)    
        end
        category_unique = categorys.uniq
        articles=[]
        category_unique.each do |category|
            articles.push(Article.all.select{|article| article.category == category}[0,3])
        end
        articles.flatten
    end
end
