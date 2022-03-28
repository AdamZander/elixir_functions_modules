defmodule MyApp.Util.Address do
  def retrieve_address(country_code, city, street) do
    {retrieve_country(country_code), city, street}
  end

  @spec retrieve_country(atom()) :: binary()
  def retrieve_country(country_code) do
    MyApp.Util.Country.countries()
    |> Keyword.fetch!(country_code)
  end
end

defmodule MyApp.Util.Country do
  def countries() do
    [us: "United States", ro: "Romania", uk: "United Kindom"]
  end
end
