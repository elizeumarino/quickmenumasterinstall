#!/bin/bash
#  ---------------------------------------------------------------------
#      @Author:  Elizeu Marino
#
#                Rio de Janeiro    Cel: +55 21 ###-###-###
#                Brasil            Tel: +55 21 ####-####
#                E-Mail: elizeumarino@gmail.com
#                www.elizeulog.blogspot.com
#                http://br.linkedin.com/in/elizeumarino
#                https://telegram.me/TI_Brasil
#  ---------------------------------------------------------------------
#      @ProjectName: Quick Menu Master Install
#      @Filesource : quickmenumaster.sh
#      @Date ______: 17.09.2016
#      @Version ___: 3.0
#
#      Copyright(c) 2016
#  ---------------------------------------------------------------------
#      @Description : Script de Instalação Padrão desvio condicional
#                     Para Ubuntu e Linux Mint com Zenity
#  ---------------------------------------------------------------------
#Inicio Quick Menu Master Install
clear #Inicio condicional if verica senha de admin



menu ()	{ #Inicio Menu
Escolha=$(zenity --list --radiolist --title="Quick Menu Master Install" --width=600 --height=500  \
--text "Escolha uma opção ! " \
  --column " ( X ) " --column "Opção" --column "Descrição" \
FALSE "1" "Instalar Java Oracle"  \
FALSE "2" "Instalar Terminal Guake" \
FALSE "3" "Instalar PPA Mananger" \
FALSE "4" "Instalar VLC media player" \
FALSE "5" "Instalar Ubuntu Tweak" \
FALSE "6" "Instalar Plank Dock" \
FALSE "7" "Instalar Avant Window Navigator" \
FALSE "8" "Instalar Libreoffice" \
FALSE "9" "Instalar Grub Customize" \
FALSE "A" "Instalar Midnight Commander" \
FALSE "B" "Instalar Geany Multi Editor - Develope Editor" \
FALSE "C" "Instalar Bleachbit - Utilitario de limpeza" \
FALSE "D" "Instalar My Wather Indicator - Só funciona no Ubuntu Unity" \
FALSE "E" "Instalar Conky e Conky Mananger 2" \
FALSE "F" "Instalar Vim 8.0 Editor de codigo" \
FALSE "SAIR"
);
echo ;
echo $Escolha
echo ;
Funcao_Escolha
} #Fim Menu

      Funcao_Executar () { #Inicio Funcao_Executar
        # EXEMPLO PARA REPOSITORIOS
        # COMANDO='sudo add-apt-repository -y ppa:ricotz/docky'; TITULO='..:: Instalando Repositorio ::..'; TEXTO=' Acidionando Repositorio...... Por favor aguarde...'
        # EXEMPLO PARA ATUALIZACAO DE REPOSITORIOS
        # COMANDO='sudo apt-get -y update'; TITULO=' ..:: Atualizando Repositorios ::.. '; TEXTO=' Atualizando Repositorios...... Por favor aguarde...'
        # EXEMPLO PARA INSTALACAO DE APLICATIVOS E PROGRAMAS
        # COMANDO='sudo apt-get -y install plank'; TITULO=' ..:: Instalando ::.. '; TEXTO=' Instalando Plank Dock...... Por favor aguarde...'

	      Barra_Progresso () { 
		         tail -f $0 | zenity --progress --width=400 --height=100 --no-cancel --title "$TITULO" --pulsate --auto-close --auto-kill --text "$TEXTO"
		          if [ "$?" = -1 ] ; then
					killall "$COMANDO" && zenity --error --text="Cancelado!."
					fi 
	      }
        

        Barra_Progresso "Aguarde..." & sudo $COMANDO #Executa a Barra_Progresso
        killall tail
       
        }  

        Botao_OK () { #Inicio Botao_OK
            zenity --info --width=400 --height=100 --title " ...::: OBRIGADO ! :::..." --text " Obrigado por instalar $APLICS"
        } 
        
	Funcao_Escolha ()	{ #Inicio Funcao_Escolha
	  case $Escolha in

		"1")	clear
			echo ;
			echo "----------------------------------------------------------------------"
			echo "                    Instalando Java Oracle... "
			echo "----------------------------------------------------------------------"
			echo ;
			COMANDO='sudo add-apt-repository -y ppa:webupd8team/java'; TITULO='..:: Instalando Repositorio ::..'; TEXTO=' Acidionando Repositorio...... Por favor aguarde...'
			Funcao_Executar
			COMANDO='echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections'
			COMANDO='sudo apt-get -y update'; TITULO=' ..:: Atualizando Repositorios ::.. '; TEXTO=' Atualizando Repositorios...... Por favor aguarde...'
			Funcao_Executar
			COMANDO='sudo apt-get -y install oracle-java8-installer'; TITULO=' ..:: Instalando ::.. '; TEXTO=' Instalando Oracle-Java8...... Por favor aguarde...'
			Funcao_Executar
			COMANDO='sudo apt-get -y install oracle-java8-set-default'; TITULO=' ..:: Instalando ::.. '; TEXTO=' Instalando Oracle-Java8-set-default...... Por favor aguarde...'
			Funcao_Executar
      APLICS="o Java Oracle !"
      Botao_OK
		menu ;;

		"2")	clear
			echo ;
			echo "----------------------------------------------------------------------"
			echo "                    Instalando Terminal Guake... "
			echo "----------------------------------------------------------------------"
			echo ;
      #COMANDO='sudo add-apt-repository -y ppa:atareao/atareao'; TITULO='..:: Instalando Repositorio ::..'; TEXTO=' Acidionando Repositorio...... Por favor aguarde...'
			#Funcao_Executar
			COMANDO='sudo apt-get -y update'; TITULO=' ..:: Atualizando Repositorios ::.. '; TEXTO=' Atualizando Repositorios...... Por favor aguarde...'
			Funcao_Executar
      COMANDO='sudo apt-get -y install Guake'; TITULO=' ..:: Instalando ::.. '; TEXTO=' Instalando Terminal Guake...... Por favor aguarde...'
      Funcao_Executar
      APLICS="o Terminal Guake !"
      Botao_OK
			#sudo add-apt-repository ppa:ozcanesen/terra-terminal;
			#sudo apt-get update && sudo apt-get install terra;
		menu ;;

		"3")	clear
			echo ;
			echo "----------------------------------------------------------------------"
			echo "                    Instalando PPA Mananger... "
			echo "----------------------------------------------------------------------"
			echo ;
      COMANDO='sudo add-apt-repository -y ppa:webupd8team/y-ppa-manager'; TITULO='..:: Instalando Repositorio ::..'; TEXTO=' Acidionando Repositorio...... Por favor aguarde...'
      Funcao_Executar
      COMANDO='sudo apt-get -y update'; TITULO=' ..:: Atualizando Repositorios ::.. '; TEXTO=' Atualizando Repositorios...... Por favor aguarde...'
      Funcao_Executar
      COMANDO='sudo apt-get -y install install y-ppa-manager'; TITULO=' ..:: Instalando ::.. '; TEXTO=' Instalando PPA Mananger...... Por favor aguarde...'
      Funcao_Executar
      APLICS="o PPA Mananger !"
      Botao_OK
    menu ;;

    "4")	clear
			echo ;
			echo "----------------------------------------------------------------------"
			echo "                    Instalando VLC media player"
			echo "----------------------------------------------------------------------"
			echo ;
      COMANDO='sudo add-apt-repository -y ppa:videolan/stable-daily'; TITULO='..:: Instalando Repositorio ::..'; TEXTO=' Acidionando Repositorio...... Por favor aguarde...'
			Funcao_Executar
			COMANDO='sudo apt-get -y update'; TITULO=' ..:: Atualizando Repositorios ::.. '; TEXTO=' Atualizando Repositorios...... Por favor aguarde...'
			Funcao_Executar
      COMANDO='sudo apt-get -y install vlc browser-plugin-vlc'; TITULO=' ..:: Instalando ::.. '; TEXTO=' Instalando VLC media player...... Por favor aguarde...'
      Funcao_Executar
      APLICS="o VLC media player !"
      Botao_OK
		menu ;;

		"5")	clear
			echo ;
			echo "----------------------------------------------------------------------"
			echo "                    Instalando Blender... "
			echo "----------------------------------------------------------------------"
			echo ;
      #COMANDO='sudo add-apt-repository -y ppa:tualatrix/ppa'; TITULO='..:: Instalando Repositorio ::..'; TEXTO=' Acidionando Repositorio...... Por favor aguarde...'
			#Funcao_Executar
			COMANDO='sudo apt-get -y update'; TITULO=' ..:: Atualizando Repositorios ::.. '; TEXTO=' Atualizando Repositorios...... Por favor aguarde...'
			Funcao_Executar
      COMANDO='sudo apt-get -y install Blender'; TITULO=' ..:: Instalando ::.. '; TEXTO=' Instalando Blender........ Por favor aguarde...'
			Funcao_Executar
      APLICS="o Blender !"
      Botao_OK
		menu ;;

		"6")	clear
			echo ;
			echo "----------------------------------------------------------------------"
			echo "                    Instalando Plank Dock... "
			echo "----------------------------------------------------------------------"
			echo ;
      COMANDO='sudo add-apt-repository -y ppa:ricotz/docky'; TITULO='..:: Instalando Repositorio ::..'; TEXTO=' Acidionando Repositorio...... Por favor aguarde...'
			Funcao_Executar
			COMANDO='sudo apt-get -y update'; TITULO=' ..:: Atualizando Repositorios ::.. '; TEXTO=' Atualizando Repositorios...... Por favor aguarde...'
			Funcao_Executar
      COMANDO='sudo apt-get -y install --install-recommends plank'; TITULO=' ..:: Instalando ::.. '; TEXTO=' Instalando Plank Dock...... Por favor aguarde...'
      Funcao_Executar
      APLICS="a Plank Dock !"
      Botao_OK
		menu ;;

		"7")	clear
			echo ;
			echo "----------------------------------------------------------------------"
			echo "                 Instalando Avant Window Navigator... "
			echo "----------------------------------------------------------------------"
			echo ;
			COMANDO='sudo add-apt-repository -y ppa:nilarimogard/webupd8 && sudo apt-get -y update'; TITULO='..:: Instalando Repositorio ::..'; TEXTO=' Acidionando Repositorio...... Por favor aguarde...'
			Funcao_Executar
			COMANDO='sudo apt-get -y update'; TITULO=' ..:: Atualizando Repositorios ::.. '; TEXTO=' Atualizando Repositorios...... Por favor aguarde...'
			Funcao_Executar
			COMANDO='sudo apt-get -y install --install-recommends avant-window-navigator'; TITULO=' ..:: Instalando ::.. '; TEXTO=' Instalando Avant Window Navigator...... Por favor aguarde...'
			Funcao_Executar
      APLICS="a Avant Window Navigator !"
      Botao_OK
		menu ;;


		"8")	clear
			echo ;
			echo "----------------------------------------------------------------------"
			echo "                    Instalando Libreoffice... "
			echo "----------------------------------------------------------------------"
			echo ;
      COMANDO='sudo add-apt-repository -y ppa:libreoffice/ppa'; TITULO='..:: Instalando Repositorio ::..'; TEXTO=' Acidionando Repositorio...... Por favor aguarde...'
			Funcao_Executar
			COMANDO='sudo apt-get -y update'; TITULO=' ..:: Atualizando Repositorios ::.. '; TEXTO=' Atualizando Repositorios...... Por favor aguarde...'
			Funcao_Executar
      COMANDO='sudo apt-get -y install --install-recommends libreoffice-l10n-pt-br'; TITULO=' ..:: Instalando ::.. '; TEXTO=' Instalando Libreoffice...... Por favor aguarde...'
			Funcao_Executar
      APLICS="o Libreoffice !"
      Botao_OK
		menu ;;

		"9")	clear
			echo ;
			echo "----------------------------------------------------------------------"
			echo "                    Instalando Grub Customize... "
			echo "----------------------------------------------------------------------"
			echo ;
      COMANDO='sudo add-apt-repository -y ppa:danielrichter2007/grub-customizer'; TITULO='..:: Instalando Repositorio ::..'; TEXTO=' Acidionando Repositorio...... Por favor aguarde...'
			Funcao_Executar
			COMANDO='sudo apt-get -y update'; TITULO=' ..:: Atualizando Repositorios ::.. '; TEXTO=' Atualizando Repositorios...... Por favor aguarde...'
			Funcao_Executar
      COMANDO='sudo apt-get -y install --install-recommends grub-customizer'; TITULO=' ..:: Instalando ::.. '; TEXTO=' Instalando Grub Customize........ Por favor aguarde...'
			Funcao_Executar
      APLICS="o Grub Customize !"
      Botao_OK
    menu ;;

    "A")	clear
			echo ;
			echo "----------------------------------------------------------------------"
			echo "                    Instalando Midnight Commander... "
			echo "----------------------------------------------------------------------"
			echo ;
      #COMANDO='sudo add-apt-repository -y ppa:atareao/atareao'; TITULO='..:: Instalando Repositorio ::..'; TEXTO=' Acidionando Repositorio...... Por favor aguarde...'
			#Funcao_Executar
			COMANDO='sudo apt-get -y update'; TITULO=' ..:: Atualizando Repositorios ::.. '; TEXTO=' Atualizando Repositorios...... Por favor aguarde...'
			Funcao_Executar
      COMANDO='sudo apt-get -y install mc'; TITULO=' ..:: Instalando ::.. '; TEXTO=' Instalando Midnight Commander...... Por favor aguarde...'
      Funcao_Executar
      APLICS="o Midnight Commander !"
      Botao_OK
		menu ;;

    "B")	clear
			echo ;
			echo "----------------------------------------------------------------------"
			echo "          Instalando Geany Multi Editor - Develope Editor... "
			echo "----------------------------------------------------------------------"
			echo ;
      echo ;
      #COMANDO='sudo add-apt-repository -y ppa:atareao/atareao'; TITULO='..:: Instalando Repositorio ::..'; TEXTO=' Acidionando Repositorio...... Por favor aguarde...'
      #Funcao_Executar
      COMANDO='sudo apt-get -y update'; TITULO=' ..:: Atualizando Repositorios ::.. '; TEXTO=' Atualizando Repositorios...... Por favor aguarde...'
      Funcao_Executar
      COMANDO='sudo apt-get -y install geany'; TITULO=' ..:: Instalando ::.. '; TEXTO=' Instalando Geany Multi Editor - Develope Editor...... Por favor aguarde...'
      Funcao_Executar
      APLICS="o Geany Multi Editor !"
      Botao_OK
    menu ;;

    "C")	clear
			echo ;
			echo "----------------------------------------------------------------------"
			echo "            Instalando Bleachbit - Utilitario de limpeza... "
			echo "----------------------------------------------------------------------"
			echo ;
      #COMANDO='sudo add-apt-repository -y ppa:atareao/atareao'; TITULO='..:: Instalando Repositorio ::..'; TEXTO=' Acidionando Repositorio...... Por favor aguarde...'
      #Funcao_Executar
			COMANDO='sudo apt-get -y update'; TITULO=' ..:: Atualizando Repositorios ::.. '; TEXTO=' Atualizando Repositorios...... Por favor aguarde...'
			Funcao_Executar
			COMANDO='sudo apt-get -y install bleachbit'; TITULO=' ..:: Instalando ::.. '; TEXTO=' Instalando Bleachbit...... Por favor aguarde...'
			Funcao_Executar
      APLICS="o Bleachbit !"
      Botao_OK
    menu ;;

    "D")	clear
      echo ;
      echo "----------------------------------------------------------------------"
      echo "    Instalando My Wather Indicator - Só funciona no Ubuntu Unity... "
      echo "----------------------------------------------------------------------"
      echo ;
      COMANDO='sudo add-apt-repository -y ppa:atareao/atareao'; TITULO='..:: Instalando Repositorio ::..'; TEXTO=' Acidionando Repositorio...... Por favor aguarde...'
      Funcao_Executar
      COMANDO='sudo apt-get -y update'; TITULO=' ..:: Atualizando Repositorios ::.. '; TEXTO=' Atualizando Repositorios...... Por favor aguarde...'
      Funcao_Executar
      COMANDO='sudo apt-get -y install my-weather-indicator'; TITULO=' ..:: Instalando ::.. '; TEXTO=' Instalando My Wather Indicator...... Por favor aguarde...'
      Funcao_Executar
      APLICS="o My Wather Indicator !"
      Botao_OK
		menu ;;

    "E")	clear
      echo ;
      echo "----------------------------------------------------------------------"
      echo "    Instalando Conky e Conky Manager ... "
      echo "----------------------------------------------------------------------"
      echo ;
      COMANDO='sudo apt-add-repository ppa:teejee2008/ppa -y'; TITULO='..:: Instalando Repositorio ::..'; TEXTO=' Acidionando Repositorio...... Por favor aguarde...'
      Funcao_Executar
      COMANDO='sudo apt-get -y update'; TITULO=' ..:: Atualizando Repositorios ::.. '; TEXTO=' Atualizando Repositorios...... Por favor aguarde...'
      Funcao_Executar
      COMANDO='sudo apt-get -y install conky conky-manager'; TITULO=' ..:: Instalando ::.. '; TEXTO=' Instalando Conky e Conky Manager...... Por favor aguarde...'
      Funcao_Executar
      APLICS="o Conky e Conky Manager !"
      Botao_OK
    menu ;;


    "F")	clear
      echo ;
      echo "----------------------------------------------------------------------"
      echo "    Instalando Vim 8.0 Editor de codigo... "
      echo "----------------------------------------------------------------------"
      echo ;
      COMANDO='sudo add-apt-repository -y ppa:jonathonf/vim'; TITULO='..:: Instalando Repositorio ::..'; TEXTO=' Acidionando Repositorio...... Por favor aguarde...'
      Funcao_Executar
      COMANDO='sudo apt-get -y update'; TITULO=' ..:: Atualizando Repositorios ::.. '; TEXTO=' Atualizando Repositorios...... Por favor aguarde...'
      Funcao_Executar
      COMANDO='sudo apt-get -y install vim'; TITULO=' ..:: Instalando ::.. '; TEXTO=' Instalando Vim 8.0 Editor de codigo...... Por favor aguarde...'
      Funcao_Executar
      APLICS="o Vim 8.0 Editor de codigo !"
      Botao_OK
    menu ;;

	  "SAIR")	clear
      zenity --info --title " ...::: Obrigado!!! Bye Bye!!! :::... " --width=400 --height=100 --text=" \n Mais já ta indo?\n Fica mais um pouco, Vai ter Bolo! \o/\n\n Obrigado por Utilizar o Quick Menu Install\n Thanks you for Use Quick Menu Install\n\n Tank you!\n Elizeu Marino  "
			echo ;
      echo "______________________________________________________________________"
      echo " "
      echo "       Mais já ta indo? Fica mais um pouco, "
      echo "              Vai ter Bolo! \o/ "
      echo "           Saindo... Bye... Tchau... :( "
      echo " "
      echo "       Obrigado por Utilizar o Quick Menu Install"
      echo "       Thanks you for Use Quick Menu Install "
      echo " "
      echo "       Tank you! Elizeu Marino."
      echo " "
      echo "______________________________________________________________________"
      echo ;
    ;;

		esac
	} #Fim Funcao_Escolha
	
	if [ "`id -u`" != "0" ] ; then
		# gksudo $0
		zenity --info --width=400 --height=100 --title " ...::: OBRIGADO ! :::..." --text " Você deve executar esse programa como super usuario"
		else
	menu
	exit
fi #Fim do condicional
