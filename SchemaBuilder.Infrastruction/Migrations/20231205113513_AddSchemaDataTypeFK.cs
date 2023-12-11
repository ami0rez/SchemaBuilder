using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SchemaBuilder.Infrastruction.Migrations
{
    /// <inheritdoc />
    public partial class AddSchemaDataTypeFK : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateIndex(
                name: "IX_SchemaProperty_schemaDataTypeId",
                table: "SchemaProperty",
                column: "schemaDataTypeId");

            migrationBuilder.AddForeignKey(
                name: "FK_SchemaProperty_Schema_schemaDataTypeId",
                table: "SchemaProperty",
                column: "schemaDataTypeId",
                principalTable: "Schema",
                principalColumn: "id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_SchemaProperty_Schema_schemaDataTypeId",
                table: "SchemaProperty");

            migrationBuilder.DropIndex(
                name: "IX_SchemaProperty_schemaDataTypeId",
                table: "SchemaProperty");
        }
    }
}
