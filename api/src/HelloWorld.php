<?php

namespace App;

class HelloWorld
{
	public function hello($name)
	{
		echo '<pre>' . json_encode(['message' => sprintf('Hello %s', $name)]);
	}
}