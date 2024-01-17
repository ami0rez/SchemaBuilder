using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SchemaBuilder.Infrastruction.Migrations
{
    /// <inheritdoc />
    public partial class UpdateData : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_CustomerPage_CustomerInfo_CustomerInfoid",
                table: "CustomerPage");

            migrationBuilder.DropForeignKey(
                name: "FK_CustomerPerson_CustomerInfo_CustomerInfoid",
                table: "CustomerPerson");

            migrationBuilder.DropForeignKey(
                name: "FK_CustomerService_CustomerInfo_CustomerInfoid",
                table: "CustomerService");

            migrationBuilder.DropForeignKey(
                name: "FK_CustomerSocialMedia_CustomerInfo_CustomerInfoid",
                table: "CustomerSocialMedia");

            migrationBuilder.DropIndex(
                name: "IX_CustomerSocialMedia_CustomerInfoid",
                table: "CustomerSocialMedia");

            migrationBuilder.DropIndex(
                name: "IX_CustomerService_CustomerInfoid",
                table: "CustomerService");

            migrationBuilder.DropIndex(
                name: "IX_CustomerPerson_CustomerInfoid",
                table: "CustomerPerson");

            migrationBuilder.DropIndex(
                name: "IX_CustomerPage_CustomerInfoid",
                table: "CustomerPage");

            migrationBuilder.DropColumn(
                name: "CustomerInfoid",
                table: "CustomerSocialMedia");

            migrationBuilder.DropColumn(
                name: "CustomerInfoid",
                table: "CustomerService");

            migrationBuilder.DropColumn(
                name: "CustomerInfoid",
                table: "CustomerPerson");

            migrationBuilder.DropColumn(
                name: "CustomerInfoid",
                table: "CustomerPage");

            migrationBuilder.RenameColumn(
                name: "JsonData",
                table: "CustomerJson",
                newName: "jsonData");

            migrationBuilder.AddColumn<string>(
                name: "jsonTemplate",
                table: "CustomerJson",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_CustomerSocialMedia_customerId",
                table: "CustomerSocialMedia",
                column: "customerId");

            migrationBuilder.CreateIndex(
                name: "IX_CustomerService_customerId",
                table: "CustomerService",
                column: "customerId");

            migrationBuilder.CreateIndex(
                name: "IX_CustomerPerson_customerId",
                table: "CustomerPerson",
                column: "customerId");

            migrationBuilder.CreateIndex(
                name: "IX_CustomerPage_customerId",
                table: "CustomerPage",
                column: "customerId");

            migrationBuilder.AddForeignKey(
                name: "FK_CustomerPage_CustomerInfo_customerId",
                table: "CustomerPage",
                column: "customerId",
                principalTable: "CustomerInfo",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_CustomerPerson_CustomerInfo_customerId",
                table: "CustomerPerson",
                column: "customerId",
                principalTable: "CustomerInfo",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_CustomerService_CustomerInfo_customerId",
                table: "CustomerService",
                column: "customerId",
                principalTable: "CustomerInfo",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_CustomerSocialMedia_CustomerInfo_customerId",
                table: "CustomerSocialMedia",
                column: "customerId",
                principalTable: "CustomerInfo",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_CustomerPage_CustomerInfo_customerId",
                table: "CustomerPage");

            migrationBuilder.DropForeignKey(
                name: "FK_CustomerPerson_CustomerInfo_customerId",
                table: "CustomerPerson");

            migrationBuilder.DropForeignKey(
                name: "FK_CustomerService_CustomerInfo_customerId",
                table: "CustomerService");

            migrationBuilder.DropForeignKey(
                name: "FK_CustomerSocialMedia_CustomerInfo_customerId",
                table: "CustomerSocialMedia");

            migrationBuilder.DropIndex(
                name: "IX_CustomerSocialMedia_customerId",
                table: "CustomerSocialMedia");

            migrationBuilder.DropIndex(
                name: "IX_CustomerService_customerId",
                table: "CustomerService");

            migrationBuilder.DropIndex(
                name: "IX_CustomerPerson_customerId",
                table: "CustomerPerson");

            migrationBuilder.DropIndex(
                name: "IX_CustomerPage_customerId",
                table: "CustomerPage");

            migrationBuilder.DropColumn(
                name: "jsonTemplate",
                table: "CustomerJson");

            migrationBuilder.RenameColumn(
                name: "jsonData",
                table: "CustomerJson",
                newName: "JsonData");

            migrationBuilder.AddColumn<Guid>(
                name: "CustomerInfoid",
                table: "CustomerSocialMedia",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.AddColumn<Guid>(
                name: "CustomerInfoid",
                table: "CustomerService",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.AddColumn<Guid>(
                name: "CustomerInfoid",
                table: "CustomerPerson",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.AddColumn<Guid>(
                name: "CustomerInfoid",
                table: "CustomerPage",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_CustomerSocialMedia_CustomerInfoid",
                table: "CustomerSocialMedia",
                column: "CustomerInfoid");

            migrationBuilder.CreateIndex(
                name: "IX_CustomerService_CustomerInfoid",
                table: "CustomerService",
                column: "CustomerInfoid");

            migrationBuilder.CreateIndex(
                name: "IX_CustomerPerson_CustomerInfoid",
                table: "CustomerPerson",
                column: "CustomerInfoid");

            migrationBuilder.CreateIndex(
                name: "IX_CustomerPage_CustomerInfoid",
                table: "CustomerPage",
                column: "CustomerInfoid");

            migrationBuilder.AddForeignKey(
                name: "FK_CustomerPage_CustomerInfo_CustomerInfoid",
                table: "CustomerPage",
                column: "CustomerInfoid",
                principalTable: "CustomerInfo",
                principalColumn: "id");

            migrationBuilder.AddForeignKey(
                name: "FK_CustomerPerson_CustomerInfo_CustomerInfoid",
                table: "CustomerPerson",
                column: "CustomerInfoid",
                principalTable: "CustomerInfo",
                principalColumn: "id");

            migrationBuilder.AddForeignKey(
                name: "FK_CustomerService_CustomerInfo_CustomerInfoid",
                table: "CustomerService",
                column: "CustomerInfoid",
                principalTable: "CustomerInfo",
                principalColumn: "id");

            migrationBuilder.AddForeignKey(
                name: "FK_CustomerSocialMedia_CustomerInfo_CustomerInfoid",
                table: "CustomerSocialMedia",
                column: "CustomerInfoid",
                principalTable: "CustomerInfo",
                principalColumn: "id");
        }
    }
}
