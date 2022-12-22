# make deeply cares about tabs vs. spaces -- just as a heads up!
# only use tabs when giving instructions for a target

all:
	@echo "You just ran make!"

demo-noprint:
	echo "demo-noprint: Omitting the @ symbol before a command won't print the command to the terminal."
	@echo "demo-noprint: Adding the @ symbol will run the command silently, and only show its output."

demo-dependency: dependency1
	@echo "demo-dependency: This will run 2nd, even though this is what you asked for."
	@echo "demo-dependency: Adding the 'dependency1' prerequisite after the target name told make that dependency1 happens first."

dependency1:
	@echo "dependency1: Make handles dependencies this way. You'll see this print first."



# because Make is used to build files and artifacts, it expects that
# target names be that of files that exist. If a target name == a filename in the current directory,
# make won't bother re-running that target unless you tell it to explicitly.
#
# targets listed as ".PHONY" tell Make that they are purely instructions. They do not relate to
# a file in the local directory
.PHONY: demo-noprint demo-dependency dependency1
