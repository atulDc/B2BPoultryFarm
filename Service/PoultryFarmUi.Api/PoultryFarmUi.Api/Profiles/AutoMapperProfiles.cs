using AutoMapper;
using Farm.DalLayer.EntityModels;
using EntityModel = Farm.DalLayer.EntityModels;
using DTOModel = PoultryFarmUi.Api.DTOModels;

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
            CreateMap<EntityModel.Categories, DTOModel.Category>()
                .ForMember(dest => dest.CategoryImagePath , opt => opt.MapFrom(src => src.FilePath));

            CreateMap<EntityModel.Products, DTOModel.Products>();
        }
    }
}
