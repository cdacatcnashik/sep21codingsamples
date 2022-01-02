partial class Interval : IComparable<Interval>
{
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

    public override string ToString()
    {
        return string.Format("{0}:{1:00}", Minutes, Seconds);
    }

    public override int GetHashCode()
    {
        return Minutes + Seconds;
    }

    public override bool Equals(object other)
    {
        return other is Interval that
            && this.Minutes == that.Minutes
            && this.Seconds == that.Seconds;       
    }

    public int CompareTo(Interval that)
    {
        return this.Time() - that.Time();
    }
}
