using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Internal;
using SchemaBuilder.Infrastruction.Data.Models;

namespace SchemaBuilder.Infrastruction.Data.Contexts
{
    public class ApplicationDBContext : DbContext
    {
        public ApplicationDBContext(DbContextOptions<ApplicationDBContext> opt) : base(opt)
        {
            SeedData();
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
                    name = "My Category C",
                    naics = "string",
                    popularity = 0,
                    fullName = "string",
                    websiteSections = new List<WebsiteSection>
                    {
                        new WebsiteSection
                        {
                            id = Guid.Parse("3fa85f64-5717-4562-b3fc-2c963f66afc0"),
                            name = "Section 1",
                            description = "Block 1",
                            groupName = "Block 1"
                        },
                        new WebsiteSection
                        {
                            id = Guid.Parse("3fa85f64-5717-4562-b3fc-2c963f66afc1"),
                            name = "Section 2",
                            description = "Block 1",
                            groupName = "Block 1"
                        },
                        new WebsiteSection
                        {
                            id = Guid.Parse("3fa85f64-5717-4562-b3fc-2c963f66afc2"),
                            name = "Section 3",
                            description = "Block 1",
                            groupName = "Block 1"
                        },
                        new WebsiteSection
                        {
                            id = Guid.Parse("3fa85f64-5717-4562-b3fc-2c963f66afc3"),
                            name = "Section 4",
                            description = "Block 1",
                            groupName = "Block 1"
                        },
                        new WebsiteSection
                        {
                            id = Guid.Parse("3fa85f64-5717-4562-b3fc-2c963f66afc4"),
                            name = "Section 5",
                            description = "Block 2",
                            groupName = "Block 2"
                        },
                        new WebsiteSection
                        {
                            id = Guid.Parse("3fa85f64-5717-4562-b3fc-2c963f66afc5"),
                            name = "Section 6",
                            description = "Block 2",
                            groupName = "Block 2"
                        },
                    }
                };
                Categories.Add(category1);

                //var category2 = new Category
                //{
                //    id = Guid.Parse("3fa85f64-5717-4562-b3fc-2c963f66afc9"),
                //    name = "My Category C",
                //    naics = "string",
                //    popularity = 0,
                //    fullName = "string",
                //    websiteSections = new List<WebsiteSection>
                //    {
                //        new WebsiteSection
                //        {
                //            id = Guid.Parse("3fa85f64-5717-4562-b3fc-2c963f66afc0"),
                //            name = "Section 3",
                //            description = "Block 3",
                //            groupName = "Block 3"
                //        },
                //    }
                //};
                //Categories.Add(category2);

                //var category3 = new Category
                //{
                //    id = Guid.Parse("your_second_category_id_here"),
                //    name = "Your Second Category",
                //    naics = "another_string",
                //    popularity = 1,
                //    fullName = "another_string",
                //    websiteSections = new List<WebsiteSection>
                //    {
                //        new WebsiteSection
                //        {
                //            id = Guid.Parse("3fa85f64-5717-4562-b3fc-2c963f66afc6"),
                //            name = "Section 7",
                //            description = "Block 3",
                //            groupName = "Block 3"
                //        },
                //        new WebsiteSection
                //        {
                //            id = Guid.Parse("3fa85f64-5717-4562-b3fc-2c963f66afc7"),
                //            name = "Section 8",
                //            description = "Block 4",
                //            groupName = "Block 4"
                //        },
                //    }
                //};
                //Categories.Add(category3);
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
                            datatype = 0,
                            schemaDataTypeId = 0,
                            visible = true
                        },
                        new SchemaProperty
                        {
                            name = "email",
                            friendlyName = "E-mail",
                            datatype = 0,
                            schemaDataTypeId = 0,
                            visible = true
                        },
                        new SchemaProperty
                        {
                            name = "username",
                            friendlyName = "User Name",
                            datatype = 0,
                            schemaDataTypeId = 0,
                            visible = true
                        }
                    }
                };

                Schemas.Add(schema1);
            }

            if (!WebsiteGroupSchemas.Any())
            {
                var websiteGroupSchema = new WebsiteGroupSchema
                {
                    id = Guid.Parse("3fa85f64-5717-4562-b3fc-2c963f66afa6"),
                    groupName = "Block 1",
                    schemaId = Guid.Parse("3fa85f64-5717-4562-b3fc-2c963f66afa0"),
                };
                WebsiteGroupSchemas.Add(websiteGroupSchema);
            }
            // Add other categories and data as needed

            SaveChanges();
        }
    }
}
