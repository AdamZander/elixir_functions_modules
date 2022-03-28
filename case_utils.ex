defmodule CaseUtils  do

  def check_stock() do
    case Products.get_products() do
      {:ok, [_h | _t]} ->
        "Items in stock"
      {:ok, []} ->
        "Items out of stock"
      {:error, reason} ->
        reason
    end
  end

end
