class SubjectsController < ApplicationController
  def exam
    @articles = Article.where(subject: "テスト対策")
  end

  def english
    @articles = Article.where(subject: "英語")
  end

  def worldhistory
    @articles = Article.where(subject: "世界史")
  end

  def chemistry
    @articles = Article.where(subject: "化学")
  end

  def math1
    @articles = Article.where(subject: "数学Ⅰ+A")
  end

  def math2
    @articles = Article.where(subject: "数学Ⅱ+B")
  end

  def physics
    @articles = Article.where(subject: "物理")
  end
end
