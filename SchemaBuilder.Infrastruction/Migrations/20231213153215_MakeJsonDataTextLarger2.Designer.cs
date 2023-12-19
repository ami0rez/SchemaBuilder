﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using SchemaBuilder.Infrastruction.Data.Contexts;

#nullable disable

namespace SchemaBuilder.Infrastruction.Migrations
{
    [DbContext(typeof(ApplicationDBContext))]
    [Migration("20231213153215_MakeJsonDataTextLarger2")]
    partial class MakeJsonDataTextLarger2
    {
        /// <inheritdoc />
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "7.0.14")
                .HasAnnotation("Relational:MaxIdentifierLength", 128);

            SqlServerModelBuilderExtensions.UseIdentityColumns(modelBuilder);

            modelBuilder.Entity("SchemaBuilder.Infrastruction.Data.Models.Category", b =>
                {
                    b.Property<Guid>("id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier");

                    b.Property<string>("naics")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<Guid?>("parentId")
                        .HasColumnType("uniqueidentifier");

                    b.Property<int>("popularity")
                        .HasColumnType("int");

                    b.HasKey("id");

                    b.ToTable("Category");
                });

            modelBuilder.Entity("SchemaBuilder.Infrastruction.Data.Models.Customer.CustomerAssociatedBusiness", b =>
                {
                    b.Property<Guid>("id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier");

                    b.Property<Guid?>("CustomerInfoid")
                        .HasColumnType("uniqueidentifier");

                    b.Property<Guid>("customerId")
                        .HasColumnType("uniqueidentifier");

                    b.Property<string>("description")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("name")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("id");

                    b.HasIndex("CustomerInfoid");

                    b.ToTable("CustomerAssociatedBusiness");
                });

            modelBuilder.Entity("SchemaBuilder.Infrastruction.Data.Models.Customer.CustomerInfo", b =>
                {
                    b.Property<Guid>("id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier");

                    b.Property<string>("address")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("businessCategoryId")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("businessCategoryName")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("businessName")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("contentRichness")
                        .HasColumnType("int");

                    b.Property<string>("ownerName")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("phone")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("productDetectedRange")
                        .HasColumnType("int");

                    b.Property<int>("status")
                        .HasColumnType("int");

                    b.Property<string>("website")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("id");

                    b.ToTable("CustomerInfo");
                });

            modelBuilder.Entity("SchemaBuilder.Infrastruction.Data.Models.Customer.CustomerJson", b =>
                {
                    b.Property<Guid>("id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier");

                    b.Property<string>("JsonData")
                        .HasColumnType("nvarchar(max)");

                    b.Property<Guid>("customerId")
                        .HasColumnType("uniqueidentifier");

                    b.Property<int>("status")
                        .HasColumnType("int");

                    b.HasKey("id");

                    b.HasIndex("customerId");

                    b.ToTable("CustomerJson");
                });

            modelBuilder.Entity("SchemaBuilder.Infrastruction.Data.Models.Customer.CustomerPage", b =>
                {
                    b.Property<Guid>("id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier");

                    b.Property<Guid?>("CustomerInfoid")
                        .HasColumnType("uniqueidentifier");

                    b.Property<string>("category")
                        .HasColumnType("nvarchar(max)");

                    b.Property<Guid>("customerId")
                        .HasColumnType("uniqueidentifier");

                    b.Property<string>("groupName")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("name")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("type")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("id");

                    b.HasIndex("CustomerInfoid");

                    b.ToTable("CustomerPage");
                });

            modelBuilder.Entity("SchemaBuilder.Infrastruction.Data.Models.Customer.CustomerPerson", b =>
                {
                    b.Property<Guid>("id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier");

                    b.Property<Guid?>("CustomerInfoid")
                        .HasColumnType("uniqueidentifier");

                    b.Property<string>("address")
                        .HasColumnType("nvarchar(max)");

                    b.Property<Guid>("customerId")
                        .HasColumnType("uniqueidentifier");

                    b.Property<string>("name")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("phone")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("position")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("title")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("id");

                    b.HasIndex("CustomerInfoid");

                    b.ToTable("CustomerPerson");
                });

            modelBuilder.Entity("SchemaBuilder.Infrastruction.Data.Models.Customer.CustomerService", b =>
                {
                    b.Property<Guid>("id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier");

                    b.Property<Guid?>("CustomerInfoid")
                        .HasColumnType("uniqueidentifier");

                    b.Property<Guid>("customerId")
                        .HasColumnType("uniqueidentifier");

                    b.Property<string>("description")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("name")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("price")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("id");

                    b.HasIndex("CustomerInfoid");

                    b.ToTable("CustomerService");
                });

