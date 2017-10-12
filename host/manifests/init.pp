  #create a host record
  class host{
    host{ 'jupiter.csit.rmit.edu.au':
      ip           => '131.170.5.135',
      host_aliases => 'jupiter',
    }

    host{ 'titan.csit.rmit.edu.au':
      ip           => '131.170.5.131',
      host_aliases => 'titan',
    }

    host{ 'saturn.csit.rmit.edu.au':
      ip           => '131.170.5.132',
      host_aliases => 'saturn',
    }
  }
