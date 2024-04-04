using AutoMapper;
using PolutryFarm.DalLayer.EntityModels;
using PoultryFarmUi.Api.DTOModels;

namespace PoultryFarmUi.Api.Profiles
{
    public class AutoMapperProfiles: Profile
    {
        public AutoMapperProfiles() 
        {
            /*
             * Example:
            CreateMap<Source, Destination>()
                .ForMember(dest => dest.CategoryName, opt => opt.MapFrom(src => src.Name))
                .ForMember(dest => dest.CategoryId, opt => opt.Ignore());
            */
            CreateMap<Categories, Category>()
                .ForMember(dest => dest.CategoryImagePath , opt => opt.MapFrom(src => src.FilePath));
        }
    }
}
