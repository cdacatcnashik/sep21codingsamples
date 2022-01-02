namespace Banking;

public interface IProfitable
{
    decimal AddInterest(int months);

    const decimal MinRate = 4;

}
