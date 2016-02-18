#==================
# Main Menu
#==================

def main_menu

	while (true)
		main_options = ["", "-- Main Menu --", "1: Command Line", "2: Search",
										"3: Exit"]
		main_options.each do |main_msg|
			puts main_msg
		end
		print "> "
		option = gets.strip
		case option
			when "1"
				command_line
			when "2"
				puts "Enter Search:"
				print "> "
				search_man = gets.strip
				puts `man #{search_man}`
			when "3"
				puts "Closing Man Pages"
				exit
			else
				puts "Enter a valid option!"
		end
	end
end

#==================
# Command Line
#==================

def command_line

	while(true)
		command_options  = ["", "-- Command Line --", "1: PWD", "2: LS",
												"3: CD", "4: RM", "5: Main Menu"]
		command_options.each do |cmd_msg|
			puts cmd_msg
		end
		print "> "
	option2 = gets.strip
	case option2
		when "1"
			puts `man pwd`
		when "2"
			puts `man ls`
		when "3"
			puts `man cd`
		when "4"
			puts `man rm`
		when "5"
			break
		else
			puts "Enter a valid option!"
		end
	end
end

main_menu
