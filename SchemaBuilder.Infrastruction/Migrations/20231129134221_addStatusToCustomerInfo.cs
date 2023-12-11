using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SchemaBuilder.Infrastruction.Migrations
{
    /// <inheritdoc />
    public partial class addStatusToCustomerInfo : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "status",
                table: "CustomerInfo",
                type: "int",
                nullable: false,
                defaultValue: 0);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "status",
                table: "CustomerInfo");
        }
    }
}
