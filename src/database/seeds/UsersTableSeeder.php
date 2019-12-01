<?php

use App\Models\Profile;
use App\Models\User;
use Illuminate\Database\Seeder;
use jeremykenedy\LaravelRoles\Models\Role;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker\Factory::create();
        $profile = new Profile();
        $adminRole = Role::whereName('Admin')->first();
        $userRole = Role::whereName('User')->first();

        // Seed test admin
        $seededAdminEmail = 'admin@zeroc0d3lab.local';
        $user = User::where('email', '=', $seededAdminEmail)->first();
        if ($user === null) {
            $user = User::create([
                // 'name'                           => $faker->userName,
                // 'first_name'                     => $faker->firstName,
                // 'last_name'                      => $faker->lastName,
                'name'                           => 'admin',
                'first_name'                     => 'Admin Laravel',
                'last_name'                      => 'Shipment',
                'email'                          => $seededAdminEmail,
                'password'                       => Hash::make('password'),
                'token'                          => str_random(64),
                'activated'                      => true,
                'signup_confirmation_ip_address' => $faker->ipv4,
                'admin_ip_address'               => $faker->ipv4,
            ]);

            $user->profile()->save($profile);
            $user->attachRole($adminRole);
            $user->save();
        }

        // Seed test user
        $user = User::where('email', '=', 'user@zeroc0d3lab.local')->first();
        if ($user === null) {
            $user = User::create([
                // 'name'                           => $faker->userName,
                // 'first_name'                     => $faker->firstName,
                // 'last_name'                      => $faker->lastName,
                'name'                           => 'user',
                'first_name'                     => 'User Laravel',
                'last_name'                      => 'Shipment',
                'email'                          => 'user@zeroc0d3lab.local',
                'password'                       => Hash::make('password'),
                'token'                          => str_random(64),
                'activated'                      => true,
                'signup_ip_address'              => $faker->ipv4,
                'signup_confirmation_ip_address' => $faker->ipv4,
            ]);

            $user->profile()->save(new Profile());
            $user->attachRole($userRole);
            $user->save();
        }

        // Seed test users
        // $user = factory(App\Models\Profile::class, 5)->create();
        // $users = User::All();
        // foreach ($users as $user) {
        //     if (!($user->isAdmin()) && !($user->isUnverified())) {
        //         $user->attachRole($userRole);
        //     }
        // }
    }
}
