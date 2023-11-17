using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SchemaBuilder.Infrastruction.Migrations
{
    /// <inheritdoc />
    public partial class InitialCreate : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Category",
                columns: table => new
                {
                    id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    naics = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    popularity = table.Column<int>(type: "int", nullable: false),
                    parentId = table.Column<Guid>(type: "uniqueidentifier", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Category", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "CustomerInfo",
                columns: table => new
                {
                    id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    businessName = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    address = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    website = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ownerName = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    phone = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    businessCategoryId = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    businessCategoryName = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    contentRichness = table.Column<int>(type: "int", nullable: false),
                    productDetectedRange = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CustomerInfo", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "Schema",
                columns: table => new
                {
                    id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    parentId = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Schema", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "WebsiteSection",
                columns: table => new
                {
                    id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    description = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    groupName = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    categoryID = table.Column<Guid>(type: "uniqueidentifier", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_WebsiteSection", x => x.id);
                    table.ForeignKey(
                        name: "FK_WebsiteSection_Category_categoryID",
                        column: x => x.categoryID,
                        principalTable: "Category",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "CustomerAssociatedBusiness",
                columns: table => new
                {
                    id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    customerId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    description = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CustomerInfoid = table.Column<Guid>(type: "uniqueidentifier", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CustomerAssociatedBusiness", x => x.id);
                    table.ForeignKey(
                        name: "FK_CustomerAssociatedBusiness_CustomerInfo_CustomerInfoid",
                        column: x => x.CustomerInfoid,
                        principalTable: "CustomerInfo",
                        principalColumn: "id");
                });

            migrationBuilder.CreateTable(
                name: "CustomerJson",
                columns: table => new
                {
                    id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    customerId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    JsonData = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    processed = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CustomerJson", x => x.id);
                    table.ForeignKey(
                        name: "FK_CustomerJson_CustomerInfo_customerId",
                        column: x => x.customerId,
                        principalTable: "CustomerInfo",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "CustomerPage",
                columns: table => new
                {
                    id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    customerId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    category = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    type = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    groupName = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CustomerInfoid = table.Column<Guid>(type: "uniqueidentifier", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CustomerPage", x => x.id);
                    table.ForeignKey(
                        name: "FK_CustomerPage_CustomerInfo_CustomerInfoid",
                        column: x => x.CustomerInfoid,
                        principalTable: "CustomerInfo",
                        principalColumn: "id");
                });

            migrationBuilder.CreateTable(
                name: "CustomerPerson",
                columns: table => new
                {
                    id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    customerId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    position = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    address = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    title = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    phone = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CustomerInfoid = table.Column<Guid>(type: "uniqueidentifier", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CustomerPerson", x => x.id);
                    table.ForeignKey(
                        name: "FK_CustomerPerson_CustomerInfo_CustomerInfoid",
                        column: x => x.CustomerInfoid,
                        principalTable: "CustomerInfo",
                        principalColumn: "id");
                });

            migrationBuilder.CreateTable(
                name: "CustomerService",
                columns: table => new
                {
                    id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    customerId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    price = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    description = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CustomerInfoid = table.Column<Guid>(type: "uniqueidentifier", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CustomerService", x => x.id);
                    table.ForeignKey(
                        name: "FK_CustomerService_CustomerInfo_CustomerInfoid",
                        column: x => x.CustomerInfoid,
                        principalTable: "CustomerInfo",
                        principalColumn: "id");
                });

            migrationBuilder.CreateTable(
                name: "CustomerSocialMedia",
                columns: table => new
                {
                    id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    customerId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    address = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CustomerInfoid = table.Column<Guid>(type: "uniqueidentifier", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CustomerSocialMedia", x => x.id);
                    table.ForeignKey(
                        name: "FK_CustomerSocialMedia_CustomerInfo_CustomerInfoid",
                        column: x => x.CustomerInfoid,
                        principalTable: "CustomerInfo",
                        principalColumn: "id");
                });

            migrationBuilder.CreateTable(
                name: "SchemaProperty",
                columns: table => new
                {
                    id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    friendlyName = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    schemaId = table.Column<int>(type: "int", nullable: true),
                    datatype = table.Column<int>(type: "int", nullable: false),
                    schemaDataTypeId = table.Column<int>(type: "int", nullable: true),
                    visible = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_SchemaProperty", x => x.id);
                    table.ForeignKey(
                        name: "FK_SchemaProperty_Schema_schemaId",
                        column: x => x.schemaId,
                        principalTable: "Schema",
                        principalColumn: "id");
                });

            migrationBuilder.CreateTable(
                name: "WebsiteGroupSchema",
                columns: table => new
                {
                    id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    groupName = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    visible = table.Column<bool>(type: "bit", nullable: false),
                    schemaId = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_WebsiteGroupSchema", x => x.id);
                    table.ForeignKey(
                        name: "FK_WebsiteGroupSchema_Schema_schemaId",
                        column: x => x.schemaId,
                        principalTable: "Schema",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_CustomerAssociatedBusiness_CustomerInfoid",
                table: "CustomerAssociatedBusiness",
                column: "CustomerInfoid");

            migrationBuilder.CreateIndex(
                name: "IX_CustomerJson_customerId",
                table: "CustomerJson",
                column: "customerId");

            migrationBuilder.CreateIndex(
                name: "IX_CustomerPage_CustomerInfoid",
                table: "CustomerPage",
                column: "CustomerInfoid");

            migrationBuilder.CreateIndex(
                name: "IX_CustomerPerson_CustomerInfoid",
                table: "CustomerPerson",
                column: "CustomerInfoid");

            migrationBuilder.CreateIndex(
                name: "IX_CustomerService_CustomerInfoid",
                table: "CustomerService",
                column: "CustomerInfoid");

            migrationBuilder.CreateIndex(
                name: "IX_CustomerSocialMedia_CustomerInfoid",
                table: "CustomerSocialMedia",
                column: "CustomerInfoid");

            migrationBuilder.CreateIndex(
                name: "IX_SchemaProperty_schemaId",
                table: "SchemaProperty",
                column: "schemaId");

            migrationBuilder.CreateIndex(
                name: "IX_WebsiteGroupSchema_schemaId",
                table: "WebsiteGroupSchema",
                column: "schemaId");

            migrationBuilder.CreateIndex(
                name: "IX_WebsiteSection_categoryID",
                table: "WebsiteSection",
                column: "categoryID");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "CustomerAssociatedBusiness");

            migrationBuilder.DropTable(
                name: "CustomerJson");

            migrationBuilder.DropTable(
                name: "CustomerPage");

            migrationBuilder.DropTable(
                name: "CustomerPerson");

            migrationBuilder.DropTable(
                name: "CustomerService");

            migrationBuilder.DropTable(
                name: "CustomerSocialMedia");

            migrationBuilder.DropTable(
                name: "SchemaProperty");

            migrationBuilder.DropTable(
                name: "WebsiteGroupSchema");

            migrationBuilder.DropTable(
                name: "WebsiteSection");

            migrationBuilder.DropTable(
                name: "CustomerInfo");

            migrationBuilder.DropTable(
                name: "Schema");

            migrationBuilder.DropTable(
                name: "Category");
        }
    }
}
