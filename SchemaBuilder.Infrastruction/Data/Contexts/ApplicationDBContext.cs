using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Internal;
using SchemaBuilder.Infrastruction.Data.Models;

namespace SchemaBuilder.Infrastruction.Data.Contexts
{
    public class ApplicationDBContext : DbContext
    {
        public ApplicationDBContext(DbContextOptions<ApplicationDBContext> opt) : base(opt)
        {
            //SeedData();
        }

        public DbSet<Schema> Schemas { get; set; }
        public DbSet<Category> Categories { get; set; }
        public DbSet<WebsiteSection> WebsiteSections { get; set; }
        public DbSet<WebsiteGroupSchema> WebsiteGroupSchemas { get; set; }

        public void SeedData()
        {
            if (!Categories.Any())
            {
                var category1 = new Category
                {
                    id = Guid.Parse("3fa85f64-5717-4562-b3fc-2c963f66afc9"),
                    name = "Food",
                    naics = "string",
                    popularity = 0,
                    fullName = "string",
                    websiteSections = new List<WebsiteSection>
                    {
                        new WebsiteSection
                        {
                            id = Guid.Parse("3fa85f64-5717-4562-b3fc-2c963f66afc0"),
                            name = "Section 1",
                            description = "Restaurants",
                            groupName = "Restaurants"
                        },
                        new WebsiteSection
                        {
                            id = Guid.Parse("3fa85f64-5717-4562-b3fc-2c963f66afc1"),
                            name = "Section 2",
                            description = "Restaurants",
                            groupName = "Restaurants"
                        },
                        new WebsiteSection
                        {
                            id = Guid.Parse("3fa85f64-5717-4562-b3fc-2c963f66afc2"),
                            name = "Section 3",
                            description = "Restaurants",
                            groupName = "Restaurants"
                        },
                        new WebsiteSection
                        {
                            id = Guid.Parse("3fa85f64-5717-4562-b3fc-2c963f66afc3"),
                            name = "Section 4",
                            description = "Restaurants",
                            groupName = "Restaurants"
                        },
                        new WebsiteSection
                        {
                            id = Guid.Parse("3fa85f64-5717-4562-b3fc-2c963f66afc4"),
                            name = "Section 5",
                            description = "Coffes",
                            groupName = "Coffes"
                        },
                        new WebsiteSection
                        {
                            id = Guid.Parse("3fa85f64-5717-4562-b3fc-2c963f66afc5"),
                            name = "Section 6",
                            description = "Coffes",
                            groupName = "Coffes"
                        },
                    }
                };
                Categories.Add(category1);

                var category2 = new Category
                {
                    id = Guid.Parse("3fb85f64-5717-4562-b3fc-2c963f66afc9"),
                    name = "Advertizing",
                    naics = "string",
                    popularity = 0,
                    fullName = "string",
                    websiteSections = new List<WebsiteSection>
                    {
                        new WebsiteSection
                        {
                            id = Guid.Parse("3fb85f64-5717-4562-b3fc-2c963f66afc0"),
                            name = "Section 1",
                            description = "Social Media",
                            groupName = "Social Media"
                        },
                        new WebsiteSection
                        {
                            id = Guid.Parse("3fb85f64-5717-4562-b3fc-2c963f66afc1"),
                            name = "Section 2",
                            description = "Social Media",
                            groupName = "Social Media"
                        },
                        new WebsiteSection
                        {
                            id = Guid.Parse("3fb85f64-5717-4562-b3fc-2c963f66afc2"),
                            name = "Section 3",
                            description = "Snacks",
                            groupName = "Snacks"
                        },
                        new WebsiteSection
                        {
                            id = Guid.Parse("3fb85f64-5717-4562-b3fc-2c963f66afc3"),
                            name = "Section 4",
                            description = "Snacks",
                            groupName = "Snacks"
                        },
                        new WebsiteSection
                        {
                            id = Guid.Parse("3fb85f64-5717-4562-b3fc-2c963f66afc4"),
                            name = "Section 5",
                            description = "Soccer",
                            groupName = "Soccer"
                        },
                        new WebsiteSection
                        {
                            id = Guid.Parse("3fb85f64-5717-4562-b3fc-2c963f66afc5"),
                            name = "Section 6",
                            description = "Soccer",
                            groupName = "Soccer"
                        },
                    }
                };
                Categories.Add(category2);
            }

            if (!Schemas.Any())
            {
                var schema1 = new Schema
                {
                    id = Guid.Parse("3fa85f64-5717-4562-b3fc-2c963f66afa6"),
                    name = "Catgeory",
                    parentId = Guid.Parse("3fa85f64-5717-4562-b3fc-2c963f66afa6"),
                    master = true,
                    properties = new List<SchemaProperty>
                    {
                        new SchemaProperty
                        {
                            name = "firstName",
                            friendlyName = "First Name",
                            datatype = 0,
                            schemaDataTypeId = 0,
                            visible = true
                        },
                        new SchemaProperty
                        {
                            name = "lastName",
                            friendlyName = "Last Name",
                            datatype = SlickyCommonLibrary.Enums.Datatype.boolean,
                            schemaDataTypeId = 0,
                            visible = true
                        },
                        new SchemaProperty
                        {
                            name = "email",
                            friendlyName = "E-mail",
                            datatype = SlickyCommonLibrary.Enums.Datatype.number,
                            schemaDataTypeId = 0,
                            visible = true
                        },
                        new SchemaProperty
                        {
                            name = "username",
                            friendlyName = "User Name",
                            datatype = SlickyCommonLibrary.Enums.Datatype.date,
                            schemaDataTypeId = 0,
                            visible = true
                        }
                    }
                };

                Schemas.Add(schema1);

                var schema2 = new Schema
                {
                    id = Guid.Parse("3fa85f64-5717-4562-b3fc-2c963f66afa7"),
                    name = "Address",
                    parentId = Guid.Parse("3fa85f64-5717-4562-b3fc-2c963f66afa6"),
                    master = true,
                    properties = new List<SchemaProperty>
                    {
                        new SchemaProperty
                        {
                            name = "city",
                            friendlyName = "City",
                            datatype = 0,
                            schemaDataTypeId = 0,
                            visible = true
                        },
                        new SchemaProperty
                        {
                            name = "country",
                            friendlyName = "Country",
                            datatype = SlickyCommonLibrary.Enums.Datatype.boolean,
                            schemaDataTypeId = 0,
                            visible = true
                        },
                        new SchemaProperty
                        {
                            name = "zip",
                            friendlyName = "Zip Code",
                            datatype = SlickyCommonLibrary.Enums.Datatype.number,
                            schemaDataTypeId = 0,
                            visible = true
                        },
                        new SchemaProperty
                        {
                            name = "street",
                            friendlyName = "Street",
                            datatype = SlickyCommonLibrary.Enums.Datatype.date,
                            schemaDataTypeId = 0,
                            visible = true
                        }
                    }
                };

                Schemas.Add(schema2);
            }

            if (!WebsiteGroupSchemas.Any())
            {
                var websiteGroupSchema = new WebsiteGroupSchema
                {
                    id = Guid.Parse("3fa85f64-5717-4562-b3fc-2c963f66afa8"),
                    groupName = "Restaurants",
                    schemaId = Guid.Parse("3fa85f64-5717-4562-b3fc-2c963f66afa6"),
                };
                WebsiteGroupSchemas.Add(websiteGroupSchema);
                var websiteGroupSchema1 = new WebsiteGroupSchema
                {
                    id = Guid.Parse("3fa85f64-5555-4562-b3fc-2c963f66afa9"),
                    groupName = "Coffes",
                    schemaId = Guid.Parse("3fa85f64-5717-4562-b3fc-2c963f66afa7"),
                };
                WebsiteGroupSchemas.Add(websiteGroupSchema1);
            }
            // Add other categories and data as needed

            SaveChanges();
        }
    }
}