            modelBuilder.Entity("SchemaBuilder.Infrastruction.Data.Models.Customer.CustomerSocialMedia", b =>
                {
                    b.Property<Guid>("id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier");

                    b.Property<Guid?>("CustomerInfoid")
                        .HasColumnType("uniqueidentifier");

                    b.Property<string>("address")
                        .HasColumnType("nvarchar(max)");

                    b.Property<Guid>("customerId")
                        .HasColumnType("uniqueidentifier");

                    b.Property<string>("name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("id");

                    b.HasIndex("CustomerInfoid");

                    b.ToTable("CustomerSocialMedia");
                });

            modelBuilder.Entity("SchemaBuilder.Infrastruction.Data.Models.Schema", b =>
                {
                    b.Property<int>("id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("id"));

                    b.Property<string>("name")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int?>("parentId")
                        .HasColumnType("int");

                    b.HasKey("id");

                    b.ToTable("Schema");
                });

            modelBuilder.Entity("SchemaBuilder.Infrastruction.Data.Models.SchemaProperty", b =>
                {
                    b.Property<int>("id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("id"));

                    b.Property<int>("datatype")
                        .HasColumnType("int");

                    b.Property<string>("friendlyName")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("name")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int?>("schemaDataTypeId")
                        .HasColumnType("int");

                    b.Property<int?>("schemaId")
                        .HasColumnType("int");

                    b.Property<bool>("visible")
                        .HasColumnType("bit");

                    b.HasKey("id");

                    b.HasIndex("schemaDataTypeId");

                    b.HasIndex("schemaId");

                    b.ToTable("SchemaProperty");
                });

            modelBuilder.Entity("SchemaBuilder.Infrastruction.Data.Models.WebsiteGroupSchema", b =>
                {
                    b.Property<Guid>("id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier");

                    b.Property<string>("groupName")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("schemaId")
                        .HasColumnType("int");

                    b.Property<bool>("visible")
                        .HasColumnType("bit");

                    b.HasKey("id");

                    b.HasIndex("schemaId");

                    b.ToTable("WebsiteGroupSchema");
                });

            modelBuilder.Entity("SchemaBuilder.Infrastruction.Data.Models.WebsiteSection", b =>
                {
                    b.Property<Guid>("id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier");

                    b.Property<Guid>("categoryID")
                        .HasColumnType("uniqueidentifier");

                    b.Property<string>("description")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("groupName")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("id");

                    b.HasIndex("categoryID");

                    b.ToTable("WebsiteSection");
                });

            modelBuilder.Entity("SchemaBuilder.Infrastruction.Data.Models.Customer.CustomerAssociatedBusiness", b =>
                {
                    b.HasOne("SchemaBuilder.Infrastruction.Data.Models.Customer.CustomerInfo", null)
                        .WithMany("associatedBusinessDetected")
                        .HasForeignKey("CustomerInfoid");
                });

            modelBuilder.Entity("SchemaBuilder.Infrastruction.Data.Models.Customer.CustomerJson", b =>
                {
                    b.HasOne("SchemaBuilder.Infrastruction.Data.Models.Customer.CustomerInfo", "customer")
                        .WithMany()
                        .HasForeignKey("customerId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("customer");
                });

            modelBuilder.Entity("SchemaBuilder.Infrastruction.Data.Models.Customer.CustomerPage", b =>
                {
                    b.HasOne("SchemaBuilder.Infrastruction.Data.Models.Customer.CustomerInfo", null)
                        .WithMany("pages")
                        .HasForeignKey("CustomerInfoid");
                });

            modelBuilder.Entity("SchemaBuilder.Infrastruction.Data.Models.Customer.CustomerPerson", b =>
                {
                    b.HasOne("SchemaBuilder.Infrastruction.Data.Models.Customer.CustomerInfo", null)
                        .WithMany("peopleDetected")
                        .HasForeignKey("CustomerInfoid");
                });

            modelBuilder.Entity("SchemaBuilder.Infrastruction.Data.Models.Customer.CustomerService", b =>
                {
                    b.HasOne("SchemaBuilder.Infrastruction.Data.Models.Customer.CustomerInfo", null)
                        .WithMany("serviceDetected")
                        .HasForeignKey("CustomerInfoid");
                });

            modelBuilder.Entity("SchemaBuilder.Infrastruction.Data.Models.Customer.CustomerSocialMedia", b =>
                {
                    b.HasOne("SchemaBuilder.Infrastruction.Data.Models.Customer.CustomerInfo", null)
                        .WithMany("socialMedia")
                        .HasForeignKey("CustomerInfoid");
                });

            modelBuilder.Entity("SchemaBuilder.Infrastruction.Data.Models.SchemaProperty", b =>
                {
                    b.HasOne("SchemaBuilder.Infrastruction.Data.Models.Schema", "schemaDataType")
                        .WithMany()
                        .HasForeignKey("schemaDataTypeId");

                    b.HasOne("SchemaBuilder.Infrastruction.Data.Models.Schema", "schema")
                        .WithMany("properties")
                        .HasForeignKey("schemaId");

                    b.Navigation("schema");

                    b.Navigation("schemaDataType");
                });

            modelBuilder.Entity("SchemaBuilder.Infrastruction.Data.Models.WebsiteGroupSchema", b =>
                {
                    b.HasOne("SchemaBuilder.Infrastruction.Data.Models.Schema", "schema")
                        .WithMany()
                        .HasForeignKey("schemaId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("schema");
                });

            modelBuilder.Entity("SchemaBuilder.Infrastruction.Data.Models.WebsiteSection", b =>
                {
                    b.HasOne("SchemaBuilder.Infrastruction.Data.Models.Category", "category")
                        .WithMany("websiteSections")
                        .HasForeignKey("categoryID")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("category");
                });

            modelBuilder.Entity("SchemaBuilder.Infrastruction.Data.Models.Category", b =>
                {
                    b.Navigation("websiteSections");
                });

            modelBuilder.Entity("SchemaBuilder.Infrastruction.Data.Models.Customer.CustomerInfo", b =>
                {
                    b.Navigation("associatedBusinessDetected");

                    b.Navigation("pages");

                    b.Navigation("peopleDetected");

                    b.Navigation("serviceDetected");

                    b.Navigation("socialMedia");
                });

            modelBuilder.Entity("SchemaBuilder.Infrastruction.Data.Models.Schema", b =>
                {
                    b.Navigation("properties");
                });
#pragma warning restore 612, 618
        }
    }
}
