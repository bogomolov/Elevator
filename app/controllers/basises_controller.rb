# coding: utf-8
class BasisesController < ApplicationController
  before_filter :authenticate_core_user!

  def home
    $current_menu = 'BASISES'
    @title = "Домашняя"
  end

  def dashboard
    $current_menu = 'BASISES'
    $current_submenu = 'DASHBOARD'
    @title = "Начало"
  end

  def about
    $current_menu = 'BASISES'
    $current_submenu = 'ABOUT'
    @title = "О программе"
  end
  
  def menu
  end

end
