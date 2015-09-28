namespace :app do
  desc 'Creates default roles'
  task :setup_roles => :environment do |t, args|

    # Default user roles
    [
      {
        name: 'Manager',
        permissions: [
          'apartment_building:icsu', 'apartment:icsu', 'guests:icsu', 'apartment_booking:icsu'
        ]
      }, {
        name: 'Clerk',
        permissions: [
          'apartment_building:is', 'apartment:is', 'guests:icsu', 'apartment_booking:icsu'
        ]
      }
    ].each do |role|
      next if Role.where(name: role[:name]).exists?
      
      permissions = role[:permissions].map do |p|
        p.split(':').second.split('').map do |p2|
          p.split(':').first.classify + ':' + {
            i: 'index', c: 'create', s: 'show', u: 'update', d: 'delete'
          }[p2.to_sym]
        end
      end.flatten

      Role.create name: role[:name], permissions: permissions
    end
  end
end