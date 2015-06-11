use Concrete\Package\DazeySolutions\Src\BootstrapSection;
use Core;

public function on_start()
{
    $manager = Core::make('manager/grid_framework');
    $manager->extend('bootstrap3s', function($app) {
        return new BootstrapSection();
    });
}