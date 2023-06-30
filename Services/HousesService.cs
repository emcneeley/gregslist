using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace gregslist.Services;

public class HousesService
{
    private readonly HousesRepository _repo;
    public HousesService(HousesRepository repo)
    {
        _repo = repo;
    }

    internal House CreateHouse(House houseData)
    {
        House house = _repo.CreateHouse(houseData);
        return house;
    }

    internal List<House> GetAllHouses()
    {
        List<House> houses = _repo.GetAllHouses();
        return houses;
    }

    internal House GetById(int houseId)
    {
        House house = _repo.GetById(houseId);
        if (house == null) throw new Exception($"no house at Id:{houseId}");
        return house;
    }

    internal string RemoveHouse(int houseId)
    {
        House house = GetById(houseId);
        int rows = _repo.RemoveHouse(houseId);
        if (rows > 1) throw new Exception("Im not sure what happened");
        return $"She gone. She being {house.Id}";
    }

    internal House UpdateHouse(House updateData)
    {
        House original = GetById(updateData.Id);
        original.bedrooms = updateData.bedrooms != null ? updateData.bedrooms : original.bedrooms;
        original.bathrooms = updateData.bathrooms != null ? updateData.bathrooms : original.bathrooms;
        original.sqft = updateData.sqft != null ? updateData.sqft : original.sqft;
        original.price = updateData.price != null ? updateData.price : original.price;
        original.description = updateData.description != null ? updateData.description : original.description;
        _repo.UpdateHouse(original);
        return original;
    }
}
