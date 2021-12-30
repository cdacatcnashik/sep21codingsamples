namespace Payroll
{
    //reference type
    class Employee
    {
        private int hours;
        private float rate;
        private static int count;

        public Employee(int h, float r)
        {
            hours = h;
            rate = r;
            count += 1;
        }

        //parameterless constructor calling above parameterized constructor
        public Employee() : this(0, 0) {}

        //property - accessor (get/set) methods which can be invoked
        //using field-access syntax
        public int Hours
        {
            get { return hours; }
            set { hours = value; }
        }

        public float Rate
        {
            get { return rate; }
            set { rate = value; }
        }

        public double Income()
        {
            double income = hours * rate;
            int ot = hours - 180;
            if(ot > 0)
                income += 50 * ot;
            return income;
        }

        public static int CountInstances()
        {
            return count;
        }


    }
}