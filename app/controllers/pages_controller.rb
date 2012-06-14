# coding: utf-8
class PagesController < ApplicationController
  def home
    @title = "Домашняя"
  end

  def dashboard
    @title = "Начало"
  end

  def about
    @title = "О программе"
  end

end
