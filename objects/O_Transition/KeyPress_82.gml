/// @desc SlideTransition(mode, targetroom)
/// @arg mode
/// @arg targetroom

function SlideTransition(_mode, _targetroom = room)
{
	with(O_Transition)
	{
		mode = _mode;
		// Nếu có tham số phòng đích thì gán, nếu không thì giữ nguyên
		if (argument_count > 1) target = _targetroom;
	}
}