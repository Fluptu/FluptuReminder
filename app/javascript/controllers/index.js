// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import FlashController from "./flash_controller"
application.register("flash", FlashController)

import FormCheckBoxController from "./form_check_box_controller"
application.register("form-check-box", FormCheckBoxController)

import ModalController from "./modal_controller"
application.register("modal", ModalController)

import SideMenuController from "./side_menu_controller"
application.register("side-menu", SideMenuController)
