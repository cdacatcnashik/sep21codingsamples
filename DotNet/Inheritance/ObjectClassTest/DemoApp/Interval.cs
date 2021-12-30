//partial type implementation is split across multiple source code files
//as this class is not defined with an explicit base type, it will be
//implicitly derived from System.Object
partial class Interval 
{
    //property with private set can only be assigned in this class
    public int Minutes { get; private set;}

    public int Seconds { get; private set; }

    public Interval(int min, int sec)
    {
        Minutes = min + sec / 60;
        Seconds = sec % 60;
    }

    public int Time()
    {
        return 60 * Minutes + Seconds;
    }

    public override string? ToString()
    {
        return string.Format("{0}:{1:00}", Minutes, Seconds);
    }

    public override int GetHashCode()
    {
        return Minutes + Seconds;
    }

    public override bool Equals(object? other)
    {
        return other is Interval that
            && this.Minutes == that.Minutes
            && this.Seconds == that.Seconds;       
    }
}
