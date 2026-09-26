Console.Write("Enter a country name: ");
string? country = Console.ReadLine();

if (string.IsNullOrWhiteSpace(country))
{
	Console.WriteLine("No country name was entered.");
	return;
}

Console.WriteLine($"Hello, {country}!");
