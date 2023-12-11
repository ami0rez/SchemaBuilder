using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SchemaBuilder.Infrastruction.Migrations
{
    /// <inheritdoc />
    public partial class AddStatustoCustomerJson : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "processed",
                table: "CustomerJson");

            migrationBuilder.AddColumn<int>(
                name: "status",
                table: "CustomerJson",
                type: "int",
                nullable: false,
                defaultValue: 0);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "status",
                table: "CustomerJson");

            migrationBuilder.AddColumn<bool>(
                name: "processed",
                table: "CustomerJson",
                type: "bit",
                nullable: false,
                defaultValue: false);
        }
    }
}
