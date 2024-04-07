namespace PoultryFarmUi.Api.DTOModels
{
    public class Products
    {
        public Guid ProductGUID { get; set; }
        public Guid CategoryGUID { get; set; }
        public string ProductName { get; set; }
        public string Description { get; set; }
        public int Price { get; set; }
        public bool IsAvailable { get; set; }
    }
}
