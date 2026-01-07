import java.util.List;

class Customer {
    int id;
    String name;
    double totalSpend;
    
    public Customer(int id, String name, double totalSpend) {
        this.id = id;
        this.name = name;
        this.totalSpend = totalSpend;
    }
}

class Java_Assessment{
    public static void main(String[] args) {
        List<Customer> customers = new java.util.ArrayList<>(List.of(
            new Customer(1, "Alice",250.0),
            new Customer(2, "Bob", 150.0),
            new Customer(3, "Charlie", 300.0),
            new Customer(4, "Dave", 175.0),
            new Customer(5, "Eve", 400.0),
            new Customer(6, "Frank", 50.0),
            new Customer(7, "Grace", 320.0),
            new Customer(8, "Heidi", 275.0)
        ));

        sort(customers);
        print(customers);      
    }

    public static void print(List<Customer> customers){
        System.out.println("\nTop 3 customers:");
        int limit = Math.min(3, customers.size());
        
        for (int k = 0; k < limit; k++) {
            Customer c = customers.get(k);
            System.out.println("ID: " + c.id + ", Name: " + c.name + ", Total Spend: " + c.totalSpend);
        }
    }

    public static void sort(List<Customer> customers){
        
        for(int i =0 ; i<customers.size()-1; i++){
            
            for(int j = i+1; j<customers.size(); j++){
                
                if(customers.get(i).totalSpend < customers.get(j).totalSpend){
                    
                    Customer temp = customers.get(i);
                    customers.set(i, customers.get(j));
                    customers.set(j, temp);
                }
            }
        }       
    }
}