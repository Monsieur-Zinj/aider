from aider.commands import Commands
from aider.io import InputOutput

def test_custom_command_creation():
    io = InputOutput()
    commands = Commands(io, None)
    
    # Test creating a new custom command
    commands.cmd_custom_command("refactor Help me refactor this code")
    
    # Verify the new command exists
    assert hasattr(commands, "cmd_refactor")
    
    # Test running the new command
    result = commands.cmd_refactor("")
    assert result is not None
