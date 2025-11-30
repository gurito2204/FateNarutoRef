/// @desc SlideTransition(mode, targetroom)
/// @arg mode sets transition mode between next, restart and goto.
/// @arg targetroom sets target room when using the goto mode.

function SlideTransition(_mode, _target = room)
{
	with(O_Transition)
	{
		mode = _mode;
		// Nếu có truyền tham số thứ 2 thì cập nhật target, nếu không thì giữ nguyên
		if (argument_count > 1) target = _target;
	}
}