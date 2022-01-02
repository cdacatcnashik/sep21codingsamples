class SecondsComparer : IComparer<Interval>
{
    public int Compare(Interval x, Interval y)
    {
        return y.Seconds - x.Seconds;
    }
}